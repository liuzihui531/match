<?php

class MarketController extends UcBaseController{
    //put your code here
    public function actionIndex(){
        $id = Yii::app()->request->getParam("id",0);
        $criteria = new CDbCriteria();
        if($id){
            $criteria->compare("id",$id);
        }
        $criteria->compare("user_id",Yii::app()->user->id);
        $model = Market::model()->find($criteria);
        $this->render('index',array('model'=>$model));
    }

    public function actionSave(){
    	$market = Yii::app()->request->getParam("market",array());
    	$market_product = Yii::app()->request->getParam("market_product",array());
    	$market_sheshi = Yii::app()->request->getParam("market_sheshi",array());
    	$market_xinxi = Yii::app()->request->getParam("market_xinxi",array());
    	$market_service = Yii::app()->request->getParam("market_service",array());
    	$transaction = Yii::app()->db->beginTransaction();
    	try{
    		if($market){                
                $id = Yii::app()->request->getParam("id",0);
                if($id){
                    $marketModel = Market::model()->findByPk($id);
                    MarketProduct::model()->deleteAllByAttributes(array("market_id"=>$marketModel->id));
                    MarketSheshi::model()->deleteAllByAttributes(array("market_id"=>$marketModel->id));
                    MarketXinxi::model()->deleteAllByAttributes(array("market_id"=>$marketModel->id));
                    MarketService::model()->deleteAllByAttributes(array("market_id"=>$marketModel->id));
                }else{
                    $marketModel = new Market();
                    $marketModel->created = time();
                }
    			$marketModel->attributes = $market;
                $marketModel->user_id = Yii::app()->user->id;
    			$marketModel->save();
    			if($marketModel->hasErrors()){
    				throw new Exception(Utils::getFirstError($marketModel->errors));    				
    			}
    			if($market_product){
    				foreach ($market_product as $key => $value) {
    					if($value){
    						$productModel = new MarketProduct();
    						$productModel->attributes = $value;
    						$productModel->created = time();
    						$productModel->market_id = $marketModel->id;
    						$productModel->save();
    						if($productModel->hasErrors()){
			    				throw new Exception(Utils::getFirstError($productModel->errors));    				
			    			}
    					}
    				}
    			}
    			if($market_sheshi){
    				$sheshiModel = new MarketSheshi();
    				$sheshiModel->attributes = $market_sheshi;
    				$sheshiModel->market_id = $marketModel->id;
    				$sheshiModel->created = time();
    				$sheshiModel->save();
    				if($sheshiModel->hasErrors()){
	    				throw new Exception(Utils::getFirstError($sheshiModel->errors));    				
	    			}
    			}
    			if($market_xinxi){
    				$xinxiModel = new MarketXinxi();
    				$xinxiModel->attributes = $market_xinxi;
    				$xinxiModel->market_id = $marketModel->id;
    				$xinxiModel->created = time();
    				$xinxiModel->save();
    				if($xinxiModel->hasErrors()){
	    				throw new Exception(Utils::getFirstError($xinxiModel->errors));    				
	    			}
    			}
    			if($market_service){
					$serviceModel = new MarketService();
    				$serviceModel->attributes = $market_service;
    				$serviceModel->rongzi = json_encode($serviceModel->rongzi);
    				$serviceModel->coach = json_encode($serviceModel->coach);
    				$serviceModel->market_id = $marketModel->id;
    				$serviceModel->created = time();
    				$serviceModel->save();
    				if($serviceModel->hasErrors()){
	    				throw new Exception(Utils::getFirstError($serviceModel->errors));    				
	    			}
    			}
    		}
    		$transaction->commit();
    		$this->success("操作成功",$this->createUrl("/uc"));
    	}catch(Exception $e){
    		$transaction->rollback();
    		$this->error("操作失败：".$e->getMessage());
    	}
    }
}
