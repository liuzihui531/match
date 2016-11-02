<div class="show">
    <div class="show_tit">农产品电商市集报名表</div>
    <div class="show_form">
        <form id='form1' class="bootstrap-frm" method="post" action="<?php echo $this->createUrl("save") ?>">
            <?php if($model): ?>
                    <input type="hidden" name="id" value="<?php echo $model->id ?>" />
            <?php endif; ?>
            <h2>参赛基本信息<span>请务必填写真实信息</span></h2>

            <label>
                <span>选送产品名称 :</span>
                <input id="" type="text" name="market[product]" value="<?php echo $model->product ?>" placeholder="选送产品名称" />*
            </label>

            <label>
                <span>产地介绍:</span>
                <input id="" type="text" name="market[introduce]" value="<?php echo $model->introduce ?>"  placeholder="产地介绍" />*
            </label>

            <label>
                <span>出产时间:</span>
                <input id="" type="text" name="market[outtime]" value="<?php echo $model->outtime ?>"  placeholder="出产时间" />*
            </label>

            <label>
                <span>生产执行标准:</span>
                <input id="" type="text" name="market[s_standard]" value="<?php echo $model->s_standard ?>"  placeholder="生产执行标准" />
            </label>

            <label>
                <span>质量认证标准:</span>
                <input id="" type="text" name="market[z_standard]" value="<?php echo $model->z_standard ?>"  placeholder="质量认证标准" />
            </label>

            <label>
                <span>负责人:</span>
                <input id="" type="text" name="market[charge]" value="<?php echo $model->charge ?>"  placeholder="负责人" />*
            </label>


            <label>
                <span>联系电话:</span>
                <input id="" type="text" name="market[mobile]" value="<?php echo $model->mobile ?>"  placeholder="联系电话" />*
            </label>

            <label>
                <span>第二负责人:</span>
                <input id="" type="text" name="market[charge_second]" value="<?php echo $model->charge_second ?>"  placeholder="第二负责人" />*
            </label>


            <label>
                <span>联系电话:</span>
                <input id="" type="text" name="market[mobile_second]" value="<?php echo $model->mobile_second ?>"  placeholder="联系电话" />*
            </label>
            <?php for($i = 0;$i <= 2;$i++): ?>
            <h2>产品基本情况<span>产品<?php echo $i+1 ?></span></h2>
            <label>
                <span>产品名称:</span>
                <input id="" type="text" name="market_product[<?php echo $i ?>][name]" value="<?php echo isset($model->products[$i]) ? $model->products[$i]->name : "" ?>"  placeholder="产品名称" />*
            </label>

            <label>
                <span>种植面积或养殖数量:</span>
                <input id="" type="text" name="market_product[<?php echo $i ?>][range]" value="<?php echo isset($model->products[$i]) ? $model->products[$i]->range : "" ?>"  placeholder="种植面积或养殖数量" />*
            </label>

            <label>
                <span>年产量:</span>
                <input id="" type="text" name="market_product[<?php echo $i ?>][num_totle]" value="<?php echo isset($model->products[$i]) ? $model->products[$i]->num_totle : "" ?>"  placeholder="年产量" />*
            </label>

            <label>
                <span>种植/养殖方式:</span>
                <input id="" type="text" name="market_product[<?php echo $i ?>][type]" value="<?php echo isset($model->products[$i]) ? $model->products[$i]->type : "" ?>"  placeholder="种植/养殖方式" />*
            </label>

            <label>
                <span>包装箱规格:</span>
                <input id="" type="text" name="market_product[<?php echo $i ?>][box_spe]" value="<?php echo isset($model->products[$i]) ? $model->products[$i]->box_spe : "" ?>"  placeholder="包装箱规格" />*
            </label>

            <label>
                <span>产品规格:</span>
                <input id="" type="text" name="market_product[<?php echo $i ?>][product_spe]" value="<?php echo isset($model->products[$i]) ? $model->products[$i]->product_spe : "" ?>"  placeholder="产品规格" />*
            </label>

            <label>
                <span>供货周期:</span>
                <input id="" type="text" name="market_product[<?php echo $i ?>][period]" value="<?php echo isset($model->products[$i]) ? $model->products[$i]->period : "" ?>"  placeholder="供货周期" />*
            </label>

            <label>
                <span>供货价格:</span>
                <input id="" type="text" name="market_product[<?php echo $i ?>][pro_price]" value="<?php echo isset($model->products[$i]) ? $model->products[$i]->pro_price : "" ?>"  placeholder="供货价格" />
            </label>

            <label>
                <span>建议销售价:</span>
                <input id="" type="text" name="market_product[<?php echo $i ?>][addvise_price]" value="<?php echo isset($model->products[$i]) ? $model->products[$i]->addvise_price : "" ?>"  placeholder="建议销售价" />*
            </label>
            <?php endfor; ?>
            <h2>基地基础设施</h2>
            <label>
                <span>仓库:</span>
                <select name="market_sheshi[cangku]">
                    <option value="0">请选择</option>
                    <?php foreach (ThisTools::getMarketCangku() as $key => $value):?>
                        <option <?php echo isset($model->sheshi) && $model->sheshi->cangku == $key ? "selected" : ""; ?> value="<?php echo $key ?>"><?php echo $value ?></option>
                    <?php endforeach; ?>
                </select>*
            </label>

            <label>
                <span>自有运输工具:</span>
                <select name="market_sheshi[tool]">
                    <option value="">请选择</option>
                    <?php foreach (ThisTools::getMarketTool() as $key => $value):?>
                        <option <?php echo isset($model->sheshi) && $model->sheshi->tool == $key ? "selected" : ""; ?> value="<?php echo $key ?>"><?php echo $value ?></option>
                    <?php endforeach; ?>
                </select>*
            </label>

            <label>
                <span>冷藏库:</span>
                <select name="market_sheshi[lengcang]">
                    <option value="">请选择</option>
                    <?php foreach (ThisTools::getMarketLengcang() as $key => $value):?>
                        <option <?php echo isset($model->sheshi) && $model->sheshi->lengcang == $key ? "selected" : ""; ?> value="<?php echo $key ?>"><?php echo $value ?></option>
                    <?php endforeach; ?>
                </select>*
            </label>

            <label>
                <span>检测室:</span>
                <select name="market_sheshi[jiance]">
                    <option value="">请选择</option>
                    <?php foreach (ThisTools::getMarketJiance() as $key => $value):?>
                        <option <?php echo isset($model->sheshi) && $model->sheshi->jiance == $key ? "selected" : ""; ?> value="<?php echo $key ?>"><?php echo $value ?></option>
                    <?php endforeach; ?>
                </select>*
            </label>

            <label>
                <span>大棚设施:</span>
                <select name="market_sheshi[dapengsheshi]">
                    <option value="">请选择</option>
                    <?php foreach (ThisTools::getMarketDapengsheshi() as $key => $value):?>
                        <option <?php echo isset($model->sheshi) && $model->sheshi->dapengsheshi == $key ? "selected" : ""; ?> value="<?php echo $key ?>"><?php echo $value ?></option>
                    <?php endforeach; ?>
                </select>*
            </label>

            <label>
                <span>生产监控设施:</span>
                <select name="market_sheshi[shengchansheshi]">
                    <option value="">请选择</option>
                    <?php foreach (ThisTools::getMarketShengchansheshi() as $key => $value):?>
                        <option <?php echo isset($model->sheshi) && $model->sheshi->shengchansheshi == $key ? "selected" : ""; ?> value="<?php echo $key ?>"><?php echo $value ?></option>
                    <?php endforeach; ?>
                </select>*
            </label>

            <h2>基地信息化情况</h2>
            <label>
                <span>信息化管理系统:</span>
                <select name="market_xinxi[xinxihua]">
                    <option value="0">请选择</option>
                    <?php foreach (ThisTools::getMarketXinxihua() as $key => $value):?>
                        <option <?php echo isset($model->xinxi) && $model->xinxi->xinxihua == $key ? "selected" : ""; ?> value="<?php echo $key ?>"><?php echo $value ?></option>
                    <?php endforeach; ?>
                </select>*
            </label>

            <label>
                <span>网上销售:</span>
                <select name="market_xinxi[online_sale]">
                    <option value="0">请选择</option>
                    <?php foreach (ThisTools::getMarketOnlineSale() as $key => $value):?>
                        <option <?php echo isset($model->xinxi) && $model->xinxi->online_sale == $key ? "selected" : ""; ?> value="<?php echo $key ?>"><?php echo $value ?></option>
                    <?php endforeach; ?>
                </select>*
            </label>

            <label>
                <span>二维码:</span>
                <select name="market_xinxi[qrcode]">
                    <option value="0">请选择</option>
                    <?php foreach (ThisTools::getMarketQrcode() as $key => $value):?>
                        <option <?php echo isset($model->xinxi) && $model->xinxi->qrcode == $key ? "selected" : ""; ?> value="<?php echo $key ?>"><?php echo $value ?></option>
                    <?php endforeach; ?>
                </select>*
            </label>

            <label>
                <span>公司网站:</span>
                <input id="" type="text" name="market_xinxi[website]" value="<?php echo $model->xinxi->website ?>"  placeholder="公司网站" />
            </label>

            <label>
                <span>公众微信、微博:</span>
                <input id="" type="text" name="market_xinxi[weibo]" value="<?php echo $model->xinxi->weibo ?>"  placeholder="公众微信、微博" />
            </label>


            <h2>需要的服务</h2>

            <div class="fcheckbox">
                <div class="fcheckbox_name">培训 *:</div>
                <div class="fcheckbox_check">
                    <?php $coachData = isset($model->service->coach) && $model->service->coach ? (array)json_decode($model->service->coach,true) : array() ?>
                    <?php foreach(ThisTools::getMarketCoach() as $k=>$v): ?>
                    <label><input name="market_service[coach][<?php echo $k; ?>]" <?php echo array_key_exists($k,$coachData) !== false ? "checked" : "" ?> type="checkbox" value="<?php echo $k ?>" />&nbsp;<?php echo $v; ?></label>
                    <?php endforeach; ?>
                    <label><input id="" type="text" name="market_service[coach][-1]" placeholder="其他" value="<?php echo isset($coachData[-1]) ? $coachData[-1] : "" ?>" /></label>
                </div>
            </div>

            <div class="fcheckbox">
                <div class="fcheckbox_name">融资 *:</div>
                <div class="fcheckbox_check">
                    <?php $rongziData = isset($model->service->rongzi) && $model->service->rongzi ? (array)json_decode($model->service->rongzi,true) : array() ?>
                    <?php foreach(ThisTools::getMarketRongzi() as $k=>$v): ?>
                    <label><input name="market_service[rongzi][<?php echo $k; ?>]" <?php echo array_key_exists($k,$rongziData) !== false ? "checked" : "" ?> type="checkbox" value="<?php echo $k ?>" />&nbsp;<?php echo $v; ?></label>
                    <?php endforeach; ?>
                    <label><input id="" type="text" name="market_service[rongzi][-1]" placeholder="其他" value="<?php echo isset($rongziData[-1]) ? $rongziData[-1] : "" ?>" /></label>
                </div>
            </div>

            <label>
                <span>是否需要实现产品认证:</span>
                <input id="" type="text" name="market_service[chanpinrenzheng]" value="<?php echo $model->service->chanpinrenzheng ?>"  placeholder="是否需要实现产品认证" />
            </label>

            <label>
                <span>基地整体策划:</span>
                <input id="" type="text" name="market_service[zhengticehua]" value="<?php echo $model->service->zhengticehua ?>"  placeholder="是否需要对基地提供整体策划" />*
            </label>

            <label>
                <span>参加产品市集的时间段:</span>
                <input id="" type="text" name="market_service[shijianduan]" value="<?php echo $model->service->shijianduan ?>"  placeholder="能够提供产品参加产品市集的时间段" />*
            </label>

            <label>
                <span>备注 :</span>
                <textarea id="" name="market_service[beizhu]" placeholder="300字以内"><?php echo $model->service->beizhu ?></textarea>
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
