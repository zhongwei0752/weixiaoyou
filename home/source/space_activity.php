<?php
/*
	[UCenter Home] (C) 2007-2008 Comsenz Inc.
	$Id: space_activity.php 13194 2013-12-27 活动大厅
*/

if(!defined('IN_UCHOME')) {
	exit('Access Denied');
}
//分页
$page = empty($_GET['page'])?1:intval($_GET['page']);
if($page<1) $page=1;
$perpage = 10;
$perpage = mob_perpage($perpage);
$start = ($page-1)*$perpage;
ckstart($start, $perpage);
$theurl="space.php?do=activity";
$count = $_SGLOBAL['db']->result($_SGLOBAL['db']->query("SELECT COUNT(*) FROM ".tname('activity')." "),0);
$query = $_SGLOBAL['db']->query("SELECT * FROM ".tname('activity')." order by dateline DESC LIMIT $start,$perpage ");
		while ($value = $_SGLOBAL['db']->fetch_array($query)) {
			$query1 = $_SGLOBAL['db']->query("SELECT * FROM ".tname('pic')." where picid=$value[picid]");
			$value1 = $_SGLOBAL['db']->fetch_array($query1);
			if($value1['filepath']){
				$value['thumbpic']="./attachment/".$value1['filepath'].".thumb.jpg";
				$value['pic']="./attachment/".$value1['filepath'];
			}
			
			$list[]=$value;
		}
$multi = multi($count, $perpage, $page, $theurl);
include_once template("space_activity");



?>