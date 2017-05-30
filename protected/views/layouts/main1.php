<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>2016创青春 海南省青年农村电商大赛</title>
<link rel="stylesheet" type="text/css" href="/front/css/style.css">
<link rel="stylesheet" href="/front/css/baguettebox.min.css">
<script type="text/javascript" src="/front/js/jquery.js"></script>
<script type="text/javascript" src="/front/js/js.js"></script>
<script type="text/javascript" src="/front/js/baguettebox.min.js"></script>
<script type="text/javascript">
	var HOST_URL = "<?php echo Yii::app()->params['host']; ?>";
</script>
</head>
<body>
<div id="main">
<div class="header"></div>
<div class="menu" id="menu">
	<?php $m2 = array('reg','market','person');?>
	<div class="menu_con">
    	<a href="<?php echo $this->createAbsoluteUrl("/") ?>#menu" <?php if($this->id == 'index'): ?>class="on"<?php endif; ?>>大赛介绍</a>
    	<a href="<?php echo $this->createAbsoluteUrl("/") ?>#m2" <?php if(in_array($this->id, $m2)): ?>class="on"<?php endif; ?>>报名通道</a>
    	<a href="<?php echo $this->createAbsoluteUrl("/") ?>#m3">赛事风采</a>
    	<a href="<?php echo $this->createAbsoluteUrl("/") ?>#m4">产品市集</a>
    	<a href="<?php echo $this->createAbsoluteUrl("/") ?>#m5">专家评委</a>
    	<a href="<?php echo $this->createAbsoluteUrl("/") ?>#m6">专题链接</a>
        <?php if(Yii::app()->user->id): ?>
    		<a href="<?php echo $this->createUrl("/uc") ?>#menu" <?php if($this->id == 'uc'): ?>class="on"<?php endif; ?>>个人中心</a>
    	<?php else: ?>
    		<a href="<?php echo $this->createUrl("/login") ?>#menu" <?php if($this->id == 'login'): ?>class="on"<?php endif; ?>>登录系统</a>
    	<?php endif; ?>
    </div>
</div>
<div class="clear"></div>
<?php echo $content; ?>


</body>
</html>
