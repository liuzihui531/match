<?php

/**
 * This is the model class for table "person".
 *
 * The followings are the available columns in table 'person':
 * @property integer $id
 * @property integer $group
 * @property integer $city
 * @property string $school
 * @property string $name
 * @property integer $birth
 * @property string $domicile
 * @property string $id_card
 * @property string $is_illegal
 * @property string $education
 * @property string $mobile
 * @property string $email
 * @property string $work
 * @property string $url
 * @property string $file
 * @property string $remarks
 * @property integer $created
 */
class Person extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'person';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('group, city, birth, id_card, created', 'required'),
			array('group, city, birth, created', 'numerical', 'integerOnly'=>true),
			array('school, is_illegal', 'length', 'max'=>128),
			array('name, id_card, education', 'length', 'max'=>32),
			array('domicile', 'length', 'max'=>256),
			array('mobile', 'length', 'max'=>11),
			array('email, work, url, file', 'length', 'max'=>64),
			array('remarks', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, group, city, school, name, birth, domicile, id_card, is_illegal, education, mobile, email, work, url, file, remarks, created', 'safe', 'on'=>'search'),
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
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'group' => '组别',
			'city' => '所属市县',
			'school' => '学校',
			'name' => '姓名',
			'birth' => '出生年月',
			'domicile' => '户籍地',
			'id_card' => '身份证号码',
			'is_illegal' => '有无违法违纪行为声明',
			'education' => '学历',
			'mobile' => '联系号码',
			'email' => '邮箱',
			'work' => '作品',
			'url' => '作品简介和链接地址',
			'file' => '文件',
			'remarks' => '备注',
			'created' => '报名时间',
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
		$criteria->compare('group',$this->group);
		$criteria->compare('city',$this->city);
		$criteria->compare('school',$this->school,true);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('birth',$this->birth);
		$criteria->compare('domicile',$this->domicile,true);
		$criteria->compare('id_card',$this->id_card,true);
		$criteria->compare('is_illegal',$this->is_illegal,true);
		$criteria->compare('education',$this->education,true);
		$criteria->compare('mobile',$this->mobile,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('work',$this->work,true);
		$criteria->compare('url',$this->url,true);
		$criteria->compare('file',$this->file,true);
		$criteria->compare('remarks',$this->remarks,true);
		$criteria->compare('created',$this->created);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Person the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
