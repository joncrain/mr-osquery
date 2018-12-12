<?php 

/**
 * osquery class
 *
 * @package munkireport
 * @author 
 **/
class Osquery_controller extends Module_controller
{
	
	/*** Protect methods with auth! ****/
	function __construct()
	{
		// Store module path
		$this->module_path = dirname(__FILE__);
	}

} // END class default_module
