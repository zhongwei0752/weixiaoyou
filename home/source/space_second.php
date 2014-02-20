<?php
/*
	[UCenter Home] (C) 2007-2008 Comsenz Inc.
	$Id: space_activity.php 13194 2013-12-27 活动大厅
*/

if(!defined('IN_UCHOME')) {
	exit('Access Denied');
}
$op=$_GET['op'];
$to=$_GET['to'];
//分页
$page = empty($_GET['page'])?1:intval($_GET['page']);
if($page<1) $page=1;
$perpage = 10;
$perpage = mob_perpage($perpage);
$start = ($page-1)*$perpage;
ckstart($start, $perpage);
if($op=='me'){//主要版面显示
	if ($to=='shoucang') {//我的收藏
	$theurl="space.php?do=second&to=shoucang";
	$query = $_SGLOBAL['db']->query("SELECT * FROM ".tname('second_shoucang')." ss LEFT JOIN ".tname('second')." s ON ss.sed_id=s.id where ss.uid=$_SGLOBAL[supe_uid]");
    $count = $_SGLOBAL['db']->result($_SGLOBAL['db']->query("SELECT COUNT(*) FROM ".tname('second_shoucang')." where uid=$_SGLOBAL[supe_uid]"),0);
	}else{
	$theurl="space.php?do=second";//我的交易
	$count = $_SGLOBAL['db']->result($_SGLOBAL['db']->query("SELECT COUNT(*) FROM ".tname('second')." where sed_time>$_SGLOBAL[timestamp]"),0);
	$query = $_SGLOBAL['db']->query("SELECT * FROM ".tname('second')." where sed_hide='1' and uid=$_SGLOBAL[supe_uid] order by sed_dateline DESC LIMIT $start,$perpage ");
}	
}else{
	$theurl="space.php?do=second";//正在进行的交易
	$count = $_SGLOBAL['db']->result($_SGLOBAL['db']->query("SELECT COUNT(*) FROM ".tname('second')." where sed_time>$_SGLOBAL[timestamp]"),0);
	$query = $_SGLOBAL['db']->query("SELECT * FROM ".tname('second')." where sed_hide='1' and sed_time>$_SGLOBAL[timestamp] order by sed_dateline DESC LIMIT $start,$perpage ");
}
		while ($value = $_SGLOBAL['db']->fetch_array($query)) {
             //查询是否已经收藏该宝贝
			$query2 = $_SGLOBAL['db']->query("SELECT * FROM ".tname('second_shoucang')." where uid=$_SGLOBAL[supe_uid] and sed_id=$value[id]");
			$value2 = $_SGLOBAL['db']->fetch_array($query2);
			if($value2){
				$value['shoucang']='0';//如果存在值，就说明已收藏，为1
			}else{
				$value['shoucang']='1';//反之亦然
			}

			$query1 = $_SGLOBAL['db']->query("SELECT * FROM ".tname('pic')." where picid=$value[sed_picid]");
			$value1 = $_SGLOBAL['db']->fetch_array($query1);
			if($value1['filepath']){
				$value['thumbpic']="./attachment/".$value1['filepath'].".thumb.jpg";
				$value['pic']="./attachment/".$value1['filepath'];
			}
			
			$list[]=$value;
		}
$multi = multi($count, $perpage, $page, $theurl);
include_once template("space_second");




?>