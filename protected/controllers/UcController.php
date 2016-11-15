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

	public function actionBuildSign(){
		$user_id = Yii::app()->user->id;
		$user_model = User::model()->findByPk($user_id);
		$group = $user_model->group;
		$count = User::model()->countByAttributes(array("group"=>$group));
		$start = $group * 1000 + 1;
		$end = $start + $count;
		$criteria = new CDbCriteria();
		$criteria->addCondition("`sign_num` > 0 and `group`=$group");
		$signed_model = User::model()->findAll($criteria);
		$signed = array();
		if($signed_model){
			foreach ($signed_model as $key => $value) {
				$signed[$value['sign_num']] = $value['sign_num'];
			}
		}
		$sign_num = 0;
		while ($sign_num <= 0 || in_array($sign_num, $signed)) {
			$sign_num = mt_rand($start,$end);
		}
		$user_model->sign_num = $sign_num;
		$user_model->save();
		if($user_model->hasErrors()){
			echo json_encode(array('sta'=>0,'msg'=>Utils::getFirstError($user_model->errors)));exit;
		}else{
			Yii::app()->session['user'] = $user_model;
			echo json_encode(array('sta' => 1,'msg'=>$sign_num));exit;
		}
	}
}