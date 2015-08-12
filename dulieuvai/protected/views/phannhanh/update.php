<?php
/* @var $this PhannhanhController */
/* @var $model Phannhanh */
?>

<?php
$this->breadcrumbs=array(
	'Phannhanhs'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Phannhanh', 'url'=>array('index')),
	array('label'=>'Create Phannhanh', 'url'=>array('create')),
	array('label'=>'View Phannhanh', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Phannhanh', 'url'=>array('admin')),
);
?>

    <h1>Update Phannhanh <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>