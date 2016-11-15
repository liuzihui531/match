<div class="col-xs-4 col-sm-3 pricing-span-header">
	<div class="widget-box transparent">
		<div class="widget-header">
			<h5 class="bigger lighter">报名详情</h5>
		</div>

		<div class="widget-body">
			<div class="widget-main no-padding">
				<ul class="list-unstyled list-striped pricing-table-header">
					<li>组别：<?php echo ThisTools::getGroup($model->group) ?></li>
					<li>所属市县：<?php echo ThisTools::getRegion($model->city) ?></li>
					<li>就读院校：<?php echo $model->school ?></li>
					<li>参赛代表姓名：<?php echo $model->name ?></li>
					<li>出生年月：<?php echo $model->birth ?></li>
					<li>户籍地：<?php echo $model->domicile ?></li>
					<li>身份证号：<?php echo $model->id_card ?></li>
					<li>有无违法违纪行为声明：<?php echo $model->is_illegal ?></li>
					<li>学历：<?php echo $model->education ?></li>
					<li>联系电话：<?php echo $model->mobile ?></li>
					<li>E-mail：<?php echo $model->email ?></li>
					<li>提交作品情况：<?php echo $model->work ?></li>
					<li>作品简介和链接地址：<?php echo $model->url ?></li>
					<li>备注：<?php echo $model->remarks ?></li>
					<li>附件：<?php if($model->file): ?>
                            <a href="<?php echo $model->file ?>"><?php echo '下载附件'; ?></a>
                        <?php endif; ?></li>
				</ul>
			</div>
		</div>
	</div>
</div>