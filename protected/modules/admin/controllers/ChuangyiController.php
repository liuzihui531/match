<?php 
	class ChuangyiController extends Controller{
		public $page_name = "企业组";
		public function actionIndex(){
			$this->breadcrumbs = array($this->page_name.'管理');
			$user_type = Yii::app()->request->getParam('user_type', 0);
			$criteria = new CDbCriteria();
			$criteria->compare('user_type',$user_type);
			$count = User::model()->count($criteria);
	        $pager = new CPagination($count);
	        $pageSize = 10;
            $pager->pageSize = $pageSize;
            $pager->applyLimit($criteria);
	        $model = User::model()->findAll($criteria);
	        $area = ThisTools::getRegion();
	        $platform = ThisTools::getBusinessPlatform();
        	$sex = ThisTools::getGender();
	        $this->render("index",array('model' => $model, 'pager' => $pager,'area'=>$area,'platform'=>$platform,'sex'=>$sex));
		}

		public function actionDetail(){
			$this->breadcrumbs = array($this->page_name.'详情');
			$id = Yii::app()->request->getParam("id",0);
			$model = User::model()->findByPk($id);
			$people_info = !empty($model->people_info) ? json_decode($model->people_info, true) : array();
			if($model->user_type == 0){
				$this->render("chuangyi_detail",array('model'=>$model, 'people_info' => $people_info));	
			}else{
				$this->render("chuangye_detail",array('model'=>$model, 'people_info' => $people_info));
			}
			
		}
	}