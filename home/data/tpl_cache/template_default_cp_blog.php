<?php if(!defined('IN_UCHOME')) exit('Access Denied');?><?php subtplcheck('template/default/cp_blog|template/default/header|template/default/cp_topic_menu|template/default/footer|template/default/space_topic_inc', '1387188186', 'template/default/cp_blog');?><!DOCTYPE html>
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


<?php if($_GET['op'] == 'delete') { ?>

<h1>删除日志</h1>
<a href="javascript:hideMenu();" class="float_del" title="关闭">关闭</a>
<div class="popupmenu_inner">
<form method="post" action="cp.php?ac=blog&op=delete&blogid=<?=$blogid?>">
<p>确定删除指定的日志吗？</p>
<p class="btn_line">
<input type="hidden" name="refer" value="<?=$_SGLOBAL['refer']?>" />
<input type="hidden" name="deletesubmit" value="true" />
<input type="submit" name="btnsubmit" value="确定" class="submit" />
</p>
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
</form>
</div>

<?php } elseif($_GET['op'] == 'edithot') { ?>

<h1>调整热度</h1>
<a href="javascript:hideMenu();" class="float_del" title="关闭">关闭</a>
<div class="popupmenu_inner">
<form method="post" action="cp.php?ac=blog&op=edithot&blogid=<?=$blogid?>">
<p class="btn_line">
新的热度：<input type="text" name="hot" value="<?=$blog['hot']?>" size="5"> 
<input type="hidden" name="refer" value="<?=$_SGLOBAL['refer']?>" />
<input type="hidden" name="hotsubmit" value="true" />
<input type="submit" name="btnsubmit" value="确定" class="submit" />
</p>
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
</form>
</div>

<?php } else { ?>

<script language="javascript" src="image/editor/editor_function.js"></script>
<script language="javascript" src="source/script_blog.js"></script>

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

<?php } else { ?>
<h2 class="title"><img src="image/app/blog.gif" />日志</h2>
<div class="tabs_header">
<ul class="tabs">
<?php if($blog['blogid']) { ?>
<li class="active"><a href="cp.php?ac=blog&blogid=<?=$blog['blogid']?>"><span>编辑日志</span></a></li>
<?php } ?>
<li<?php if(empty($blog['blogid'])) { ?> class="active"<?php } ?>><a href="cp.php?ac=blog"><span>发表新日志</span></a></li>
<li><a href="cp.php?ac=import"><span>日志导入</span></a></li>
<li><a href="space.php?uid=<?=$space['uid']?>&do=blog&view=me"><span>返回我的日志</span></a></li>
</ul>
</div>
<?php } ?>

<div class="c_form">

