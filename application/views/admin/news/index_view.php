<?php defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="text-center">NEWS MANAGEMENT</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <a href="<?php echo base_url('admin/news/create'); ?>"><button class="pull-right btn btn-primary"><li class="fa fa-plus"></li> Add news</button></a>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12" style="margin-top: 10px;">
            <?php
            echo '<table class="table table-hover table-bordered table-condensed">';
            echo '<thead>';
            echo '<tr>';
            echo '<th><div class="text-center">No</div></th>';
            echo '<th style="width: 300px !important">Title</th>';
            echo '<th>Sumary content</th>';
            echo '<th>Image</th>';
            echo '<th>Modified date</th>';            
            echo '<th>Actions</th>';
            echo '</tr>';
            echo '</thead>';
            echo '<tbody>';
            if(!empty($items))
            {
                foreach($items as $key => $item)
                {
                    // get value of src img tag
                    preg_match( '@src="([^"]+)"@' , $item->image, $match);
                    $image = array_pop($match);
                    echo '<tr>';
                    echo '<td><div class="text-center">'.$record_number.'</div></td>';
                    echo '<td><div style="max-width: 300px;">'.$item->title.'</div></td>';
                    echo '<td><div style="max-width: 300px;">'.$item->short_content.'</div></td>'; 
                    echo '<td></td>';                    
                    echo '<td>'.$item->modified_date.'</td>';
                    echo '<td>';
                    echo '<a href="'.base_url('admin/news/edit/'.$item->id).'" style="color:#fff"><button title="Click to edit" class="btn btn-sm btn-info"><li class="fa fa-pencil"></li></button></a>';
                    echo '<a href="'.base_url('admin/news/delete/'.$item->id).'" style="color:#fff; margin-left:5px" onclick="return confirm(\'Bạn chắc chắn muốn xóa ?\')"><button title="Click to delete" class="btn btn-sm btn-danger"><li class="fa fa-trash"></li></button></a>';
                    ?>
                    <?php
                    echo '</td>';
                    echo '</tr>';
                    $record_number++;
                }
            }
            echo '</tbody>';
            echo '</table>';
            ?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 text-center">
            <?php echo $pagination; ?>
        </div>
    </div>
</div>