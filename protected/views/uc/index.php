
<div class="show">
	<div class="show_tit">青年农村电商大赛报名系统</div>
    <div class="show_form">
        <div class="uc_con">
        <h2>已登录用户<span>当前账号 :<?php echo Yii::app()->user->name ?> &nbsp;&nbsp;&nbsp;&nbsp;个人中心&nbsp;&nbsp;&nbsp;&nbsp;<!--<a href="#">修改报名表</a>-->&nbsp;&nbsp;&nbsp;&nbsp;<a href="<?php echo $this->createUrl("/login/logout") ?>">安全退出</a></span> </h2>
        <h2>
        	在线抽签
            <span><font class="sign_num" style="font-size:16px; color:#f00;"><?php if(!Yii::app()->session['user']->sign_num): ?><a href="javascript:void(0)" style="color:#00ba64">排号抽签（点击抽签）</a><?php else: ?>抽签号：<?php echo Yii::app()->session['user']->sign_num ?><?php endif; ?>&nbsp;&nbsp;（请仔细阅读以下比赛安排，提前到场准备。）</font><br />
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
                            echo "2016海南青年农村电商大赛个人技能组（设计类）初赛将于11月20日14:00在海口市美兰区桂林洋开发区双塘路海南省经济技术学校举行。初赛共分为4个考场：1-50号为第一考场，51-100号为第二考场，101-150号为第三考场，151-200号为第四考场。<br />青年农村电商大赛网店设计组的选手，前往方式有两种可以选择，一是自行前往桂林洋海南省经济技术学校，二是在国兴大道68号省博物馆正门内集合，统一乘车前往（20日下午1:30发车过时不候)。
点击链接填写乘车报名http://form.mikecrm.com/byZc8M";
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
            </span>
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
