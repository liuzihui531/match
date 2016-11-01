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
	}
