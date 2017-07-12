<?php 
class ApplyController extends Controller{
	public function actionIndex(){
		$model = new User();
        $this->render('index',array('model'=>$model));
	}

	public function actionSave(){
		$model = new User();
		$post = $_POST;
		$post['business_platform'] = isset($post['business_platform']) && !empty($post['business_platform']) ? json_encode($post['business_platform']) : "";
		$post['people_info'] = isset($post['people_info']) && !empty($post['people_info']) ? json_encode($post['people_info']) : "";
		$post['created'] = time();
		$file = "";
		if(isset($_FILES['attach']) && !empty($_FILES['attach'])){
			$upload = new Upload();
            $rs = $upload->uploads('attach', 'file');
            $file = $upload->file_url;
		}
		$post['user_id'] = Yii::app()->user->id;
		$post['attach'] = $file;
		$model->attributes = $post;
		$model->validate();
		if($model->hasErrors()){
			$this->error(Utils::getFirstError($model->errors));
		}else{
			$model->password = $model->password2 = Utils::password($model->password);
			$model->username = $model->mobile;
			$model->save();
			$this->success("报名成功",$this->createAbsoluteUrl("/"));
		}
	}
}
