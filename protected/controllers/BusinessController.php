<?php 
class BusinessController extends UcBaseController{
	public function actionIndex(){
		$user_id = Yii::app()->user->id;
		$model = TeamRegistration::model()->findByAttributes(array('user_id' => $user_id));
		$model->platform = $model->platform ? json_decode($model->platform, true) : array();
		$model->birth = $model->birth ? date("Y-m-d", $model->birth) : "";
		$model->people_info = $model->people_info ? json_decode($model->people_info, true) : array();
        $this->render('index',array('model' => $model));
	}

	public function actionSave(){
		$post = $_POST;
		if($post['id'] > 0){
			$model = TeamRegistration::model()->findByPk($post['id']);
		}else{
			$model = new TeamRegistration();
		}
		$post['platform'] = isset($post['platform']) && !empty($post['platform']) ? json_encode($post['platform']) : "";
		$post['people_info'] = isset($post['people_info']) && !empty($post['people_info']) ? json_encode($post['people_info']) : "";
		$post['created'] = time();
		$post['birth'] = isset($post['birth']) && !empty($post['birth']) ? strtotime($post['birth']) : "";
		$file = "";
		if(isset($_FILES['file_rep']) && !empty($_FILES['file_rep'])){
			$upload = new Upload();
            $rs = $upload->uploads('file_rep', 'file');
            $file = $upload->file_url;
		}
		$post['user_id'] = Yii::app()->user->id;
		$post['file_rep'] = $file;
		$model->attributes = $post;
		$model->validate();
		if($model->hasErrors()){
			$this->error(Utils::getFirstError($model->errors));
		}else{
			$model->save();
			$this->success("报名成功");
		}
	}
}
