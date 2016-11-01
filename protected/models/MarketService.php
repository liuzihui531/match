<?php

/**
 * This is the model class for table "market_service".
 *
 * The followings are the available columns in table 'market_service':
 * @property integer $id
 * @property integer $market_id
 * @property string $coach
 * @property string $rongzi
 * @property string $chanpinrenzheng
 * @property string $zhengticehua
 * @property string $shijianduan
 * @property string $beizhu
 */
class MarketService extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'market_service';
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
			array('coach, rongzi, chanpinrenzheng, zhengticehua, shijianduan', 'length', 'max'=>128),
			array('beizhu', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, market_id, coach, rongzi, chanpinrenzheng, zhengticehua, shijianduan, beizhu', 'safe', 'on'=>'search'),
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
			'coach' => '培训',
			'rongzi' => '融资',
			'chanpinrenzheng' => '是否需要实现产品认证',
			'zhengticehua' => '基地整体策划',
			'shijianduan' => '参加产品市集的时间段',
			'beizhu' => '备注',
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
		$criteria->compare('coach',$this->coach,true);
		$criteria->compare('rongzi',$this->rongzi,true);
		$criteria->compare('chanpinrenzheng',$this->chanpinrenzheng,true);
		$criteria->compare('zhengticehua',$this->zhengticehua,true);
		$criteria->compare('shijianduan',$this->shijianduan,true);
		$criteria->compare('beizhu',$this->beizhu,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return MarketService the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
