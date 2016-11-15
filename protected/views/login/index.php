<div class="show">
	<div class="show_tit">青年农村电商大赛报名系统</div>
    <div class="show_form">

    	<form action="<?php echo $this->createUrl("login") ?>" method="post" class="bootstrap-frm" >
        <h2>登录系统<span>登录后可查看或修改您的报名表信息。如您没有账号，请先 <a href="<?php echo $this->createUrl("/register") ?>">注册</a></span></h2>
        	<label>
				<span>登录账号 :</span>
				<input id="" type="text" name="email" placeholder="请使用E-mail作为登录" />*
			</label>
            
            <label>
				<span>登录密码:</span>
				<input id="" type="text" name="password" placeholder="请输入登录密码" />*
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