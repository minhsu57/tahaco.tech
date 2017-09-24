<?php defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="container" style="margin-top:0px;">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="text-center">QUẢN LÝ CATEGORY</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <a href="<?php echo base_url('admin/category/create') ?>"><button class="btn btn-primary btn-md pull-right"><li class="fa fa-plus"></li> Thêm mới</button></a>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12" style="margin-top: 10px;">
            <?php
            echo '<table class="table table-hover table-bordered table-condensed">';
            echo '<thead>';
            echo '<tr>';
            echo '<th>Category Name</th>';
            echo '<th>Modify Date</th>';
            echo '<th style="width: 90px !important">Actions</th>';
            echo '</tr>';
            echo '</thead>';
            echo '<tbody>';
            if(!empty($items))
            {

                foreach($items as $item)
                {
                    echo '<tr>';
                    echo '<td>'.$item->name.'</td>';                    
                    echo '<td>'.$item->modified_date.'</td>';
                    echo '<td>';
                    echo '<a href="'.base_url("admin/").'category/edit/'.$item->id.'" style="color:#fff"><button class="btn btn-sm btn-warning"><li class="fa fa-pencil"></li></button></a> ';
                    if($item->level != -1){
                        echo '<a href="'.base_url("admin/").'category/delete/'.$item->id.'" style="color:#fff" onclick="return confirm(\'Bạn chắc chắn muốn xóa ?\')"><button class="btn btn-sm btn-danger"><li class="fa fa-trash"></li></button></a>';
                    }                    
                    ?>
                    <?php
                    echo '</td>';
                    echo '</tr>';
                }
            }
            echo '</tbody>';
            echo '</table>';
            echo '<nav><ul class="pagination">';
            // echo //$next_previous_pages;
            echo '</ul></nav>';
            ?>
        </div>
    </div>
</div>