<?php

class PersonController extends UcBaseController {
    //put your code here
    public function actionIndex(){
        $id = Yii::app()->request->getParam("id",0);
        $criteria = new CDbCriteria();
        if($id){
            $criteria->compare("id",$id);
        }
        $criteria->compare("user_id",Yii::app()->user->id);
        $model = Person::model()->find($criteria);
        $area = ThisTools::getRegion();
        $this->render('index',array('area'=>$area,'model'=>$model));
    }
    
    public function actionSave() {
        $id = Yii::app()->request->getParam("id",0);     
        try {
            if($id){
                $model = Person::model()->findByPk($id);
            }else{
                $model = new Person();
                $model->created = time();
            }
            $posts = Yii::app()->request->getPost('person',array());
            $model->attributes = $posts;
            $model->user_id = Yii::app()->user->id;
            if(isset($_FILES) && isset($_FILES['file'])){
                $upload = new Upload();
                $upload->uploads("file",'file');
                $model->file = $upload->file_url;
            }            
            $model->save();
            if ($model->hasErrors()) {
                throw new Exception(Utils::getFirstError($model->errors));
            }
            $this->handleResult(1, '操作成功', $this->createUrl('/uc/index'));
        } catch (Exception $ex) {
            $this->handleResult(0, '操作失败,原因:' . $ex->getMessage());
        }
    }
}
