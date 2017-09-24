<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<div class="container" style="margin-top:0px;">
    <div class="row">
        <div class="col-lg-12">
            <?php echo form_open_multipart('admin/'.$page.'/index/');?>
            <div class="col-lg-12">
                <h3 class="col-lg-10" style="margin-top: 0"><?php echo 'Quản lý trang - '.$page_name; ?></h3>

                <div class="col-lg-2 pull-right">
                    <?php echo form_submit('submit', 'Save', 'class="btn btn-primary btn-lg btn-sm"');?>
                    <?php echo anchor('/admin/', 'Cancel','class="btn btn-default btn-lg btn-sm"');?>
                </div>
            </div>
            
            <div class="form-group col-md-12 col-lg-12">
                <?php
                echo form_label('Tiêu đề','title');
                echo form_error('title');
                echo form_input('title',set_value('title',$item->title),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-12 col-lg-12">
                <div id="editor">
                    <?php //echo $this->ckeditor->editor('content',$item->content);?>
                    <textarea class="ckeditor" name="content"><?php echo $item->content ?></textarea> 
                    <?php echo form_error('content','<p class="error">'); ?>
                </div>
            </div>
            
            <!-- AJAX Response will be outputted on this DIV container -->
            <?php echo form_hidden('id',$item->id);?>
            
            <?php echo form_close();?>
        </div>
    </div>
</div>