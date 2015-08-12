<?php 
// CVarDumper::dump(Yii::app()->session['cloth_id']);
// CVarDumper::dump($detail);

function loadframe($frames) {
    $f_name = array();
    foreach ($frames as $f) {
        $f_name[] = $f['frame_name'];
    }
    //var_dump($frames);
   return $frame_name = implode(', ', $f_name);
}
?>
<div class="row" id="resuls">
	<div class="span11 offset1">
		<fieldset>
		    <legend>Tổng hợp chi tiết mẫu vải đã chọn.</legend>
				<?php 
				if ($detail != null){
					foreach ($detail as $key => $value) {
				?>
				<div class="row-fluid">	
					<div class="span12 result-body">
						<div class="span11">				
							<p class="lead result-lead"><?php echo 'Mẫu vải số '.($key+1).' - Code : '.$value->code; ?>
						</div>
						<div class="span2">
							<?php if ($value->image == ''):
								$img_url = '/img/imageNotAvailable.jpg';
							else:
								$img_url = '/img/cloth_img/'.$value->image.'.jpg';
							endif ?>

							<a href="<?php echo Yii::app()->request->baseUrl.$img_url; ?>" id="<?php echo 'img_'.$key?>"><img src="<?php echo Yii::app()->request->baseUrl.$img_url; ?>" class="img-polaroid" style="width: 188px"></a>
							<?php
								$this->widget("ext.magnific-popup.EMagnificPopup", array('target' => '#img_'.$key));
							?>

						</div>
						<div class="span3">
							<p>Code : <?php echo $value->code; ?> </p>
							<p>Chủng loại: <?php echo $value->category->cat_name; ?></p>
							<p>Phân nhánh: <?php echo $value->phannhanh->pn_name; ?></p>
							<p>Xuất xứ: <?php echo $value->suppliers->country_name; ?></p>
							<p>Nhà cung cấp: <?php echo $value->suppliers->sup_name; ?></p>
							<p>Contact: <a href="mailto:<?php echo $value->suppliers->contact;?>"><?php echo $value->suppliers->contact;?></a></p>
							<p>Giá: <?php echo $value->price; ?></p>			
						</div>
						<div class="span3">
							<p>Kết cấu : <?php echo loadframe($value->frames); ?></p>
							<p>Loại sợi: <?php echo $value->type->type_name; ?></p>
							<p>Details: <?php echo $value->details;?>  </p>
							<p>Trọng lượng (g/m&sup2; ): <?php echo $value['volume'];?> g</p>
							<p>Khổ : <?php echo $value->size;?> </p>
							<p>Note: <?php echo $value->note; ?></p>
							<p>Ngày update: <?php echo $value->update; ?></p>
						</div>
						<div class="span3">
							<p>Tồn kho: <?php echo $value->tonkho; ?></p>
						</div>
									</div>	
								</div>
				<?php } 
					}
				else {echo '<p>Không tìm thấy mẫu vải, vui lòng chọn lại</p>';}
				?>
		</fieldset>
	</div>
</div>

