<?php
/* @var $this FrameController */
/* @var $dataProvider CActiveDataProvider */
?>

<?php
$this->breadcrumbs=array(
	'Frames',
);

$this->menu=array(
	array('label'=>'Create Frame','url'=>array('create')),
	array('label'=>'Manage Frame','url'=>array('admin')),
);
?>

<h1>Frames</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>