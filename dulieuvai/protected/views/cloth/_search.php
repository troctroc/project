<?php
/* @var $this ClothController */
/* @var $model Cloth */
/* @var $form CActiveForm */
?>

<div class="wide form">

    <?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

                    <?php echo $form->textFieldControlGroup($model,'id',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'code',array('span'=>5,'maxlength'=>45)); ?>

                    <?php echo $form->textFieldControlGroup($model,'volume',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'size',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'price',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'note',array('span'=>5,'maxlength'=>45)); ?>

                    <?php echo $form->textFieldControlGroup($model,'image',array('span'=>5,'maxlength'=>45)); ?>

                    <?php echo $form->textFieldControlGroup($model,'create',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'update',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'Suppliers_id',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'category_id',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'Type_id',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'Phannhanh_id',array('span'=>5)); ?>

        <div class="form-actions">
        <?php echo TbHtml::submitButton('Search',  array('color' => TbHtml::BUTTON_COLOR_PRIMARY,));?>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- search-form -->