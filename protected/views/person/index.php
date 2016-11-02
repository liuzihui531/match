<div class="show">
    <div class="show_tit">青年农村电商大赛报名表(个人组）</div>
    <div class="show_form">

        <form  class="bootstrap-frm" action="<?php echo $this->createUrl("save") ?>" id="form1" method="post" enctype="multipart/form-data">
            <?php if($model): ?>
                    <input type="hidden" name="id" value="<?php echo $model->id ?>" />
            <?php endif; ?>
            <h2>参赛人信息<span>请务必填写真实信息</span></h2>

            <label>
                <span>组别:</span>
                <select name="person[group]">
                    <option value="0">选择您要参赛的组别</option>
                    <?php foreach (ThisTools::getGroup() as $k => $v): ?>
                        <option <?php echo $model->group == $k ? "selected" : "" ?> value="<?php echo $k ?>"><?php echo $v; ?></option>                        
                    <?php endforeach; ?>
                </select> 
            </label>

            <label>
                <span>所属市县:</span>
                <select name="person[city]">
                    <option value="">选择您所在的城市</option>
                    <?php if ($area): ?>
                        <?php foreach ($area as $k => $v): ?>
                            <option <?php echo $model->city == $k ? "selected" : "" ?> value="<?php echo $k ?>"><?php echo $v; ?></option>
                        <?php endforeach; ?>
                    <?php endif; ?>
                </select> *
            </label>

            <label>
                <span>就读院校 :</span>
                <input id="" type="text" name="person[school]" value="<?php echo $model->school ?>" placeholder="（仅供在校人员填写）" />
            </label>

            <label>
                <span>参赛代表姓名:</span>
                <input id="" type="text" name="person[name]" value="<?php echo $model->name ?>" placeholder="参赛代表姓名" />*
            </label>

            <label>
                <span>出生年月:</span>
                <input id="" type="text" name="person[birth]" value="<?php echo $model->birth ?>" placeholder="出生年月" />*
            </label>

            <label>
                <span>户籍地:</span>
                <input id="" type="text" name="person[domicile]" value="<?php echo $model->domicile ?>" placeholder="户籍地" />
            </label>

            <label>
                <span>身份证号:</span>
                <input id="" type="text" name="person[id_card]" value="<?php echo $model->id_card ?>" placeholder="身份证号" />*
            </label>

            <label>
                <span>有无违法违纪行为声明:</span>
                <input id="" type="text" name="person[is_illegal]" value="<?php echo $model->is_illegal ?>" placeholder="有无违法违纪行为声明" />*
            </label>


            <label>
                <span>学历:</span>
                <input id="" type="text" name="person[education]" value="<?php echo $model->education ?>" placeholder="学历" />*
            </label>

            <label>
                <span>联系电话:</span>
                <input id="" type="text" name="person[mobile]" value="<?php echo $model->mobile ?>" placeholder="联系电话" />*
            </label>


            <label>
                <span>E-mail:</span>
                <input id="" type="email" name="person[email]" value="<?php echo $model->email ?>" placeholder="E-mail" />*
            </label>


            <h2>提交作品情况</h2>
            <label>
                <span>作品名称:</span>
                <input id="" type="text" name="person[work]" value="<?php echo $model->work ?>" placeholder="作品名称" />
            </label>


            <label>
                <span>作品简介和链接地址 :</span>
                <textarea id="" name="person[url]" placeholder="300字以内"><?php echo $model->url ?></textarea>
            </label>

            <h2>提交附件</h2>
            <label>
                <span>附件:</span>
                <input name="person[file]" type="file" />
                <?php if($model->file): ?>
                    <a href="<?php echo $model->file ?>"><?php echo '下载附件'; ?></a>
                <?php endif; ?>
            </label>

            <label>
                <span>备注:</span>
                <input id="" type="text" name="person[remarks]" value="<?php echo $model->is_illegal ?>" placeholder="备注" />
            </label>

            <label>
                <span>&nbsp;</span>
                <input type="button" class="button submit" value="提交" />
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

<script type="text/javascript">
    $(function () {
        $(".submit").bind('click', function () {
            $.post("<?php echo $this->createUrl('save') ?>", $('#form1').serialize(), function (data) {
                alert(data.msg)
                if (data.sta == 1) {
                    window.location.href = "<?php echo $this->createUrl('index/index'); ?>";
                }
            }, 'json');
        });
    })
</script>