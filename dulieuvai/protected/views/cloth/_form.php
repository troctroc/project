<?php
/* @var $this ClothController */
/* @var $model Cloth */
/* @var $form TbActiveForm */
?>

<div class="form">

    <?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm', array(
	'id'=>'cloth-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

    <p class="help-block">Fields with <span class="required">*</span> are required.</p>

    <?php echo $form->errorSummary($model); ?>

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
        <?php echo TbHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array(
		    'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
		    'size'=>TbHtml::BUTTON_SIZE_LARGE,
		)); ?>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- form -->