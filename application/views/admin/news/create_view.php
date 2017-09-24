<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<div class="container" style="margin-top:0px;">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="text-center">ADD NEWS</h3>
        </div>
    </div>
    <?php echo form_open_multipart('admin/news/create/');?>
    <div class="row">
        <div class="col-xs-12">
            <div class="col-xs-12 ">
                <div class="pull-right">
                    <?php echo form_submit('submit', 'SAVE', 'class="btn btn-primary btn-lg btn-sm"');?>
                    <a href="<?php echo base_url('admin/news') ?>"><input class="btn btn-default btn-lg btn-sm" type="button" value="CANCEL"></a>
                </div>                
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">

            <div class="form-group col-md-12 col-lg-12">
                <?php
                echo form_label('Title','title');
                echo form_error('title','<p class="error">');
                echo form_input('title', set_value("title"),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-12 col-lg-12">
                <?php
                echo form_label('Summary content','short_content');
                echo form_error('short_content','<p class="error">');
                echo form_input('short_content', set_value("short_content"),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-12 col-lg-12">
                <label>Content</label>
                <div id="editor">
                    <?php echo form_error('content','<p class="error">'); ?>
                    <textarea class="ckeditor" name="content"><?php echo set_value("content"); ?></textarea> 
                    
                </div>
            </div>
            <div class="form-group col-md-12 col-lg-12">
                <label>Wrapper photo</label>
                <div id="editor">
                    <?php echo form_error('image','<p class="error">'); ?>
                    <textarea class="ckeditor" name="image"><?php echo set_value("image"); ?></textarea> 
                    
                </div>
            </div>
            <div class="form-group col-md-12 col-lg-12">
                <h5><b>SEO SECTION</b></h5>
            </div>
            <div class="form-group col-md-12 col-lg-12">
                <?php
                echo form_label('Keyword','keyword');
                echo form_error('keyword','<p class="error">');
                echo form_input('keyword', set_value("keyword"),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-12 col-lg-12">
                <?php
                echo form_label('Meta Description','meta_description');
                echo form_error('meta_description','<p class="error">');
                echo form_input('meta_description', set_value("meta_description"),'class="form-control"');
                ?>
            </div>
            
            <?php echo form_close();?>
        </div>
    </div>
</div>