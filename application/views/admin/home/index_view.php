<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<div class="container" style="margin-top:0px;">
    <div class="row">
        <div class="col-lg-12">
            <?php echo form_open_multipart('admin/home/index/');?>
            <div class="col-lg-12">
                <h3 class="col-lg-10" style="margin-top: 0"><?php echo 'Quản lý Thông tin trang chủ/Website' ?></h3>

                <div class="col-lg-2 pull-right">
                    <?php echo form_submit('submit', 'Save', 'class="btn btn-primary btn-lg btn-sm"');?>
                    <?php echo anchor('/admin/', 'Cancel','class="btn btn-default btn-lg btn-sm"');?>
                </div>
            </div>
            
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Website name','website_name');
                echo form_error('website_name','<span class="error">');
                echo form_input('website_name',set_value('website_name',$item->website_name),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Page title','title');
                echo form_error('title','<span class="error">');
                echo form_input('title',set_value('title',$item->title),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Facebook','facebook');
                echo form_error('facebook','<span class="error">');
                echo form_input('facebook',set_value('facebook',$item->facebook),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Google +','google_plus');
                echo form_error('google_plus','<span class="error">');
                echo form_input('google_plus',set_value('google_plus',$item->google_plus),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Phone','phone');
                echo form_error('phone','<span class="error">');
                echo form_input('phone',set_value('phone',$item->phone),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Address','address');
                echo form_error('address','<span class="error">');
                echo form_input('address',set_value('address',$item->address),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Google map','google_map');
                echo form_error('google_map','<span class="error">');
                echo form_input('google_map',set_value('google_map',$item->google_map),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Hotline','hotline');
                echo form_error('hotline','<span class="error">');
                echo form_input('hotline',set_value('hotline',$item->hotline),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Youtube','youtube');
                echo form_error('youtube','<span class="error">');
                echo form_input('youtube',set_value('youtube',$item->youtube),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Email','email');
                echo form_error('email','<span class="error">');
                echo form_input('email',set_value('email',$item->email),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Admin Email','admin_email');
                echo form_error('admin_email','<span class="error">');
                echo form_input('admin_email',set_value('admin_email',$item->admin_email),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Meta keyword','meta_keyword');
                echo form_error('meta_keyword','<span class="error">'); ?>
                <textarea class="form-control" name="meta_keyword" rows="3"><?php echo $item->meta_keyword ?></textarea> 
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Meta Description','meta_description');
                echo form_error('meta_description','<span class="error">'); ?>
                <textarea class="form-control" name="meta_description" rows="3"><?php echo $item->meta_description ?></textarea> 
            </div>            
            <div class="form-group col-md-4 col-lg-4">
                <label>Favicon</label>
                <div id="editor">
                    <?php echo form_error('favicon','<p class="error">'); ?>
                    <textarea class="ckeditor" name="favicon"><?php echo $item->favicon; ?></textarea> 
                    
                </div>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <label>Sidebar Ads</label>
                <div id="editor">
                    <?php echo form_error('ad_video','<p class="error">'); ?>
                    <textarea class="ckeditor" name="ad_video"><?php echo $item->ad_video; ?></textarea> 
                    
                </div>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <label>Footer content 01</label>
                <div id="editor">
                    <?php echo form_error('footer_content_1','<p class="error">'); ?>
                    <textarea class="ckeditor" name="footer_content_1"><?php echo $item->footer_content_1; ?></textarea> 
                    
                </div>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <label>Footer content 02</label>
                <div id="editor">
                    <?php echo form_error('footer_content_2','<p class="error">'); ?>
                    <textarea class="ckeditor" name="footer_content_2"><?php echo $item->footer_content_2; ?></textarea> 
                    
                </div>
            </div>
            <?php echo form_hidden('id',$item->id);?>
            
            <?php echo form_close();?>
        </div>
    </div>
</div>