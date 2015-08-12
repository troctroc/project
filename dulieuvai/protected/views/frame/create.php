<?php
/* @var $this FrameController */
/* @var $model Frame */
?>

<?php
$this->breadcrumbs=array(
	'Frames'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Frame', 'url'=>array('index')),
	array('label'=>'Manage Frame', 'url'=>array('admin')),
);
?>

<h1>Create Frame</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>