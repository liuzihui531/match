<?php

/**
 * This is the model class for table "apply".
 *
 * The followings are the available columns in table 'apply':
 * @property string $id
 * @property integer $area_id
 * @property string $school
 * @property string $represent_name
 * @property string $birthday
 * @property string $idcard
 * @property string $degree
 * @property string $mobile
 * @property string $email
 * @property string $wechat
 * @property string $project_name
 * @property string $project_build_time
 * @property string $business_platform
 * @property string $project_introduct
 * @property string $people_info
 * @property string $attach
 * @property integer $created
 * @property integer $user_id
 */
class Apply extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'apply';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('area_id, created, user_id', 'required'),
			array('area_id, created, user_id', 'numerical', 'integerOnly'=>true),
			array('school, represent_name, birthday, idcard, degree, mobile, email, wechat, project_name, project_build_time, business_platform', 'length', 'max'=>128),
			array('attach', 'length', 'max'=>256),
			array('project_introduct, people_info', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, area_id, school, represent_name, birthday, idcard, degree, mobile, email, wechat, project_name, project_build_time, business_platform, project_introduct, people_info, attach, created, user_id', 'safe', 'on'=>'search'),
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
			'area_id' => '所属县市',
			'school' => '所在院校',
			'represent_name' => '参赛代表姓名',
			'birthday' => '出生年月',
			'idcard' => '身份证号',
			'degree' => '学历和毕业院校',
			'mobile' => '联系电话',
			'email' => '邮箱',
			'wechat' => '微信',
			'project_name' => '项目名称',
			'project_build_time' => '项目形成时间',
			'business_platform' => '电商平台',
			'project_introduct' => '项目简介',
			'people_info' => '团队成员情况',
			'attach' => '附件',
			'created' => '时间',
			'user_id' => 'User',
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

		$criteria->compare('id',$this->id,true);
		$criteria->compare('area_id',$this->area_id);
		$criteria->compare('school',$this->school,true);
		$criteria->compare('represent_name',$this->represent_name,true);
		$criteria->compare('birthday',$this->birthday,true);
		$criteria->compare('idcard',$this->idcard,true);
		$criteria->compare('degree',$this->degree,true);
		$criteria->compare('mobile',$this->mobile,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('wechat',$this->wechat,true);
		$criteria->compare('project_name',$this->project_name,true);
		$criteria->compare('project_build_time',$this->project_build_time,true);
		$criteria->compare('business_platform',$this->business_platform,true);
		$criteria->compare('project_introduct',$this->project_introduct,true);
		$criteria->compare('people_info',$this->people_info,true);
		$criteria->compare('attach',$this->attach,true);
		$criteria->compare('created',$this->created);
		$criteria->compare('user_id',$this->user_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Apply the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
