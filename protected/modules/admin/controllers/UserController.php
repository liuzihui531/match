<?php 
	class UserController extends Controller{
		public $page_name = "用户";
		public function actionIndex(){
			$this->breadcrumbs = array($this->page_name.'管理');
			$email = Yii::app()->request->getParam("email","");
			$mobile = Yii::app()->request->getParam("mobile","");
			$group = Yii::app()->request->getParam("group",-1);
			$criteria = new CDbCriteria();
			if($email){
				$criteria->addSearchCondition("email",$email);
			}
			if($mobile){
				$criteria->addSearchCondition("mobile",$mobile);
			}
			if($group > 0){
				$criteria->addCondition("`group`=$group");
			}
	        $pager = new CPagination(User::model()->count($criteria));
            $pager->pageSize = 30;
            $pager->applyLimit($criteria);
	        $model = User::model()->findAll($criteria);
	        $this->render("index",array('model' => $model, 'pager' => $pager));
		}

		public function actionCreate(){
			$model = new User();
			$this->render("_form",array('model' => $model));
		}
	}