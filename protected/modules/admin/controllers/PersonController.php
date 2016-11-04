<?php 
	class PersonController extends Controller{
		public $page_name = "个人组";
		public function actionIndex(){
			$this->breadcrumbs = array($this->page_name.'管理');
			$criteria = new CDbCriteria();
	        $pager = new CPagination(Person::model()->count($criteria));
            $pager->pageSize = $pageSize;
            $pager->applyLimit($criteria);
	        $model = Person::model()->findAll($criteria);
	        $area = ThisTools::getRegion();
        	$sex = ThisTools::getSex();
	        $this->render("index",array('model' => $model, 'pager' => $pager,'area'=>$area,'platform'=>$platform,'sex'=>$sex));
		}

		public function actionDetail(){
			$this->breadcrumbs = array($this->page_name.'详情');
			$id = Yii::app()->request->getParam("id",0);
			$model = Person::model()->findByPk($id);
			$this->render("detail",array('model'=>$model));
		}

	}
