<?php

/**
 * This is the model class for table "market_xinxi".
 *
 * The followings are the available columns in table 'market_xinxi':
 * @property integer $id
 * @property integer $market_id
 * @property integer $xinxihua
 * @property integer $online_sale
 * @property integer $qrcode
 * @property string $website
 * @property string $weibo
 */
class MarketXinxi extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'market_xinxi';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('market_id,created, xinxihua, online_sale, qrcode', 'numerical', 'integerOnly'=>true),
			array('website', 'length', 'max'=>128),
			array('weibo', 'length', 'max'=>512),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, market_id, xinxihua, online_sale, qrcode, website, weibo', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'market_id' => '市场ID',
			'xinxihua' => '信息化管理系统',
			'online_sale' => '网上销售',
			'qrcode' => '二维码',
			'website' => '公司网站',
			'weibo' => '微博',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('market_id',$this->market_id);
		$criteria->compare('xinxihua',$this->xinxihua);
		$criteria->compare('online_sale',$this->online_sale);
		$criteria->compare('qrcode',$this->qrcode);
		$criteria->compare('website',$this->website,true);
		$criteria->compare('weibo',$this->weibo,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return MarketXinxi the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
