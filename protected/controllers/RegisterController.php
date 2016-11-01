<?php 

	class RegisterController extends Controller{
		public function actionIndex(){
			$this->render("index");
		}

		public function actionRegister(){
			$email = Yii::app()->request->getParam("email",'');
			$password = Yii::app()->request->getParam("password",'');
			$password2 = Yii::app()->request->getParam("password2",'');
			if($password != $password2 || !$password){
				$this->error("密码格式不正确");
			}
			$model = new User();
			$model->email = $email;
			$model->username = $email;
			$model->password = Utils::password($password);
			$model->created = time();
			$model->save();
			if($model->hasErrors()){
				$this->error(Utils::getFirstError($model->errors));
			}else{
				$loginForm = new LoginForm();
				$loginForm->username = $email;
				$loginForm->password = $password;
				$loginForm->login();
				$this->success("注册成功",$this->createUrl("/uc"));
			}
		}
	}