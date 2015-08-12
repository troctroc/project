<?php

/**
 * This is the model class for table "cloth".
 *
 * The followings are the available columns in table 'cloth':
 * @property integer $id
 * @property string $code
 * @property integer $volume
 * @property string $size
 * @property double $price
 * @property string $note
 * @property string $image
 * @property string $create
 * @property string $update
 * @property integer $Suppliers_id
 * @property integer $category_id
 * @property integer $Type_id
 * @property integer $Phannhanh_id
 * @property string $frame_id
 * @property string $details
 * @property string $tonkho
 *
 * The followings are the available model relations:
 * @property Phannhanh $phannhanh
 * @property Suppliers $suppliers
 * @property Category $category
 * @property Type $type
 * @property Frame[] $frames
 */
class Cloth extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Cloth the static model class
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
		return 'cloth';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('code, Suppliers_id, category_id, Type_id, Phannhanh_id', 'required'),
			array('volume, Suppliers_id, category_id, Type_id, Phannhanh_id', 'numerical', 'integerOnly'=>true),
			array('price', 'numerical'),
			array('code, note, image', 'length', 'max'=>45),
			array('size', 'length', 'max'=>11),
			array('frame_id', 'length', 'max'=>20),
			array('details', 'length', 'max'=>255),
			array('create, update, tonkho', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, code, volume, size, price, note, image, create, update, Suppliers_id, category_id, Type_id, Phannhanh_id, frame_id, details, tonkho', 'safe', 'on'=>'search'),
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
			'phannhanh' => array(self::BELONGS_TO, 'Phannhanh', 'Phannhanh_id'),
			'suppliers' => array(self::BELONGS_TO, 'Suppliers', 'Suppliers_id'),
			'category' => array(self::BELONGS_TO, 'Category', 'category_id'),
			'type' => array(self::BELONGS_TO, 'Type', 'Type_id'),
			// 'xuatxu' => array(self::BELONGS_TO, 'Xuatxu', array('id' => 'suppliers_id','through'=>'suppliers')),
			'frames' => array(self::MANY_MANY, 'Frame', 'frame_has_cloth(cloth_id, frame_id)'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'code' => 'Code',
			'volume' => 'Volume',
			'size' => 'Size',
			'price' => 'Price',
			'note' => 'Note',
			'image' => 'Image',
			'create' => 'Create',
			'update' => 'Update',
			'Suppliers_id' => 'Suppliers',
			'category_id' => 'Category',
			'Type_id' => 'Type',
			'Phannhanh_id' => 'Phannhanh',
			'frame_id' => 'Frame',
			'details' => 'Details',
			'tonkho' => 'Tonkho',
			'suppliers.sup_name' => 'test',
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
		$criteria->compare('code',$this->code,true);
		$criteria->compare('volume',$this->volume);
		$criteria->compare('size',$this->size,true);
		$criteria->compare('price',$this->price);
		$criteria->compare('note',$this->note,true);
		$criteria->compare('image',$this->image,true);
		$criteria->compare('create',$this->create,true);
		$criteria->compare('update',$this->update,true);
		$criteria->compare('Suppliers_id',$this->Suppliers_id);
		$criteria->compare('category_id',$this->category_id);
		$criteria->compare('Type_id',$this->Type_id);
		$criteria->compare('Phannhanh_id',$this->Phannhanh_id);
		$criteria->compare('frame_id',$this->frame_id,true);
		$criteria->compare('details',$this->details,true);
		$criteria->compare('tonkho',$this->tonkho,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}