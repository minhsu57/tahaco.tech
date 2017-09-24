<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<div class="container" style="margin-top:0px;">
    <div class="row">
        <div class="col-lg-12">
            <?php echo form_open_multipart('admin/home_info/area4/');?>
            <div class="col-lg-12">
                <h3 class="col-lg-10" style="margin-top: 0"><?php echo 'Trang chủ 4' ?></h3>

                <div class="col-lg-2 pull-right">
                    <?php echo form_submit('submit', 'Save', 'class="btn btn-primary btn-lg btn-sm"');?>
                    <?php echo anchor('/admin/', 'Cancel','class="btn btn-default btn-lg btn-sm"');?>
                </div>
            </div>
            <div class="form-group col-md-12 col-lg-12">
                <?php
                echo form_label('Tiêu đề','slogan4');
                echo form_error('slogan4');
                echo form_input('slogan4',set_value('slogan4',$item->slogan4),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-12 col-lg-12">
                Hình ảnh
                <div id="editor">
                    <?php //echo $this->ckeditor->editor('content',$item->content);?>
                    <textarea class="ckeditor" name="image_slogan4"><?php echo $item->image_slogan4 ?></textarea> 
                    <?php echo form_error('image_slogan4','<p class="error">'); ?>
                </div>
            </div>
            
            <!-- AJAX Response will be outputted on this DIV container -->
            <?php echo form_hidden('id',$item->id);?>
            
            <?php echo form_close();?>
        </div>
    </div>
</div>