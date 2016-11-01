<?php

class PersonController extends IndexBaseController {
    //put your code here
    public function actionIndex(){
        $area = ThisTools::getRegion();
        $this->render('index',array('area'=>$area));
    }
    
    public function actionSave() {
        $model = new Person();
        try {
            $posts = Yii::app()->request->getPost('person');
            $model->attributes = $posts;
            $model->birth = strtotime($posts['birth']);
            $model->created = time();
            $model->save();
            if ($model->hasErrors()) {
                throw new Exception(Utils::getFirstError($model->errors));
            }
            $this->handleResult(1, '操作成功', $this->createUrl('index/index'));
        } catch (Exception $ex) {
            $this->handleResult(0, '操作失败,原因:' . $ex->getMessage());
        }
    }
}
