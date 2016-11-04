<div class="col-xs-4 col-sm-3 pricing-span-header">
	<div class="widget-box transparent">
		<div class="widget-header">
			<h5 class="bigger lighter">报名详情</h5>
		</div>

		<div class="widget-body">
			<div class="widget-main no-padding">
				<ul class="list-unstyled list-striped pricing-table-header">
					<li>所属市县：<?php echo ThisTools::getRegion($model->city) ?></li>
					<li>就读院校：<?php echo $model->school ?></li>
					<li>参赛代表姓名：<?php echo $model->rep_name ?></li>
					<li>身份证号：<?php echo $model->id_card ?></li>
					<li>有无违法违纪行为声明：<?php echo $model->is_illegal ?></li>
					<li>学历：<?php echo $model->education ?></li>
					<li>联系电话：<?php echo $model->mobile ?></li>
					<li>E-mail：<?php echo $model->email ?></li>
					<li>项目或企业名称：<?php echo $model->enterprise ?></li>
					<li>工商注册上的信用代码：<?php echo $model->credit ?></li>
					<li>电商平台：<div class="fcheckbox_check">
                                <?php if($model && $model->platform){ $thisPlatform = (Array)json_decode($model->platform,true); } ?>
                                <?php foreach (ThisTools::getPlatform() as $k => $v): ?>
                                    <label><input name="rep[platform][]" id="" type="checkbox" disabled <?php echo $thisPlatform && array_search($k, $thisPlatform) !== false ? "checked" : "";  ?> value="<?php echo $k ?>" />&nbsp;<?php echo $v ?></label>
                                <?php endforeach; ?>
                            </div>
                    </li>
					<li>项目简介：<?php echo $model->introduction ?></li>
					<li>附件：<?php if($model->file_rep): ?>
                            <a href="<?php echo $model->file_rep ?>"><?php echo '下载附件'; ?></a>
                        <?php endif; ?></li>
				</ul>
			</div>
		</div>
		
		<?php for ($i = 0; $i <= 2; $i++): ?>
			<div class="widget-header">
				<h5 class="bigger lighter">团队成员情况<?php echo $i+1; ?></h5>
			</div>
			<div class="widget-body">
			<div class="widget-main no-padding">
				<ul class="list-unstyled list-striped pricing-table-header">
					<li>姓名：<?php echo isset($model->team[$i]) ? $model->team[$i]->name: ""; ?></li>
					<li>性别：<?php echo isset($model->team[$i]) ? ThisTools::getSex($model->team[$i]->sex): ""; ?></li>
					<li>年龄：<?php echo isset($model->team[$i]) ? $model->team[$i]->age: ""; ?></li>
					<li>学历：<?php echo isset($model->team[$i]) ? $model->team[$i]->education: ""; ?></li>
					<li>户籍地：<?php echo isset($model->team[$i]) ? $model->team[$i]->domicile: "";  ?></li>
					</ul>
			</div>
		</div>
        <?php endfor; ?>
	</div>
</div>