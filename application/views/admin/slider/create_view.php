<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<div class="container" style="margin-top:0px;">
    <div class="row">
        <div class="">
            <h3 class="text-center">ADD NEW Slider</h3>
            <?php echo form_open_multipart('admin/slider/create/');?>             
            <div class="form-group col-md-4">
                <label>Slogan 01 </label><span class="error">*</span>
                <?php
                echo form_error('description');
                echo form_input('description',set_value('description',''),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-3">
                <label>Slogan 02 </label><span class="error">*</span>
                <?php
                echo form_error('description2');
                echo form_input('description2',set_value('description2', ''),'class="form-control"');
                ?>
            </div>
            <div class="col-md-3">
                <label>Link </label><span class="error">*</span>
                <?php
                echo form_error('link');
                echo form_input('link',set_value('link',''),'class="form-control"');
                ?>
            </div>
            <div class="col-md-2">
                <label>Status </label><span class="error">*</span>
                <select class="form-control" name="status">
                    <option value="1">Hiện</option>
                    <option value="0">Ẩn</option>
                </select>
            </div>
            <div class="form-group col-md-12">
                <label>Image <span class="error">*</span></label>
                <div id="editor">
                    <textarea class="ckeditor" name="image"></textarea> 
                    <?php echo form_error('image','<p class="error">'); ?>
                </div>
            </div>
                     
            <?php
            $submit_button = 'Save';
            echo form_submit('submit', $submit_button, 'class="btn btn-primary btn-lg btn-block"');?>
            <?php echo anchor('/admin/slider', 'Cancel','class="btn btn-default btn-lg btn-block"');?>
            <?php echo form_close();?>
        </div>
    </div>
</div>