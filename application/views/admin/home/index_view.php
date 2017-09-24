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
            
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Tiêu đề','title');
                echo form_error('title');
                echo form_input('title',set_value('title',$item->title),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Tiêu đề Trang','page_title');
                echo form_error('page_title');
                echo form_input('page_title',set_value('page_title',$item->page_title),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Meta Description','meta_description');
                echo form_error('meta_description'); ?>
                <textarea class="form-control" name="meta_description" rows="3"><?php echo $item->meta_description ?></textarea> 
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Meta keyword','meta_keyword');
                echo form_error('meta_keyword'); ?>
                <textarea class="form-control" name="meta_keyword" rows="3"><?php echo $item->meta_keyword ?></textarea> 
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Facebook','facebook');
                echo form_error('facebook');
                echo form_input('facebook',set_value('facebook',$item->facebook),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Google','google');
                echo form_error('google');
                echo form_input('google',set_value('google',$item->google),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Điện thoại','phone');
                echo form_error('phone');
                echo form_input('phone',set_value('phone',$item->phone),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Địa chỉ','address');
                echo form_error('address');
                echo form_input('address',set_value('address',$item->address),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Hotline','hotline');
                echo form_error('hotline');
                echo form_input('hotline',set_value('hotline',$item->hotline),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Gallery','gallery');
                echo form_error('gallery');
                echo form_input('gallery',set_value('gallery',$item->gallery),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Sale','sale');
                echo form_error('sale');
                echo form_input('sale',set_value('sale',$item->sale),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Youtube','youtube');
                echo form_error('youtube');
                echo form_input('youtube',set_value('youtube',$item->youtube),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Support','support');
                echo form_error('support');
                echo form_input('support',set_value('support',$item->support),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Email Liên hệ','contact_email');
                echo form_error('contact_email');
                echo form_input('contact_email',set_value('contact_email',$item->contact_email),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Email Admin','admin_email');
                echo form_error('admin_email');
                echo form_input('admin_email',set_value('admin_email',$item->admin_email),'class="form-control"');
                ?>
            </div>
            
            <div class="form-group col-md-6 col-lg-6">
                <?php
                    echo form_label('Text link footer','Text link footer');
                ?>
                <div id="editor">
                    <?php //echo $this->ckeditor->editor('content',$item->content);?>
                    <textarea class="ckeditor" name="footer_link"><?php echo $item->footer_link ?></textarea> 
                    <?php echo form_error('footer_link','<p class="error">'); ?>
                </div>
            </div>
            <!-- AJAX Response will be outputted on this DIV container -->
            <?php echo form_hidden('id',$item->id);?>
            
            <?php echo form_close();?>
        </div>
    </div>
</div>