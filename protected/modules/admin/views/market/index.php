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
                <table id="sample-table-1" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th class="center">
                                <label>
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <td>ID</td>
                            <th>选送产品名称</th>
                            <th>产地介绍</th>
                            <td>用户</td>
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
                                <td><?php echo $v->product ?></td>
                                <td><?php echo $v->introduce ?></td>
                                <td><?php echo isset($v->user) ? $v->user->email : "" ?></td>
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