<?php

/**
 * This is the model class for table "market".
 *
 * The followings are the available columns in table 'market':
 * @property integer $id
 * @property string $product
 * @property string $introduce
 * @property string $outtime
 * @property string $s_standard
 * @property string $z_standard
 * @property string $charge
 * @property string $mobile
 * @property string $charge_second
 * @property string $mobile_second
 */
class Market extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'market';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('created', 'numerical', 'integerOnly'=>true),
			array('product, introduce, outtime, s_standard, z_standard, charge, mobile, charge_second, mobile_second', 'length', 'max'=>128),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, product, introduce, outtime, s_standard, z_standard, charge, mobile, charge_second, mobile_second', 'safe', 'on'=>'search'),
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
			'user' => array(self::BELONGS_TO,'User','user_id'),
			'products' => array(self::HAS_MANY,'MarketProduct','market_id'),
			'service' => array(self::HAS_ONE,'MarketService','market_id'),
			'sheshi' => array(self::HAS_ONE,'MarketSheshi','market_id'),
			'xinxi' => array(self::HAS_ONE,'MarketXinxi','market_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'product' => '选送产品名称',
			'introduce' => '产地介绍',
			'outtime' => '出产时间',
			's_standard' => '生产执行标准',
			'z_standard' => '质量认证标准',
			'charge' => '负责人',
			'mobile' => '联系电话',
			'charge_second' => '第二负责人',
			'mobile_second' => '联系电话',
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
		$criteria->compare('product',$this->product,true);
		$criteria->compare('introduce',$this->introduce,true);
		$criteria->compare('outtime',$this->outtime,true);
		$criteria->compare('s_standard',$this->s_standard,true);
		$criteria->compare('z_standard',$this->z_standard,true);
		$criteria->compare('charge',$this->charge,true);
		$criteria->compare('mobile',$this->mobile,true);
		$criteria->compare('charge_second',$this->charge_second,true);
		$criteria->compare('mobile_second',$this->mobile_second,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Market the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
