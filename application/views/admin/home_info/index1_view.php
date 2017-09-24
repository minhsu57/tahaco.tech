<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<div class="container" style="margin-top:0px;">
    <div class="row">
        <div class="col-lg-12">
            <?php echo form_open_multipart('admin/home_info/area1/');?>
            <div class="col-lg-12">
                <h3 class="col-lg-10" style="margin-top: 0"><?php echo 'Trang chủ 1' ?></h3>

                <div class="col-lg-2 pull-right">
                    <?php echo form_submit('submit', 'Save', 'class="btn btn-primary btn-lg btn-sm"');?>
                    <?php echo anchor('/admin/', 'Cancel','class="btn btn-default btn-lg btn-sm"');?>
                </div>
            </div>
            <div class="form-group col-md-12 col-lg-12">
                <?php
                echo form_label('Tiêu đề','slogan1');
                echo form_error('slogan1');
                echo form_input('slogan1',set_value('slogan1',$item->slogan1),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Chủ đầu tư','chu_dau_tu');
                echo form_error('chu_dau_tu');
                echo form_input('chu_dau_tu',set_value('chu_dau_tu',$item->chu_dau_tu),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Vị trí dự án','vi_tri_du_an');
                echo form_error('vi_tri_du_an');
                echo form_input('vi_tri_du_an',set_value('vi_tri_du_an',$item->vi_tri_du_an),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Tiện ích dự án','tien_ich_du_an');
                echo form_error('tien_ich_du_an');
                echo form_input('tien_ich_du_an',set_value('tien_ich_du_an',$item->tien_ich_du_an),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Phương thức thanh toán','phuong_thuc_thanh_toan');
                echo form_error('phuong_thuc_thanh_toan');
                echo form_input('phuong_thuc_thanh_toan',set_value('phuong_thuc_thanh_toan',$item->phuong_thuc_thanh_toan),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-12 col-lg-12">
                Mô tả   
                <div id="editor">
                    <?php //echo $this->ckeditor->editor('content',$item->content);?>
                    <textarea class="ckeditor" name="sub_slogan1"><?php echo $item->sub_slogan1 ?></textarea> 
                    <?php echo form_error('sub_slogan1','<p class="error">'); ?>
                </div>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                Nội dung icon 1    
                <div id="editor">
                    <?php //echo $this->ckeditor->editor('content',$item->content);?>
                    <textarea class="ckeditor" name="item1_slogan1"><?php echo $item->item1_slogan1 ?></textarea> 
                    <?php echo form_error('item1_slogan1','<p class="error">'); ?>
                </div>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                    Nội dung icon 2
                <div id="editor">
                    <?php //echo $this->ckeditor->editor('content',$item->content);?>
                    <textarea class="ckeditor" name="item2_slogan1"><?php echo $item->item2_slogan1 ?></textarea> 
                    <?php echo form_error('item2_slogan1','<p class="error">'); ?>
                </div>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                Nội dung icon 3
                <div id="editor">
                    <?php //echo $this->ckeditor->editor('content',$item->content);?>
                    <textarea class="ckeditor" name="item3_slogan1"><?php echo $item->item3_slogan1 ?></textarea> 
                    <?php echo form_error('item3_slogan1','<p class="error">'); ?>
                </div>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                Hình ảnh
                <div id="editor">
                    <?php //echo $this->ckeditor->editor('content',$item->content);?>
                    <textarea class="ckeditor" name="image_slogan1"><?php echo $item->image_slogan1 ?></textarea> 
                    <?php echo form_error('image_slogan1','<p class="error">'); ?>
                </div>
            </div>
            
            <!-- AJAX Response will be outputted on this DIV container -->
            <?php echo form_hidden('id',$item->id);?>
            
            <?php echo form_close();?>
        </div>
    </div>
</div>