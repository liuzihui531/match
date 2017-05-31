<?php

/**
 * This is the model class for table "user".
 *
 * The followings are the available columns in table 'user':
 * @property string $id
 * @property string $username
 * @property string $password
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
 */
class User extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'user';
	}

	public $password2;

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('mobile,password','required'),
			array('mobile', 'match', 'pattern' => '/^((\+86)|(86)|\(86\)|(\+86\)))?((1[3|4|5|7|8])\d{9}$)/', 'allowEmpty' => true, 'message' => '手机格式错误'),
			array('email', 'unique', 'message' => '邮箱已存在！'),
            array('mobile', 'unique', 'message' => '手机已存在！'),
            array('email', 'email','allowEmpty' => true, 'message' => '邮箱格式错误'),
            array('password2', 'compare', 'compareAttribute' => 'password', 'message' => '两次密码不一致'),
			array('area_id, created', 'required'),
			array('area_id, created, sign_num', 'numerical', 'integerOnly'=>true),
			array('username, school, represent_name, birthday, idcard, degree, mobile, email, wechat, project_name, project_build_time, business_platform', 'length', 'max'=>128),
			array('password', 'length', 'max'=>32),
			array('attach', 'length', 'max'=>256),
			array('project_introduct, people_info', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, username, password, area_id, school, represent_name, birthday, idcard, degree, mobile, email, wechat, project_name, project_build_time, business_platform, project_introduct, people_info, attach, created', 'safe', 'on'=>'search'),
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
			'username' => '用户名',
			'password' => '密码',
			'area_id' => '所属县市',
			'school' => '所在院校',
			'represent_name' => '参赛代表姓名',
			'birthday' => '出生年月',
			'idcard' => '身份证号',
			'degree' => '学历和毕业院校',
			'mobile' => '手机号码',
			'email' => '邮箱',
			'wechat' => '微信',
			'project_name' => '项目名称',
			'project_build_time' => '项目形成时间',
			'business_platform' => '电商平台',
			'project_introduct' => '项目简介',
			'people_info' => '团队成员情况',
			'attach' => '附件',
			'created' => '时间',
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
		$criteria->compare('username',$this->username,true);
		$criteria->compare('password',$this->password,true);
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

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return User the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
