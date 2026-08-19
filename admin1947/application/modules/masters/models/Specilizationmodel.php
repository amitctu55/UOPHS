<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Specilizationmodel extends CI_Model{
	
	
	
	public function insert($image='')
	{
		$date=date('Y-m-d h:i:s');
		$eduname=$this->input->post('specilization');
		$data=array('name'=>$eduname,'create_date'=>$date);
		if($image)
			$data['image_icon']=$image;
		$r=$this->db->insert('master_specialization',$data);
		return (!$r) ? false : true;
	}
	
	public function edit($id,$image='')
	{
		$date=date('Y-m-d h:i:s');
		$eduname=$this->input->post('specilization');
		$data=array('name'=>$eduname,'modified_date'=>$date);
		if($image)
			$data['image_icon']=$image;
		$this->db->where('id',$id);
		$r=$this->db->update('master_specialization',$data);
		return (!$r) ? false : true;
	}
	
	public function delete($uid)
	{
		$this->db->where('id',$uid);
		$r=$this->db->delete('master_specialization');
		return (!$r) ? false : true;
	}
	
	public function status($uid)
	{
		$status=$this->db->get_where('master_specialization',array('id'=>$uid))->row('status');
		if($status==1)
		{
			$data=array('status'=>0);
			$this->db->where('id',$uid);
			$this->db->update('master_specialization',$data);
			echo "Hide";
		}
		else{
			$data=array('status'=>1);
			$this->db->where('id',$uid);
			$this->db->update('master_specialization',$data);
			echo "Show";
		}
		
	}

     
    
    
}