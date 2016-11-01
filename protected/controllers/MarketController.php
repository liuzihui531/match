<?php

class MarketController extends IndexBaseController{
    //put your code here
    public function actionIndex(){
        $this->render('index');
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
    			$marketModel = new Market();
    			$marketModel->attributes = $market;
    			$marketModel->created = time();
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
    		$this->success("操作成功");
    	}catch(Exception $e){
    		$transaction->rollback();
    		$this->error("操作失败：".$e->getMessage());
    	}
    }
}
