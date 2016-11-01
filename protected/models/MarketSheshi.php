<?php

/**
 * This is the model class for table "market_sheshi".
 *
 * The followings are the available columns in table 'market_sheshi':
 * @property integer $id
 * @property integer $market_id
 * @property integer $cangku
 * @property integer $tool
 * @property integer $lengcang
 * @property integer $jiance
 * @property integer $dapengsheshi
 * @property integer $shengchansheshi
 */
class MarketSheshi extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'market_sheshi';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('market_id,created, cangku, tool, lengcang, jiance, dapengsheshi, shengchansheshi', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, market_id, cangku, tool, lengcang, jiance, dapengsheshi, shengchansheshi', 'safe', 'on'=>'search'),
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
			'cangku' => '仓库',
			'tool' => '自有运输工具',
			'lengcang' => '冷藏库',
			'jiance' => '检测室',
			'dapengsheshi' => '大棚设施',
			'shengchansheshi' => '生产监控设施',
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
		$criteria->compare('cangku',$this->cangku);
		$criteria->compare('tool',$this->tool);
		$criteria->compare('lengcang',$this->lengcang);
		$criteria->compare('jiance',$this->jiance);
		$criteria->compare('dapengsheshi',$this->dapengsheshi);
		$criteria->compare('shengchansheshi',$this->shengchansheshi);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return MarketSheshi the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
