<?php 
	class LoginController extends Controller{
		public function actionIndex(){
			$this->render("index");
		}

		public function actionLogin(){
			$email = Yii::app()->request->getParam("email","");
			$password = Yii::app()->request->getParam("password","");
			$model = new LoginForm();
			$model->username = $email;
			$model->password = $password;
			$model->validate();
			$model->login();
			if($model->hasErrors()){
				$this->error(Utils::getFirstError($model->errors));
			}else{
				$this->success("登录成功",$this->createUrl("/uc"));
			}
		}

		public function actionLogout(){
			Yii::app()->user->logout();
        	$this->redirect("/");
		}
	}