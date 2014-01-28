<?php if(!defined('IN_UCHOME')) exit('Access Denied');?><?php subtplcheck('template/default/cp_event|template/default/header|template/default/cp_topic_menu|template/default/footer|template/default/space_topic_inc', '1387530317', 'template/default/cp_event');?><!DOCTYPE html>
<html lang="en">
<head>
<title>微校友</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="./template/default/feed/css/bootstrap.min.css" />
<link rel="stylesheet" href="./template/default/feed/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="./template/default/feed/css/fullcalendar.css" />
<link rel="stylesheet" href="./template/default/feed/css/matrix-style.css" />
<link rel="stylesheet" href="./template/default/feed/css/matrix-media.css" />
<link href="./template/default/feed/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="./template/default/feed/css/jquery.gritter.css" />

</head>
<body>

<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">微校友</a></h1>
</div>
<!--close-Header-part--> 


<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">欢迎您，<?=$_SN[$space['uid']]?></span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
        <li class="divider"></li>
        <li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">信息</span> <span class="label label-important">5</span> <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> new message</a></li>
        <li class="divider"></li>
        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> inbox</a></li>
        <li class="divider"></li>
        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> outbox</a></li>
        <li class="divider"></li>
        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">设置</span></a></li>
    <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">退出</span></a></li>
  </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->
<div id="search">
  <input type="text" placeholder="Search here..."/>
  <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch-->
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li class="active"><a href="index.html"><i class="icon icon-home"></i> <span>首页</span></a> </li>
    <li> <a href="charts.html"><i class="icon icon-signal"></i> <span>Charts &amp; graphs</span></a> </li>
    <li> <a href="widgets.html"><i class="icon icon-inbox"></i> <span>Widgets</span></a> </li>
    <li><a href="tables.html"><i class="icon icon-th"></i> <span>Tables</span></a></li>
    <li><a href="grid.html"><i class="icon icon-fullscreen"></i> <span>Full width</span></a></li>
    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Forms</span> <span class="label label-important">3</span></a>
      <ul>
        <li><a href="form-common.html">Basic Form</a></li>
        <li><a href="form-validation.html">Form with Validation</a></li>
        <li><a href="form-wizard.html">Form with Wizard</a></li>
      </ul>
    </li>
    <li><a href="buttons.html"><i class="icon icon-tint"></i> <span>Buttons &amp; icons</span></a></li>
    <li><a href="interface.html"><i class="icon icon-pencil"></i> <span>Eelements</span></a></li>
    <li class="submenu"> <a href="#"><i class="icon icon-file"></i> <span>Addons</span> <span class="label label-important">5</span></a>
      <ul>
        <li><a href="index2.html">Dashboard2</a></li>
        <li><a href="gallery.html">Gallery</a></li>
        <li><a href="calendar.html">Calendar</a></li>
        <li><a href="invoice.html">Invoice</a></li>
        <li><a href="chat.html">Chat option</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-info-sign"></i> <span>Error</span> <span class="label label-important">4</span></a>
      <ul>
        <li><a href="error403.html">Error 403</a></li>
        <li><a href="error404.html">Error 404</a></li>
        <li><a href="error405.html">Error 405</a></li>
        <li><a href="error500.html">Error 500</a></li>
      </ul>
    </li>
    <li class="content"> <span>Monthly Bandwidth Transfer</span>
      <div class="progress progress-mini progress-danger active progress-striped">
        <div style="width: 77%;" class="bar"></div>
      </div>
      <span class="percent">77%</span>
      <div class="stat">21419.94 / 14000 MB</div>
    </li>
    <li class="content"> <span>Disk Space Usage</span>
      <div class="progress progress-mini active progress-striped">
        <div style="width: 87%;" class="bar"></div>
      </div>
      <span class="percent">87%</span>
      <div class="stat">604.44 / 4000 MB</div>
    </li>
  </ul>
</div>
<!--sidebar-menu-->


<?php if(empty($topic) && in_array($op,array("edit", "pic", "thread", "members", "comment", "invite", "eventinvite"))) { ?>
<!--//管理页页头//-->
<style type="text/css">
.poster_pre{
max-width: 80px; max-height: 104px;}
.poster{
max-width: 200px; max-height: 260px;}
</style>
<div id="mainarea">
    <h2 class="title"><img src="image/app/event.gif" />活动 <?php if($eventid) { ?>- <a href="space.php?do=event&id=<?=$event['eventid']?>"><?=$event['title']?></a><?php } ?></h2>
    <div class="tabs_header">
        <ul class="tabs">
<?php if($eventid) { ?>
<?php if($allowmanage) { ?>
            <li <?=$menus['edit']?>><a href="cp.php?ac=event&op=edit&id=<?=$eventid?>"><span>修改活动</span></a></li>
<?php } ?>
<?php if($_SGLOBAL['supe_userevent']['status'] > 1 && ($_SGLOBAL['supe_userevent']['status'] >= 3 || $event['allowinvite'])) { ?>
<li <?=$menus['invite']?>><a href="cp.php?ac=event&op=invite&id=<?=$eventid?>"><span>邀请好友</span></a></li>
<?php } ?>
<?php if($_SGLOBAL['supe_userevent']['status'] >= 3) { ?>
<li <?=$menus['members']?>><a href="cp.php?ac=event&op=members&id=<?=$eventid?>"><span>成员管理</span></a></li>
<?php } ?>
<?php if($allowmanage) { ?>
<li <?=$menus['pic']?>><a href="cp.php?ac=event&op=pic&id=<?=$eventid?>"><span>照片管理</span></a></li>
<?php if($event['tagid']) { ?>
<li <?=$menus['thread']?>><a href="cp.php?ac=event&op=thread&id=<?=$eventid?>"><span>话题管理</span></a></li>
<?php } ?>
<?php } ?>
<?php } else { ?>
<?php if("eventinvite"==$op) { ?>
<li class="active"><a href="cp.php?ac=event&op=eventinvite"><span>活动邀请</span></a></li>
<?php } else { ?>
<li class="active"><a href="cp.php?ac=event"><span>发起活动</span></a></li>
<?php } ?>
<?php } ?>
<li><a href="space.php?do=event&id=<?=$eventid?>"><span>返回活动首页</span></a></li>
        </ul>
        <?php if($menus['members']) { ?>
        <form action="cp.php" method="get" id="searchform" name="searchform">
<div style="margin: 0pt 6px 5px 0pt; float: right;">
<table cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td style="padding: 0pt;"><input type="text" style="border-right: medium none; width: 160px;" tabindex="1" class="t_input" onfocus="if(this.value=='搜索成员')this.value='';" value="搜索成员" name="key" id="key"/></td>
<td style="padding: 0pt;"><a href="javascript:$('searchform').submit();"><img alt="搜索" src="image/search_btn.gif"/></a></td>
</tr>
</tbody>
</table>
</div>
<input type="hidden" value="event" name="ac"/>
<input type="hidden" value="<?=$eventid?>" name="id"/>
<input type="hidden" value="members" name="op"/>
<input type="hidden" value="<?=$_GET['status']?>" name="status"/>
<input type="hidden" value="<?php echo formhash(); ?>" name="formhash"/>
</form>
        <?php } ?>
    </div>
<?php } ?>

