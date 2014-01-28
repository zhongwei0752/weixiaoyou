<?php if(!defined('IN_UCHOME')) exit('Access Denied');?><?php subtplcheck('template/default/do_ajax|template/default/header|template/default/space_comment_li|template/default/space_post_li|template/default/space_share_li|template/default/footer', '1390721103', 'template/default/do_ajax');?><!DOCTYPE html>
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
<!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'> -->
<link href="./template/default/feed/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

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
    <li class="active"><a href="space.php?do=home"><i class="icon icon-home"></i> <span>首页</span></a> </li>
    <li> <a href="space.php?do=activity"><i class="icon icon-signal"></i> <span>活动大厅</span></a> </li>
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


<?php if($op == 'comment') { ?>

<?php if(is_array($list)) { foreach($list as $value) { ?>
<?php if(empty($ajax_edit)) { ?><li id="comment_<?=$value['cid']?>_li"><?php } ?>
<?php if($value['author']) { ?>
<div class="avatar48"><a href="space.php?uid=<?=$value['authorid']?>"><?php echo avatar($value[authorid],small); ?></a></div>
<?php } else { ?>
<div class="avatar48"><img src="image/magic/hidden.gif" class="avatar" /></div>
<?php } ?>
<div class="title">
<div class="r_option">

<?php if($value['authorid'] != $_SGLOBAL['supe_uid'] && $value['author'] == "" && $_SGLOBAL['magic']['reveal']) { ?>
<a id="a_magic_reveal_<?=$value['cid']?>" href="magic.php?mid=reveal&idtype=cid&id=<?=$value['cid']?>" onclick="ajaxmenu(event,this.id,1)"><img src="image/magic/reveal.small.gif" class="magicicon"><?=$_SGLOBAL['magic']['reveal']?></a>
<span class="pipe">|</span>
<?php } ?>

<?php if($value['authorid']==$_SGLOBAL['supe_uid']) { ?>
<?php if($_SGLOBAL['magic']['anonymous']) { ?>
<img src="image/magic/anonymous.small.gif" class="magicicon">
<a id="a_magic_anonymous_<?=$value['cid']?>" href="magic.php?mid=anonymous&idtype=cid&id=<?=$value['cid']?>" onclick="ajaxmenu(event,this.id, 1)"><?=$_SGLOBAL['magic']['anonymous']?></a>
<span class="pipe">|</span>
<?php } ?>
<?php if($_SGLOBAL['magic']['flicker']) { ?>
<img src="image/magic/flicker.small.gif" class="magicicon">
<?php if($value['magicflicker']) { ?>
<a id="a_magic_flicker_<?=$value['cid']?>" href="cp.php?ac=magic&op=cancelflicker&idtype=cid&id=<?=$value['cid']?>" onclick="ajaxmenu(event,this.id)">取消<?=$_SGLOBAL['magic']['flicker']?></a>
<?php } else { ?>
<a id="a_magic_flicker_<?=$value['cid']?>" href="magic.php?mid=flicker&idtype=cid&id=<?=$value['cid']?>" onclick="ajaxmenu(event,this.id, 1)"><?=$_SGLOBAL['magic']['flicker']?></a>
<?php } ?>
<span class="pipe">|</span>
<?php } ?>

<a href="cp.php?ac=comment&op=edit&cid=<?=$value['cid']?>" id="c_<?=$value['cid']?>_edit" onclick="ajaxmenu(event, this.id, 1)">编辑</a>
<?php } ?>
<?php if($value['authorid']==$_SGLOBAL['supe_uid'] || $value['uid']==$_SGLOBAL['supe_uid'] || checkperm('managecomment')) { ?>
<a href="cp.php?ac=comment&op=delete&cid=<?=$value['cid']?>" id="c_<?=$value['cid']?>_delete" onclick="ajaxmenu(event, this.id)">删除</a>
<?php } ?>
<?php if($value['authorid']!=$_SGLOBAL['supe_uid'] && ($value['idtype'] != 'uid' || $space['self'])) { ?>
<a href="cp.php?ac=comment&op=reply&cid=<?=$value['cid']?>&feedid=<?=$feedid?>" id="c_<?=$value['cid']?>_reply" onclick="ajaxmenu(event, this.id, 1)">回复</a>
<?php } ?>
<a href="cp.php?ac=common&op=report&idtype=comment&id=<?=$value['cid']?>" id="a_report_<?=$value['cid']?>" onclick="ajaxmenu(event, this.id, 1)">举报</a>
</div>

<?php if($value['author']) { ?>
<a href="space.php?uid=<?=$value['authorid']?>" id="author_<?=$value['cid']?>"><?=$_SN[$value['authorid']]?></a> 
<?php } else { ?>
匿名
<?php } ?>
<span class="gray"><?php echo sgmdate('Y-m-d H:i',$value[dateline],1); ?></span>

</div>

<div class="detail<?php if($value['magicflicker']) { ?> magicflicker<?php } ?>" id="comment_<?=$value['cid']?>"><?=$value['message']?></div>

<?php if(empty($ajax_edit)) { ?></li><?php } ?>
<?php } } ?>

<?php } elseif($op == 'getfriendgroup') { ?>
<?=$group?>
<?php } elseif($op == 'getfriendname') { ?>
<?=$groupname?>
<?php } elseif($op == 'getmtagmember') { ?>
<?php if($tagspace['grade']==9) { ?>群主
<?php } elseif($tagspace['grade']==8) { ?>副群主
<?php } elseif($tagspace['grade']==1) { ?>明星
<?php } elseif($tagspace['grade']==-1) { ?>待审核
<?php } elseif($tagspace['grade']==-2) { ?>禁言
<?php } else { ?>普通会员
<?php } ?>

<?php } elseif($op == 'post') { ?>

<?php if(is_array($list)) { foreach($list as $value) { ?>
<?php if(empty($ajax_edit)) { ?><div id="post_<?=$value['pid']?>_li"><?php } ?>
<ul class="line_list">
<li>
<table width="100%">
<tr>
<td width="70" valign="top">
<div class="avatar48"><a href="space.php?uid=<?=$value['uid']?>"><?php echo avatar($value[uid],small); ?></a></div>
</td>
<td>
<div class="title">
<div class="r_option">
<?php if($mtag['grade']>=8 || $value['uid']==$_SGLOBAL['supe_uid'] || ($eventid && $userevent['status']>=3)) { ?>
<a href="cp.php?ac=thread&op=edit&pid=<?=$value['pid']?>" id="p_<?=$value['pid']?>_edit" onclick="ajaxmenu(event, this.id, 1)">编辑</a>
<a href="cp.php?ac=thread&op=delete&pid=<?=$value['pid']?>&tagid=<?=$thread['tagid']?>" id="p_<?=$value['pid']?>_delete" onclick="ajaxmenu(event, this.id)">删除</a>
<?php } ?>
<?php if($value['uid']!=$_SGLOBAL['supe_uid'] && (($mtag['allowpost'] && !$eventid) || ($eventid && $userevent['status']>1))) { ?><a href="cp.php?ac=thread&op=reply&pid=<?=$value['pid']?>" id="p_<?=$value['pid']?>_reply" onclick="ajaxmenu(event, this.id, 1)">回复</a> <?php } ?>
<a href="cp.php?ac=common&op=report&idtype=post&id=<?=$value['pid']?>" id="a_report_<?=$value['pid']?>" onclick="ajaxmenu(event, this.id, 1)">举报</a>
<span class="gray">#<?=$value['num']?></span>
</div>
<a href="space.php?uid=<?=$value['uid']?>"><?=$_SN[$value['uid']]?></a> 
<span class="gray"><?php echo sgmdate('Y-m-d H:i',$value[dateline],1); ?></span>
</div>
<div class="detail" id="detail_<?=$value['pid']?>">
<?=$value['message']?>
<?php if($value['pic']) { ?><div><a href="<?=$value['pic']?>" target="_blank"><img src="<?=$value['pic']?>" class="resizeimg" /></a></div><?php } ?>
</div>
</td>
</tr>
</table>
</li>
</ul>
<?php if(empty($ajax_edit)) { ?></div><?php } ?>
<?php } } ?>

<?php } elseif($op == 'share') { ?>

<?php if(is_array($list)) { foreach($list as $value) { ?>
<?php if(empty($ajax_edit)) { ?><li id="share_<?=$value['sid']?>_li"><?php } ?>
<div class="title">
<div class="r_option">
<?php if($value['sid'] && ($_SGLOBAL['supe_uid'] == $value['uid'] || checkperm('manageshare'))) { ?>
<a href="cp.php?ac=topic&op=join&id=<?=$value['sid']?>&idtype=sid" id="a_topicjoin_<?=$value['sid']?>" onclick="ajaxmenu(event, this.id)">凑热闹</a><span class="pipe">|</span>
<?php } ?>
<?php if($value['sid']) { ?><a href="space.php?uid=<?=$value['uid']?>&do=share&id=<?=$value['sid']?>">评论</a>&nbsp;<?php } ?>
<?php if($value['uid']==$_SGLOBAL['supe_uid']) { ?><?php if($value['type']=='link' || 'video' == $value['type'] || 'music' == $value['type']) { ?><span class="pipe">|</span><?php } ?><a href="cp.php?ac=share&op=delete&sid=<?=$value['sid']?>" id="s_<?=$value['sid']?>_delete" onclick="ajaxmenu(event, this.id)">删除</a><?php } ?>
</div>
<a href="space.php?uid=<?=$value['uid']?>"><?=$_SN[$value['uid']]?></a> <a href="space.php?uid=<?=$value['uid']?>&do=share&id=<?=$value['sid']?>"><?=$value['title_template']?></a>
&nbsp;<span class="gray"><?php echo sgmdate('Y-m-d H:i',$value[dateline],1); ?></span>
</div>
<div class="feed">
<div style="width:100%;overflow:hidden;">
<?php if($value['image']) { ?>
<a href="<?=$value['image_link']?>"><img src="<?=$value['image']?>" class="summaryimg image" alt="" width="70" /></a>
<?php } ?>
<div class="detail">
<?=$value['body_template']?>
</div>
<?php if('video' == $value['type']) { ?>
<div class="media">
<img src="image/vd.gif" alt="点击播放" onclick="javascript:showFlash('<?=$value['body_data']['host']?>', '<?=$value['body_data']['flashvar']?>', this, '<?=$value['sid']?>');" style="cursor:pointer;" />
</div>
<?php } elseif('music' == $value['type']) { ?>
<div class="media">
<img src="image/music.gif" alt="点击播放" onclick="javascript:showFlash('music', '<?=$value['body_data']['musicvar']?>', this, '<?=$value['sid']?>');" style="cursor:pointer;" />
</div>
<?php } elseif('flash' == $value['type']) { ?>
<div class="media">
<img src="image/flash.gif" alt="点击查看" onclick="javascript:showFlash('flash', '<?=$value['body_data']['flashaddr']?>', this, '<?=$value['sid']?>');" style="cursor:pointer;" />
</div>
<?php } ?>
<div class="quote"><span id="quote" class="q"><?=$value['body_general']?></span></div>
</div>
</div>
<?php if(empty($ajax_edit)) { ?></li><?php } ?>
<?php } } ?>

<?php } elseif($op == 'album') { ?>

<table cellspacing="2" cellpadding="2">
<tr>
<?php if(is_array($piclist)) { foreach($piclist as $key => $value) { ?>
<td><img src="<?=$value['pic']?>" width="60" onclick="insertImage('<?=$value['bigpic']?>');" style="cursor:hand;"></td>
<?php if($key%5==4) { ?></tr><tr><?php } ?>
<?php } } ?>
</tr>
</table>

<div class="page"><?=$multi?></div>
<?php } elseif($op == 'getreward') { ?>
<?php if($rule['credit'] || $rule['experience']) { ?>
<div class="popupmenu_layer">
<p><?=$rule['rulename']?></p>
<p class="btn_line">
<?php if($rule['credit']) { ?>积分 <strong>+<?=$rule['credit']?></strong> <?php } ?>
<?php if($rule['experience']) { ?>经验 <strong>+<?=$rule['experience']?></strong> <?php } ?>
</p>
<?php if($rule['cyclenum']) { ?>
<p>
本周期内，您还有 <?=$rule['cyclenum']?> 次机会
</p>
<?php } ?>
</div>
<?php } ?>
<?php } ?>

<div class="row-fluid">
  <div id="footer" class="span12"> 2013 &copy; Matrix Admin. Brought to you by <a href="http://themedesigner.in/">Themedesigner.in</a> </div>
</div><?php ob_out();?>