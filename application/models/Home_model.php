<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Home_model extends MY_Model
{
    public $table = 'home';
    public $timestamps = FALSE;
    public function __construct()
    {
        parent::__construct();
        $this->table = 'home';
    }
}