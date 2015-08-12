<?php 
//var_dump($kc);


?>
<div class="row" id="resuls">
	<div class="span11 offset1">
		<fieldset>
		    <legend>Results</legend>
				<?php 
				if ($results != null){
					foreach ($results as $key => $value) {
						$ketcau = '';
						foreach ($kc as $key1 => $kc_1) {
						if ($kc_1['id'] == $value['id']){
							foreach ($kc_1['data'] as $key_2 => $kc_2) {
								foreach ($kc_2 as $key_3 => $kc_3) {
									$ketcau .= $kc_3['frame_name'].' - ' ;
								}
							}	
						}
					}
				?>
				<div class="row-fluid">	
					<div class="span12 result-body">
						<div class="span11">				
							<p class="lead result-lead"><?php echo 'Mẫu vải số '.($key+1); ?>
						</div>
						<div class="span2">
							<a href="<?php echo Yii::app()->request->baseUrl; ?>/img/imageNotAvailable.jpg" id="<?php echo 'img_'.$key?>"><img src="<?php echo Yii::app()->request->baseUrl; ?>/img/imageNotAvailable.jpg" class="img-polaroid" style="width: 188px"></a>
							<?php
								$this->widget("ext.magnific-popup.EMagnificPopup", array('target' => '#img_'.$key));
							?>

						</div>
						<div class="span3">
							<p>Code : <?php echo $value['code']; ?> </p>
							<p>Chủng loại: <?php echo $value['cat_name']; ?></p>
							<p>Phân nhánh: <?php echo $value['pn_name']; ?></p>
							<p>Xuất xứ: </p>
							<p>Nhà cung cấp: <?php echo $value['sup_name']; ?></p>
							<p>Giá: <?php echo $value['price']; ?></p>			
						</div>
						<div class="span3">
							<p>Kết cấu : <?php echo $ketcau; ?></p>
							<p>Loại sợi: <?php echo $value['type_name']; ?></p>
							<p>Details: </p>
							<p>Trọng lượng: <?php echo $value['volume']; ?></p>
							<p>Khổ: <?php echo $value['size']; ?></p>
							<p>Note: <?php echo $value['note']; ?></p>
							<p>Ngày update: </p>
						</div>
						<div class="span3">
							<p>Tồn kho:</p>
						</div>
					</div>	
				</div>
				<?php } 
					}
				else {echo '<p>Không tìm thấy mẫu vải, vui lòng thử lại </p>';}
				?>

		</fieldset>
	</div>
</div>

<a class="test-popup-link" href="http://farm9.staticflickr.com/8241/8589392310_7b6127e243_b.jpg">Open popup</a>
<?php
$this->widget("ext.magnific-popup.EMagnificPopup", array('target' => '.test-popup-link'));
?>

