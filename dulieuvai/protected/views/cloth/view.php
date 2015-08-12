<?php

// echo $model->category->cat_name;

 // CVarDumper::dump($model->frames);

function loadframe($frames) {
    $f_name = array();
    foreach ($frames as $f) {
        $f_name[] = $f['frame_name'];
    }
    //var_dump($frames);
   return $frame_name = implode(', ', $f_name);
}

	if ($model->image == ''):
		$img_url = '/img/imageNotAvailable.jpg';
	else:
		$img_url = '/img/cloth_img/'.$model->image.'.jpg';
	endif
?>

<div class="row-fluid">	
	<div class="span11 result-body">
		<fieldset>
		    <legend>Chi tiết mẫu vải</legend>
			<div class="span11">				
				<p class="lead result-lead"><?php echo 'Code : '.($model->code); ?>
			</div>
			<div class="span2">
				<a href="<?php echo Yii::app()->request->baseUrl.$img_url; ?>" id="<?php echo 'img'?>"><img src="<?php echo Yii::app()->request->baseUrl.$img_url; ?>" class="img-polaroid" style="width: 188px"></a>
				<?php
					$this->widget("ext.magnific-popup.EMagnificPopup", array('target' => '#img'));
				?>

			</div>
			<div class="span3">
				<p>Code : <?php echo $model['code']; ?> </p>
				<p>Chủng loại: <?php echo $model->category->cat_name; ?></p>
				<p>Phân nhánh: <?php echo $model->phannhanh->pn_name; ?></p>
				<p>Xuất xứ: <?php echo $model->suppliers->country_name; ?></p>
				<p>Nhà cung cấp: <?php echo $model->suppliers->sup_name; ?></p>
				<p>Contact: <a href="mailto:<?php echo $model->suppliers->contact;?>"><?php echo $model->suppliers->contact;?></a></p>
				<p>Giá: <?php echo $model['price']; ?></p>			
			</div>
			<div class="span3">
				<p>Kết cấu : <?php echo loadframe($model->frames); ?></p>
				<p>Loại sợi: <?php echo $model->type->type_name; ?></p>
				<p>Details: <?php echo $model['details'];?>  </p>
				<p>Trọng lượng (g/m&sup2; ): <?php echo $model['volume'];?> g</p>
				<p>Khổ : <?php echo $model['size'];?> </p>
				<p>Note: <?php echo $model['note']; ?></p>
				<p>Ngày update: <?php echo $model['update']?></p>
			</div>
			<div class="span3">
				<p>Tồn kho: <?php echo $model['tonkho']?></p>
			</div>
		</fieldset>
	</div>	
</div>