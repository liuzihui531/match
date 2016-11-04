<div class="col-xs-4 col-sm-3 pricing-span-header">
	<div class="widget-box transparent">
		<div class="widget-header">
			<h5 class="bigger lighter">参赛基本信息</h5>
		</div>
		<div class="widget-body">
			<div class="widget-main no-padding">
				<ul class="list-unstyled list-striped pricing-table-header">
					<li>选送产品名称：<?php echo $model->product ?></li>
					<li>产地介绍：<?php echo $model->introduce ?></li>
					<li>出产时间：<?php echo $model->outtime ?></li>
					<li>生产执行标准：<?php echo $model->s_standard ?></li>
					<li>质量认证标准：<?php echo $model->z_standard ?></li>
					<li>负责人：<?php echo $model->charge ?></li>
					<li>联系电话：<?php echo $model->mobile ?></li>
					<li>第二负责人：<?php echo $model->charge_second ?></li>
					<li>联系电话：<?php echo $model->mobile_second ?></li>					
				</ul>
			</div>
		</div>
		<?php for ($i = 0; $i <= 2; $i++): ?>
			<div class="widget-header">
				<h5 class="bigger lighter">产品基本情况<?php echo $i+1; ?></h5>
			</div>
			<div class="widget-body">
			<div class="widget-main no-padding">
				<ul class="list-unstyled list-striped pricing-table-header">
					<li>产品名称：<?php echo isset($model->products[$i]) ? $model->products[$i]->name : "" ?></li>
					<li>种植面积或养殖数量：<?php echo isset($model->products[$i]) ? $model->products[$i]->range : "" ?></li>
					<li>年产量：<?php echo isset($model->products[$i]) ? $model->products[$i]->num_totle : "" ?></li>
					<li>种植/养殖方式：<?php echo isset($model->products[$i]) ? $model->products[$i]->type : "" ?></li>
					<li>包装箱规格：<?php echo isset($model->products[$i]) ? $model->products[$i]->box_spe : "" ?></li>
					<li>产品规格：<?php echo isset($model->products[$i]) ? $model->products[$i]->product_spe : "" ?></li>
					<li>供货周期：<?php echo isset($model->products[$i]) ? $model->products[$i]->period : "" ?></li>
					<li>供货价格：<?php echo isset($model->products[$i]) ? $model->products[$i]->pro_price : "" ?></li>
					<li>建议销售价：<?php echo isset($model->products[$i]) ? $model->products[$i]->addvise_price : "" ?></li>
				</ul>
			</div>
		</div>
        <?php endfor; ?>
        <div class="widget-header">
			<h5 class="bigger lighter">基地基础设施</h5>
		</div>
		<div class="widget-body">
			<div class="widget-main no-padding">
				<ul class="list-unstyled list-striped pricing-table-header">
					<li>仓库：<?php echo ThisTools::getMarketCangku($model->sheshi->cangku) ?></li>				
					<li>自有运输工具：<?php echo ThisTools::getMarketTool($model->sheshi->tool) ?></li>					
					<li>冷藏库：<?php echo ThisTools::getMarketLengcang($model->sheshi->lengcang) ?></li>					
					<li>检测室：<?php echo ThisTools::getMarketJiance($model->sheshi->jiance) ?></li>					
					<li>大棚设施：<?php echo ThisTools::getMarketDapengsheshi($model->sheshi->dapengsheshi) ?></li>					
					<li>生产监控设施：<?php echo ThisTools::getMarketShengchansheshi($model->sheshi->shengchansheshi) ?></li>				
				</ul>
			</div>
		</div>

		<div class="widget-header">
			<h5 class="bigger lighter">基地信息化情况</h5>
		</div>
		<div class="widget-body">
			<div class="widget-main no-padding">
				<ul class="list-unstyled list-striped pricing-table-header">
					<li>信息化管理系统：<?php echo ThisTools::getMarketXinxihua($model->xinxi->xinxihua) ?></li>							
					<li>网上销售：<?php echo ThisTools::getMarketOnlineSale($model->xinxi->online_sale) ?></li>							
					<li>二维码：<?php echo ThisTools::getMarketQrcode($model->xinxi->qrcode) ?></li>							
					<li>公司网站：<?php echo $model->xinxi->website ?></li>							
					<li>公众微信、微博：<?php echo $model->xinxi->weibo ?></li>							
				</ul>
			</div>
		</div>

		<div class="widget-header">
			<h5 class="bigger lighter">需要的服务</h5>
		</div>
		<div class="widget-body">
			<div class="widget-main no-padding">
				<ul class="list-unstyled list-striped pricing-table-header">
					<li>
						<div class="fcheckbox_name">培训 *:</div>
		                <div class="fcheckbox_check">
		                    <?php $coachData = isset($model->service->coach) && $model->service->coach ? (array)json_decode($model->service->coach,true) : array() ?>
		                    <?php foreach(ThisTools::getMarketCoach() as $k=>$v): ?>
		                    <label><input name="market_service[coach][<?php echo $k; ?>]" <?php echo array_key_exists($k,$coachData) !== false ? "checked" : "" ?> type="checkbox" value="<?php echo $k ?>" disabled />&nbsp;<?php echo $v; ?></label>
		                    <?php endforeach; ?>
		                    <label>&nbsp;&nbsp;&nbsp;&nbsp;其他：<?php echo isset($coachData[-1]) ? $coachData[-1] : "" ?></label>
		                </div>
					</li>
					<li>
						<div class="fcheckbox_name">融资 *:</div>
			                <div class="fcheckbox_check">
			                    <?php $rongziData = isset($model->service->rongzi) && $model->service->rongzi ? (array)json_decode($model->service->rongzi,true) : array() ?>
			                    <?php foreach(ThisTools::getMarketRongzi() as $k=>$v): ?>
			                    <label><input name="market_service[rongzi][<?php echo $k; ?>]" <?php echo array_key_exists($k,$rongziData) !== false ? "checked" : "" ?> type="checkbox" value="<?php echo $k ?>" disabled />&nbsp;<?php echo $v; ?></label>
			                    <?php endforeach; ?>
			                    <label>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo isset($rongziData[-1]) ? $rongziData[-1] : "" ?></label>
			                </div>
					</li>
					<li>是否需要实现产品认证：<?php echo $model->service->chanpinrenzheng ?></li>
					<li>基地整体策划：<?php echo $model->service->zhengticehua ?></li>
					<li>参加产品市集的时间段：<?php echo $model->service->shijianduan ?></li>
					<li>备注：<?php echo $model->service->beizhu ?></li>
				</ul>
			</div>
		</div>
	</div>
</div>