<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<div class="container" style="margin-top:0px;">
    <div class="row">
        <div class="col-lg-12">
            <?php echo form_open_multipart('admin/home_info/area2/');?>
            <div class="col-lg-12">
                <h3 class="col-lg-10" style="margin-top: 0"><?php echo 'Trang chủ 2' ?></h3>

                <div class="col-lg-2 pull-right">
                    <?php echo form_submit('submit', 'Save', 'class="btn btn-primary btn-lg btn-sm"');?>
                    <?php echo anchor('/admin/', 'Cancel','class="btn btn-default btn-lg btn-sm"');?>
                </div>
            </div>
            <div class="form-group col-md-12 col-lg-12">
                <?php
                echo form_label('Tiêu đề','slogan2');
                echo form_error('slogan2');
                echo form_input('slogan2',set_value('slogan2',$item->slogan2),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-12 col-lg-12">
                Tóm tắt ngắn
                <div id="editor">
                    <?php //echo $this->ckeditor->editor('content',$item->content);?>
                    <textarea class="ckeditor" name="sub_slogan2"><?php echo $item->sub_slogan2 ?></textarea> 
                    <?php echo form_error('sub_slogan2','<p class="error">'); ?>
                </div>
            </div>
            <div class="form-group col-md-12 col-lg-12">
                <div id="editor">
                    <?php //echo $this->ckeditor->editor('content',$item->content);?>
                    <textarea class="ckeditor" name="image_slogan2"><?php echo $item->image_slogan2 ?></textarea> 
                    <?php echo form_error('image_slogan2','<p class="error">'); ?>
                </div>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Phía đông','phia_dong');
                echo form_error('phia_dong');
                echo form_input('phia_dong',set_value('phia_dong',$item->phia_dong),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Phía tây','phia_tay');
                echo form_error('phia_tay');
                echo form_input('phia_tay',set_value('phia_tay',$item->phia_tay),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Phía nam','phia_nam');
                echo form_error('phia_nam');
                echo form_input('phia_nam',set_value('phia_nam',$item->phia_nam),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <?php
                echo form_label('Phía bắc','phia_bac');
                echo form_error('phia_bac');
                echo form_input('phia_bac',set_value('phia_bac',$item->phia_bac),'class="form-control"');
                ?>
            </div>
            <!-- AJAX Response will be outputted on this DIV container -->
            <?php echo form_hidden('id',$item->id);?>
            
            <?php echo form_close();?>
        </div>
    </div>
</div>