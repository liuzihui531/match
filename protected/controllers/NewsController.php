<?php 
class NewsController extends Controller{
	public function actionView() {
		$id = Yii::app()->request->getParam('id', 0);
		$model = News::model()->findByPk($id);
		$this->render('view', array(
			'model' => $model,
		));
	}
}