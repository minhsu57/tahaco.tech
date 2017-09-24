<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Upload extends CI_Upload
{
    public $multi = 'all';

    /**
     * Hold multiple errors
     * @var array
     */
    public $multi_errors = array();
    /**
     * keep track if the upload was finished or not
     * @var bool
     */
    public $finished = FALSE;
    /**
     * a temporary string that will be appended to the errors when one or more files is/are not uploaded
     * @var string
     */
    public $tempString;
    /**
     * an array that will contain all the data regarding the successfully uploaded files
     * @var array
     */
    public $uploadedFiles = array();

    function __construct($config = array())
    {
        parent::__construct($config);
        if(array_key_exists('multi',$config))
        {
            $this->set_multi($config['multi']);
        }
    }

    public function do_upload($field = 'userfile') {

        if (!isset($_FILES[$field])) {
            return false;
        }
        // check if it's a multiple upload. if not then fall back to CI do_upload()
        if (!is_array($_FILES[$field]['name'])) {
            return parent::do_upload($field);
        }
        // also if it is a multiple upload input type, verify if only one file was uploaded, and if yes give it to the CI do_upload()
        elseif(sizeof($_FILES[$field]['name'])==1)
        {
            $files = $_FILES[$field];
            $_FILES[$field]['name'] = $files['name'][0];
            $_FILES[$field]['type'] = $files['type'][0];
            $_FILES[$field]['tmp_name'] = $files['tmp_name'][0];
            $_FILES[$field]['error'] = $files['error'][0];
            $_FILES[$field]['size'] = $files['size'][0];
            return $this->do_upload($field);
        }
        // else do the magic
        else
        {
            $files = $_FILES[$field];
            foreach ($files['name'] as $key => $value)
            {
                $_FILES[$field]['name'] = $files['name'][$key];
                $_FILES[$field]['type'] = $files['type'][$key];
                $_FILES[$field]['tmp_name'] = $files['tmp_name'][$key];
                $_FILES[$field]['error'] = $files['error'][$key];
                $_FILES[$field]['size'] = $files['size'][$key];
                if ($this->do_upload($field))
                {
                    // if the upload was successfull add an element to the uploadedFiles array that contains the data regarding the uploaded file
                    $this->uploadedFiles[] = $this->data();
                }
                else
                {
                    // if the upload was unsuccessfull, set a temporary string that will contain the name of the file in question. The string will later be used by the modified display_errors() method
                    $this->tempString = 'File: ' . $_FILES[$field]['name'].' - Error: ';
                    // keep the errors in the multi_errors array
                    $this->multi_errors[] = $this->display_errors('', '');

                }
                // now we decide if we continue uploading depending on the "multi" key inside the configuration
                switch($this->multi)
                {
                    case 'all':
                        if(sizeof($this->multi_errors)>0 && sizeof($this->uploadedFiles>0))
                        {
                            foreach($this->uploadedFiles as $dataFile)
                            {
                                if(file_exists($dataFile['full_path'])) unlink($dataFile['full_path']);
                            }
                            break 2;
                        }
                        break;
                    case 'halt':
                        if(sizeof($this->multi_errors)>0) break 2;
                        break;
                    //case 'ignore':
                    default :
                        break;
                }
            }
            if(sizeof($this->multi_errors)>0 && $this->multi == 'all' )
            {
                return FALSE;
            }
            // at the end of the uploads, change the finished variable to true so that the class will know it finished it's main job
            $this->finished = TRUE;
            return TRUE;
        }
    }

    public function data($index = NULL)
    {
        //first we loook if the files were uploaded. if they were we just return the array with the data regarding the uploaded files
        if($this->finished === TRUE)
        {
            return $this->uploadedFiles;
        }
        // if the files were not uploaded, then we update the data
        $data = array(
                'file_name'		=> $this->file_name,
                'file_type'		=> $this->file_type,
                'file_path'		=> $this->upload_path,
                'full_path'		=> $this->upload_path.$this->file_name,
                'raw_name'		=> str_replace($this->file_ext, '', $this->file_name),
                'orig_name'		=> $this->orig_name,
                'client_name'		=> $this->client_name,
                'file_ext'		=> $this->file_ext,
                'file_size'		=> $this->file_size,
                'is_image'		=> $this->is_image(),
                'image_width'		=> $this->image_width,
                'image_height'		=> $this->image_height,
                'image_type'		=> $this->image_type,
                'image_size_str'	=> $this->image_size_str,
        );

        if ( ! empty($index))
        {
            return isset($data[$index]) ? $data[$index] : NULL;
        }

        return $data;
    }

    public function display_errors($open = '<p>', $close = '</p>')
    {
        if($this->finished === TRUE)
        {
            return $this->multi_errors;
        }
        $append = $this->tempString;
        $this->tempString = '';

        return (count($this->error_msg) > 0) ? $open . $append . implode($close . $open, $this->error_msg) . $close : '';

    }

    public function set_multi($course)
    {
        $options = array('all', 'halt','ignore');
        if(in_array($course,$options))
        {
            $this->multi = $course;
        }
        return $this;
    }

    ///////////////

    function do_multi_upload( $field = 'userfile', $return_info = TRUE, $filenames = NULL ){

        // Is $_FILES[$field] set? If not, no reason to continue.
        if ( ! isset($_FILES[$field]))
        {

            $this->ci->set_error('upload_no_file_selected');
            return FALSE;

        }

        //If not every file filled was used, clear the empties

        foreach( $_FILES[$field]['name'] as $k => $n )
        {

            if( empty( $n ) )
            {

                foreach( $_FILES[$field] as $kk => $f )
                {

                    unset( $_FILES[$field][$kk][$k] );

                }

            }

        }

        // Is the upload path valid?
        if ( ! $this->ci->validate_upload_path($field) )
        {

            // errors will already be set by validate_upload_path() so just return FALSE
            return FALSE;
        }

        //Multiple file upload
        if( is_array( $_FILES[$field] ) )
        {

            //$count = count($_FILES[$field]['name']); //Number of files to process

            foreach( $_FILES[$field]['name'] as $k => $file )
            {

                // Was the file able to be uploaded? If not, determine the reason why.
                if ( ! is_uploaded_file($_FILES[$field]['tmp_name'][$k] ) )
                {

                    $error = ( ! isset($_FILES[$field]['error'][$k])) ? 4 : $_FILES[$field]['error'][$k];

                    switch($error)
                    {
                        case 1: // UPLOAD_ERR_INI_SIZE
                            $this->ci->set_error('upload_file_exceeds_limit');
                            break;
                        case 2: // UPLOAD_ERR_FORM_SIZE
                            $this->ci->set_error('upload_file_exceeds_form_limit');
                            break;
                        case 3: // UPLOAD_ERR_PARTIAL
                            $this->ci->set_error('upload_file_partial');
                            break;
                        case 4: // UPLOAD_ERR_NO_FILE
                            $this->ci->set_error('upload_no_file_selected');
                            break;
                        case 6: // UPLOAD_ERR_NO_TMP_DIR
                            $this->ci->set_error('upload_no_temp_directory');
                            break;
                        case 7: // UPLOAD_ERR_CANT_WRITE
                            $this->ci->set_error('upload_unable_to_write_file');
                            break;
                        case 8: // UPLOAD_ERR_EXTENSION
                            $this->ci->set_error('upload_stopped_by_extension');
                            break;
                        default :   $this->ci->set_error('upload_no_file_selected');
                            break;
                    }

                    return FALSE;
                }

                // Set the uploaded data as class variables
                $this->ci->file_temp = $_FILES[$field]['tmp_name'][$k];
                $this->ci->file_size = $_FILES[$field]['size'][$k];
                $this->ci->file_type = preg_replace("/^(.+?);.*$/", "\\1", $_FILES[$field]['type'][$k]);
                $this->ci->file_type = strtolower(trim(stripslashes($this->ci->file_type), '"'));

                if(empty($filenames))
                {
                    $this->ci->file_name = $this->ci->_prep_filename($_FILES[$field]['name'][$k]);                  
                }
                else
                {
                    $this->ci->file_name = $this->ci->_prep_filename($filenames[$k]);
                }

                $this->ci->file_ext  = $this->ci->get_extension($this->ci->file_name);
                $this->ci->client_name = $this->ci->file_name;

                // Is the file type allowed to be uploaded?
                if ( ! $this->ci->is_allowed_filetype())
                {
                    $this->ci->set_error('upload_invalid_filetype');
                    return FALSE;
                }

                // if we're overriding, let's now make sure the new name and type is allowed
                if ($this->ci->_file_name_override != '')
                {
                    $this->ci->file_name = $this->ci->_prep_filename($this->ci->_file_name_override);

                    // If no extension was provided in the file_name config item, use the uploaded one
                    if (strpos($this->ci->_file_name_override, '.') === FALSE)
                    {
                        $this->ci->file_name .= $this->ci->file_ext;
                    }

                    // An extension was provided, lets have it!
                    else
                    {
                        $this->ci->file_ext  = $this->ci->get_extension($this->ci->_file_name_override);
                    }

                    if ( ! $this->ci->is_allowed_filetype(TRUE))
                    {
                        $this->ci->set_error('upload_invalid_filetype');
                        return FALSE;
                    }
                }

                // Convert the file size to kilobytes
                if ($this->ci->file_size > 0)
                {
                    $this->ci->file_size = round($this->ci->file_size/1024, 2);
                }

                // Is the file size within the allowed maximum?
                if ( ! $this->ci->is_allowed_filesize())
                {
                    $this->ci->set_error('upload_invalid_filesize');
                    return FALSE;
                }

                // Are the image dimensions within the allowed size?
                // Note: This can fail if the server has an open_basdir restriction.
                if ( ! $this->ci->is_allowed_dimensions())
                {
                    $this->ci->set_error('upload_invalid_dimensions');
                    return FALSE;
                }

                // Sanitize the file name for security
                $this->ci->file_name = $this->ci->clean_file_name($this->ci->file_name);

                // Truncate the file name if it's too long
                if ($this->ci->max_filename > 0)
                {
                    $this->ci->file_name = $this->ci->limit_filename_length($this->ci->file_name, $this->ci->max_filename);
                }

                // Remove white spaces in the name
                if ($this->ci->remove_spaces == TRUE)
                {
                    $this->ci->file_name = preg_replace("/\s+/", "_", $this->ci->file_name);
                }

                /*
                 * Validate the file name
                 * This function appends an number onto the end of
                 * the file if one with the same name already exists.
                 * If it returns false there was a problem.
                 */
                $this->ci->orig_name = $this->ci->file_name;

                if ($this->ci->overwrite == FALSE)
                {
                    $this->ci->file_name = $this->ci->set_filename($this->ci->upload_path, $this->ci->file_name);

                    if ($this->ci->file_name === FALSE)
                    {
                        return FALSE;
                    }
                }

                /*
                 * Run the file through the XSS hacking filter
                 * This helps prevent malicious code from being
                 * embedded within a file.  Scripts can easily
                 * be disguised as images or other file types.
                 */
                if ($this->ci->xss_clean)
                {
                    if ($this->ci->do_xss_clean() === FALSE)
                    {
                        $this->ci->set_error('upload_unable_to_write_file');
                        return FALSE;
                    }
                }

                /*
                 * Move the file to the final destination
                 * To deal with different server configurations
                 * we'll attempt to use copy() first.  If that fails
                 * we'll use move_uploaded_file().  One of the two should
                 * reliably work in most environments
                 */
                if ( ! @copy($this->ci->file_temp, $this->ci->upload_path.$this->ci->file_name))
                {
                    if ( ! @move_uploaded_file($this->ci->file_temp, $this->ci->upload_path.$this->ci->file_name))
                    {
                        $this->ci->set_error('upload_destination_error');
                        return FALSE;
                    }
                }

                /*
                 * Set the finalized image dimensions
                 * This sets the image width/height (assuming the
                 * file was an image).  We use this information
                 * in the "data" function.
                 */
                $this->ci->set_image_properties($this->ci->upload_path.$this->ci->file_name);


                if( $return_info === TRUE )
                {

                    $return_value[$k] = $this->ci->data();

                }
                else
                {

                    $return_value = TRUE;

                }


            }

            return $return_value;

        }
        else //Single file upload, rely on native CI upload class
        {

            $upload = self::do_upload();

            return $upload;

        }


    }
}
/* End of file MY_Upload.php */
/* Location: ./application/libraries/MY_Upload.php */