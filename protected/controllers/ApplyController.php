<?php 
class ApplyController extends Controller{
	public function actionIndex(){
		$user_type = Yii::app()->request->getParam("user_type" ,0);
		$user_id = Yii::app()->user->id;
		if($user_id){
			$model = User::model()->findByAttributes(array('user_type' => $user_type, 'id' => $user_id));
			if(!$model){
				$model = new User();
			}
		}else{
			$model = new User();
		}
		$model->business_platform = isset($model->business_platform) && $model->business_platform ? json_decode($model->business_platform, true) : array();
		$model->people_info = isset($model->people_info) && $model->people_info ? json_decode($model->people_info, true) : array();
		if($user_type == 0){
			$this->render('chuangyi',array('model'=>$model, 'user_type' => $user_type));
		}else{
			$this->render('chuangye',array('model'=>$model, 'user_type' => $user_type));
		}
        
	}

	public function actionSave(){
		$post = $_POST;
		$user_type = isset($post['user_type']) ? $post['user_type'] : 0;
		$id = isset($post['id']) ? $post['id'] : 0;
		if($id){
			$model = User::model()->findByPk($id);
			if(!$post['password']){
				unset($post['password']);
				unset($post['password2']);
				$model->password2 = $model->password;
			}
		}else{
			$model = new User();
			$post['created'] = time();
		}
		$post['business_platform'] = isset($post['business_platform']) && !empty($post['business_platform']) ? json_encode($post['business_platform']) : "";
		$post['people_info'] = isset($post['people_info']) && !empty($post['people_info']) ? json_encode($post['people_info']) : "";

		if(isset($_FILES['attach']) && !empty($_FILES['attach'])){
			$upload = new Upload();
            $rs = $upload->uploads('attach', 'file');
            $file = $upload->file_url;
			$post['attach'] = $file;
		}else{
			unset($post['attach']);
		}
		$post['user_id'] = Yii::app()->user->id;
		$model->attributes = $post;
		$model->validate();
		if($model->hasErrors()){
			$this->error(Utils::getFirstError($model->errors));
		}else{
			if(!$id){
				$model->password = $model->password2 = Utils::password($model->password);
			}
			$model->username = $model->mobile;
			$model->save();
			$loginForm = new LoginForm();
			$loginForm->username = $post['mobile'];
			$loginForm->password = $post['password'];
			$loginForm->validate();
			$loginForm->login();
			$this->success("报名成功");
		}
	}
}
