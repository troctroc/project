<?php
/* @var $this PhannhanhController */
/* @var $dataProvider CActiveDataProvider */
?>

<?php
$this->breadcrumbs=array(
	'Phannhanhs',
);

$this->menu=array(
	array('label'=>'Create Phannhanh','url'=>array('create')),
	array('label'=>'Manage Phannhanh','url'=>array('admin')),
);
?>

<h1>Phannhanhs</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>