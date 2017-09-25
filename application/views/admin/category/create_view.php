<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<div class="container" style="margin-top:0px;">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="text-center">TẠO MỚI CATEGORY</h3>
            <?php echo form_open_multipart('admin/category/create');?>
            <div class="col-lg-12">
                <h3 class="col-lg-10" style="margin-top: 0"></h3>

                <div class="col-lg-2 pull-right">
                    <?php echo form_submit('submit', 'Save', 'class="btn btn-primary btn-lg btn-sm"');?>
                    <?php echo anchor('/admin/category', 'Cancel','class="btn btn-default btn-lg btn-sm"');?>
                </div>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Title','name');
                ?>
                <span class="error"><?php echo form_error('name'); ?></span>
                <input type="text" name="name" class="form-control" value="<?php echo set_value('name'); ?>">
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Type','level');
                echo form_error('level','<span class="error">');
                ?>
                <select class="form-control" name="level">
                    <option value="1" <?php if(set_value('level') == 1) echo 'selected'; ?> >Category</option>
                    <option value="0" <?php if(set_value('level') == 0) echo 'selected'; ?> >Product</option>
                </select>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <strong>Photo</strong>
                <span class="error"><?php echo form_error('content'); ?></span>   
                <div id="editor">                    
                    <textarea class="ckeditor" name="content"><?php echo set_value('content'); ?></textarea>
                </div>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <strong>Content</strong>
                <span class="error"><?php echo form_error('description'); ?></span>   
                <div id="editor">
                    <textarea class="ckeditor" name="description"><?php echo set_value('description'); ?></textarea>
                </div>
            </div>
            <div class="form-group col-md-12 col-lg-12">
                <h5><b>SEO SECTION</b></h5>
            </div>
            <div class="form-group col-md-12 col-lg-6">
                <?php
                echo form_label('Meta keyword','meta_keyword');
                echo form_error('meta_keyword','<p class="error">');
                ?>
                <textarea class="form-control" name="meta_keyword"><?php set_value("meta_keyword") ?></textarea>
            </div>
            <div class="form-group col-md-12 col-lg-6">
                <?php
                echo form_label('Meta Description','meta_description');
                echo form_error('meta_description','<p class="error">');
                ?>
                <textarea class="form-control" name="meta_description"><?php set_value("meta_description") ?></textarea>
            </div>
            
            <?php echo form_close();?>
        </div>
    </div>
</div>