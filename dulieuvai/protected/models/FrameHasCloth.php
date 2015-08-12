<?php

/**
 * This is the model class for table "frame_has_cloth".
 *
 * The followings are the available columns in table 'frame_has_cloth':
 * @property integer $frame_id
 * @property integer $cloth_id
 */
class FrameHasCloth extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return FrameHasCloth the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'frame_has_cloth';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('frame_id, cloth_id', 'required'),
			array('frame_id, cloth_id', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('frame_id, cloth_id', 'safe', 'on'=>'search'),
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
			// 'frame' => array(self::BELONGS_TO, 'Frame', 'frame_id'),
            // 'cloth' => array(self::BELONGS_TO, 'Cloth', 'cloth_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'frame_id' => 'Frame',
			'cloth_id' => 'Cloth',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('frame_id',$this->frame_id);
		$criteria->compare('cloth_id',$this->cloth_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}