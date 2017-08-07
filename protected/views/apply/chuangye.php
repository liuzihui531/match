<div class="show">
    <div class="show_tit">青年农村电商大赛报名表(创业组)</div>
    <div class="show_form">
        <form id='form1' class="bootstrap-frm" enctype="multipart/form-data" method="post" action="<?php echo $this->createUrl("save") ?>">
            <?php if($model): ?>
                    <input type="hidden" name="id" value="<?php echo $model->id ?>" />
            <?php endif; ?>
            <input type="hidden" name="user_type" value="<?php echo $user_type ?>" />
            <h2>参赛基本信息<span>请务必填写真实信息</span></h2>
            <label>
                <span>手机号码:</span>
                <input id="" type="text" name="mobile" value="<?php echo $model->mobile ?>"  placeholder="将用于系统登录账号" />*
            </label>
            <label>
                <span>密码:</span>
                <input id="" type="password" name="password" value=""  placeholder="将用于系统登录密码" />*
            </label>
            <label>
                <span>确认密码:</span>
                <input id="" type="password" name="password2" value=""  placeholder="将用于系统登录密码" />*
            </label>

            <div class="fcheckbox">
                <div class="fcheckbox_name">所属县市 *:</div>
                <div class="fcheckbox_check">
                    <?php foreach(ThisTools::getRegion() as $k=>$v): ?>
                    <label style="display: inline;padding:0px 5px"><input <?php if ($model->area_id == $k): ?>checked<?php endif ?> name="area_id" type="radio" value="<?php echo $k ?>" />&nbsp;<?php echo $v; ?></label>
                    <?php endforeach; ?>
                </div>
            </div>

            <label>
                <span>所在院校:</span>
                <input id="" type="text" name="school" value="<?php echo $model->school ?>"  placeholder="所在院校（仅供在校学生填写）" />*
            </label>

            <label>
                <span>参赛代表姓名:</span>
                <input id="" type="text" name="represent_name" value="<?php echo $model->represent_name ?>"  placeholder="参赛代表姓名" />*
            </label>

            <label>
                <span>出生年月:</span>
                <input id="" type="date" name="birthday" value="<?php echo $model->birthday ?>"  placeholder="出生年月" />
            </label>

            <label>
                <span>身份证号:</span>
                <input id="" type="text" name="idcard" value="<?php echo $model->idcard ?>"  placeholder="身份证号" />
            </label>
            <label>
                <span>有无违法违纪行为声明:</span>
                <input id="" type="text" name="is_illegal" value="<?php echo $model->is_illegal ?>"  placeholder="有无违法违纪行为声明" />
            </label>

            <label>
                <span>学历:</span>
                <input id="" type="text" name="degree" value="<?php echo $model->degree ?>"  placeholder="学历" />*
            </label>
            
            <label>
                <span>Email:</span>
                <input id="" type="text" name="email" value="<?php echo $model->email ?>"  placeholder="邮箱" />*
            </label>



            <h2>参赛项目信息</h2>
            <label>
                <span>项目或企业名称:</span>
                <input id="" type="text" name="project_name" value="<?php echo $model->project_name ?>"  placeholder="项目名称" />*
            </label>
            <label>
                <span>工商注册上的信用代码:</span>
                <input id="" type="text" name="credit" value="<?php echo $model->credit ?>"  placeholder="工商注册上的信用代码" />*
            </label>


            <div class="fcheckbox">
                <div class="fcheckbox_name">电商平台 *:</div>
                <div class="fcheckbox_check">
                    <?php foreach(ThisTools::getBusinessPlatform() as $k=>$v): ?>
                    <label><input name="business_platform[]" <?php if (in_array($k, $model->business_platform)): ?>checked <?php endif ?> type="checkbox" value="<?php echo $k ?>" />&nbsp;<?php echo $v; ?></label>
                    <?php endforeach; ?>     
                </div>
                <div class="clear"></div> 
            </div>
            <label>
                <span>项目简介:</span>
                <textarea name="project_introduct"><?php echo $model->project_introduct; ?></textarea>
            </label>

            <?php for($i = 1; $i <= 3; $i++): ?>
            <h2>团队成员情况<span>成员<?php echo $i ?></span></h2>
            <label>
                <span>姓名:</span>
                <input id="" type="text" name="people_info[<?php echo $i ?>][name]" value="<?php echo $model->people_info ? $model->people_info[$i]['name'] : "" ?>"  placeholder="姓名" />*
            </label>
            <label>
                <span>性别:</span>
                <?php foreach (ThisTools::getGender() as $k => $v): ?>
                    <label ><input <?php if ($model->people_info[$i]['sex'] == $k): ?>checked<?php endif ?> name="people_info[<?php echo $i ?>][sex]" type="radio" value="<?php echo $k ?>" />&nbsp;<?php echo $v; ?></label>
                <?php endforeach ?>
            </label>
            <label>
                <span>户籍地:</span>
                <input id="" type="text" name="people_info[<?php echo $i ?>][native_place]" value="<?php echo $model->people_info ? $model->people_info[$i]['native_place'] : "" ?>"  placeholder="户籍地" />*
            </label>
            <label>
                <span>年龄:</span>
                <input id="" type="text" name="people_info[<?php echo $i ?>][age]" value="<?php echo $model->people_info ? $model->people_info[$i]['age'] : "" ?>"  placeholder="年龄" />*
            </label>
            <label>
                <span>学历:</span>
                <input id="" type="text" name="people_info[<?php echo $i ?>][degree]" value="<?php echo $model->people_info ? $model->people_info[$i]['degree'] : "" ?>"  placeholder="学历" />*
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
                <?php if ($model->attach): ?>
                    <span ><a  style="color:red" href="<?php echo $model->attach ?>">点击下载附件</a></span>
                    <div class="clear"></div>
                <?php endif ?>
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
