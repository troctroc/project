<!-- Phan search cho Cloth -->

<?php 

?>
<div class="row-fluid">
	<div class="span3">
	    <div class="well sidebar-nav">
	        <ul class="nav nav-list">
	            <li class="nav-header">Chủng loại</li>
	            <li class="<?php if($cat==1) echo 'active'; ?>"><a href="<?php echo Yii::app()->request->baseUrl; ?>/cloth/index/cat/1/">WOVEN</a></li>
	            <li class="<?php if($cat==2) echo 'active'; ?>"><a href="<?php echo Yii::app()->request->baseUrl; ?>/cloth/index/cat/2/">KNIT</a></li>
	        </ul>
	    </div>
	    <!-- well -->
</div> 
	<div class="span9"> 
		<fieldset>
	    <legend>Tìm loại vải</legend>
	<?php
		$form = $this->beginWidget('bootstrap.widgets.TbActiveForm', array(
		   'layout' => TbHtml::FORM_LAYOUT_HORIZONTAL,
		)); ?> 
		<div class="control-group">
			<label class="control-label" for="xuatxu">Xuất xứ</label>
			<div class="controls">
				<?php
				$this->widget('yiiwheels.widgets.select2.WhSelect2', array(
					'asDropDownList' => false,
					'name' => 'xuatxu',

					'pluginOptions' => array(
						'data' => array(
							'results' => $xuat_xu,
							'text' => 'country_name',
							),							
						'multiple' => true,
						'placeholder' => 'chọn xuất xứ',
					    'width' => '40%',		
					    'tokenSeparators' => array(',', ' '),
					    'formatSelection' => 'js:xuatxu',
    					'formatResult' => 'js:xuatxu',

				)));
			?>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="ketcau">Kết cấu</label>
			<div class="controls">
				<?php
				$this->widget('yiiwheels.widgets.select2.WhSelect2', array(
					'asDropDownList' => false,
					'name' => 'ketcau',

					'pluginOptions' => array(
						'data' => array(
							'results' => $ketcau,
							'text' => 'frame_name',
							),							
						'multiple' => true,
						'placeholder' => 'chọn kết cấu',
					    'width' => '70%',		
					    'tokenSeparators' => array(',', ' '),
					    'formatSelection' => 'js:ketcau',
    					'formatResult' => 'js:ketcau',

				)));
			?>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="phannhanh">Phân nhánh</label>
			<div class="controls">
				<?php
				$this->widget('yiiwheels.widgets.select2.WhSelect2', array(
					'asDropDownList' => false,
					'name' => 'phannhanh',

					'pluginOptions' => array(
						'data' => array(
							'results' => $phannhanh,
							'text' => 'pn_name',
							),							
						'multiple' => false,
						'placeholder' => 'chọn phân nhánh',
					    'width' => '40%',		
					   // 'tokenSeparators' => array(',', ' '),
					    'formatSelection' => 'js:phannhanh',
    					'formatResult' => 'js:phannhanh',

				)));
			?>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="type">Loại sợi</label>
			<div class="controls">
				<?php
				$this->widget('yiiwheels.widgets.select2.WhSelect2', array(
					'asDropDownList' => false,
					'name' => 'soi',

					'pluginOptions' => array(
						'data' => array(
							'results' => $soi,
							'text' => 'type_name',
							),							
						'multiple' => false,
						'placeholder' => 'chọn loại sợi',
					    'width' => '40%',		
					  //  'tokenSeparators' => array(',', ' '),
					    'formatSelection' => 'js:soi',
    					'formatResult' => 'js:soi',

				)));
			?>
			</div>
		</div>
		</fieldset>
		<input id="count" type="hidden" value="1" />
		<?php echo TbHtml::formActions(array(
		    TbHtml::ajaxButton('Submit',Yii::app()->createUrl('/cloth/search'),
		    	array(
		    		'type'=>'POST',
		    		'data' => array(
		    			'cat' => $cat,
		    			'ketcau'=> 'js:$("#ketcau").val()',
		    			'phannhanh'=> 'js:$("#phannhanh").val()',
		    			'chungloai'=> 'js:$("#soi").val()',
		    			'xuatxu' =>'js:$("#xuatxu").val()',
		    			'count' => 'js:$("#count").val()',
		    			),
		    		'update'=>'#results',
		    		// 'async' => true,
		    		
		    		// 'beforeSend' => 'function(){
					   //    $("#results").addClass("loading");}',
				    'complete' => 'function(){
				    	var counts = 2;  
					    document.getElementById("count").value = counts;
					  }',
					),
		    	array(
		    		'id' => 'btn_submit',
		    		'color' => TbHtml::BUTTON_COLOR_PRIMARY)),
		   // TbHtml::resetButton('Reset'),
		));
		 
		$this->endWidget();
	?>
	</div>
</div> <!-- end row-fluid-->

<div id="loading">
</div>
<div class="row-fluid" id="results">

</div>

<?php //var_dump($ketcau); ?>
<?php
$cs=Yii::app()->clientScript;
$cs->registerScript('select2_index_script',"
 
function ketcau(item) { return item.frame_name; };
function phannhanh(item) { return item.pn_name; };
function soi(item) { return item.type_name; };
function xuatxu(item) { return item.country_name; }; 

",CClientScript::POS_HEAD);

?>