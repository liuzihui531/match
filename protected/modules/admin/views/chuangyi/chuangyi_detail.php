<div class="col-xs-4 col-sm-3 pricing-span-header">
	<div class="widget-box transparent">
		<div class="widget-header">
			<h5 class="bigger lighter">报名详情</h5>
		</div>

		<div class="widget-body">
			<div class="widget-main no-padding">
				<ul class="list-unstyled list-striped pricing-table-header">
					<li>所属市县：<?php echo ThisTools::getRegion($model->area_id) ?></li>
					<li>就读院校：<?php echo $model->school ?></li>
					<li>参赛代表姓名：<?php echo $model->represent_name ?></li>
					<li>身份证号：<?php echo $model->idcard ?></li>
					<li>学历：<?php echo $model->degree ?></li>
					<li>联系电话：<?php echo $model->mobile ?></li>
					<li>E-mail：<?php echo $model->email ?></li>
					<li>项目或企业名称：<?php echo $model->project_name ?></li>
					<li>电商平台：<div class="fcheckbox_check">
                                <?php $thisPlatform = !empty($model->business_platform) ? json_decode($model->business_platform,true) : array();  ?>
                                <?php if($thisPlatform): ?>
	                                <?php foreach (ThisTools::getBusinessPlatform() as $k => $v): ?>
	                                    <label><input name="rep[platform][]" id="" type="checkbox" disabled <?php echo $thisPlatform && array_search($k, $thisPlatform) !== false ? "checked" : "";  ?> value="<?php echo $k ?>" />&nbsp;<?php echo $v ?></label>
	                                <?php endforeach; ?>
	                            <?php endif;?>
                            </div>
                    </li>
					<li>项目简介：<?php echo $model->project_introduct ?></li>
					<li>附件：<?php if($model->attach): ?>
                            <a href="<?php echo $model->attach ?>"><?php echo '下载附件'; ?></a>
                        <?php endif; ?></li>
				</ul>
			</div>
		</div>
		<?php if($people_info): ?>
			<?php for ($i = 1; $i <= 3; $i++): ?>
				<div class="widget-header">
					<h5 class="bigger lighter">团队成员情况<?php echo $i; ?></h5>
				</div>
				<div class="widget-body">
				<div class="widget-main no-padding">
					<ul class="list-unstyled list-striped pricing-table-header">
						<li>姓名：<?php echo isset($people_info[$i]['name']) ? $people_info[$i]['name']: ""; ?></li>
						<li>性别：<?php echo isset($people_info[$i]['sex']) ? ThisTools::getGender($people_info[$i]['sex']): ""; ?></li>
						<li>年龄：<?php echo isset($people_info[$i]['age']) ? $people_info[$i]['age']: ""; ?></li>
						<li>学历：<?php echo isset($people_info[$i]['degree']) ? $people_info[$i]['degree']: ""; ?></li>
						<li>户籍地：<?php echo isset($people_info[$i]['native_place']) ? $people_info[$i]['native_place']: "";  ?></li>
						</ul>
				</div>
			</div>
	        <?php endfor; ?>
	    <?php endif;?>
	</div>
</div>