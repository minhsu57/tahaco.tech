<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'Home';

$route['404_override'] = '';
$route['translate_uri_dashes'] = TRUE;

$route['admin'] = 'admin/dashboard';

$route['category/(:any)'] 		= "category/index/$1";
$route['san-pham'] 				= "category/product";
$route['lien-he'] 				= "contact";
$route['tin-tuc/(:num)-(:any)'] = "news/detail/$1";
$route['tin-tuc'] 				= "news/index";