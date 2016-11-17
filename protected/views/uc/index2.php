
<div class="show">
	<div class="show_tit">青年农村电商大赛报名系统</div>
    <div class="show_form">
        <div class="uc_con">
        <h2>已登录用户<span>当前账号 :<?php echo Yii::app()->user->name ?> &nbsp;&nbsp;&nbsp;&nbsp;个人中心&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">修改报名表</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="<?php echo $this->createUrl("/login/logout") ?>">安全退出</a>&nbsp;&nbsp;&nbsp;&nbsp;<font class="sign_num"><?php if(!Yii::app()->session['user']->sign_num): ?><a href="javascript:void(0)" >排号抽签</a><?php else: ?>抽签号：<?php echo Yii::app()->session['user']->sign_num ?><?php endif; ?></font></span> </h2>
        <h5>
            <?php 
                if(Yii::app()->session['user']->sign_num){
                    switch (Yii::app()->session['user']->group) {
                        case 1:
                            echo "2016海南青年农村电商大赛个人技能组（营销策划类）初赛将于11月19日在海口市龙华区滨海大道32号复兴城互联网创业园A栋举行，比赛将于上午9:00开始，请参赛选手务必提前三十分钟到场。";
                            break;
                        case 2: 
                            echo "2016海南青年农村电商大赛个人技能组（营销策划类）初赛将于11月19日在海口市龙华区滨海大道32号复兴城互联网创业园A栋举行，比赛将于下午2:00开始，请参赛选手务必提前三十分钟到场。";
                            break;
                        case 3:
                            echo "2016海南青年农村电商大赛个人技能组（设计类）初赛将于11月20日14:00在海口市美兰区桂林洋开发区双塘路海南省经济技术学校举行。初赛共分为4个考场：1-50号为第一考场，51-100号为第二考场，101-150号为第三考场，151-200号为第四考场。";
                            break;
                        case 4:
                            echo "2016海南青年农村电商大赛个人技能组（营销策划类）初赛将于11月19日在海口市龙华区滨海大道32号复兴城互联网创业园A栋举行，比赛将于上午9:00开始，请参赛选手务必提前三十分钟到场。";
                            break;
                        case 5:
                            echo "2016海南青年农村电商大赛个人技能组（营销策划类）初赛将于11月19日在海口市龙华区滨海大道32号复兴城互联网创业园A栋举行，比赛将于下午2:00开始，请参赛选手务必提前三十分钟到场。";
                            break;
                    }
                }
            ?>
            
        </h5>
        
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
<script type="text/javascript">
    $(function(){
        $(".sign_num a").bind("click",function(){
            var url = "<?php echo $this->createUrl("buildSign") ?>";
            $.post(url,{},function(data){
                if(data.sta == 1){
                    //$(".sign_num").html("抽签号："+data.msg);
                    window.location.reload();   
                }else{
                    alert(data.msg);
                }
            },'json');
        });
    });
</script>