<?php 
	class Team_registrationController extends Controller{
		public $page_name = "企业组";
		public function actionIndex(){
			$this->breadcrumbs = array($this->page_name.'管理');
			$criteria = new CDbCriteria();
	        $pager = new CPagination(TeamRegistration::model()->count($criteria));
            $pager->pageSize = $pageSize;
            $pager->applyLimit($criteria);
	        $model = TeamRegistration::model()->findAll($criteria);
	        $area = ThisTools::getRegion();
	        $platform = ThisTools::getPlatform();
        	$sex = ThisTools::getSex();
	        $this->render("index",array('model' => $model, 'pager' => $pager,'area'=>$area,'platform'=>$platform,'sex'=>$sex));
		}

		public function actionDetail(){
			$this->breadcrumbs = array($this->page_name.'详情');
			$id = Yii::app()->request->getParam("id",0);
			$model = TeamRegistration::model()->findByPk($id);
			$this->render("detail",array('model'=>$model));
		}
	}