<?php if("join"==$op) { ?>
<?php if($event['allowfellow'] || $event['template']) { ?>
<div>
<h1>填写报名信息</h1>
<form action="cp.php?ac=event&op=join&id=<?=$event['eventid']?>" method="post" style="padding: 5px 10px;">
<?php if($event['allowfellow']) { ?>
<p>
<span>携带人数</span>
<input name="fellow" type="text" size="4" value="<?php if(empty($_SGLOBAL['supe_userevent']['fellow'])) { ?>0<?php } else { ?><?=$_SGLOBAL['supe_userevent']['fellow']?><?php } ?>" />
<span class="tiptext">（如果你带朋友参加，请注明携带人数）</span>
</p>
<?php } ?>
<?php if($event['template']) { ?>
<p>
<span>报名信息</span><span class="tiptext">（请按活动发起者给出的模板填写）</span><br />
<textarea name="template" rows="4" style="width: 320px;"><?php if(empty($_SGLOBAL['supe_userevent']['template'])) { ?><?=$event['template']?><?php } else { ?><?=$_SGLOBAL['supe_userevent']['template']?><?php } ?></textarea>
</p>
<?php } ?>
<p class="btn_line"><br />
<input type="submit" class="submit" name="joinsubmit" value="确定" />
<input type="button" class="button" value="取消" onclick="hideMenu()" />
</p>
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
</form>
</div>
<?php } else { ?>
<div>
<form method="post" name="eventform" action="cp.php?ac=event&op=join&id=<?=$eventid?>">
<h1>您确定<?php if($event['verify']) { ?>报名<?php } else { ?>参加<?php } ?>此活动吗？</h1>
<p class="btn_line"><br />
<input type="hidden" name="refer" value="<?=$_SGLOBAL['refer']?>">
<input type="submit" name="joinsubmit" value="确定" class="submit" />
<input type="button" name="btnclose" value="取消" onclick="hideMenu();" class="button" />
</p>
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
</form>
</div>
<?php } ?>
<?php } elseif($op == "follow") { ?>
<div>
<form method="post" name="eventform" action="cp.php?ac=event&op=follow&id=<?=$eventid?>">
<h1>您确定关注此活动吗？</h1>
<p class="btn_line"><br />
<input type="hidden" name="refer" value="<?=$_SGLOBAL['refer']?>" />
<input type="submit" name="followsubmit" value="确定" class="submit" />
<input type="button" name="btnclose" value="取消" onclick="hideMenu();" class="button" />
</p>
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>">
</form>
</div>
<?php } elseif($op == "cancelfollow") { ?>
<div>
<form method="post" name="eventform" action="cp.php?ac=event&op=cancelfollow&id=<?=$eventid?>">
<h1>您确定取消关注此活动吗？</h1>
<p class="btn_line"><br />
<input type="hidden" name="refer" value="<?=$_SGLOBAL['refer']?>">
<input type="submit" name="cancelfollowsubmit" value="确定" class="submit" />
<input type="button" name="btnclose" value="取消" onclick="hideMenu();" class="button" />
</p>
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
</form>
</div>
<?php } elseif($op == "quit") { ?>
<div>
<form method="post" name="eventform" action="cp.php?ac=event&op=quit&id=<?=$eventid?>">
<h1>您确定退出此活动吗？</h1>
<p class="btn_line"><br />
<input type="hidden" name="refer" value="<?=$_SGLOBAL['refer']?>">
<input type="submit" name="quitsubmit" value="确定" class="submit" />
<input type="button" name="btnclose" value="取消" onclick="hideMenu();" class="button" />
</p>
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
</form>
</div>
<?php } elseif($op == "delete") { ?>
<div>
<form method="post" name="eventform" action="cp.php?ac=event&op=delete&id=<?=$eventid?>">
<h1>您确定取消此活动吗？</h1>
<p>活动取消将删除所有活动相关信息。<br />此操作不可恢复！</p>
<p class="btn_line"><br />
<input type="hidden" name="refer" value="<?=$_SGLOBAL['refer']?>">
<input type="submit" name="deletesubmit" value="确定" class="submit" />
<input type="button" name="btnclose" value="取消" onclick="hideMenu();" class="button" />
</p>
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
</form>
</div>
<?php } elseif($op == "member") { ?>
<div id="memberevent">
<div><a class="float_del" title="关闭" href="javascript:hideMenu();">关闭</a></div>
<br clear="both" />
<form method="post" name="eventform" id="eventmember_<?=$uid?>" action="cp.php?ac=event&op=member&id=<?=$eventid?>">
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
<input type="hidden" name="refer" value="<?=$_SGLOBAL['refer']?>">
<input type="hidden" name="uid" value="<?=$userevent['uid']?>">
<p>
设为：
<select name="status">
<option value="2">普通成员</option>
<?php if($_SGLOBAL['supe_uid']==$event['uid']) { ?>
<option value="3">组织者</option>
<?php } ?>
<?php if($event['verify']) { ?>
<option value="0">待审核</option>
<?php } ?>
<option value="-1">踢出成员</option>
</select> &nbsp;
<input type="submit" name="membersubmit" value="提交" class="submit" />
</p>
</form>
</div>
<?php } elseif($op == "print") { ?>
<div>
<div><a class="float_del" title="关闭" href="javascript:hideMenu();">关闭</a></div>
<br clear="both" />
<form method="post" target="_blank" name="eventform" action="cp.php?ac=event&op=print&id=<?=$eventid?>">
<h2>设置打印选项</h2>
<p>内容：
<!--input type="checkbox" id="ckavatarbig" name="avatarbig" /> <lable for="ckavatarbig">大头像</lable-->
<input type="checkbox" id="ckavatarbig" name="avatarsmall" checked="checked" /> <lable for="ckavatarsmall">头像</lable>
<input type="checkbox" id="ckusername" name="username" checked="checked" /> <lable for="ckusername">姓名</lable>
<?php if($event['allowfellow']) { ?>
<input type="checkbox" id="ckfellow" name="fellow" checked="checked" /> <lable for="ckfellow">携带人数</lable>
<?php } ?>
<?php if($event['template']) { ?>
<input type="checkbox" id="cktemplate" name="template" checked="checked" /> <lable for="cktemplate">报名信息</lable>
<?php } ?>
</p>
<p>选项：
<input type="checkbox" id="ckadmin" name="admin" /> <lable for="ckadmin">包括组织者</lable>
</p>
<p class="btn_line">
<input type="hidden" name="refer" value="<?=$_SGLOBAL['refer']?>">
<input type="submit" name="printsubmit" value="确定" class="submit" />
<input type="button" name="btnclose" value="取消" onclick="hideMenu();" class="button" />
</p>
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
</form>
</div>
<?php } elseif($op == "close") { ?>
<div>
<form method="post" name="eventform" action="cp.php?ac=event&op=close&id=<?=$eventid?>">
<h1>您确定要关闭活动吗？</h1>
<p>活动关闭之后将只允许进行浏览。</p>
<p class="btn_line"><br />
<input type="hidden" name="refer" value="<?=$_SGLOBAL['refer']?>">
<input type="submit" name="closesubmit" value="确定" class="submit" />
<input type="button" name="btnclose" value="取消" onclick="hideMenu();" class="button" />
</p>
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
</form>
</div>
<?php } elseif($op == "open") { ?>
<div>
<form method="post" name="eventform" action="cp.php?ac=event&op=open&id=<?=$eventid?>">
<h1>您确定要重新开启活动吗？</h1>
<p class="btn_line"><br />
<input type="hidden" name="refer" value="<?=$_SGLOBAL['refer']?>">
<input type="submit" name="opensubmit" value="确定" class="submit" />
<input type="button" name="btnclose" value="取消" onclick="hideMenu();" class="button" />
</p>
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
</form>
</div>
<?php } elseif($op == "calendar") { ?>	
<div class="calendar">
<div id="calendar_pre" class="floatleft"><a href="#" onclick="showcalendar('<?=$premonth?>'); this.blur(); return false;">&lt;&lt;</a></div>
<div id="calendar_next" class="floatright"><a href="#" onclick="showcalendar('<?=$nextmonth?>'); this.blur(); return false;">&gt;&gt;</a></div>
<span id="thecalendar_year"><?=$year?></span>年 <span id="thecalendar_month"><?=$month?></span>月
<ul>
<li class="calendarli calendarweek">日</li>
<li class="calendarli calendarweek">一</li>
<li class="calendarli calendarweek">二</li>
<li class="calendarli calendarweek">三</li>
<li class="calendarli calendarweek">四</li>
<li class="calendarli calendarweek">五</li>
<li class="calendarli calendarweek">六</li>	
<?php echo str_repeat('<li class="calendarblank">&nbsp;</li>', $week) ?>
<?php if(is_array($days)) { foreach($days as $key => $value) { ?>		
<?php if($value['count']) { ?>		
<li class="calendarli <?=$value['class']?>" onmouseover="$('day_<?=$key?>').style.display='block';" onmouseout="$('day_<?=$key?>').style.display='none';">
<a href="<?=$url?>&date=<?=$year?>-<?=$month?>-<?=$key?>"><?=$key?></a>
<div class="dayevents" id="day_<?=$key?>" style="display:none;">
<ul class="news_list">
<?php if(is_array($value['events'])) { foreach($value['events'] as $event) { ?>
<li class="dayeventsli"><a href="space.php?do=event&id=<?=$event['eventid']?>"><?=$event['title']?></a></li>
<?php } } ?>
</ul>
</div>
</li>
<?php } else { ?>
<li class="calendarli"><?=$key?></li>
<?php } ?>
<?php } } ?>
</ol>
</div>
<?php } elseif($op == "invite") { ?>
<?php if($event['grade'] == -2) { ?>
<div id="content">
<p>您现在不能给好友发送邀请，因为此活动已经关闭。</p>
</div>
<?php } elseif($event['grade'] <= 0) { ?>	
<div id="content">
<p>您现在不能给好友发送邀请，因为活动还未通过审核。</p>
</div>
<?php } elseif($_SGLOBAL['timestamp'] > $event['deadline']) { ?>
<div id="content">
<p>您现在不能给好友发送邀请，因为活动已经截止报名了。</p>
</div>
<?php } elseif($event['limitnum']>0 && $event['limitnum']<=$event['membernum']) { ?>
<div id="content">
<p>您现在不能给好友发送邀请，因为活动人数已满。</p>
</div>
<?php } else { ?>
<div id="content" style="width: 640px;">
<form id="edit_form" name="edit_form" class="c_form" method="post" action="cp.php?ac=event&op=invite&id=<?=$event['eventid']?>&group=<?=$_GET['group']?>&page=<?=$page?>">
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
<div class="h_status">
您可以给未加入本活动的好友们发送邀请。
</div>
<div class="h_status">
<?php if($list) { ?>
<ul class="avatar_list">
<?php if(is_array($list)) { foreach($list as $value) { ?>
<li><div class="avatar48"><a href="space.php?uid=<?=$value['fuid']?>" title="<?=$_SN[$value['fuid']]?>"><?php echo avatar($value[fuid],small); ?></a></div>
<p>
<a href="space.php?uid=<?=$value['fuid']?>" title="<?=$_SN[$value['fuid']]?>"><?=$_SN[$value['fuid']]?></a>
</p>
<p><?php if(empty($joins[$value['fuid']])) { ?><input type="hidden" name="names[]" value="<?=$value['fusername']?>"><input type="checkbox" name="ids[]" value="<?=$value['fuid']?>">选定<?php } else { ?>已邀请<?php } ?></p>
</li>
<?php } } ?>
</ul>
<div class="page"><?=$multi?></div>
<?php } else { ?>
<div class="c_form">还没有好友。</div>
<?php } ?>
</div>
<p>
<input type="checkbox" id="chkall" name="chkall" onclick="checkAll(this.form, 'ids')"><label for="chkall">全选</label> &nbsp;
<input type="hidden" name="invitesubmit" value="1" />
<input type="submit" name="bnt_invitesubmit" value="邀请" class="submit" />
</p>
</form>
</div>
<div id="sidebar" style="width: 150px;">
<div class="cat">
<h3>好友分类</h3>
<ul class="post_list line_list">
<li<?php if($_GET['group']==-1) { ?> class="current"<?php } ?>><a href="cp.php?ac=event&id=<?=$eventid?>&op=invite&group=-1">全部好友</a></li>
<?php if(is_array($groups)) { foreach($groups as $key => $value) { ?>
<li<?php if($_GET['group']==$key) { ?> class="current"<?php } ?>><a href="cp.php?ac=event&id=<?=$eventid?>&op=invite&group=<?=$key?>"><?=$value?></a></li>
<?php } } ?>
</ul>
</div>
</div>
<?php } ?>
<?php } elseif($op == "members") { ?>
<div id="content" style="width: 640px;">
<form id="edit_form" name="edit_form" class="c_form" method="post" action="cp.php?ac=event&op=members&status=<?=$_GET['status']?>&id=<?=$event['eventid']?>">
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />	
<div class="h_status">
选择相应的用户进行用户状态变更。
<?php if($event['limitnum']) { ?><span style="color:#f00">剩余 <?php echo $event[limitnum]-$event[membernum] ?>  个活动成员名额</span><?php } ?>
</div>	
<div class="h_status">
<?php if($list) { ?>
<table >
<tbody>
<?php if(is_array($list)) { foreach($list as $value) { ?>
<tr>
<td width="40"><input type="checkbox" name="ids[]" value="<?=$value['uid']?>"></td>
<td width="80">
<div><a href="space.php?uid=<?=$value['uid']?>" target="_blank"><?php echo avatar($value[uid],small); ?></a></div>
<p><a href="space.php?uid=<?=$value['uid']?>"><?=$_SN[$value['uid']]?></a></p>
</td>
<td>
<?php if($event['allowfellow']) { ?><h2>携带人数：<?php echo intval($value[fellow]) ?></h2><?php } ?>
<?php if($event['template']) { ?>
<h2>报名信息：</h2>
<p><?php echo nl2br(htmlspecialchars($value[template])) ?></p>
<?php } ?>
</td>
</tr>
<?php } } ?>
</tbody>
</table>
<div class="page"><?=$multi?></div>
<?php } else { ?>
<div class="c_form">还没有相关成员。</div>
<?php } ?>
</div>
<p>
<input type="checkbox" id="chkall" name="chkall" onclick="checkAll(this.form, 'ids')"><label for="chkall">全选</label> &nbsp;
设为：
<select name="status">
<option value="2">普通成员</option>
<?php if($_SGLOBAL['supe_uid']==$event['uid']) { ?>
<option value="3">组织者</option>
<?php } ?>
<?php if($event['verify']) { ?>
<option value="0">待审核</option>
<?php } ?>
<option value="-1">踢出成员</option>
</select>
<input type="submit" name="memberssubmit" value="提交" class="submit" />
</p>
</form>
</div>

<div id="sidebar" style="width: 150px;">
<div class="cat">
<h3>成员状态</h3>
<ul class="post_list line_list">
<li<?php if($_GET['status']==0) { ?> class="current"<?php } ?>><a href="cp.php?ac=event&op=members&id=<?=$eventid?>&status=0">待审核</a></li>
<li<?php if($_GET['status']==2) { ?> class="current"<?php } ?>><a href="cp.php?ac=event&op=members&id=<?=$eventid?>&status=2">普通成员</a></li>
<li<?php if($_GET['status']==3) { ?> class="current"<?php } ?>><a href="cp.php?ac=event&op=members&id=<?=$eventid?>&status=3">组织者</a></li>
</ul>
</div>
</div>
<?php } elseif($op == "thread") { ?>
<div id="d_edit_form">
<form id="edit_form" name="edit_form" class="c_form" method="post" action="cp.php?ac=event&op=thread&id=<?=$event['eventid']?>" onsubmit="return confirm('此操作不可恢复，确认吗?')">
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
<?php if($threadlist) { ?>
<div class="topic_list">
<table cellspacing="0" cellpadding="0">
<thead>
<tr>
<td width="30">选择</td>
<td class="subject">主题</td>
<td class="author">作者 (回应/阅读)</td>
<td class="lastpost">最后更新</td>
</tr>
</thead>
<tbody>
<?php if(is_array($threadlist)) { foreach($threadlist as $key => $value) { ?>
<tr <?php if($key%2==1) { ?>class="alt"<?php } ?>>
<td>
<input type="checkbox" name="ids[]" value="<?=$value['tid']?>" />
</td>
<td class="subject">
<a href="space.php?uid=<?=$value['uid']?>&do=thread&id=<?=$value['tid']?>&eventid=<?=$eventid?>"><?=$value['subject']?></a>
</td>
<td class="author"><a href="space.php?uid=<?=$value['uid']?>"><?=$_SN[$value['uid']]?></a><br><em><?=$value['replynum']?>/<?=$value['viewnum']?></em></td>
<td class="lastpost"><a href="space.php?uid=<?=$value['lastauthorid']?>" title="<?=$_SN[$value['lastauthorid']]?>"><?=$_SN[$value['lastauthorid']]?></a><br><?php echo sgmdate('m-d H:i',$value[lastpost],1); ?></td>
</tr>
<?php } } ?>
</tbody>
</table>
<p>
<input type="checkbox" id="chkall" name="chkall" onclick="checkAll(this.form, 'ids')"><label for="chkall">全选</label> &nbsp;
<input type="submit" name="delthreadsubmit" value="删除" class="submit" />
</p>
</div>
<?php } else { ?>
<div class="c_form" style="text-align:center;">还没有相关话题。</div>
<?php } ?>
</form>
</div>

<?php } elseif($op == 'edithot') { ?>

<h1>调整热度</h1>
<a href="javascript:hideMenu();" class="float_del" title="关闭">关闭</a>
<div class="popupmenu_inner">
<form method="post" action="cp.php?ac=event&op=edithot&id=<?=$eventid?>">
<p class="btn_line">
新的热度：<input type="text" name="hot" value="<?=$event['hot']?>" size="5"> 
<input type="hidden" name="refer" value="<?=$_SGLOBAL['refer']?>" />
<input type="hidden" name="hotsubmit" value="true" />
<input type="submit" name="btnsubmit" value="确定" class="submit" />
</p>
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
</form>
</div>

<?php } elseif($op == "pic") { ?>
<div id="d_edit_form">
<form id="edit_form" name="edit_form" class="c_form" method="post" action="cp.php?ac=event&op=pic&id=<?=$event['eventid']?>" onsubmit="return confirm('此操作不可恢复，确认吗?')">
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
<div id="album" class="article">
<?php if(sizeof($photolist) > 0) { ?>
<table width="100%" cellspacing="6" cellpadding="0" class="photo_list">
<tbody>
<tr>
<?php if(is_array($photolist)) { foreach($photolist as $key => $value) { ?>
<td>
<a href="space.php?do=event&id=<?=$eventid?>&view=pic&picid=<?=$value['picid']?>"><img src="<?=$value['pic']?>" alt="<?=$value['title']?>" /></a>
<br />
<input type="checkbox" value="<?=$value['picid']?>" name="ids[]"/>选定
</td>
<?php if($key%4==3) { ?></tr><tr><?php } ?>
<?php } } ?>
</tr>
</tbody>
</table>
<div class="page"><?=$multi?></div>
<p>
<input type="checkbox" id="chkall" name="chkall" onclick="checkAll(this.form, 'ids')"><label for="chkall">全选</label> &nbsp;
<input type="submit" name="deletepicsubmit" value="删除选定" class="submit" />
</p>
<?php } else { ?>
<p align="center">还没有活动照片</p>
<?php } ?>
</div>
</form>
</div>
<?php } elseif($op == "eventinvite") { ?>
<div class="h_status">
您的好友邀请您加入以下活动
<?php if(!empty($eventinvites)) { ?>
<span class="pipe">|</span>
<a href="cp.php?ac=event&op=eventinvite&&r=1"><span>忽略所有邀请</span></a>
<?php } ?>
</div>

<div class="c_form">
<?php if(!empty($eventinvites)) { ?>
<table cellspacing="4" cellpadding="4" class="formtable">
<?php if(is_array($eventinvites)) { foreach($eventinvites as $value) { ?>
<tr>
<td width="100px">
<div>
<a href="space.php?do=event&id=<?=$value['eventid']?>" target="_blank">
<img src="<?=$value['pic']?>" alt="<?=$value['title']?>" class="poster_pre">
</a>
</div>
</td>
<td class="h_status">
<p><a href="space.php?do=event&id=<?=$value['eventid']?>" target="_blank" style="font-size:14px;font-weight:bold;">
<?=$value['title']?></a></p>
<br>活动时间：<?php echo sgmdate("n月d日 G:i", $value[starttime]) ?> - <?php echo sgmdate("n月d日 G:i", $value[endtime]) ?>
<?php if($value['endtime']<$_SGLOBAL['timestamp']) { ?>
<span class="event_state"> 已结束</span>
<?php } elseif($value['deadline']<$_SGLOBAL['timestamp']) { ?>
<span class="event_state"> 报名截止</span>
<?php } ?>
<br>活动地点：<?=$value['province']?> - <?=$value['city']?> <?=$value['location']?>
<br>发起人：<a href="space.php?uid=<?=$value['uid']?>"><?=$_SN[$value['uid']]?></a>
<div id="eventinvite_<?=$value['eventid']?>" style="padding:0.5em 0 0.5em 0;">
邀请好友：<a href="space.php?uid=<?=$value['uid']?>" target="_blank"><?=$_SN[$value['uid']]?></a>
<br>邀请时间：<?php echo sgmdate('Y-m-d H:i', $value[invitetime], 1) ?>
<p style="padding:1em 0 0 0;">
<a id="a_accept" href="cp.php?ac=event&op=acceptinvite&id=<?=$value['eventid']?>" class="submit" onclick="ajaxget(this.href, 'eventinvite_<?=$value['eventid']?>'); return false;">接受邀请</a>
<a href="cp.php?ac=event&op=eventinvite&id=<?=$value['eventid']?>&r=1" class="button">忽略</a>
</p>
</div>
</td>
</tr>
<?php } } ?>
</table>
<?php } else { ?>
暂时没有新的活动邀请。
<?php } ?>
</div>
<?php } else { ?>

<?php if($topic) { ?>
<h2 class="title">
<img src="image/app/topic.gif" />热闹 - <a href="space.php?do=topic&topicid=<?=$topicid?>"><?=$topic['subject']?></a>
</h2>
<div class="tabs_header">
<ul class="tabs">
<li class="active"><a href="javascript:;"><span>凑个热闹</span></a></li>
<li><a href="space.php?do=topic&topicid=<?=$topicid?>"><span>查看热闹</span></a></li>
</ul>
<?php if(checkperm('managetopic') || $topic['uid']==$_SGLOBAL['supe_uid']) { ?>
<div class="r_option">
<a href="cp.php?ac=topic&op=edit&topicid=<?=$topic['topicid']?>">编辑</a> | 
<a href="cp.php?ac=topic&op=delete&topicid=<?=$topic['topicid']?>" id="a_delete_<?=$topic['topicid']?>" onclick="ajaxmenu(event,this.id);">删除</a>
</p>
</div>
<?php } ?>
</div>


<div class="affiche">
<table width="100%">
<tr>
<?php if($topic['pic']) { ?>
<td width="160" id="event_icon" valign="top">
<img src="<?=$topic['pic']?>" width="150">
</td>
<?php } ?>
<td valign="top">
<h2>
<a href="space.php?do=topic&topicid=<?=$topic['topicid']?>"><?=$topic['subject']?></a>
</h2>

<div style="padding:5px 0;"><?=$topic['message']?></div>
<ul>
<li class="gray">发起作者: <a href="space.php?uid=<?=$topic['uid']?>"><?=$_SN[$topic['uid']]?></a></li>
<li class="gray">发起时间: <?=$topic['dateline']?></li>
<?php if($topic['endtime']) { ?><li class="gray">参与截止: <?=$topic['endtime']?></li><?php } ?>
<?php if($topic['joinnum']) { ?>
<li class="gray">参与人次: <?=$topic['joinnum']?></li>
<?php } ?>
<li class="gray">最后参与: <?=$topic['lastpost']?></li>
</ul>

<?php if($topic['allowjoin']) { ?>
<a href="<?=$topic['joinurl']?>" class="feed_po" id="hot_add" onmouseover="showMenu(this.id)">凑个热闹</a>
<ul id="hot_add_menu" class="dropmenu_drop" style="display:none;">
<?php if(in_array('blog', $topic['jointype'])) { ?>
<li><a href="cp.php?ac=blog&topicid=<?=$topicid?>">发表日志</a></li>
<?php } ?>
<?php if(in_array('pic', $topic['jointype'])) { ?>
<li><a href="cp.php?ac=upload&topicid=<?=$topicid?>">上传图片</a></li>
<?php } ?>
<?php if(in_array('thread', $topic['jointype'])) { ?>
<li><a href="cp.php?ac=thread&topicid=<?=$topicid?>">发起话题</a></li>
<?php } ?>
<?php if(in_array('poll', $topic['jointype'])) { ?>
<li><a href="cp.php?ac=poll&topicid=<?=$topicid?>">发起投票</a></li>
<?php } ?>
<?php if(in_array('event', $topic['jointype'])) { ?>
<li><a href="cp.php?ac=event&topicid=<?=$topicid?>">发起活动</a></li>
<?php } ?>
<?php if(in_array('share', $topic['jointype'])) { ?>
<li><a href="cp.php?ac=share&topicid=<?=$topicid?>">添加分享</a></li>
<?php } ?>
</ul>
<?php } else { ?>
<p class="r_option">该热闹已经截止</p>
<?php } ?>
</td>
</tr></table>
</div>

<?php } ?>

<div class="c_form">
<form id="edit_form" name="edit_form" method="post" enctype="multipart/form-data" action="cp.php?ac=event&op=edit&id=<?=$eventid?>">
<table class="infotable" width="100%" cellspacing="4" cellpadding="4">				
<tbody>					
<tr>
<th>活动名称 *</th>
<td>
<input class="t_input" id="title" name="title" value="<?=$event['title']?>" size="56" type="text" maxlength="80">
</td>
</tr>
<tr>
<th>活动城市 *</th>
<td id="citybox">
<script type="text/javascript" src="source/script_city.js" charset="<?=$_SC['charset']?>"></script>
                            <script type="text/javascript" charset="<?=$_SC['charset']?>">
showprovince('province', 'city', '<?=$event['province']?>', 'citybox');
                                showcity('city', '<?=$event['city']?>', 'province', 'citybox');
                            </script>
</td>
</tr>
<tr>
<th>活动地点</th>
<td>
<input class="t_input" id="location" name="location" value="<?=$event['location']?>" size="56" type="text" maxlength="80">
</td>
</tr>
<tr>
<th>活动时间 *</th>
<td>
<script type="text/javascript" src="source/script_calendar.js" charset="<?=$_SC['charset']?>"></script>
<input type="text" name="starttime" id="starttime" value="<?php echo sgmdate('Y-m-d H:i', $event[starttime]) ?>"  onclick="showcalendar(event,this,1,'<?php echo sgmdate('Y-m-d H:i', $_SGLOBAL[timestamp]) ?>', '<?php echo sgmdate('Y-m-d H:i', $_SGLOBAL[timestamp] + 3600 * 24 * 60) ?>')" />
 至
<input type="text" name="endtime" id="endtime" value="<?php echo sgmdate('Y-m-d H:i', $event[endtime]) ?>"  onclick="showcalendar(event,this,1,'<?php echo sgmdate('Y-m-d H:i', $_SGLOBAL[timestamp]) ?>', '<?php echo sgmdate('Y-m-d H:i', $_SGLOBAL[timestamp] + 3600 * 24 * 60) ?>')" />
</td>
</tr>
<tr>
<th>报名截止 *</th>
<td>
<input type="text" name="deadline" id="deadline" value="<?php echo sgmdate('Y-m-d H:i', $event[deadline]) ?>"  onclick="showcalendar(event,this,1,'<?php echo sgmdate('Y-m-d H:i', $_SGLOBAL[timestamp]) ?>', '<?php echo sgmdate('Y-m-d H:i', $_SGLOBAL[timestamp] + 3600 * 24 * 60) ?>')" />
</td>
</tr>
<tr>
<th width="100" style="vertical-align: top;">活动分类 *</th>
<td>
<select name="classid" id="classid" onchange="reset_eventclass(this.value)">
<option value="-1">
请选择活动分类
</option>
<?php if(is_array($_SGLOBAL['eventclass'])) { foreach($_SGLOBAL['eventclass'] as $key => $value) { ?>
<option value="<?=$key?>" <?php if($event['classid'] == $key) { ?> selected<?php } ?> ><?=$value['classname']?></option>
<?php } } ?>
</select>
<div id="classid_info"></div>
</td>
</tr>
<tr>
<td colspan="2">
<a id="doodleBox" href="magic.php?mid=doodle&showid=blog_doodle&target=uchome-ttHtmlEditor&from=editor" style="display:none"></a>
<textarea class="userData" name="detail" id="uchome-ttHtmlEditor" style="height:100%;width:100%;display:none;border:0px"><?=$event['detail']?></textarea>
<iframe src="editor.php?charset=<?=$_SC['charset']?>&allowhtml=0&doodle=<?php if(isset($_SGLOBAL['magic']['doodle'])) { ?>1<?php } ?>" name="uchome-ifrHtmlEditor" id="uchome-ifrHtmlEditor" scrolling="no" border="0" frameborder="0" style="width:100%;border: 1px solid #C5C5C5;" height="400"></iframe></td>
</tr>
<tr>
<th style="vertical-align: top;">活动海报</th>
<td>
<input type="file" name="poster" /> 图片将上传到您的默认相册。<br />
<input type="checkbox" id="sharepic" name="sharepic" value="1" />
<label for="sharepic">同时把海报共享到活动相册</label>
</td>
</tr>
<?php if($mtags) { ?>
<tr>
<th>关联群组</th>
<td>
<select name="tagid">
<option value="">选择关联群组</option>
<?php if(is_array($mtags)) { foreach($mtags as $value) { ?>
<option value="<?=$value['tagid']?>" <?php if($value['tagid']==$event['tagid']) { ?>selected<?php } ?> ><?=$value['tagname']?></option>
<?php } } ?>
</select>
必须是您自己创建的群组，关联后活动话题会同步到该群组。
</td>
</tr>
<?php } ?>
</tbody>
</table>
<table class="infotable" width="100%" cellspacing="4" cellpadding="4">
<tbody>
<tr>
<td colspan="2">
<a id="toggle_advanced" href="#" onclick="toggle_advanced(); this.blur(); return false;">
展开高级设置</a>						
</td>
</tr>
</tbody>
</table>
<table id="advanced_info" class="infotable" width="100%" cellspacing="4" cellpadding="4" style="display:none">
<tbody>
<tr>
<th width="100">活动人数</th>
<td>
<input name="limitnum" value="<?=$event['limitnum']?>" id="limitnum" type="text" size="4" maxlength="8">
                            <span class="tiptext">
                                活动参加人数限制，设为 0 表示无限制。
                            </span>
</td>
</tr>
<tr>
<th width="100" style="vertical-align: top;">活动隐私</th>
<td>
<select name="public" id="public">
<option <?php if($event['public']==2) { ?>selected="selected"<?php } ?> value="2">公开活动，所有人可见可加入</option>
<option <?php if($event['public']==1) { ?>selected="selected"<?php } ?> value="1">半公开活动，所有人可见, 邀请才能加入</option>
<option <?php if($event['public']==0) { ?>selected="selected"<?php } ?> value="0">私密活动，被邀请者可见</option>
</select>
</td>
</tr>
<tr>
<th width="100" style="vertical-align: top;">活动选项</th>
<td>
<input name="allowinvite" id="allowinvite" value="1" type="checkbox"<?php if($event['allowinvite']) { ?> checked="checked"<?php } ?>>
                            <label for="allowinvite">
                                允许参与者邀请好友，被邀请者加入活动不需要审核
                            </label>
                            <br>
<input name="allowpic" id="allowpic" value="1" type="checkbox"<?php if($event['allowpic']) { ?> checked="checked"<?php } ?>>
                            <label for="allowpic">
                                允许参与者共享活动照片
                            </label>
                            <br>
<input name="allowpost" id="allowpost" value="1" type="checkbox"<?php if($event['allowpost']) { ?> checked="checked"<?php } ?>>
                            <label for="allowpost">
                                允许所有人发布留言
                            </label>
                            <br>
                            <input name="verify" id="verify" value="1" type="checkbox"<?php if($event['verify']) { ?> checked="checked"<?php } ?>>
                            <label for="verify">
                                参加活动需要审批
                            </label>
<br>
                            <input name="allowfellow" id="allowfellow" value="1" type="checkbox"<?php if($event['allowfellow']) { ?> checked="checked"<?php } ?>>
                            <label for="allowfellow">
                                允许参加者携带朋友，携带朋友数会占用活动参与者名额
                            </label>
</td>
</tr>
<tr>
<th width="100" style="vertical-align: top;">报名信息</th>
<td>
如果要求参加者填写报名信息（最多255个字符），你可以在此处给出一个格式模板。留空表示不要求填写。<br />
                            <textarea id="template" name="template" rows="4" cols="72"><?=$event['template']?></textarea>
</td>
</tr>
</tr>
</tbody>
</table>
<?php if(checkperm('seccode')) { ?>
<table class="infotable" width="100%" cellspacing="4" cellpadding="4">
<tbody>
<?php if($_SCONFIG['questionmode']) { ?>
<tr>
<th width="100" style="vertical-align: top;">请回答验证问题</th>
<td>
<p><?php question(); ?></p>
<input type="text" id="seccode" name="seccode" value="" size="15" class="t_input" />
</td>
</tr>
<?php } else { ?>
<tr>
<th width="100" style="vertical-align: top;">请填写验证码</th>
<td>
<script type="text/javascript" charset="<?=$_SC['charset']?>">seccode();</script>
<p>请输入上面的4位字母或数字，看不清可<a href="javascript:updateseccode()">更换一张</a></p>
<input type="text" id="seccode" name="seccode" value="" size="15" class="t_input" />
</td>
</tr>
<?php } ?>
</tbody>
</table>
<?php } ?>
<table class="infotable" width="100%" cellspacing="4" cellpadding="4">
<tbody>
<?php if(empty($eventid)) { ?>
<tr>
<th width="100">动态选项</th>
<td>
<input type="checkbox" name="makefeed" id="makefeed" value="1"<?php if(ckprivacy('event', 1)) { ?> checked<?php } ?>> 产生动态 (<a href="cp.php?ac=privacy#feed" target="_blank">更改默认设置</a>)
</td>
</tr>
<?php } ?>
<tr>
<th width="100">&nbsp;</th>
<td>
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
                            <input type="hidden" name="topicid" value="<?=$topicid?>" />
                            <input type="hidden" name="eventsubmit" value="1" />
                            <input class="submit" value="<?php if($_GET['id']) { ?>保存<?php } else { ?>提交<?php } ?>" type="button" onclick="check_eventpost()"/>
</td>
</tr>
</tbody>
</table>
</form>
</div>

<script type="text/javascript" src="image/editor/editor_function.js" charset="<?=$_SC['charset']?>"></script>
<script type="text/javascript" charset="<?=$_SC['charset']?>">
//活动分类
var eventclass = [];
<?php if(is_array($_SGLOBAL['eventclass'])) { foreach($_SGLOBAL['eventclass'] as $key => $value) { ?>
eventclass["<?=$key?>"] = {};
<?php if(is_array($value)) { foreach($value as $k => $v) { ?>
eventclass["<?=$key?>"]["<?=$k?>"] = '<?php echo str_replace(array("\r\n","\r","\n"), "<br>", $v) ?>';
<?php } } ?>
<?php } } ?>
function reset_eventclass(classid){
var selclass = eventclass[classid];
var o = $("uchome-ifrHtmlEditor").contentWindow.document.getElementById("HtmlEditor").contentWindow.document.body;
var append =false;// 是否添加
if(selclass && selclass['template'] && (trim(o.innerHTML.replace(/<br[ \/]*>|<div><\/div>/img, '')) == "" || confirm("要添加站长设定的活动分类模板到活动介绍吗？"))){
append = true;
}
if (append){
o.innerHTML = selclass['template'] + "<br/>" + o.innerHTML;				
$("classid_info").innerHTML = "请参考站长设定的模板填写活动介绍";				
}
}

//展开高级设置
function toggle_advanced(){
var el = $("advanced_info");
if (el.style.display == "none"){
el.style.display = "";
$("toggle_advanced").innerHTML = "隐藏高级设置";
} else {
el.style.display = "none";
$("toggle_advanced").innerHTML = "展开高级设置";
}
}

//检查提交
function check_eventpost(){			
// 活动类型
if (parseInt($("classid").value) < 0){
alert("活动类型必须选择。");
$("classid").focus();
return false;
}	
// 标题
var val = trim($("title").value);
if ( val == "" ){
alert("活动标题不能为空！");
$("title").focus();
return false;
} else if (val.replace(/[^\x00-\xff]/g, "**").length > 80){
alert("活动标题太长，请限制在80个字符内！");
$("title").focus();
return false;
}	
// 活动地点
if($('city').value == ""){
alert("活动举办城市不能为空。");
$("city").focus();
return false;
}			
// 报名时间，起始-结束时间
var deadline = parsedate($("deadline").value).getTime();
var starttime = parsedate($("starttime").value).getTime();
var endtime = parsedate($("endtime").value).getTime();
<?php if(!$eventid) { ?>
var nowtime = new Date().getTime();
if (starttime < nowtime){
alert("活动开始时间不能早于现在。");
$("starttime").focus();
return false;
}
<?php } ?>
if (endtime - deadline < 0){
alert("报名截止时间不能晚于活动结束时间。");
$("deadline").focus();
return false;
}
if (endtime - starttime < 0){
alert("活动结束时间不能早于开始时间。");
$("endtime").focus();
return false;
}
if (endtime - starttime > 60 * 24 * 3600 * 1000){
alert("活动持续时间不能超过 60 天。");
$("endtime").focus();
return false;
}
// 限制人数
if (! /^[0-9]{1,8}$/.test($("limitnum").value)){
alert("活动人数输入不正确。");
$("limitnum").focus();
return false;
}

    var makefeed = $('makefeed');
    if(makefeed) {
    	if(makefeed.checked == false) {
    		if(!confirm("友情提醒：您确定此次发布不产生动态吗？\n有了动态，好友才能及时看到你的更新。")) {
    			return false;
    		}
    	}
    }
    
    // 编辑器内容同步
edit_save();
// 活动描述，默认可能有一个<br/>或<div></div>，需要去掉再判断
val = trim($("uchome-ttHtmlEditor").value.replace(/<br[ \/]*>|<div><\/div>/img,''));
if (val == ""){
alert("活动描述不能为空。");
return false;
}						
//验证码
if($('seccode')) {
var code = $('seccode').value;
var x = new Ajax();
x.get('cp.php?ac=common&op=seccode&code=' + code, function(s){
s = trim(s);
if(s.indexOf('succeed') == -1) {
alert(s);
$('seccode').focus();
           		return false;
} else {
$("edit_form").submit();
}
});
    } else {
    	$("edit_form").submit();
    }
}
</script>
<?php } ?>
<?php if(in_array($op,array("edit", "pic", "thread", "members", "comment", "invite", "eventinvite"))) { ?>
<!--//管理页面页尾//-->
</div>
<?php } ?>
<div class="row-fluid">
  <div id="footer" class="span12"> 2013 &copy; Matrix Admin. Brought to you by <a href="http://themedesigner.in/">Themedesigner.in</a> </div>
</div><?php ob_out();?>