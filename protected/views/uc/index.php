
<div class="show">
	<div class="show_tit">青年农村电商大赛报名系统</div>
    <div class="show_form">
        <div class="uc_con">
        <h2>已登录用户<span>当前账号 :<?php echo Yii::app()->user->name ?> &nbsp;&nbsp;&nbsp;&nbsp;个人中心&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">修改报名表</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="<?php echo $this->createUrl("/login/logout") ?>">安全退出</a></span> </h2>
        
        <h2>已参报信息
            <?php if($regModel): ?>
            <span><a href="<?php echo $this->createUrl("/reg/enterprise",array('id'=>$regModel->id)) ?>" class="green">《青年农村电商大赛报名表（企业组）》&nbsp;&nbsp; 查看</a></span><span>创建时间：<?php echo date("Y年m日d月H:i:s",$regModel->created) ?></span>
            <?php endif; ?>
            <?php if($personModel): ?>
            <span><a href="<?php echo $this->createUrl("/person/index",array('id'=>$personModel->id)) ?>" class="green">《青年农村电商大赛报名表(个人组）》&nbsp;&nbsp; 查看</a></span><span>创建时间：<?php echo date("Y年m日d月H:i:s",$personModel->created) ?></span>
            <?php endif; ?>
            <?php if($marketModel): ?>
            <span><a href="<?php echo $this->createUrl("/market/index",array('id'=>$marketModel->id)) ?>" class="green">《农产品电商市集报名表》&nbsp;&nbsp; 查看</a></span><span>创建时间：<?php echo date("Y年m日d月H:i:s",$marketModel->created) ?></span>
            <?php endif; ?>
        </h2>
 
            
	  </div>
    </div>
</div>
<p>&nbsp; </p>
<p>&nbsp; </p>
<p>&nbsp; </p>
<div class="footer">
	<div class="footer_con">
    	<p>海南青年创业就业服务中心</p>
        <p>© 2016 Hcyc.cn 版权所有 ICP证：琼ICP备16002852号</p>
    </div>
</div>

</div>