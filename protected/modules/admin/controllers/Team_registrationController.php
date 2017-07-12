<?php 
class Team_registrationController extends Controller{
	public $page_name = "创业组";
	public function actionIndex(){
		$this->breadcrumbs = array($this->page_name.'管理');
		$criteria = new CDbCriteria();
		$count = TeamRegistration::model()->count($criteria);
        $pager = new CPagination($count);
        $pageSize = 10;
        $pager->pageSize = $pageSize;
        $pager->applyLimit($criteria);
        $model = TeamRegistration::model()->findAll($criteria);
        $area = ThisTools::getRegion();
        $platform = ThisTools::getBusinessPlatform();
    	$sex = ThisTools::getGender();
        $this->render("index",array('model' => $model, 'pager' => $pager,'area'=>$area,'platform'=>$platform,'sex'=>$sex));
	}

	public function actionDetail(){
		$this->breadcrumbs = array($this->page_name.'详情');
		$id = Yii::app()->request->getParam("id",0);
		$model = TeamRegistration::model()->findByPk($id);
		$people_info = !empty($model->people_info) ? json_decode($model->people_info, true) : array();
		$this->render("detail",array('model'=>$model, 'people_info' => $people_info));
	}
}