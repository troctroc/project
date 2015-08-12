<?php
/* @var $this PhannhanhController */
/* @var $model Phannhanh */
?>

<?php
$this->breadcrumbs=array(
	'Phannhanhs'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Phannhanh', 'url'=>array('index')),
	array('label'=>'Manage Phannhanh', 'url'=>array('admin')),
);
?>

<h1>Create Phannhanh</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>