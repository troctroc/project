<?php 



$results->
getPagination()->params = array(
	"cat" => Yii::app()->session['cat'],
	"phannhanh" =>Yii::app()->session['pn'],
	"chungloai" =>Yii::app()->session['chungloai'],
	"ketcau" =>Yii::app()->session['ketcau'],
	"xuatxu" =>Yii::app()->session['xuatxu'],
	);

?>
<div class="row" id="results_a">
	<div class="span11 offset1">
		<fieldset>
			<legend>Results</legend>
			<?php $this->
			widget('bootstrap.widgets.TbGridView', array(
		    	   'id' => 'cloth-grid',
				   'type' => TbHtml::GRID_TYPE_HOVER,
				   'dataProvider' => $results,
				   'selectableRows' => 20,
				   // 'ajaxUpdate' => 'cart',
				   //'enableHistory' => true,
				   'emptyText'=>(!empty($data->id)) ? 'No results found.' : 'Không tìm thấy dữ liệu, vui lòng chọn lại điều kiện.',   
				   'template' => "{summary}{items}{pager}",
				   // 'ajaxUrl' => $this->createUrl(''),
				   'columns' => array(
				   		// array(
				     //        'name' => 'id',
				     //        'header' => 'id',
				     //    ),
				   		array(
					        'name'=>'',             
					       	'class'=>'CCheckBoxColumn',
					        'htmlOptions'=>array('width'=>5),
       					 ),
				        array(
				            'name' => 'category.cat_name',
				            'header' => 'Chủng loại',
				        ),
				        array(
				            'name' => 'code',
				            'header' => 'code',
				        ),
				        array(
				            'name' => 'type.type_name',
				            'header' => 'Loại sợi',
				        ),
				        array(
				            'name' => 'phannhanh.pn_name',
				            'header' => 'Phân nhánh',
				        ), 
				        array(
				            // 'name' => 'frame_id',
				            'header' => 'Kết cấu',
				            'value'=>function($data) {
				                    $f_name = array();
				                    foreach ($data->frames as $f) {
				                        $f_name[] = $f['frame_name'];
				                    }
				                    // var_dump($f_name);
				                   return implode(', ', $f_name);
				                }
				       		 ),

				        array(
				            'name' => 'suppliers.sup_name',
				            'header' => 'Nhà cung cấp',
				        ),
				        array(
				            'name' => 'suppliers.country_name',
				            'header' => 'Xuất xứ',
				            // 'value' => $results->xuat_xu->country_name,
				        ), 
				        array(
				            'name' => 'price',
				            'header' => 'Giá',
				        ),
				        array(
				            'name' => 'update',
				            'header' => 'Update',
				        ),
				        array(
							'class'=>'bootstrap.widgets.TbButtonColumn',
							'template'=>'{view}',
							'buttons'=>array(
								'view' => array(
									// 'click' => 'function(){alert("Going down!");}',
									
									'options'=>array("target"=>"_blank"),
									),
								// 'add' =>array(
								// 	'label' =>'add',
								// 	'imageUrl'=>false,
								// 	'icon' => 'plus',
								// 	'url' =>'Yii::app()->createUrl("/cloth/setsession/", array("cloth_id"=>$data->id))',

								// 	'options'=>array(  
								// 		'id' => 'send_link_'.uniqid(),
								// 	    'ajax'=>array(
								// 	        'url'=>'js:$(this).attr("href")',
								// 	        'type'=>'post',
								// 	        // 'cache' => false,
        //          							//'dataType' => "html",
								// 	        'async' => false,
								// 	        'data' => array('test' =>'js:$.fn.yiiGridView.getSelection("cloth-grid")'),
									        //'success' => 'function(){ 
									        // 	$row = $.fn.yiiGridView.getRow("cloth-grid",1);
									        	
									        // 	$rows.addClass("selected");
									        // }',
									        // $rows = $("#cloth-grid").find(".items > tbody > tr").children("tbody").children();
									        // 	alert("Delete completed successfuly"); 
									        // 	$.fn.yiiGridView.update("cloth-grid"); 
									        // }',
									        // 'update'=>'#cart',
									     //      ),
								     	// ),
										// 'click' => 'function(){
										// 	alert("Going down!");
										// 	}',
									// ),
								),
						),
					    ),
					
				)); ?>
		</fieldset>
	</div>

	<div class="span6 offset5">
		<div class="control">
			<?php 
		echo TbHtml::ajaxButton('Add',Yii::app()->
			createUrl('/cloth/setsession/'),
				array(	
					'type'=>'post',
					'data' => array(
						'cloth_id' => 'js:$.fn.yiiGridView.getSelection("cloth-grid")',
						),
					),	
				array(
					'color' => TbHtml::BUTTON_COLOR_PRIMARY,
					)
				);
		echo '    ';
		echo TbHtml::linkbutton('View',array(
			'color' => TbHtml::BUTTON_COLOR_PRIMARY,
		    'url' => Yii::app()->createUrl('/cloth/ClothDetails/'),
		    'target' => '_blank',		    	)
		    ); 
		?>
		</div>
	</div>
	<?php 
// CVarDumper::dump($results-data[0]['id']);
// CVarDumper::dump(Yii::app()->session['item']);
// var_dump($results)
// echo Yii::app()->session['cat'];
// Yii::app()->log->processLogs(null)

?>