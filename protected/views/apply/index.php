<div class="show">
    <div class="show_tit">青年农村电商大赛报名表(企业组)</div>
    <div class="show_form">
        <form id='form1' class="bootstrap-frm" enctype="multipart/form-data" method="post" action="<?php echo $this->createUrl("save") ?>">
            <?php if($model): ?>
                    <input type="hidden" name="id" value="<?php echo $model->id ?>" />
            <?php endif; ?>
            <h2>参赛基本信息<span>请务必填写真实信息</span></h2>

            <div class="fcheckbox">
                <div class="fcheckbox_name">所属县市 *:</div>
                <div class="fcheckbox_check">
                    <?php foreach(ThisTools::getRegion() as $k=>$v): ?>
                    <label style="display: inline;padding:0px 5px"><input name="area_id" type="radio" value="<?php echo $k ?>" />&nbsp;<?php echo $v; ?></label>
                    <?php endforeach; ?>
                </div>
            </div>

            <label>
                <span>所在院校:</span>
                <input id="" type="text" name="school" value="<?php //echo $model->school ?>"  placeholder="所在院校（仅供在校学生填写）" />*
            </label>

            <label>
                <span>参赛代表姓名:</span>
                <input id="" type="text" name="represent_name" value="<?php //echo $model->represent_name ?>"  placeholder="参赛代表姓名" />*
            </label>

            <label>
                <span>出生年月:</span>
                <input id="" type="date" name="birthday" value="<?php //echo $model->birthday ?>"  placeholder="出生年月" />
            </label>

            <label>
                <span>身份证号:</span>
                <input id="" type="text" name="idcard" value="<?php //echo $model->idcard ?>"  placeholder="身份证号" />
            </label>

            <label>
                <span>学历和毕业院校:</span>
                <input id="" type="text" name="degree" value="<?php //echo $model->degree ?>"  placeholder="学历和毕业院校" />*
            </label>


            <label>
                <span>联系电话:</span>
                <input id="" type="text" name="mobile" value="<?php echo $model->mobile ?>"  placeholder="联系电话" />*
            </label>

            <label>
                <span>邮箱:</span>
                <input id="" type="text" name="email" value="<?php //echo $model->email ?>"  placeholder="邮箱" />*
            </label>
            <label>
                <span>微信:</span>
                <input id="" type="text" name="wechat" value="<?php //echo $model->wechat ?>"  placeholder="微信" />*
            </label>



            <h2>参赛项目信息</h2>
            <label>
                <span>项目名称:</span>
                <input id="" type="text" name="project_name" value="<?php //echo $model->project_name ?>"  placeholder="项目名称" />*
            </label>
            <label>
                <span>项目形成时间:</span>
                <input id="" type="date" name="project_build_time" value="<?php //echo $model->project_name ?>"  placeholder="项目形成时间" />*
            </label>


            <div class="fcheckbox">
                <div class="fcheckbox_name">电商平台 *:</div>
                <div class="fcheckbox_check">
                    <?php foreach(ThisTools::getBusinessPlatform() as $k=>$v): ?>
                    <label><input name="business_platform[]"  type="checkbox" value="<?php echo $k ?>" />&nbsp;<?php echo $v; ?></label>
                    <?php endforeach; ?>     
                </div>
                <div class="clear"></div> 
            </div>
            <label>
                <span>项目简介:</span>
                <textarea name="project_introduct"></textarea>
            </label>

            <?php for($i = 1; $i <= 3; $i++): ?>
            <h2>团队成员情况<span>成员<?php echo $i ?></span></h2>
            <label>
                <span>姓名:</span>
                <input id="" type="text" name="people_info[<?php echo $i ?>][name]" value=""  placeholder="姓名" />*
            </label>
            <label>
                <span>性别:</span>
                <?php foreach (ThisTools::getGender() as $k => $v): ?>
                    <label ><input name="people_info[<?php echo $i ?>][sex]" type="radio" value="<?php echo $k ?>" />&nbsp;<?php echo $v; ?></label>
                <?php endforeach ?>
            </label>
            <label>
                <span>户籍地:</span>
                <input id="" type="text" name="people_info[<?php echo $i ?>][native_place]" value=""  placeholder="户籍地" />*
            </label>
            <label>
                <span>年龄:</span>
                <input id="" type="text" name="people_info[<?php echo $i ?>][age]" value=""  placeholder="年龄" />*
            </label>
            <label>
                <span>学历:</span>
                <input id="" type="text" name="people_info[<?php echo $i ?>][degree]" value=""  placeholder="学历" />*
            </label>
            <?php endfor; ?>

            
            <h2>项目计划书<span>附件须提交参赛计划书一份（限1500字以内，要求包含且不限于以下内容）<br/>
1. 市场情况<br/>
2. 产品介绍<br/>
3. 自身优势<br/>
4. 运营策略、盈利模式<br/>
5. 运营方式<br/>
6. 财务预期<br/>
7.风险和存在问题</span></h2>

            <label>
                <span>附件:</span>
                <input id="" type="file" name="attach" value=""  placeholder="附件" />*
            </label>
            

            <label>
                <span>&nbsp;</span>
                <input type="submit" class="button" value="提交" />
            </label>
        </form>
    </div>
</div>

<div class="footer">
    <div class="footer_con">
        <p>海南青年创业就业服务中心</p>
        <p>© 2016 Hcyc.cn 版权所有 ICP证：琼ICP备16002852号</p>
    </div>
</div>

</div>

<div id="tbox">
    <a id="baoming" href="index.html#m2"></a>
    <a id="gotop" href="javascript:void(0)"></a>
</div>
