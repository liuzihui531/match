<?php

/**
 * UserIdentity represents the data needed to identity a user.
 * It contains the authentication method that checks if the provided
 * data can identity the user.
 */
class UserIdentity extends CUserIdentity {

    /**
     * Authenticates a user.
     * The example implementation makes sure if the username and password
     * are both 'demo'.
     * In practical applications, this should be changed to authenticate
     * against some persistent user identity storage (e.g. database).
     * @return boolean whether authentication succeeds.
     */
    public $_id;
    
    private $user;

    public function authenticate() {
        $criteria = new CDbCriteria();
        $username = $this->username;
        $criteria->addCondition("email='{$username}' OR username='{$username}' OR mobile='{$username}'");
        $users = User::model()->find($criteria);
        if (!isset($users))
            $this->errorCode = self::ERROR_USERNAME_INVALID;
        elseif ($users->password !== Utils::password($this->password))
            $this->errorCode = self::ERROR_PASSWORD_INVALID;
        else {
            $this->user = $users;
            Yii::app()->session['user'] = $users;
            $this->_id = $users->id;
            $this->errorCode = self::ERROR_NONE;
        }
        return !$this->errorCode;
    }

    public function getId() {
        return $this->_id;
    }
}
