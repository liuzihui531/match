<?php

class RegController extends UcBaseController {

    //put your code here
    public function actionEnterprise() {
        $area = ThisTools::getRegion();
        $platform = ThisTools::getPlatform();
        $sex = ThisTools::getSex();
        $this->render('enterprise', array('area' => $area, 'platform' => $platform, 'sex' => $sex));
    }

    public function actionSave() {
        $model = new TeamRegistration();
        
        $transaction = Yii::app()->db->beginTransaction();
        try {
            $posts = Yii::app()->request->getPost('rep');
            $model->attributes = $posts;
            if(isset($_FILES) && isset($_FILES['file_rep'])){
                $upload = new Upload();
                $upload->uploads("file_rep",'file');
            }
            
            $model->birth = strtotime($posts['birth']);
            $model->created = time();
            $model->save();
            if ($model->hasErrors()) {
                throw new Exception(Utils::getFirstError($model->errors));
            }
            $id = $model->id;
            if ($person1 = Yii::app()->request->getPost('person1')) {
                $team_model = new Team();
                $team_model->attributes = $person1;
                $team_model->tid = $id;
                $team_model->save();
                if ($team_model->hasErrors()) {
                    throw new Exception(Utils::getFirstError($team_model->errors));
                }
            }
            if ($person2 = Yii::app()->request->getPost('person2')) {
                $team_model = new Team();
                $team_model->attributes = $person2;
                $team_model->tid = $id;
                $team_model->save();
                if ($team_model->hasErrors()) {
                    throw new Exception(Utils::getFirstError($team_model->errors));
                }
            }
            if ($person3 = Yii::app()->request->getPost('person3')) {
                $team_model = new Team();
                $team_model->attributes = $person1;
                $team_model->tid = $id;
                $team_model->save();
                if ($team_model->hasErrors()) {
                    throw new Exception(Utils::getFirstError($team_model->errors));
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
