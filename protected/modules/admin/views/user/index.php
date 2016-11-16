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
                            <input type="text" name="email" value="<?php echo Yii::app()->request->getParam('email', '') ?>" class="input-medium" placeholder="邮箱账号">
                            <input type="text" name="mobile" value="<?php echo Yii::app()->request->getParam('mobile', '') ?>" class="input-medium" placeholder="手机号码">
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
                <table id="sample-table-1" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th class="center">
                                <label>
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <th>ID</th>
                            <th>邮箱</th>
                            <th>手机</th>
                            <th>组别</th>
                            <th>名字</th>
                            <th>身份证号</th>
                            <th>县市</th>
                            <th>抽签号</th>
                            <th class="hidden-480">创建时间</th>
                            <th></th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php foreach ($model as $k => $v): ?>
                            <tr>
                                <td class="center">
                                    <label>
                                        <input type="checkbox" class="ace delete-id" name="id[]" value="<?php echo $v->id ?>" />
                                        <span class="lbl"></span>
                                    </label>
                                </td>
                                <td><?php echo $v->id ?></td>
                                <td><?php echo $v->email ?></td>
                                <td><?php echo $v->mobile ?></td>
                                <td><?php echo ThisTools::getUserGroup($v->group) ?></td>
                                <td><?php echo $v->realname; ?></td>
                                <td><?php echo $v->idcard ?></td>
                                <td><?php echo ThisTools::getRegion($v->region_id) ?></td>
                                <td><?php echo $v->sign_num ?></td>
                                <td><?php echo date('Y-m-d H:i:s', $v->created) ?></td>
                                <td>
                                    
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