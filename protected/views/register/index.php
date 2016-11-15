<div class="show">
	<div class="show_tit">青年农村电商大赛报名系统</div>
    <div class="show_form">

    	<form action="<?php echo $this->createUrl("register") ?>" method="post" class="bootstrap-frm">
        <h2>注册账号<span>注册账号可用于您的报名表信息查看与修改。如您已有账号，请直接 <a href="<?php echo $this->createUrl('/login') ?>">登录</a></span></h2>
        	<label>
				<span>登录账号:</span>
				<input id="" type="text" name="email" placeholder="请使用E-mail作为登录账号" />*
			</label>
            
            <label>
				<span>登录密码:</span>
				<input id="" type="text" name="password" placeholder="请输入登录密码" />*
			</label>
            <label>
				<span>再次输入:</span>
				<input id="" type="text" name="password2" placeholder="请再次输入登录密码" />*
			</label>
        	
            <label>
			<span>&nbsp;</span>
			<input type="submit" class="button" value="提交" />
			</label>
        </form>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
    </div>
</div>