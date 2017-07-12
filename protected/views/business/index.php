<div class="show">
	<div class="show_tit">青年农村电商大赛报名表（企业组）</div>
    <div class="show_form">

        <form id='form1' class="bootstrap-frm" enctype="multipart/form-data" method="post" action="<?php echo $this->createUrl("save") ?>">
        <input type="hidden" name="id" value="<?php echo $model->id ?>">
        <h2>已登录用户<span>当前账号 :<?php echo Yii::app()->user->name ?> &nbsp;&nbsp;&nbsp;&nbsp;个人中心&nbsp;&nbsp;&nbsp;&nbsp;<!--<a href="#">修改报名表</a>-->&nbsp;&nbsp;&nbsp;&nbsp;<a href="<?php echo $this->createUrl("/login/logout") ?>">安全退出</a></span> </h2>
		<h2>参赛团队主要负责人信息<span>请务必填写真实信息</span></h2>
            <label>
            	<span>所属市县:</span>
                <select name="city">
                	<option value="">选择您所在的城市</option>
                	<?php foreach (ThisTools::getRegion() as $key => $val): ?>
						<option <?php if($key == $model->city): ?>selected<?php endif; ?> value="<?php echo $key ?>"><?php echo $val ?></option>
                	<?php endforeach ?>
				</select> *
            </label>
            
			<label>
				<span>就读院校 :</span>
				<input id="" type="text" name="school" value="<?php echo $model->school ?>"  placeholder="（仅供在校人员填写）" />*
			</label>
            
            <label>
				<span>参赛代表姓名:</span>
				<input id="" type="text" name="rep_name" value="<?php echo $model->rep_name ?>"  placeholder="参赛代表姓名" />*
			</label>
            
            <label>
				<span>出生年月:</span>
				<input id="" type="date" name="birth" value="<?php echo $model->birth ?>"  placeholder="出生年月" />
			</label>

            <label>
				<span>身份证号:</span>
				<input id="" type="text" name="id_card" value="<?php echo $model->id_card ?>"  placeholder="身份证号" />
			</label>
            
            <label>
				<span>有无违法违纪行为声明:</span>
				<input id="" type="text" name="is_illegal" value="<?php echo $model->is_illegal ?>" placeholder="有无违法违纪行为声明" />*
			</label>
            
            
            <label>
				<span>学历:</span>
				<input id="" type="text" name="education" value="<?php echo $model->education ?>"  placeholder="学历" />*
			</label>
            
            <label>
				<span>联系电话:</span>
				<input id="" type="text" name="mobile" value="<?php echo $model->mobile ?>" placeholder="联系电话" />*
			</label>
            
            
            <label>
				<span>E-mail:</span>
				<input id="" type="email" name="email" value="<?php echo $model->email ?>"  placeholder="E-mail" />*
			</label>
            
           
            <h2>参赛项目信息</h2>
            <label>
				<span>项目或企业名称:</span>
				<input id="" type="text" name="enterprise" value="<?php echo $model->enterprise ?>"  placeholder="项目或企业名称" />*
			</label>
            
          <label>
				<span>工商注册上的信用代码:</span>
			<input id="" type="text" name="credit" value="<?php echo $model->credit ?>" placeholder="工商注册上的信用代码" />
			</label>
            
           
            <div class="fcheckbox">
				<div class="fcheckbox_name">电商平台*:</div>
                <div class="fcheckbox_check">
                    <?php foreach(ThisTools::getBusinessPlatform() as $k=>$v): ?>
                    <label><input name="platform[]" <?php if(in_array($k, $model->platform)): ?>checked<?php endif; ?> type="checkbox" value="<?php echo $k ?>" />&nbsp;<?php echo $v; ?></label>
                    <?php endforeach; ?>     
                </div>
            </div>
                
			<label>
			<span>项目简介 :</span>
			<textarea id="" name="introduction" placeholder="300字以内，电商产品介绍，业绩，网店名称等。"><?php echo $model->introduction ?></textarea>
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
            
            
            <h2>提交附件</h2>
            <label>
				<span>附件:</span>
                <input id="" type="file" name="file_rep" value=""  placeholder="附件" />*
                <?php if ($model->file_rep): ?>
                	<span ><a  style="color:red" href="<?php echo $model->file_rep ?>">点击下载</a></span>
                	<div class="clear"></div>
                <?php endif ?>
			</label>
            <p>附件须提交参赛商业计划书一份（限1000字以内，要求包含且不限于以下内容）</p>
            <p>1. 市场总体情况</p>
            <p>2. 企业战略</p>
            <p>3. 产品优势</p>
            <p>4. 运营策略、盈利模式</p>
            <p>5. 运营方式</p>
            <p>6. 财务情况（逐年营业额、毛利润等指标；融资贷款等情况）
风险和存在问题</p>

			<label>
			<span>&nbsp;</span>
			<input type="submit" class="button" value="提交" />
			</label>
	  </form>
    </div>
</div>