<?php 
class UcController extends UcBaseController{
	public function actionIndex(){
		$regModel = TeamRegistration::model()->findByAttributes(array('user_id'=>Yii::app()->user->id));
		$personModel = Person::model()->findByAttributes(array('user_id'=>Yii::app()->user->id));
		$marketModel = Market::model()->findByAttributes(array('user_id'=>Yii::app()->user->id));
		$this->render("index",array(
			'regModel' => $regModel,
			'personModel' => $personModel,
			'marketModel' => $marketModel,
		));
	}
}