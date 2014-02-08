<?php if(!defined('IN_UCHOME')) exit('Access Denied');?><?php subtplcheck('template/default/space_activity_view|template/default/header|template/default/footer', '1391841943', 'template/default/space_activity_view');?><!DOCTYPE html>
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
    <li class=""><a title="" href="space.php?do=menuset"><i class="icon icon-cog"></i> <span class="text">分类选择</span></a></li>
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
    <?php if($_GET['do']=='home'||$_GET['do']=='feed') { ?><li class="active"><?php } else { ?><li><?php } ?><a href="space.php?do=home"><i class="icon icon-home"></i> <span>首页</span></a> </li>
    <?php if($_GET['do']=='activity') { ?><li class="submenu open"><?php } else { ?><li class="submenu"><?php } ?><a href="space.php?do=activity"><i class="icon icon-signal"></i> <span>活动大厅</span></a> 
      <ul>
         <?php if($_GET['do']=='activity'&&$_GET['op']!='me') { ?><li class="active"><?php } else { ?><li><?php } ?><a href="space.php?do=activity">正在进行中的活动</a></li>
        <?php if($_GET['do']=='activity'&&$_GET['op']=='me') { ?><li class="active"><?php } else { ?><li><?php } ?><a href="space.php?do=activity&op=me">我的活动</a></li>
      </ul>
  </li>
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

<script src="./template/default/feed/js/jquery.min.js"></script> 
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" />
<link rel="stylesheet" href="./template/default/time/css/styles.css" />
<link rel="stylesheet" href="./template/default/time/countdown/jquery.countdown.css" />
<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb">
      <a href="index.html" title="活动中心" class="tip-bottom"><i class="icon-tint"></i>活动中心</a>
      <div class="bg_lb" style="float:right;margin-top:-38px;"> <a href="#huodongmyModal" data-toggle="modal" style="color:#fff;"> <i class="icon-pencil"></i>发起活动</a> </div>
    </div>
  </div>
   <!-- 楼下这div是发起活动的窗口 -->
  <div id="huodongmyModal" class="modal hide">
    <div class="modal-header">
      <button data-dismiss="modal" class="close" type="button">×</button>
      <h3>发起活动</h3>
    </div>

    <div class="modal-body">
      
             
              <div class="widget-content nopadding" style="border:0;">
                <form action="#" method="get" class="form-horizontal">
                  <div class="control-group">
                    <label class="control-label">Last Name :</label>
                    <div class="controls">
                      <input type="text" class="" placeholder="Last name">
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label">Date Picker (mm-dd)</label>
                    <div class="controls">
                      <div data-date="12-02-2012" class="input-append date datepicker">
                       <input type="text" value="12-02-2012" data-date-format="mm-dd-yyyy" class="span2">
                      <span class="add-on"><i class="icon-th"></i></span> </div>
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label">Company info :</label>
                    <div class="controls">
                      <input type="text" class="" placeholder="Company name">
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label">Description field:</label>
                    <div class="controls">
                      <input type="text" class="">
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label">Message</label>
                    <div class="controls">
                      <textarea class=""></textarea>
                    </div>
                  </div>
                
                </form>
              </div>
      
    </div>

    <div class="modal-footer">
        <button type="submit" class="btn btn-success">确定</button>
      <a data-dismiss="modal" class="btn btn-inverse" href="#">取消</a>
    </div>
  </div>
<!--End-breadcrumbs-->
      


