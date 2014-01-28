<?php if(!defined('IN_UCHOME')) exit('Access Denied');?><?php subtplcheck('template/default/space_blog_list|template/default/header|template/default/space_menu|template/default/footer', '1388134910', 'template/default/space_blog_list');?><?php $_TPL['titles'] = array('日志'); ?>
<?php $friendsname = array(1 => '仅好友可见',2 => '指定好友可见',3 => '仅自己可见',4 => '凭密码可见'); ?>

<!DOCTYPE html>
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


<?php if(!empty($_SGLOBAL['inajax'])) { ?>
<div id="space_blog" class="feed">
<h3 class="feed_header">
<a href="cp.php?ac=blog" class="r_option" target="_blank">发表日志</a>
日志(共 <?=$count?> 篇)
</h3>
<?php if($count) { ?>
<ul class="line_list">
<?php if(is_array($list)) { foreach($list as $value) { ?>
<li>
<span class="gray r_option"><?php echo sgmdate('m-d H:i',$value[dateline],1); ?></span>
<h4><a href="space.php?uid=<?=$space['uid']?>&do=blog&id=<?=$value['blogid']?>" target="_blank" <?php if($value['magiccolor']) { ?> class="magiccolor<?=$value['magiccolor']?>"<?php } ?>><?=$value['subject']?></a></h4>
<div class="detail">
<?=$value['message']?>
</div>
</li>
<?php } } ?>
</ul>
<?php if($pricount) { ?>
<div class="c_form">本页有 <?=$pricount?> 篇日志因作者的隐私设置而隐藏</div>
<?php } ?>
<div class="page"><?=$multi?></div>
<?php } else { ?>
<div class="c_form">还没有相关的日志。</div>
<?php } ?>
</div>
<?php } else { ?>

<?php if($space['self']) { ?>
<div class="searchbar floatright">
<form method="get" action="space.php">
<input name="searchkey" value="" size="15" class="t_input" type="text">
<input name="searchsubmit" value="搜索日志" class="submit" type="submit">
<input type="hidden" name="searchmode" value="1" />
<input type="hidden" name="do" value="blog" />
<input type="hidden" name="view" value="all" />
<input type="hidden" name="orderby" value="dateline" />
</form>
</div>
<h2 class="title"><img src="image/app/blog.gif" />日志</h2>
<div class="tabs_header">
<ul class="tabs">
<?php if($space['friendnum']) { ?><li<?=$actives['we']?>><a href="space.php?uid=<?=$space['uid']?>&do=<?=$do?>&view=we"><span>好友最新日志</span></a></li><?php } ?>
<li<?=$actives['all']?>><a href="space.php?uid=<?=$space['uid']?>&do=<?=$do?>&view=all"><span>大家的日志</span></a></li>
<li<?=$actives['me']?>><a href="space.php?uid=<?=$space['uid']?>&do=<?=$do?>&view=me"><span>我的日志</span></a></li>
<li<?=$actives['click']?>><a href="space.php?uid=<?=$space['uid']?>&do=<?=$do?>&view=click"><span>我表态过的日志</span></a></li>
<li class="null"><a href="cp.php?ac=blog">发表新日志</a></li>
</ul>
</div>		
<?php } else { ?>
<?php $_TPL['spacetitle'] = "日志";
	$_TPL['spacemenus'][] = "<a href=\"space.php?uid=$space[uid]&do=$do&view=me\">TA的所有日志</a>"; ?>
<div class="c_header a_header">
<div class="avatar48"><a href="space.php?uid=<?=$space['uid']?>"><?php echo avatar($space[uid],small); ?></a></div>
<?php if($_SGLOBAL['refer']) { ?>
<a class="r_option" href="<?=$_SGLOBAL['refer']?>">&laquo; 返回上一页</a>
<?php } ?>
<p style="font-size:14px"><?=$_SN[$space['uid']]?>的<?=$_TPL['spacetitle']?></p>
<a href="space.php?uid=<?=$space['uid']?>" class="spacelink"><?=$_SN[$space['uid']]?>的主页</a>
<?php if($_TPL['spacemenus']) { ?>
<?php if(is_array($_TPL['spacemenus'])) { foreach($_TPL['spacemenus'] as $value) { ?> <span class="pipe">&raquo;</span> <?=$value?><?php } } ?>
<?php } ?>
</div>

<div class="h_status">按照发布时间排序</div>
<?php } ?>

<div id="content" style="width:640px;">
<?php if($_GET['orderby'] && $_GET['orderby'] != 'dateline') { ?>
<div class="h_status">
排行时间范围：
<a href="space.php?do=blog&view=all&orderby=<?=$_GET['orderby']?>"<?=$day_actives['0']?>>全部</a><span class="pipe">|</span>
<a href="space.php?do=blog&view=all&orderby=<?=$_GET['orderby']?>&day=1"<?=$day_actives['1']?>>最近一天</a><span class="pipe">|</span>
<a href="space.php?do=blog&view=all&orderby=<?=$_GET['orderby']?>&day=2"<?=$day_actives['2']?>>最近两天</a><span class="pipe">|</span>
<a href="space.php?do=blog&view=all&orderby=<?=$_GET['orderby']?>&day=7"<?=$day_actives['7']?>>最近七天</a><span class="pipe">|</span>
<a href="space.php?do=blog&view=all&orderby=<?=$_GET['orderby']?>&day=30"<?=$day_actives['30']?>>最近三十天</a><span class="pipe">|</span>
<a href="space.php?do=blog&view=all&orderby=<?=$_GET['orderby']?>&day=90"<?=$day_actives['90']?>>最近三个月</a><span class="pipe">|</span>
<a href="space.php?do=blog&view=all&orderby=<?=$_GET['orderby']?>&day=120"<?=$day_actives['120']?>>最近六个月</a>
</div>
<?php } ?>

<?php if($searchkey) { ?>
<div class="h_status">以下是搜索日志 <span style="color:red;font-weight:bold;"><?=$searchkey?></span> 结果列表</div>
<?php } ?>

<?php if($count) { ?>
<div class="entry_list">
<ul>
<?php if(is_array($list)) { foreach($list as $value) { ?>
<li>
<div class="avatardiv">
<div class="avatar48"><a href="space.php?uid=<?=$value['uid']?>"><?php echo avatar($value[uid],small); ?></a></div>
<?php if($value['hot']) { ?><div class="digb"><?=$value['hot']?></div><?php } ?>
</div>

<div class="title">
<a href="cp.php?ac=share&type=blog&id=<?=$value['blogid']?>" id="a_share_<?=$value['blogid']?>" onclick="ajaxmenu(event, this.id, 1)" class="a_share">分享</a>
<h4><a href="space.php?uid=<?=$value['uid']?>&do=<?=$do?>&id=<?=$value['blogid']?>" <?php if($value['magiccolor']) { ?> class="magiccolor<?=$value['magiccolor']?>"<?php } ?>><?=$value['subject']?></a></h4>
<div>
<?php if($value['friend']) { ?>
<span class="r_option locked gray"><a href="<?=$theurl?>&friend=<?=$value['friend']?>" class="gray"><?=$friendsname[$value['friend']]?></a></span>
<?php } ?>
<a href="space.php?uid=<?=$value['uid']?>"><?=$_SN[$value['uid']]?></a> <span class="gray"><?php echo sgmdate('Y-m-d H:i',$value[dateline],1); ?></span>
</div>
</div>
<div class="detail image_right l_text s_clear" id="blog_article_<?=$value['blogid']?>">
<?php if($value['pic']) { ?><p class="image"><a href="space.php?uid=<?=$value['uid']?>&do=blog&id=<?=$value['blogid']?>"><img src="<?=$value['pic']?>" alt="<?=$value['subject']?>" /></a></p><?php } ?>
<?=$value['message']?>
</div>
<div class="gray">
<?php if($classarr[$value['classid']]) { ?>分类: <a href="space.php?uid=<?=$value['uid']?>&do=blog&classid=<?=$value['classid']?>"><?=$classarr[$value['classid']]?></a><span class="pipe">|</span><?php } ?>
<?php if($value['viewnum']) { ?><a href="space.php?uid=<?=$value['uid']?>&do=<?=$do?>&id=<?=$value['blogid']?>"><?=$value['viewnum']?> 次阅读</a><span class="pipe">|</span><?php } ?>
<?php if($value['replynum']) { ?><a href="space.php?uid=<?=$value['uid']?>&do=<?=$do?>&id=<?=$value['blogid']?>#comment"><?=$value['replynum']?> 个评论</a><?php } else { ?>没有评论<?php } ?>
</div>
</li>
<?php } } ?>
<?php if($pricount) { ?>
<li>
<div class="title">本页有 <?=$pricount?> 篇日志因作者的隐私设置而隐藏</div>
</li>
<?php } ?>
</ul>
</div>

<div class="page"><?=$multi?></div>

<?php } else { ?>
<div class="c_form">还没有相关的日志。</div>
<?php } ?>

</div>

<div id="sidebar" style="width:150px;">

<?php if($userlist) { ?>
<div class="cat">
<h3>按好友查看</h3>
<ul class="post_list line_list">
<li>
选择好友:<br>
<select name="fuidsel" onchange="fuidgoto(this.value);">
<option value="">全部好友</option>
<?php if(is_array($userlist)) { foreach($userlist as $value) { ?>
<option value="<?=$value['fuid']?>"<?=$fuid_actives[$value['fuid']]?>><?=$_SN[$value['fuid']]?></option>
<?php } } ?>
</select>
</li>
</ul>
</div>
<?php } ?>

<?php if($classarr) { ?>
<div class="cat">
<h3>日志分类</h3>
<ul class="post_list line_list">
<li<?php if(!$_GET['classid']) { ?> class="current"<?php } ?>><a href="space.php?uid=<?=$space['uid']?>&do=blog&view=me">全部日志</a></li>
<?php if(is_array($classarr)) { foreach($classarr as $classid => $classname) { ?>
<li<?php if($_GET['classid']==$classid) { ?> class="current"<?php } ?>>
<?php if($space['self']) { ?>
<a href="cp.php?ac=class&op=edit&classid=<?=$classid?>" id="c_edit_<?=$classid?>" onclick="ajaxmenu(event, this.id)" class="c_edit">编辑</a>
<a href="cp.php?ac=class&op=delete&classid=<?=$classid?>" id="c_delete_<?=$classid?>" onclick="ajaxmenu(event, this.id)" class="c_delete">删除</a>
<?php } ?>
<a href="space.php?uid=<?=$space['uid']?>&do=blog&classid=<?=$classid?>&view=me"><?=$classname?></a>
</li>
<?php } } ?>
</ul>
</div>
<?php } ?>

<?php if($_GET['view'] == 'click') { ?>
<div class="cat">
<h3>表态动作</h3>
<ul class="post_list line_list">
<li<?=$click_actives['all']?>><a href="space.php?do=blog&view=click">全部动作</a></li>
<?php if(is_array($clicks)) { foreach($clicks as $value) { ?>
<li<?=$click_actives[$value['clickid']]?>>
<a href="space.php?do=blog&view=click&clickid=<?=$value['clickid']?>"><?=$value['name']?></a>
</li>
<?php } } ?>
</ul>
</div>
<?php } elseif($_GET['view'] == 'all') { ?>
<div class="cat">
<h3>排行榜</h3>
<ul class="post_list line_list">
<li<?=$all_actives['all']?>><a href="space.php?do=blog&view=all">推荐阅读</a></li>
<li<?=$all_actives['dateline']?>><a href="space.php?do=blog&view=all&orderby=dateline">最新发表</a></li>
<li<?=$all_actives['hot']?>><a href="space.php?do=blog&view=all&orderby=hot&day=<?=$_GET['hotday']?>">人气排行</a></li>
<li<?=$all_actives['replynum']?>><a href="space.php?do=blog&view=all&orderby=replynum&day=<?=$_GET['hotday']?>">评论排行</a></li>
<li<?=$all_actives['viewnum']?>><a href="space.php?do=blog&view=all&orderby=viewnum&day=<?=$_GET['hotday']?>">查看排行</a></li>
<?php if(is_array($clicks)) { foreach($clicks as $value) { ?>
<li<?=$all_actives['click_'.$value['clickid']]?>><a href="space.php?do=blog&view=all&orderby=click_<?=$value['clickid']?>&day=<?=$_GET['hotday']?>"><?=$value['name']?>排行</a></li>
<?php } } ?>
</ul>

</div>
<?php } ?>

</div>

<script>
function fuidgoto(fuid) {
window.location.href = "space.php?do=blog&view=we&fuid="+fuid;
}
</script>
<?php } ?>

<div class="row-fluid">
  <div id="footer" class="span12"> 2013 &copy; Matrix Admin. Brought to you by <a href="http://themedesigner.in/">Themedesigner.in</a> </div>
</div><?php ob_out();?>