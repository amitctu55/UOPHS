<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Councilmodel extends CI_Model{
	
	
	
	public function insert()
	{
		$date=date('Y-m-d h:i:s');
		$eduname=$this->input->post('specilization');
		$data=array('name'=>$eduname);
		$r=$this->db->insert('master_council',$data);
		return (!$r) ? false : true;
	}
	
	public function edit($id)
	{
		$eduname=$this->input->post('specilization');
		$data=array('name'=>$eduname);
		$this->db->where('id',$id);
		$r=$this->db->update('master_council',$data);
		return (!$r) ? false : true;
	}
	
	public function delete($uid)
	{
		$this->db->where('id',$uid);
		$r=$this->db->delete('master_council');
		return (!$r) ? false : true;
	}
	
	public function status($uid)
	{
		$status=$this->db->get_where('master_council',array('id'=>$uid))->row('status');
		if($status==1)
		{
			$data=array('status'=>0);
			$this->db->where('id',$uid);
			$this->db->update('master_council',$data);
			echo "Hide";
		}
		else{
			$data=array('status'=>1);
			$this->db->where('id',$uid);
			$this->db->update('master_council',$data);
			echo "Show";
		}
		
	}
}