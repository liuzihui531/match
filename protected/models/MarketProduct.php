<?php

/**
 * This is the model class for table "market_product".
 *
 * The followings are the available columns in table 'market_product':
 * @property integer $id
 * @property integer $market_id
 * @property string $name
 * @property string $range
 * @property string $num_totle
 * @property string $type
 * @property string $box_spe
 * @property string $product_spe
 * @property string $period
 * @property string $pro_price
 * @property string $addvise_price
 */
class MarketProduct extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'market_product';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('market_id,created', 'numerical', 'integerOnly'=>true),
			array('name, range, num_totle, type, box_spe, product_spe, period, pro_price, addvise_price', 'length', 'max'=>128),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, market_id, name, range, num_totle, type, box_spe, product_spe, period, pro_price, addvise_price', 'safe', 'on'=>'search'),
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
			'name' => '产品名称',
			'range' => '种植面积或养殖数量',
			'num_totle' => '年产量',
			'type' => '种植/养殖方式',
			'box_spe' => '包装箱规格',
			'product_spe' => '产品规格',
			'period' => '供货周期',
			'pro_price' => '供货价格',
			'addvise_price' => '建议销售价',
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
		$criteria->compare('name',$this->name,true);
		$criteria->compare('range',$this->range,true);
		$criteria->compare('num_totle',$this->num_totle,true);
		$criteria->compare('type',$this->type,true);
		$criteria->compare('box_spe',$this->box_spe,true);
		$criteria->compare('product_spe',$this->product_spe,true);
		$criteria->compare('period',$this->period,true);
		$criteria->compare('pro_price',$this->pro_price,true);
		$criteria->compare('addvise_price',$this->addvise_price,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return MarketProduct the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