<!--Action boxes-->
  <div class="container-fluid">
    <div class="row-fluid">
    <div class="span6">
      <?php if(is_array($list)) { foreach($list as $value) { ?>
      <div class="widget-box">
        <div class="widget-title bg_ly" data-toggle="collapse" href="#<?=$value['id']?>"><span class="icon"><i class="icon-chevron-down"></i></span>
          <!-- 楼上href的id要与楼下div的id对应 -->
          <h5><?=$value['subject']?></h5>
          <!-- <div class="countdown" style="margin-top:4px;"></div> -->
          <p id="notetime" style="float:right;margin-top:5px;margin-right:5px;"></p> 
          <input type="hidden" id="time<?=$value['id']?>" value="<?=$value['time']?>">
        </div>
        <div class="widget-content nopadding collapse in" id="<?=$value['id']?>"><!-- 加in默认打开 -->
          <ul class="recent-posts">
            <li>
              <?php if($value['thumbpic']) { ?>
              <div class="user-thumb" style="width:100px;height:100%;text-align:center;"> <img width="100" height="100%" alt="User" src="<?=$value['thumbpic']?>"><a href="#bigModal<?=$value['id']?>"  data-toggle="modal">(放大图片)</a></div>
              <div class="article-post" style="padding-left: 80px;"> <span class="user-info"><?=$value['message']?> </span>
              <?php } else { ?>
              <!-- <div class="user-thumb"> <img width="40" height="40" alt="User" src="./template/default/feed/img/demo/av4.jpg"> </div> -->
              <div class="article-post"> <span class="user-info"><?=$value['message']?> </span>
              <?php } ?>
                <p><a href="#">有兴趣电联10086报名申请，周六早上9:00在13、14栋集合，装备食物自备。</a> </p>
                <p><a href="#"><?php echo sgmdate('m-d H:i',$value[time]); ?></a> </p>
                <?php if($value['thumbpic']) { ?>
                <br/>
                <?php } ?>
              </div>
              
            <li id="baoming">

              <a href="#myModal<?=$value['id']?>" id="amyModal<?=$value['id']?>"  data-toggle="modal" style="color:#fff;"> <button  class="btn btn-warning btn-mini">报名</button></a>
              
            </li>
               

          </ul>
        </div>
      </div>
             

<script src="./template/default/time/countdown/jquery.countdown.js"></script>
<script type="text/javascript">
$(function(){
   var notetime = $('#notetime');
  var note = $('#time<?=$value['id']?>').val()*1000,

  ts = $('#time<?=$value['id']?>').val()*1000,
    newYear = true;
  if((new Date()).getTime() < ts){
    // The new year is here! Count towards something else.
    // Notice the *1000 at the end - time must be in milliseconds
    ts = (new Date()).getTime() + (note-(new Date()).getTime());
      $("#time<?=$value['id']?>").parent().find('.countdown').countdown({
    timestamp : ts,
    callback  : function(days, hours, minutes, seconds){

      var message = "距离截止时间还有:";
      if(days!='0'){
        message += days + " 天"  + " ";
      }
      message += hours + " 时" + " ";
      message += minutes + " 分"   + " ";
      message += seconds + " 秒" + " ";
 /*     
      if(newYear){
        message += "left until the new year!";
      }
      else {
        message += "left to 10 days from now!";
      }*/
      $("#time<?=$value['id']?>").parent().find('#notetime').html(message);
      }
    });
    newYear = false;
  }else{
    $("#time<?=$value['id']?>").parent().find('.countdown').hide();
    $("#time<?=$value['id']?>").parent().parent().find('#baoming').hide();
    $("#time<?=$value['id']?>").parent().find('#notetime').html("已过期");
  }
    

  
});
</script>
      <?php } } ?>
      
      <div class="pagination alternate" style="text-align:center;"><ul><?=$multi?></ul></div>
    </div>
    <div class="span4">
            <div class="widget-box">
              <div class="widget-title bg_ly" data-toggle="collapse" href="#collapseG2"><span class="icon"><i class="icon-chevron-down"></i></span>
                <h5>热门活动</h5>
              </div>
              <div class="widget-content nopadding collapse in" id="collapseG2">
                <ul class="recent-posts">
                  <li>
                    <div class="user-thumb"> <img width="40" height="40" alt="User" src="./template/default/feed/img/demo/av1.jpg"> </div>
                    <div class="article-post"> <span class="user-info"> By: john Deo / Date: 2 Aug 2012 / Time:09:27 AM </span>
                      <p><a href="#">This is a much longer one that will go on for a few lines.It has multiple paragraphs and is full of waffle to pad out the comment.</a> </p>
                    </div>
                  </li>
                  <li>
                    <div class="user-thumb"> <img width="40" height="40" alt="User" src="./template/default/feed/img/demo/av2.jpg"> </div>
                    <div class="article-post"> <span class="user-info"> By: john Deo / Date: 2 Aug 2012 / Time:09:27 AM </span>
                      <p><a href="#">This is a much longer one that will go on for a few lines.It has multiple paragraphs and is full of waffle to pad out the comment.</a> </p>
                    </div>
                  </li>
                  <li>
                    <div class="user-thumb"> <img width="40" height="40" alt="User" src="./template/default/feed/img/demo/av4.jpg"> </div>
                    <div class="article-post"> <span class="user-info"> By: john Deo / Date: 2 Aug 2012 / Time:09:27 AM </span>
                      <p><a href="#">This is a much longer one that will go on for a few lines.Itaffle to pad out the comment.</a> </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
        
            
    </div>
  </div>
</div>
</div>
<!--end-main-container-part-->

<!--Footer-part-->


<div class="row-fluid">
  <div id="footer" class="span12"> 2013 &copy; Matrix Admin. Brought to you by <a href="http://themedesigner.in/">Themedesigner.in</a> </div>
</div>


<!--end-Footer-part-->

<script src="./template/default/feed/js/excanvas.min.js"></script> 

