<?php

/**
 * This is the model class for table "team_registration".
 *
 * The followings are the available columns in table 'team_registration':
 * @property integer $id
 * @property integer $city
 * @property string $school
 * @property string $rep_name
 * @property integer $birth
 * @property string $id_card
 * @property string $is_illegal
 * @property string $education
 * @property string $mobile
 * @property string $email
 * @property string $enterprise
 * @property string $credit
 * @property string $platform
 * @property string $introduction
 * @property string $file_rep
 * @property integer $created
 * @property integer $user_id
 * @property string $people_info
 */
class TeamRegistration extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'team_registration';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('city, birth, id_card, mobile, created', 'required'),
			array('city, birth, created, user_id', 'numerical', 'integerOnly'=>true),
			array('school, is_illegal, enterprise, credit, platform, file_rep', 'length', 'max'=>128),
			array('rep_name', 'length', 'max'=>16),
			array('id_card, education', 'length', 'max'=>32),
			array('mobile', 'length', 'max'=>11),
			array('email', 'length', 'max'=>64),
			array('introduction, people_info', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, city, school, rep_name, birth, id_card, is_illegal, education, mobile, email, enterprise, credit, platform, introduction, file_rep, created, user_id, people_info', 'safe', 'on'=>'search'),
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
			'city' => '城市',
			'school' => '毕业学校',
			'rep_name' => '参赛代表姓名',
			'birth' => '出生年月',
			'id_card' => '身份证号',
			'is_illegal' => '有无违法违纪行为声明',
			'education' => '学历',
			'mobile' => '联系号码',
			'email' => '邮箱',
			'enterprise' => '项目或企业名称',
			'credit' => '工商注册上的信用代码',
			'platform' => '电商平台',
			'introduction' => '简介',
			'file_rep' => '附件',
			'created' => '报名时间',
			'user_id' => 'User',
			'people_info' => 'People Info',
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
		$criteria->compare('city',$this->city);
		$criteria->compare('school',$this->school,true);
		$criteria->compare('rep_name',$this->rep_name,true);
		$criteria->compare('birth',$this->birth);
		$criteria->compare('id_card',$this->id_card,true);
		$criteria->compare('is_illegal',$this->is_illegal,true);
		$criteria->compare('education',$this->education,true);
		$criteria->compare('mobile',$this->mobile,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('enterprise',$this->enterprise,true);
		$criteria->compare('credit',$this->credit,true);
		$criteria->compare('platform',$this->platform,true);
		$criteria->compare('introduction',$this->introduction,true);
		$criteria->compare('file_rep',$this->file_rep,true);
		$criteria->compare('created',$this->created);
		$criteria->compare('user_id',$this->user_id);
		$criteria->compare('people_info',$this->people_info,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return TeamRegistration the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
