<?php
/* @var $this FrameController */
/* @var $model Frame */
?>

<?php
$this->breadcrumbs=array(
	'Frames'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Frame', 'url'=>array('index')),
	array('label'=>'Create Frame', 'url'=>array('create')),
	array('label'=>'Update Frame', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Frame', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Frame', 'url'=>array('admin')),
);
?>

<h1>View Frame #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView',array(
    'htmlOptions' => array(
        'class' => 'table table-striped table-condensed table-hover',
    ),
    'data'=>$model,
    'attributes'=>array(
		'id',
		'frame_name',
		'order',
	),
)); ?>