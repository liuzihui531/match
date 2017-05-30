<?php 
 class MarketController extends Controller{
 		public $page_name = "电商集市";
		public function actionIndex(){
			$this->breadcrumbs = array($this->page_name.'管理');
			$criteria = new CDbCriteria();
	        $pager = new CPagination(Market::model()->count($criteria));
            $pager->pageSize = 10;
            $pager->applyLimit($criteria);
	        $model = Market::model()->findAll($criteria);
        	$sex = ThisTools::getSex();
	        $this->render("index",array('model' => $model, 'pager' => $pager));
		}

		public function actionDetail(){
			$this->breadcrumbs = array($this->page_name.'详情');
			$id = Yii::app()->request->getParam("id",0);
			$model = Market::model()->findByPk($id);
			$this->render("detail",array('model'=>$model));
		}
 }