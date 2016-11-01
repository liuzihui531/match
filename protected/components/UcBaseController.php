<?php 
	class UcBaseController extends Controller{
		public function init(){
			parent::init();
			if(!Yii::app()->user->id){
				$this->redirect("/login");
			}
		}
	}