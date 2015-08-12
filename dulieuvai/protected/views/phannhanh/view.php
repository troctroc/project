<?php
/* @var $this PhannhanhController */
/* @var $model Phannhanh */
?>

<?php
$this->breadcrumbs=array(
	'Phannhanhs'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Phannhanh', 'url'=>array('index')),
	array('label'=>'Create Phannhanh', 'url'=>array('create')),
	array('label'=>'Update Phannhanh', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Phannhanh', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Phannhanh', 'url'=>array('admin')),
);
?>

<h1>View Phannhanh #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView',array(
    'htmlOptions' => array(
        'class' => 'table table-striped table-condensed table-hover',
    ),
    'data'=>$model,
    'attributes'=>array(
		'id',
		'pn_name',
		'order',
	),
)); ?>