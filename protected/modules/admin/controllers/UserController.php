<?php 
	class UserController extends Controller{
		public $page_name = "用户";
		public function actionIndex(){
			$this->breadcrumbs = array($this->page_name.'管理');
			$email = Yii::app()->request->getParam("email","");
			$criteria = new CDbCriteria();
			$criteria->addSearchCondition("email",$email);
	        $pager = new CPagination(User::model()->count($criteria));
            $pager->pageSize = $pageSize;
            $pager->applyLimit($criteria);
	        $model = User::model()->findAll($criteria);
	        $this->render("index",array('model' => $model, 'pager' => $pager));
		}
	}