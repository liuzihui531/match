<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
Class IndexController extends IndexBaseController{
    public function actionIndex(){
    	$cate_id = 1;
    	$news = News::model()->findAllByAttributes(array('cate_id' => $cate_id));
        $this->render('index',array(
        	'news' => $news
        ));
    }
    
    public function actionAbout(){
       $this->render('about'); 
    }
}