<script src="./template/default/feed/js/jquery.ui.custom.js"></script> 
<script src="./template/default/feed/js/bootstrap.min.js"></script> 
<script src="./template/default/feed/js/jquery.flot.min.js"></script> 
<script src="./template/default/feed/js/jquery.flot.resize.min.js"></script> 
<script src="./template/default/feed/js/jquery.peity.min.js"></script> 
<script src="./template/default/feed/js/fullcalendar.min.js"></script> 
<script src="./template/default/feed/js/matrix.js"></script> 
<script src="./template/default/feed/js/matrix.dashboard.js"></script> 
<script src="./template/default/feed/js/jquery.gritter.min.js"></script> 
<script src="./template/default/feed/js/matrix.interface.js"></script> 
<script src="./template/default/feed/js/matrix.chat.js"></script> 
<script src="./template/default/feed/js/jquery.validate.js"></script> 
<script src="./template/default/feed/js/matrix.form_validation.js"></script> 
<script src="./template/default/feed/js/jquery.wizard.js"></script> 
<script src="./template/default/feed/js/jquery.uniform.js"></script> 
<script src="./template/default/feed/js/select2.min.js"></script> 
<script src="./template/default/feed/js/matrix.popover.js"></script> 
<script src="./template/default/feed/js/jquery.dataTables.min.js"></script> 
<script src="./template/default/feed/js/matrix.tables.js"></script> 
<script type="text/javascript" src="./template/default/feed/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="./template/default/feed/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>

<script type="text/javascript">
    var today = new Date();
    $('.form_datetime').datetimepicker({
        language:  'zh-CN',
        autoclose: true,
        todayBtn: true,
        showMeridian: true,
        startDate: today,
        format: 'yyyy-mm-dd hh:ii'

    });
  $(document).ready(function () {
    $("#huodong").click(function () {
      $.ajax({
                 type: "POST",
                 url: "space.php?do=deal",
                 data: "subject="+$('#subject').val()+"&time="+$('#time').val()+" &message="+$('#message').val()+"&huodong=1",//提交表单，相当于CheckCorpID.ashx?ID=XXX
                  async: true,                    
                    success: function (data) {
                      if(data=='-1')
                      {
                        alert("选项有空值");
                      }else{
                        alert("发布成功");
                      }
                    }
                  })
              });
         
    $("#guoneimore").click(function () {
      
        $.ajax({
                   type: "POST",
                   url: "space.php?do=deal",
                   data: "more=1",//提交表单，相当于CheckCorpID.ashx?ID=XXX
                    async: true,                    
                      success: function (data) {
                      $("#guoneimore").before(data);//国内新闻更多按钮实现方法
                      $("#guoneimore").hide();//更多隐藏
                      }
                });
            });

    $("#guowaimore").click(function () {
      
        $.ajax({
                   type: "POST",
                   url: "space.php?do=deal",
                   data: "guowaimore=1",//提交表单，相当于CheckCorpID.ashx?ID=XXX
                    async: true,                    
                      success: function (data) {
                      $("#guowaimore").before(data);//国内新闻更多按钮实现方法
                      $("#guowaimore").hide();//更多隐藏
                      }
                });
            });

    $("#yulemore").click(function () {
      
        $.ajax({
                   type: "POST",
                   url: "space.php?do=deal",
                   data: "yulemore=1",//提交表单，相当于CheckCorpID.ashx?ID=XXX
                    async: true,                    
                      success: function (data) {
                      $("#yulemore").before(data);//国内新闻更多按钮实现方法
                      $("#yulemore").hide();//更多隐藏
                      }
                });
            });
    $("#tiyumore").click(function () {
      
        $.ajax({
                   type: "POST",
                   url: "space.php?do=deal",
                   data: "tiyumore=1",//提交表单，相当于CheckCorpID.ashx?ID=XXX
                    async: true,                    
                      success: function (data) {
                      $("#tiyumore").before(data);//国内新闻更多按钮实现方法
                      $("#tiyumore").hide();//更多隐藏
                      }
                });
            });
      });
</script>

<script type="text/javascript">
  // This function is called from the pop-up menus to transfer to
  // a different page. Ignore if the value returned is a null string:
  function goPage (newURL) {

      // if url is empty, skip the menu dividers and reset the menu selection to default
      if (newURL != "") {
      
          // if url is "-", it is this page -- reset the menu:
          if (newURL == "-" ) {
              resetMenu();            
          } 
          // else, send page to designated URL            
          else {  
            document.location.href = newURL;
          }
      }
  }

// resets the menu selection upon entry to this page:
function resetMenu() {
   document.gomenu.selector.selectedIndex = 2;
}
</script>
</body>
</html>
<?php ob_out();?>