<?php
/**
 * CodeIgniter
 *
 * An open source application development framework for PHP
 *
 * This content is released under the MIT License (MIT)
 *
 * Copyright (c) 2014 - 2018, British Columbia Institute of Technology
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 * @package	CodeIgniter
 * @author	EllisLab Dev Team
 * @copyright	Copyright (c) 2008 - 2014, EllisLab, Inc. (https://ellislab.com/)
 * @copyright	Copyright (c) 2014 - 2018, British Columbia Institute of Technology (http://bcit.ca/)
 * @license	http://opensource.org/licenses/MIT	MIT License
 * @link	https://codeigniter.com
 * @since	Version 1.0.0
 * @filesource
 */
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * CodeIgniter FDDI Helpers
 *
 * @package		CodeIgniter
 * @subpackage	Helpers
 * @category	Helpers
 * @author		Azad Hussain
 */

// ------------------------------------------------------------------------

if ( ! function_exists('formateDate'))
{
	
	function formateDate($date){
		return ($date) ? date("d/m/Y", strtotime($date)) : '';
	}
}

if ( ! function_exists('getUserId'))
{
	function getUserId(){
		return get_instance()->session->userdata('adminuserid');
	}
}
if ( ! function_exists('getInstitutionId'))
{
	function getInstitutionId(){
		return get_instance()->session->userdata('institution_id');
	}
}

if ( ! function_exists('getUserName'))
{
	function getUserName(){
		return get_instance()->session->userdata('username');
	}
}

if ( ! function_exists('getUserType'))
{
	function getUserType(){
		return get_instance()->session->userdata('code');
	}
}

if ( ! function_exists('getUserIP'))
{
	function getUserIP(){
		return get_instance()->input->ip_address();
	}
}

if ( ! function_exists('getUserAgent'))
{
	function getUserAgent(){
		return get_instance()->input->user_agent();
	}
}

if ( ! function_exists('getFY'))
{
	function getFY($date){
		$d = explode('-',$date);
		$y = $d[0];
		$m = $d[1];
		
		if($m >=4)
			return ($date) ? $y.'-'.($y+1) : '';
		else
			return ($date) ? ($y-1).'-'.$y : ''; 
	}
}


if ( ! function_exists('last_query'))
{
	function last_query(){
		echo get_instance()->db->last_query();
	}
}

if ( ! function_exists('getBlockList'))
{
	function getBlockList($district){
		$res = get_instance()->db->select('block_name,block_code')->order_by('block_name','ASC')->get_where('lgd_block',array('district_code'=>$district))->result();
		return $res;
	}
}

if ( ! function_exists('getVillageList'))
{
	function getVillageList($block){
		$res = get_instance()->db->select('village_name,village_code')->order_by('village_name','ASC')->get_where('lgd_villages',array('block_code'=>$block))->result();
		return $res;
	}
}
/****************************************************/
if ( ! function_exists('getCityName'))
{
	function getCityName($id){
		$res = get_instance()->db->select('name')->get_where('master_city',array('id'=>$id))->row('name');
		return $res;
	}
}

if ( ! function_exists('getRegdcouncilName'))
{
	function getRegdcouncilName($id){
		$res = get_instance()->db->select('name')->get_where('master_council',array('id'=>$id))->row('name');
		return $res;
	}
}


if ( ! function_exists('getQualificationName'))
{
	function getQualificationName($id){
		$res = get_instance()->db->select('name')->get_where('master_degree',array('id'=>$id))->row('name');
		return $res;
	}
}

if ( ! function_exists('getSpecilizationName'))
{
	function getSpecilizationName($id){
		$res = get_instance()->db->select('name')->get_where('master_specialization',array('id'=>$id))->row('name');
		return $res;
	}
}

if ( ! function_exists('getServicesName'))
{
	function getServicesName($id){
		$res = get_instance()->db->select('name')->get_where('master_services',array('id'=>$id))->row('name');
		return $res;
	}
}


