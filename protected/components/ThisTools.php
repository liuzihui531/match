<?php

class ThisTools {

    public static function getRegion($area_code = "") {
        $area = self::setRegion();
        if($area_code){
            if(key_exists($area_code, $area))
                    return $area["$area_code"];
        }
        return $area;
    }

    public static function setRegion() {
        $area = array("1" => "海口", "2" => "三亚", "3" => "儋州", "4" => "文昌", "5" => "澄迈", "6" => "屯昌", "7" => "定安", "8" => "琼海", "9" => "琼中", "10" => "陵水", "11" => "白沙", "12" => "保亭", "13" => "乐东", "14" => "临高", "15" => "昌江", "16" => "万宁", "17" => "东方", "18" => "五指山", "19" => "三沙",);
        return $area;
    }
    
    public static function getPlatform($plat_code = ""){
        $return = array('1'=>"淘宝",'2'=>'天猫','3'=>'京东','4'=>'微信');
        if($plat_code){
            if(key_exists($plat_code, $return))
                return $return[$plat_code];
        }
        return $return;
    }
    
    public static function getSex($sex = ""){
        $return = array('0'=>"男",'1'=>'女');
        if($sex){
            if(key_exists($sex, $return))
                return $return[$sex];
        }
        return $return;
    }
    
    public static function getGroup($group = ""){
        $return = array('0'=>"设计",'1'=>'策划');
        if($group){
            if(key_exists($group, $return))
                return $return[$group];
        }
        return $return;
    }
    
}
