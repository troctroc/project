<?php
/* @var $this ClothController */
/* @var $model Cloth */
?>

<?php
$this->breadcrumbs=array(
	'Cloths'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Cloth', 'url'=>array('index')),
	array('label'=>'Create Cloth', 'url'=>array('create')),
	array('label'=>'View Cloth', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Cloth', 'url'=>array('admin')),
);
?>

    <h1>Update Cloth <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>