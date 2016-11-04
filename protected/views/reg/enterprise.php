        <div class="show">
            <div class="show_tit">青年农村电商大赛报名表(企业组）</div>
            <div class="show_form">

                <form class="bootstrap-frm" action="<?php echo $this->createUrl("save") ?>" id="form1" method="post" enctype="multipart/form-data">
                    <?php if($model): ?>
                            <input type="hidden" name="id" value="<?php echo $model->id ?>" />
                    <?php endif; ?>
                    <h2>参赛团队主要负责人信息<span>请务必填写真实信息</span></h2>

                    <label>
                        <span>所属市县:</span>
                        <select name="rep[city]">
                            <option value="">选择您所在的城市</option>
                            <?php if ($area): ?>
                                <?php foreach ($area as $k => $v): ?>
                                    <option <?php echo isset($model) && $model->city == $k ? "selected" : "" ?> value="<?php echo $k ?>"><?php echo $v; ?></option>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        </select> *
                    </label>

                    <label>
                        <span>就读院校 :</span>
                        <input id="" type="text" name="rep[school]" placeholder="（仅供在校人员填写）" value="<?php echo $model->school ?>" />
                    </label>

                    <label>
                        <span>参赛代表姓名:</span>
                        <input id="" type="text" name="rep[rep_name]" value="<?php echo $model->rep_name ?>" placeholder="参赛代表姓名" />*
                    </label>

                    <label>
                        <span>出生年月:</span>
                        <input id="" type="text" name="rep[birth]" value="<?php echo $model->birth ?>" placeholder="出生年月" />*格式为1997-07-09
                    </label>

                    <label>
                        <span>身份证号:</span>
                        <input id="" type="text" name="rep[id_card]" value="<?php echo $model->id_card ?>" placeholder="身份证号" />*
                    </label>

                    <label>
                        <span>有无违法违纪行为声明:</span>
                        <input id="" type="text" name="rep[is_illegal]" value="<?php echo $model->is_illegal ?>" placeholder="有无违法违纪行为声明" />*
                    </label>


                    <label>
                        <span>学历:</span>
                        <input id="" type="text" name="rep[education]" value="<?php echo $model->education ?>" placeholder="学历" />*
                    </label>

                    <label>
                        <span>联系电话:</span>
                        <input id="" type="text" name="rep[mobile]" value="<?php echo $model->mobile ?>"  placeholder="联系电话" />*
                    </label>


                    <label>
                        <span>E-mail:</span>
                        <input id="" type="text" name="rep[email]" value="<?php echo $model->email ?>" placeholder="E-mail" />*
                    </label>


                    <h2>参赛项目信息</h2>
                    <label>
                        <span>项目或企业名称:</span>
                        <input id="" type="text" name="rep[enterprise]" value="<?php echo $model->enterprise ?>"  placeholder="项目或企业名称" />
                    </label>

                    <label>
                        <span>工商注册上的信用代码:</span>
                        <input id="" type="text" name="rep[credit]" value="<?php echo $model->credit ?>" placeholder="工商注册上的信用代码" />
                    </label>


                    <div class="fcheckbox">
                        <div class="fcheckbox_name">电商平台*:</div>
                        <?php if ($platform): ?>
                            <div class="fcheckbox_check">
                                <?php if($model && $model->platform){ $thisPlatform = (Array)json_decode($model->platform,true); } ?>
                                <?php foreach ($platform as $k => $v): ?>
                                    <label><input name="rep[platform][]" id="" type="checkbox" <?php echo $thisPlatform && array_search($k, $thisPlatform) !== false ? "checked" : "";  ?> value="<?php echo $k ?>" />&nbsp;<?php echo $v ?></label>
                                <?php endforeach; ?>
                            </div>
                        <?php endif; ?>
                    </div>

                    <label>
                        <span>项目简介 :</span>
                        <textarea id="" name="rep[introduction]" placeholder="300字以内，电商产品介绍，业绩，网店名称等。">
                        <?php echo trim($model->introduction); ?>
                        </textarea>
                    </label>
                    <?php for ($i = 0; $i <= 2; $i++): ?>
                        <h2>团队成员情况<span>成员<?php echo $i+1; ?></span></h2>

                        <label>
                            <span>姓名:</span>
                            <input id="" type="text" name="person[<?php echo $i ?>][name]" placeholder="姓名" value="<?php echo isset($model->team[$i]) ? $model->team[$i]->name: ""; ?>" />
                        </label>

                        <label>
                            <span>性别:</span>
                            <?php if ($sex): ?>
                                <select name="person[<?php echo $i ?>][sex]">
                                    <option value="">请选择</option>
                                    <?php foreach ($sex as $k => $v): ?>
                                        <option <?php echo isset($model->team[$i]) && $model->team[$i]->sex == $k ? "selected" : ""; ?> value="<?php echo $k ?>"><?php echo $v ?></option>
                                    <?php endforeach; ?>
                                </select> 
                            <?php endif; ?>
                        </label>

                        <label>
                            <span>年龄:</span>
                            <input id="" type="text" name="person[<?php echo $i ?>][age]" placeholder="年龄" value="<?php echo isset($model->team[$i]) ? $model->team[$i]->age: ""; ?>" />
                        </label>

                        <label>
                            <span>学历:</span>
                            <input id="" type="text" name="person[<?php echo $i ?>][education]" placeholder="学历" value="<?php echo isset($model->team[$i]) ? $model->team[$i]->education: ""; ?>" />
                        </label>

                        <label>
                            <span>户籍地:</span>
                            <input id="" type="text" name="person[<?php echo $i ?>][domicile]" placeholder="户籍地" value="<?php echo isset($model->team[$i]) ? $model->team[$i]->domicile: ""; ?>" />
                        </label>
                    <?php endfor; ?>



                    <h2>提交附件</h2>
                    <label>
                         <span>附件:</span>
                        <input type="file" name="file_rep" /> <br/>
                        <?php if($model->file_rep): ?>
                            <a href="<?php echo $model->file_rep ?>"><?php echo '下载附件'; ?></a>
                        <?php endif; ?>
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
                        <input type="submit" class="submit button" value="提交" />
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


        <div id="tbox">
            <a id="baoming" href="index.html#m2"></a>
            <a id="gotop" href="javascript:void(0)"></a>
        </div>
        <script type="text/javascript">
           // $(function () {
           //     $(".submit").bind('click', function () {
           //         $.post("<?php echo $this->createUrl('save')?>",$('#form1').serialize(),function(data){
           //             alert(data.msg)
           //             if(data.sta == 1){
           //                 window.location.href="<?php echo $this->createUrl('index/index'); ?>";
           //             }
           //         },'json');
           //     });
           // })
        </script>

