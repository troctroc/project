<?php
/* @var $this FrameController */
/* @var $model Frame */
?>

<?php
$this->breadcrumbs=array(
	'Frames'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Frame', 'url'=>array('index')),
	array('label'=>'Create Frame', 'url'=>array('create')),
	array('label'=>'View Frame', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Frame', 'url'=>array('admin')),
);
?>

    <h1>Update Frame <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>