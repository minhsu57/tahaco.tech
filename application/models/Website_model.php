<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Website_model extends MY_Model
{
    public $table = 'website';
    public $timestamps = FALSE;
    public function __construct()
    {
        parent::__construct();
        $this->table = 'website';
    }
}