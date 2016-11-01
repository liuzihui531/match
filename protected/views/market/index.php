<div class="show">
    <div class="show_tit">农产品电商市集报名表</div>
    <div class="show_form">
        <form id='form1' class="bootstrap-frm" method="post" action="<?php echo $this->createUrl("save") ?>">

            <h2>参赛基本信息<span>请务必填写真实信息</span></h2>

            <label>
                <span>选送产品名称 :</span>
                <input id="" type="text" name="market[product]" placeholder="选送产品名称" />*
            </label>

            <label>
                <span>产地介绍:</span>
                <input id="" type="text" name="market[introduce]" placeholder="产地介绍" />*
            </label>

            <label>
                <span>出产时间:</span>
                <input id="" type="text" name="market[outtime]" placeholder="出产时间" />*
            </label>

            <label>
                <span>生产执行标准:</span>
                <input id="" type="text" name="market[s_standard]" placeholder="生产执行标准" />
            </label>

            <label>
                <span>质量认证标准:</span>
                <input id="" type="text" name="market[z_standard]" placeholder="质量认证标准" />
            </label>

            <label>
                <span>负责人:</span>
                <input id="" type="text" name="market[charge]" placeholder="负责人" />*
            </label>


            <label>
                <span>联系电话:</span>
                <input id="" type="text" name="market[mobile]" placeholder="联系电话" />*
            </label>

            <label>
                <span>第二负责人:</span>
                <input id="" type="text" name="market[charge_second]" placeholder="第二负责人" />*
            </label>


            <label>
                <span>联系电话:</span>
                <input id="" type="email" name="market[mobile_second]" placeholder="联系电话" />*
            </label>
            <?php for($i = 1;$i <= 3;$i++): ?>
            <h2>产品基本情况<span>产品<?php echo $i ?></span></h2>
            <label>
                <span>产品名称:</span>
                <input id="" type="text" name="market_product[<?php echo $i ?>][name]" placeholder="产品名称" />*
            </label>

            <label>
                <span>种植面积或养殖数量:</span>
                <input id="" type="text" name="market_product[<?php echo $i ?>][range]" placeholder="种植面积或养殖数量" />*
            </label>

            <label>
                <span>年产量:</span>
                <input id="" type="text" name="market_product[<?php echo $i ?>][num_totle]" placeholder="年产量" />*
            </label>

            <label>
                <span>种植/养殖方式:</span>
                <input id="" type="text" name="market_product[<?php echo $i ?>][type]" placeholder="种植/养殖方式" />*
            </label>

            <label>
                <span>包装箱规格:</span>
                <input id="" type="text" name="market_product[<?php echo $i ?>][box_spe]" placeholder="包装箱规格" />*
            </label>

            <label>
                <span>产品规格:</span>
                <input id="" type="text" name="market_product[<?php echo $i ?>][product_spe]" placeholder="产品规格" />*
            </label>

            <label>
                <span>供货周期:</span>
                <input id="" type="text" name="market_product[<?php echo $i ?>][period]" placeholder="供货周期" />*
            </label>

            <label>
                <span>供货价格:</span>
                <input id="" type="text" name="market_product[<?php echo $i ?>][pro_price]" placeholder="供货价格" />
            </label>

            <label>
                <span>建议销售价:</span>
                <input id="" type="text" name="market_product[<?php echo $i ?>][addvise_price]" placeholder="建议销售价" />*
            </label>
            <?php endfor; ?>
            <h2>基地基础设施</h2>
            <label>
                <span>仓库:</span>
                <select name="market_sheshi[cangku]">
                    <option value="0">请选择</option>
                    <option value="1">是</option>
                    <option value="2">否</option>
                </select>*
            </label>

            <label>
                <span>自有运输工具:</span>
                <select name="market_sheshi[tool]">
                    <option value="">请选择</option>
                    <option value="1">是</option>
                    <option value="2">否</option>
                </select>*
            </label>

            <label>
                <span>冷藏库:</span>
                <select name="market_sheshi[lengcang]">
                    <option value="">请选择</option>
                    <option value="1">是</option>
                    <option value="2">否</option>
                </select>*
            </label>

            <label>
                <span>检测室:</span>
                <select name="market_sheshi[jiance]">
                    <option value="">请选择</option>
                    <option value="1">是</option>
                    <option value="2">否</option>
                </select>*
            </label>

            <label>
                <span>大棚设施:</span>
                <select name="market_sheshi[dapengsheshi]">
                    <option value="">请选择</option>
                    <option value="1">是</option>
                    <option value="2">否</option>
                </select>*
            </label>

            <label>
                <span>生产监控设施:</span>
                <select name="market_sheshi[shengchansheshi]">
                    <option value="">请选择</option>
                    <option value="1">是</option>
                    <option value="2">否</option>
                </select>*
            </label>

            <h2>基地信息化情况</h2>
            <label>
                <span>信息化管理系统:</span>
                <select name="market_xinxi[xinxihua]">
                    <option value="0">请选择</option>
                    <option value="1">是</option>
                    <option value="2">否</option>
                </select>*
            </label>

            <label>
                <span>网上销售:</span>
                <select name="market_xinxi[online_sale]">
                    <option value="0">请选择</option>
                    <option value="1">是</option>
                    <option value="2">否</option>
                </select>*
            </label>

            <label>
                <span>二维码:</span>
                <select name="market_xinxi[qrcode]">
                    <option value="0">请选择</option>
                    <option value="1">是</option>
                    <option value="2">否</option>
                </select>*
            </label>

            <label>
                <span>公司网站:</span>
                <input id="" type="text" name="market_xinxi[website]" placeholder="公司网站" />
            </label>

            <label>
                <span>公众微信、微博:</span>
                <input id="" type="text" name="market_xinxi[weibo]" placeholder="公众微信、微博" />
            </label>


            <h2>需要的服务</h2>

            <div class="fcheckbox">
                <div class="fcheckbox_name">培训 *:</div>
                <div class="fcheckbox_check">
                    <label><input name="market_service[coach][1]" id="" type="checkbox" value="1" />&nbsp;农业培训</label>
                    <label><input name="market_service[coach][2]" id="" type="checkbox" value="2" />&nbsp;电子商务培训</label>
                    <label><input name="market_service[coach][3]" id="" type="checkbox" value="3" />&nbsp;营销培训</label>
                    <label><input name="market_service[coach][4]" id="" type="checkbox" value="4" />&nbsp;管理培训</label>
                    <label><input id="" type="text" name="market_service[coach][-1]" placeholder="其他" /></label>
                </div>
            </div>

            <div class="fcheckbox">
                <div class="fcheckbox_name">融资 *:</div>
                <div class="fcheckbox_check">
                    <label><input name="market_service[rongzi][1]" id="" type="checkbox" value="1" />&nbsp;小额贷款</label>
                    <label><input name="market_service[rongzi][2]" id="" type="checkbox" value="2" />&nbsp;融资租赁</label>
                    <label><input name="market_service[rongzi][3]" id="" type="checkbox" value="3" />&nbsp;融资担保</label>
                    <label><input id="" type="text" name="market_service[rongzi][-1]" placeholder="其他" /></label>
                </div>
            </div>

            <label>
                <span>是否需要实现产品认证:</span>
                <input id="" type="text" name="market_service[chanpinrenzheng]" placeholder="是否需要实现产品认证" />
            </label>

            <label>
                <span>基地整体策划:</span>
                <input id="" type="text" name="market_service[zhengticehua]" placeholder="是否需要对基地提供整体策划" />*
            </label>

            <label>
                <span>参加产品市集的时间段:</span>
                <input id="" type="text" name="market_service[shijianduan]" placeholder="能够提供产品参加产品市集的时间段" />*
            </label>

            <label>
                <span>备注 :</span>
                <textarea id="" name="market_service[beizhu]" placeholder="300字以内"></textarea>
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
