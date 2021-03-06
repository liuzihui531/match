<div class="row">
    <div class="col-xs-12">
        <div class="table-responsive">
            <!--搜索框开始-->
            <div class="widget-box">
                <div class="widget-header">
                    <h4>搜索框</h4>
                </div>
                <div class="widget-body">
                    <div class="widget-main">
                        <form class="form-inline" method="get">
                            <input type="text" name="title" value="<?php echo Yii::app()->request->getParam('title', '') ?>" class="input-medium" placeholder="标题">
                            <button type="submit" class="btn btn-purple btn-sm">
                                搜索
                                <i class="icon-search icon-on-right bigger-110"></i>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!--搜索框结束-->
            <?php if ($model): ?>
                <table id="sample-table-1" class="table table-striped table-bordered table-hover;overflow:auto">
                    <thead>
                        <tr>
                           <!-- <th class="center">
                                <label>
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </th>-->
                            <td>ID</td>
                            <th>城市</th>
                            <th>学校</th>
                            <th>电商平台</th>
                            <td>用户</td>
                            <td>参赛代表姓名</td>
                            <td>出生年月</td>
                            <td>身份证号</td>
                            <td>学历和毕业院校</td>
                            <td>联系电话</td>
                            <td>邮箱</td>
                            <td>微信</td>
                            <td>项目名称</td>
                            <td>项目形成时间</td>
                            <td style='width:200px !important'>项目简介</td>
                            <td>团队成员情况</td>
                            <td>附件</td>
                            <th class="hidden-480">创建时间</th>
                            <th></th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php foreach ($model as $k => $v): ?>
                            <tr>
                               <!-- <td class="center">
                                    <label>
                                        <input type="checkbox" class="ace delete-id" name="id[]" value="<?php echo $v->id ?>" />
                                        <span class="lbl"></span>
                                    </label>
                                </td>-->
                                <td><?php echo $v->id ?></td>
                                <td><?php echo ThisTools::getRegion($v->city) ?></td>
                                <td><?php echo $v->school ?></td>
                                <td><?php 
                                $business_platform = !empty($v->platform) ? json_decode($v->platform, true) : array();

                                if($business_platform){
                                    foreach ($business_platform as $key => $val) {
                                        echo $platform[$val].'  '; 
                                    } 
                                }

                                ?></td>
<<<<<<< HEAD
                                <td><?php echo isset($v->user) ? $v->user->email : "" ?></td>
				<td><?php echo $v->represent_name ?></td>
				<td><?php echo $v->birthday ?></td>
				<td><?php echo $v->idcard ?></td>
				<td><?php echo $v->degree ?></td>
				<td><?php echo $v->mobile ?></td>
				<td><?php echo $v->email ?></td>
				<td><?php echo $v->wechat ?></td>
				<td><?php echo $v->project_name ?></td>
				<td><?php echo $v->project_build_time ?></td>
				<td><?php echo $v->project_introduct ?></td>
				<td><?php echo $v->people_info ?></td>
				<td><?php echo $v->attach ? "http://hcyc.cn".$v->attach : ""; ?></td>
=======
                                <td><?php echo $v->email ?></td>
>>>>>>> a6bb19cba4dd21ad91ae1a8c85db4cc4c1229750
                                <td><?php echo date('Y-m-d H:i:s', $v->created) ?></td>
                                <td>
                                    <a href="<?php echo $this->createUrl('detail', array('id' => $v->id)) ?>">查看详情</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <div class="page">
                    <ul class="pagination">
                        <?php
                        $this->widget('CLinkPager', array(
                            //'header' => '共' . $pager->getItemCount() . '条记录',
                            'header' => '',
                            'firstPageLabel' => '首页',
                            'lastPageLabel' => '末页',
                            'prevPageLabel' => '上一页',
                            'nextPageLabel' => '下一页',
                            'pages' => $pager,
                            'maxButtonCount' => 5,
                            'cssFile' => '',
                            'internalPageCssClass' => '',
                            'selectedPageCssClass' => 'active',
                            'htmlOptions' => array(
                                'class' => 'pagination clear',
                            ),
                                )
                        );
                        ?>
                    </ul>
                </div>
            <?php else: ?>
                <div class="no-record">
                    暂无数据
                </div>
            <?php endif; ?>
        </div><!-- /.table-responsive -->
    </div><!-- /span -->
</div><!-- /row -->
