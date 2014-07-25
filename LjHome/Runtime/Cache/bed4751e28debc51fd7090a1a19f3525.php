<?php if (!defined('THINK_PATH')) exit();?>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>系统提示</title>
<style>
.alert{background-color:#f1f1f1; width:495px;margin:50px auto; font-size:12px; line-height:24px;}
.alert .alert_body{ border:1px solid #cbcbcb;background-color:#fff; width:475px; height:143px; position:relative; top:-5px; left:-5px; padding:10px;}
.alert .alert_body h3{font-size:14px; font-weight:bold; margin:0;}
.alert .alert_body .alertcont{margin:15px 0 0 85px; background:url(__IMAGES__/m_alert.png) left center no-repeat; padding:5px 50px; line-height:18px; color:#666; min-height:30px; _height:30px;}
.alert .alert_body .alertcont a{color:#000; text-decoration:none;}
.alert .alert_body .alertcont span{font-size:18px; font-weight:bold; color:#000;}
.alert .alert_body .btn{text-align:center; padding-top:0px;}
.alert .alert_body .btn img{border:0;}
.alert .alert_body .pi2{background:url(__IMAGES__/m_err.png) left center no-repeat;padding-left:55px;}
.alert .alert_body .pi1{background:url(__IMAGES__/m_acc.png) left center no-repeat; padding-left:55px;}

.message{display:block;position:absolute;top:0;left:30%;
left:50%;/*FF IE7*/
top: 50%;/*FF IE7*/
margin-left:-240px!important;/*FF IE7 该值为本身宽的一半 */
margin-top:-70px!important;/*FF IE7 该值为本身高的一半*/
margin-top:0;
position:fixed!important;/*FF IE7*/
position:absolute;/*IE6*/
_top:       expression(eval(document.compatMode &&
            document.compatMode=='CSS1Compat') ?
            documentElement.scrollTop + (document.documentElement.clientHeight-this.offsetHeight)/2 :/*IE6*/
            document.body.scrollTop + (document.body.clientHeight - this.clientHeight)/2);/*IE5 IE5.5*/}
			.message .alert_body{ padding:0; height:163px; width:495px; border:1px solid #dfdfdf;}
.message .alert_body h3{background-color:#fbfbe7; padding:3px 15px;}
</style>

<body ryt13824="1">
<div class="alert message">

	<div class="alert_body">
	    <h3>系统提示</h3>
<?php if(isset($message)): ?><p class="alertcont pi1">
    <span><?php echo($message); ?></span>
	</p>  
<?php else: ?>
    <p class="alertcont pi2">
    <span><?php echo($error); ?></span>
	</p><?php endif; ?>
		<p style="font-align:center;font-size:16px;" align="center" class="jump">
		页面自动 <a id="href" href="<?php echo($jumpUrl); ?>">跳转</a> 等待时间： <b id="wait"><?php echo($waitSecond); ?></b>
	</p> 
	</div>
	
</div>
<script type="text/javascript">
(function(){
var wait = document.getElementById('wait'),href = document.getElementById('href').href;
var interval = setInterval(function(){
	var time = --wait.innerHTML;
	if(time == 0) {
		location.href = href;
		clearInterval(interval);
	};
}, 1000);
})();
</script>


</body></html>