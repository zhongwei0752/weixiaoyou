<?php
/*
	[UCenter Home] (C) 2007-2008 Comsenz Inc.
	$Id: space_activity.php 13194 2013-12-27 活动大厅
*/

if(!defined('IN_UCHOME')) {
	exit('Access Denied');
}
//个人信息认证
$renzheng=$_POST['renzheng'];
if ($renzheng) {
	$name=$_POST['name'];
	$uid = $_SGLOBAL['supe_uid'];
	$telephone =$_POST['telephone'];
	if(empty($name)||empty($telephone))
	{
		echo "-1";
	}else{
		$data=array('name'=>$name,'telephone'=>$telephone,'namestatus'=>1);
		updatetable('space',$data,array('uid'=>$uid));
		//include_once(S_ROOT.'./source/function_feed.php');
	    echo "1";
	}
}else{
	include_once template("cp_sedrenzheng");
}

?>