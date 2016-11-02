<?php

class RegController extends UcBaseController {

    //put your code here
    public function actionEnterprise() {
        $id = Yii::app()->request->getParam("id",0);
        $criteria = new CDbCriteria();
        if($id){
            $criteria->compare("id",$id);
        }
        $criteria->compare("user_id",Yii::app()->user->id);
        $model = TeamRegistration::model()->find($criteria);
        $area = ThisTools::getRegion();
        $platform = ThisTools::getPlatform();
        $sex = ThisTools::getSex();
        $this->render('enterprise', array('area' => $area, 'platform' => $platform, 'sex' => $sex,'model'=>$model));
    }

    public function actionSave() {
        $transaction = Yii::app()->db->beginTransaction();        
        $id = Yii::app()->request->getParam("id",0);        
        try {
            if($id){
                $model = TeamRegistration::model()->findByPk($id);
                Team::model()->deleteAllByAttributes(array("tid"=>$model->id));
            }else{
                $model = new TeamRegistration();
                $model->created = time();
            }
            
            $posts = Yii::app()->request->getPost('rep');
            $model->attributes = $posts;
            $model->platform = json_encode($model->platform);
            if(isset($_FILES) && isset($_FILES['file_rep'])){
                $upload = new Upload();
                $upload->uploads("file_rep",'file');
                $model->file_rep = $upload->file_url;
            }            
            $model->user_id = Yii::app()->user->id;
            $model->save();
            if ($model->hasErrors()) {
                throw new Exception(Utils::getFirstError($model->errors));
            }
            $person = Yii::app()->request->getPost('person',array());
            if($person){
                foreach ($person as $key => $value) {
                    $team_model = new Team();
                    $team_model->attributes = $value;
                    $team_model->tid = $model->id;
                    $team_model->save();
                    if ($team_model->hasErrors()) {
                        throw new Exception(Utils::getFirstError($team_model->errors));
                    }
                }
            }
            $transaction->commit();
            //$this->handleResult(1, '操作成功', $this->createUrl('index/index'));
            $this->success("操作成功");
        } catch (Exception $ex) {
            $transaction->rollback();
            $this->success('操作失败,原因:' . $ex->getMessage());
            //$this->handleResult(0, '操作失败,原因:' . $ex->getMessage());
        }
    }

}