<style type="text/css">
.userData {behavior:url(#default#userdata);}
</style>


<form method="post" action="cp.php?ac=blog&blogid=<?=$blog['blogid']?>" enctype="multipart/form-data">
<table cellspacing="4" cellpadding="4" width="100%" class="infotable">
<tr>
<td>
<select name="classid" id="classid" onchange="addSort(this)">
<option value="0">选择分类</option>
<?php if(is_array($classarr)) { foreach($classarr as $value) { ?>
<?php if($value['classid'] == $blog['classid']) { ?>
<option value="<?=$value['classid']?>" selected><?=$value['classname']?></option>
<?php } else { ?>
<option value="<?=$value['classid']?>"><?=$value['classname']?></option>
<?php } ?>
<?php } } ?>
<?php if(!$blog['uid'] || $blog['uid']==$_SGLOBAL['supe_uid']) { ?><option value="addoption" style="color:red;">+新建分类</option><?php } ?>
</select>
<input type="text" class="t_input" id="subject" name="subject" value="<?=$blog['subject']?>" size="60" onblur="relatekw();" />
</td>
</tr>
<tr>
<td>
<a id="doodleBox" href="magic.php?mid=doodle&showid=blog_doodle&target=uchome-ttHtmlEditor&from=editor" style="display:none"></a>
<textarea class="userData" name="message" id="uchome-ttHtmlEditor" style="height:100%;width:100%;display:none;border:0px"><?=$blog['message']?></textarea>
<iframe src="editor.php?charset=<?=$_SC['charset']?>&allowhtml=<?=$allowhtml?>&doodle=<?php if(isset($_SGLOBAL['magic']['doodle'])) { ?>1<?php } ?>" name="uchome-ifrHtmlEditor" id="uchome-ifrHtmlEditor" scrolling="no" border="0" frameborder="0" style="width:100%;border: 1px solid #C5C5C5;" height="400"></iframe>
</td>
</tr>
</table>
<table cellspacing="4" cellpadding="4" width="100%" class="infotable">
<tr>
<th width="100">标签</th>
<td><input type="text" class="t_input" size="40" id="tag" name="tag" value="<?=$blog['tag']?>"> <input type="button" name="clickbutton[]" value="自动获取" class="button" onclick="relatekw();"></td>
</tr>

<?php if($blog['uid'] && $blog['uid']!=$_SGLOBAL['supe_uid']) { ?>
<?php $selectgroupstyle='display:none'; ?>
<tbody style="display:none;">
<?php } ?>
<tr>
<th>隐私设置</th>
<td>
<select name="friend" onchange="passwordShow(this.value);">
<option value="0"<?=$friendarr['0']?>>全站用户可见</option>
<option value="1"<?=$friendarr['1']?>>全好友可见</option>
<option value="2"<?=$friendarr['2']?>>仅指定的好友可见</option>
<option value="3"<?=$friendarr['3']?>>仅自己可见</option>
<option value="4"<?=$friendarr['4']?>>凭密码查看</option>
</select>
<span id="span_password" style="<?=$passwordstyle?>">密码:<input type="text" name="password" value="<?=$blog['password']?>" size="10" onkeyup="value=value.replace(/[^\w\.\/]/ig,'')"></span>
<input type="checkbox" name="noreply" value="1"<?php if($blog['noreply']) { ?> checked<?php } ?>> 不允许评论
</td>
</tr>
<?php if($blog['uid'] && $blog['uid']!=$_SGLOBAL['supe_uid']) { ?></tbody><?php } ?>
<tbody id="tb_selectgroup" style="<?=$selectgroupstyle?>">
<tr>
<th>指定好友</th>
<td><select name="selectgroup" onchange="getgroup(this.value);">
<option value="">从好友组选择好友</option>
<?php if(is_array($groups)) { foreach($groups as $key => $value) { ?>
<option value="<?=$key?>"><?=$value?></option>
<?php } } ?>
</select> 多次选择会累加到下面的好友名单</td>
</tr>
<tr>
<th>&nbsp;</th>
<td>
<textarea name="target_names" id="target_names" style="width:85%;" rows="3"><?=$blog['target_names']?></textarea>
<br>(可以填写多个好友名，请用空格进行分割)</td>
</tr>
</tbody>


<?php if(checkperm('manageblog')) { ?>
<tr>
<th width="100">热度</th>
<td>
<input type="text" class="t_input" name="hot" id="hot" value="<?=$blog['hot']?>" size="5">
</td>
</tr>
<?php } ?>

<?php if(checkperm('seccode')) { ?>
<?php if($_SCONFIG['questionmode']) { ?>
<tr>
<th style="vertical-align: top;">请回答验证问题</th>
<td>
<p><?php question(); ?></p>
<input type="text" id="seccode" name="seccode" value="" size="15" class="t_input" />
</td>
</tr>
<?php } else { ?>
<tr>
<th style="vertical-align: top;">请填写验证码</th>
<td>
<script>seccode();</script>
<p>请输入上面的4位字母或数字，看不清可<a href="javascript:updateseccode()">更换一张</a></p>
<input type="text" id="seccode" name="seccode" value="" size="15" class="t_input" />
</td>
</tr>
<?php } ?>
<?php } ?>

<tr>
<th width="100">动态选项</th>
<td>
<input type="checkbox" name="makefeed" id="makefeed" value="1"<?php if(ckprivacy('blog', 1)) { ?> checked<?php } ?>> 产生动态 (<a href="cp.php?ac=privacy#feed" target="_blank">更改默认设置</a>)
</td>
</tr>			
</table>
<input type="hidden" name="blogsubmit" value="true" />
<input type="button" id="blogbutton" name="blogbutton" value="提交发布" onclick="validate(this);" style="display: none;" />
<input type="hidden" name="topicid" value="<?=$_GET['topicid']?>" />
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
</form>

<?php if(!$_SGLOBAL['inajax'] && (!$blog['uid'] || $blog['uid']==$_SGLOBAL['supe_uid'])) { ?>
<table cellspacing="4" cellpadding="4" width="100%" class="infotable">
<tr><th width="100">图片</th><td>
<input type="button" name="clickbutton[]" value="上传图片" class="button" onclick="edit_album_show('pic')">
<input type="button" name="clickbutton[]" value="插入图片" class="button" onclick="edit_album_show('album')">
</td></tr>
</table>
<?php } ?>

<table cellspacing="4" cellpadding="4" width="100%" id="uchome-edit-pic" class="infotable" style="display:none;">
<tr>
<th width="100">&nbsp;</th>
<td>
<strong>选择图片</strong>: 
<table summary="Upload" cellspacing="2" cellpadding="0">
<tbody id="attachbodyhidden" style="display:none">
<tr>
<td>
<form method="post" id="upload" action="cp.php?ac=upload" enctype="multipart/form-data" target="uploadframe" style="background: transparent;">
<input type="file" name="attach" style="border: 1px solid #CCC;" />
<span id="localfile"></span>
<input type="hidden" name="uploadsubmit" id="uploadsubmit" value="true" />
<input type="hidden" name="albumid" id="albumid" value="0" />
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
</form>
</td>
</tr>
</tbody>
<tbody id="attachbody"></tbody>
</table>
<strong>存储相册</strong>: 
<table cellspacing="2" cellpadding="0">
<tr>
<td>
<select name="albumid" id="uploadalbum" onchange="addSort(this)">
<option value="-1">请选择相册</option>
<option value="-1">默认相册</option>
<?php if(is_array($albums)) { foreach($albums as $value) { ?>
<option value="<?=$value['albumid']?>"><?=$value['albumname']?></option>
<?php } } ?>
<option value="addoption" style="color:red;">+新建相册</option>
</select>
<script src="source/script_upload.js" type="text/javascript"></script>
<iframe id="uploadframe" name="uploadframe" width="0" height="0" marginwidth="0" frameborder="0" src="about:blank"></iframe>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table cellspacing="4" cellpadding="4" width="100%" class="infotable" id="uchome-edit-album" style="display:none;">
<tr>
<th width="100">&nbsp;</th>
<td>
选择相册: <select name="view_albumid" onchange="picView(this.value)">
<option value="none">选择一个相册</option>
<option value="0">默认相册</option>
<?php if(is_array($albums)) { foreach($albums as $value) { ?>
<option value="<?=$value['albumid']?>"><?=$value['albumname']?></option>
<?php } } ?>
</select> (点击图片可以插入到内容中)
<div id="albumpic_body"></div>
</td>
</tr>
</table>
<table cellspacing="4" cellpadding="4" width="100%" class="infotable">
<tr>
<th width="100">&nbsp;</th>
<td>
<input type="button" id="issuance" onclick="document.getElementById('blogbutton').click();" value="保存发布" class="submit" /></td>
</tr>
</table>
</div>

<?php } ?>
<?php if(empty($_SGLOBAL['inajax'])) { ?>
<?php if(empty($_TPL['nosidebar'])) { ?>
<?php if($_SGLOBAL['ad']['contentbottom']) { ?><br style="line-height:0;clear:both;"/><div id="ad_contentbottom"><?php adshow('contentbottom'); ?></div><?php } ?>
</div>

<!--/mainarea-->
<div id="bottom"></div>
</div>
<!--/main-->
<?php } ?>

<div id="footer">
<?php if($_TPL['templates']) { ?>
<div class="chostlp" title="切换风格"><img id="chostlp" src="<?=$_TPL['default_template']['icon']?>" onmouseover="showMenu(this.id)" alt="<?=$_TPL['default_template']['name']?>" /></div>
<ul id="chostlp_menu" class="chostlp_drop" style="display: none">
<?php if(is_array($_TPL['templates'])) { foreach($_TPL['templates'] as $value) { ?>
<li><a href="cp.php?ac=common&op=changetpl&name=<?=$value['name']?>" title="<?=$value['name']?>"><img src="<?=$value['icon']?>" alt="<?=$value['name']?>" /></a></li>
<?php } } ?>
</ul>
<?php } ?>

<p class="r_option">
<a href="javascript:;" onclick="window.scrollTo(0,0);" id="a_top" title="TOP"><img src="image/top.gif" alt="" style="padding: 5px 6px 6px;" /></a>
</p>

<?php if($_SGLOBAL['ad']['footer']) { ?>
<p style="padding:5px 0 10px 0;"><?php adshow('footer'); ?></p>
<?php } ?>

<?php if($_SCONFIG['close']) { ?>
<p style="color:blue;font-weight:bold;">
提醒：当前站点处于关闭状态
</p>
<?php } ?>
<p>
<?=$_SCONFIG['sitename']?> - 
<a href="mailto:<?=$_SCONFIG['adminemail']?>">联系我们</a>
<?php if($_SCONFIG['miibeian']) { ?> - <a  href="http://www.miibeian.gov.cn" target="_blank"><?=$_SCONFIG['miibeian']?></a><?php } ?>
</p>
<p>
Powered by <a  href="http://u.discuz.net" target="_blank"><strong>UCenter Home</strong></a> <span title="<?php echo X_RELEASE; ?>"><?php echo X_VER; ?></span>
<?php if(!empty($_SCONFIG['licensed'])) { ?><a  href="http://license.comsenz.com/?pid=7&host=<?=$_SERVER['HTTP_HOST']?>" target="_blank">Licensed</a><?php } ?>
&copy; 2001-2009 <a  href="http://www.comsenz.com" target="_blank">Comsenz Inc.</a>
</p>
<?php if($_SCONFIG['debuginfo']) { ?>
<p><?php echo debuginfo(); ?></p>
<?php } ?>
</div>
</div>
<!--/wrap-->

<?php if($_SGLOBAL['appmenu']) { ?>
<ul id="ucappmenu_menu" class="dropmenu_drop" style="display:none;">
<li><a href="<?=$_SGLOBAL['appmenu']['url']?>" title="<?=$_SGLOBAL['appmenu']['name']?>" target="_blank"><?=$_SGLOBAL['appmenu']['name']?></a></li>
<?php if(is_array($_SGLOBAL['appmenus'])) { foreach($_SGLOBAL['appmenus'] as $value) { ?>
<li><a href="<?=$value['url']?>" title="<?=$value['name']?>" target="_blank"><?=$value['name']?></a></li>
<?php } } ?>
</ul>
<?php } ?>

<?php if($_SGLOBAL['supe_uid']) { ?>
<ul id="membernotemenu_menu" class="dropmenu_drop" style="display:none;">
<?php $member = $_SGLOBAL['member']; ?>
<?php if($member['notenum']) { ?><li><img src="image/icon/notice.gif" width="16" alt="" /> <a href="space.php?do=notice"><strong><?=$member['notenum']?></strong> 个新通知</a></li><?php } ?>
<?php if($member['pokenum']) { ?><li><img src="image/icon/poke.gif" alt="" /> <a href="cp.php?ac=poke"><strong><?=$member['pokenum']?></strong> 个新招呼</a></li><?php } ?>
<?php if($member['addfriendnum']) { ?><li><img src="image/icon/friend.gif" alt="" /> <a href="cp.php?ac=friend&op=request"><strong><?=$member['addfriendnum']?></strong> 个好友请求</a></li><?php } ?>
<?php if($member['mtaginvitenum']) { ?><li><img src="image/icon/mtag.gif" alt="" /> <a href="cp.php?ac=mtag&op=mtaginvite"><strong><?=$member['mtaginvitenum']?></strong> 个群组邀请</a></li><?php } ?>
<?php if($member['eventinvitenum']) { ?><li><img src="image/icon/event.gif" alt="" /> <a href="cp.php?ac=event&op=eventinvite"><strong><?=$member['eventinvitenum']?></strong> 个活动邀请</a></li><?php } ?>
<?php if($member['myinvitenum']) { ?><li><img src="image/icon/userapp.gif" alt="" /> <a href="space.php?do=notice&view=userapp"><strong><?=$member['myinvitenum']?></strong> 个应用消息</a></li><?php } ?>
</ul>
<?php } ?>

<?php if($_SGLOBAL['supe_uid']) { ?>
<?php if(!isset($_SCOOKIE['checkpm'])) { ?>
<script language="javascript"  type="text/javascript" src="cp.php?ac=pm&op=checknewpm&rand=<?=$_SGLOBAL['timestamp']?>"></script>
<?php } ?>
<?php if(!isset($_SCOOKIE['synfriend'])) { ?>
<script language="javascript"  type="text/javascript" src="cp.php?ac=friend&op=syn&rand=<?=$_SGLOBAL['timestamp']?>"></script>
<?php } ?>
<?php } ?>
<?php if(!isset($_SCOOKIE['sendmail'])) { ?>
<script language="javascript"  type="text/javascript" src="do.php?ac=sendmail&rand=<?=$_SGLOBAL['timestamp']?>"></script>
<?php } ?>

<?php if($_SGLOBAL['ad']['couplet']) { ?>
<script language="javascript" type="text/javascript" src="source/script_couplet.js"></script>
<div id="uch_couplet" style="z-index: 10; position: absolute; display:none">
<div id="couplet_left" style="position: absolute; left: 2px; top: 60px; overflow: hidden;">
<div style="position: relative; top: 25px; margin:0.5em;" onMouseOver="this.style.cursor='hand'" onClick="closeBanner('uch_couplet');"><img src="image/advclose.gif"></div>
<?php adshow('couplet'); ?>
</div>
<div id="couplet_rigth" style="position: absolute; right: 2px; top: 60px; overflow: hidden;">
<div style="position: relative; top: 25px; margin:0.5em;" onMouseOver="this.style.cursor='hand'" onClick="closeBanner('uch_couplet');"><img src="image/advclose.gif"></div>
<?php adshow('couplet'); ?>
</div>
<script type="text/javascript">
lsfloatdiv('uch_couplet', 0, 0, '', 0).floatIt();
</script>
</div>
<?php } ?>
<?php if($_SCOOKIE['reward_log']) { ?>
<script type="text/javascript">
showreward();
</script>
<?php } ?>
</body>
</html>
<?php } ?><?php ob_out();?>