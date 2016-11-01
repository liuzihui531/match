<?php 
 class MarketController extends Controller{
 		public $page_name = "电商集市";
		public function actionIndex(){
			$this->breadcrumbs = array($this->page_name.'管理');
			$criteria = new CDbCriteria();
	        $pager = new CPagination(Market::model()->count($criteria));
            $pager->pageSize = $pageSize;
            $pager->applyLimit($criteria);
	        $model = Market::model()->findAll($criteria);
        	$sex = ThisTools::getSex();
	        $this->render("index",array('model' => $model, 'pager' => $pager));
		}
 }