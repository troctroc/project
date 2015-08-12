<?php
/* @var $this ClothController */
/* @var $model Cloth */
?>

<?php
$this->breadcrumbs=array(
	'Cloths'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Cloth', 'url'=>array('index')),
	array('label'=>'Manage Cloth', 'url'=>array('admin')),
);
?>

<h1>Create Cloth</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>