<?php if(!defined('IN_UCHOME')) exit('Access Denied');?><?php subtplcheck('template/default/space_test|template/default/header|template/default/footer', '1390721101', 'template/default/space_test');?>
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

<script language="javascript" type="text/javascript" src="source/script_cookie.js"></script>
<script language="javascript" type="text/javascript" src="source/script_common.js"></script>
<script language="javascript" type="text/javascript" src="source/script_menu.js"></script>
<script language="javascript" type="text/javascript" src="source/script_ajax.js"></script>
<script language="javascript" type="text/javascript" src="source/script_face.js"></script>
<script language="javascript" type="text/javascript" src="source/script_manage.js"></script>
<div id="content">
<div style=" float:left;width:100px;"><input type="file" name="attach_" value="上传图片" class="button" id="fileinput_" >
<div><img src="<?=$value['pic']?>" id="optionimga_" style="display:none"/><a href="do.php?ac=ajax&picid=<?=$value['picid']?>&op=deletepic" id="pic_delete_1" onclick="ajaxmenu(event, this.id,1000); deletepic()">删除</a></div></div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script> 
<script language="javascript" src="swfupload/jquery.uploadify-3.1.min.js"></script>
<link href="swfupload/uploadify.css" rel="stylesheet" type="text/css">
<script language="javascript">var jquery = jQuery.noConflict(); </script>
<script>
jquery(document).ready(function() {
  
　　jquery('#fileinput_').uploadify({
 　　//以下参数均是可选
 　　'swf' : 'uploadify.swf', //指定上传控件的主体文件，默认'uploader.swf'
 　　'uploader' : 'cp.php?ac=upload', //指定服务器端上传处理文件，默认'upload.php教程'
'checkScript' : true,
 　　'cancelimg' : 'swfupload/uploadify-cancel.png', //指定取消上传的图片，默认'cancel.png'
 　　//'buttonimg':'swfupload/upload2.jpg',
 　　'auto' : true, //选定文件后是否自动上传，默认false
 　　//'folder' : '/userphoto' , //要上传到的服务器路径，默认'/'
 　　'multi' : false, //是否允许同时上传多文件，默认false
 　　'filedesc' : '图片文件' , //出现在上传对话框中的文件类型描述
 　　'fileext' : '*.jpg;*.bmp;*.png;*.gif', //控制可上传文件的扩展名，启用本项时需同时声明filedesc
 　　'sizelimit': 86400, //控制上传文件的大小，单位byte
'formData': { 'uploadsubmit2': 'true', 'albumid':'0', 'formhash':'<?php echo formhash(); ?>', 'index':'1', 'ac':'upload', 'uid' : '<?=$_SGLOBAL['supe_uid']?>',"session":"<?php echo session_id()?>"},
 　　'onUploadSuccess': function(file, data, response) {
  　　	//jquery('#image').attr("src","<%=basepath%>userphoto/"+res ponse);
  　　	//jquery('#image').show();
  　　	//jquery('#photo').attr("value",response);

  		data = eval("(" + data + ')');

jquery("#optionimga_").attr("src",data.pic);
jquery("#optionimga_").show();
jquery("#pics_").val(data.picid);
var astr = '<a href="do.php?ac=ajax&picid='+data.picid+'&op=deletepic" id="pic_delete_'+data.picid+'" onclick="ajaxmenu(event, this.id,1000); deletepic()">删除</a>';
jquery("#optionimga_").parent().append(astr);

 　　},
 	'onUploadComplete': function(file){
jquery('#fileinput_').hide();

},
'onUploadError' : function(file, errorCode, errorMsg, errorString) {
alert('The file ' + file.name + ' could not be uploaded: ' + errorString);
},
'fileObjName':'attach',
 　　'onUploadError' : function(file, errorCode, errorMsg, errorString){
 　　	alert("文件:" + file.name + " 上传失败");
 　　}
　　});
　　});

</script>
<script type="text/javascript">
function deletepic()
{
var s = '#fileinput_';
jquery(s).show();  
var s2 = '#optionimga_';
var p = jquery(s2).parent(); 
p.empty();
var s3 = '<img src="" id="optionimga_" style="display:none"/>';
p.append(s3);
var s4 = '#pics_';
jquery(s4).val("");
}


　
</script>
</div>
<div class="row-fluid">
  <div id="footer" class="span12"> 2013 &copy; Matrix Admin. Brought to you by <a href="http://themedesigner.in/">Themedesigner.in</a> </div>
</div>
<?php ob_out();?>