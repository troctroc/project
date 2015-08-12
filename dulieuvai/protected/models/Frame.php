<?php

/**
 * This is the model class for table "frame".
 *
 * The followings are the available columns in table 'frame':
 * @property integer $id
 * @property string $frame_name
 * @property string $cat_id
 * @property integer $order
 *
 * The followings are the available model relations:
 * @property Cloth[] $cloths
 */
class Frame extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Frame the static model class
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
		return 'frame';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('frame_name', 'required'),
			array('order', 'numerical', 'integerOnly'=>true),
			array('frame_name', 'length', 'max'=>45),
			array('cat_id', 'length', 'max'=>255),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, frame_name, cat_id, order', 'safe', 'on'=>'search'),
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
			'cloths' => array(self::MANY_MANY, 'Cloth', 'frame_has_cloth(frame_id, cloth_id)'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'frame_name' => 'Frame Name',
			'cat_id' => 'Cat',
			'order' => 'Order',
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

		$criteria->compare('id',$this->id);
		$criteria->compare('frame_name',$this->frame_name,true);
		$criteria->compare('cat_id',$this->cat_id,true);
		$criteria->compare('order',$this->order);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}