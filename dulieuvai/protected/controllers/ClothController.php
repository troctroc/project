<?php

class ClothController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			// array('allow',  // allow all users to perform 'index' and 'view' actions
			// 	'actions'=>array('all'), //'index','search','view','setsession'
			// 	'users'=>array('*'),
			// ),
			// array('allow', // allow authenticated user to perform 'create' and 'update' actions
			// 	'actions'=>array('create','update'),
			// 	'users'=>array('@'),
			// ),
			// array('allow', // allow admin user to perform 'admin' and 'delete' actions
			// 	'actions'=>array('admin','delete'),
			// 	'users'=>array('admin'),
			// ),
			// array('deny',  // deny all users
			// 	'users'=>array('*'),
			// ),
		);
	}

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new Cloth;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if (isset($_POST['Cloth'])) {
			$model->attributes=$_POST['Cloth'];
			if ($model->save()) {
				$this->redirect(array('view','id'=>$model->id));
			}
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if (isset($_POST['Cloth'])) {
			$model->attributes=$_POST['Cloth'];
			if ($model->save()) {
				$this->redirect(array('view','id'=>$model->id));
			}
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		if (Yii::app()->request->isPostRequest) {
			// we only allow deletion via POST request
			$this->loadModel($id)->delete();

			// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
			if (!isset($_GET['ajax'])) {
				$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
			}
		} else {
			throw new CHttpException(400,'Invalid request. Please do not repeat this request again.');
		}
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$cat="";
		if (isset($_GET['cat'])) {
			$cat = $_GET['cat'];
		}

		$connection=Yii::app()->db;
		
		// lay du lieu ketcau
		$sql='SELECT * FROM frame WHERE cat_id LIKE "%'.$cat.'%"' ;
		$command=$connection->createCommand($sql);
		$ketcau=$command->queryAll(); 

		//lay du lieu phan nhanh
		$sql='SELECT * FROM phannhanh';
		$command=$connection->createCommand($sql);
		$phannhanh=$command->queryAll(); 
		
		//lay du lieu Type
		$sql='SELECT * FROM type';
		$command=$connection->createCommand($sql);
		$soi=$command->queryAll(); 

		// Lay du lieu xuat xu
		$sql='SELECT * FROM xuat_xu';
		$command=$connection->createCommand($sql);
		$xuat_xu=$command->queryAll(); 		

		$this->render('index',array(
			'cat' =>  $cat,
			'ketcau' => $ketcau,
			'phannhanh' => $phannhanh,
			'soi' => $soi,
			'xuat_xu' => $xuat_xu,
		
		));
	}

	public function actionSearch()
	{

		$criteria = new CDbCriteria();

		if (isset($_POST['count']) && $_POST['count'] != 1) {
			Yii::app()->clientScript->scriptMap = array(
                    'jquery.js'=>false,
                    'jquery.ba-bbq.js'=>false,
                    'jquery.yiigridview.js'=>false
                ); 
		}

		if (isset($_POST['cat'])) {
			Yii::app()->session->clear();
			Yii::app()->session['cat']=$_POST['cat'];
			$criteria->compare('t.category_id', $_POST['cat']);
		} elseif (isset($_GET['cat'])){
			$criteria->compare('t.category_id', $_GET['cat']);
		}

		if (isset($_POST['phannhanh']) && $_POST['phannhanh'] !='') {
			$criteria->compare('t.phannhanh_id', $_POST['phannhanh']);
			Yii::app()->session['pn']=$_POST['phannhanh'];
		}elseif (isset($_GET['phannhanh']) && $_GET['phannhanh'] !=''){
			$criteria->compare('t.phannhanh_id', $_GET['phannhanh']);
		}

		if (isset($_POST['chungloai']) && $_POST['chungloai'] !='') {
			$criteria->compare('t.type_id', $_POST['chungloai']);
			Yii::app()->session['chungloai']=$_POST['phannhanh'];
		}elseif (isset($_GET['chungloai']) && $_GET['chungloai'] !='') {
			$criteria->compare('t.type_id', $_GET['chungloai']);
		}

		if (isset($_POST['xuatxu']) && $_POST['xuatxu'] !='') {
			$xuatxu = explode(',',$_POST['xuatxu']);
			$criteria->addInCondition('suppliers.xuat_xu_id', $xuatxu);
			$criteria->with = array('suppliers');
			Yii::app()->session['xuatxu']=$_POST['xuatxu'];
		}elseif (isset($_GET['xuatxu']) && $_GET['xuatxu'] !='') {
			$xuatxu = explode(',',$_GET['xuatxu']);
			$criteria->addInCondition('suppliers.xuat_xu_id', $xuatxu);
			$criteria->with = array('suppliers');
		}

		if (isset($_POST['ketcau']) && $_POST['ketcau'] !='') {
			$criteria->addCondition('(t.frame_id = :ketcau OR t.frame_id LIKE :ketcau1 OR t.frame_id LIKE :ketcau2 OR t.frame_id LIKE :ketcau3)');
			$criteria->params[':ketcau'] = $_POST['ketcau'];
			$criteria->params[':ketcau1'] = '%,'.$_POST['ketcau'];
			$criteria->params[':ketcau2'] = $_POST['ketcau'].',%';
			$criteria->params[':ketcau3'] = '%,'.$_POST['ketcau'].',%';

			Yii::app()->session['ketcau']=$_POST['ketcau'];
		}elseif (isset($_GET['ketcau']) && $_GET['ketcau'] !='') {
			$criteria->addCondition('(t.frame_id = :ketcau OR t.frame_id LIKE :ketcau1 OR t.frame_id LIKE :ketcau2 OR t.frame_id LIKE :ketcau3)');
			$criteria->params[':ketcau'] = $_GET['ketcau'];
			$criteria->params[':ketcau1'] = '%,'.$_GET['ketcau'];
			$criteria->params[':ketcau2'] = $_GET['ketcau'].',%';
			$criteria->params[':ketcau3'] = '%,'.$_GET['ketcau'].',%';
		}
		
		 $results  = new CActiveDataProvider("Cloth", array(
		 	'criteria'=>$criteria,
		 	'sort'=>array(
		        'attributes'=>array(
		             'defaultOrder'=>'price DESC',
		             // 'price',
		             // 'suppliers.xuat_xu',
		        ),
		    ),
		    'pagination'=>array(
		        'pageSize'=>20,
		        // 'route'=>Yii::app()->createUrl('/search')
		    ),
		    )
		 );
		 // if(Yii::app()->request->isAjaxRequest){
		 // 	Yii::app()->clientScript->scriptMap = array(
   //                  'jquery.js'=>false,
   //                  'jquery.ba-bbq.js'=>false,
   //                  'jquery.yiigridview.js'=>false
   //              ); 
		 // }

		$this->renderPartial('resuls',array(
				'results' => $results,
				),
				false, true);
		Yii::app()->end();
	}

	/***
	Quản lý phần session cho filter lần 2
	*/
	public function actionsetsession()
	{
		if(Yii::app()->request->isAjaxRequest){	
			$session = Yii::app()->session;
			$id = $_POST['cloth_id'];
		    $session['cloth_id'] = $id;
	    }
		// $codecart[] = $_GET['code'];
		// Yii::app()->session['code'] = $codecart;
		 // if(Yii::app()->request->isAjaxRequest):
		 // endif;
	}

	/**
	*  Show detail clothes had chosse 
	**/
	public function actionClothDetails()
	{
		// $id[] = $_POST['cloth_id'];
		foreach (Yii::app()->session['cloth_id'] as $key => $c_id) {
			$c_detail = $this->loadModel($c_id);
			$cloth_detail[] = $c_detail;
		}
		$this->render('clothdetail', array(
			'detail' => $cloth_detail,));		
	}

	/**
	* Show items has attribute Tồn kho
	**/
	public function actionTonkho()
	{
	$detail = Cloth::model()->findAll(array(
    'condition' => 'tonkho!=""',
    // 'params' => array(':id'=>$id)
	));
	if ($detail===null) {
			throw new CHttpException(404,'The requested page does not exist.');
		}

	$this->render('clothdetail', array(
			'detail' => $detail,));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Cloth('search');
		$model->unsetAttributes();  // clear any default values
		if (isset($_GET['Cloth'])) {
			$model->attributes=$_GET['Cloth'];
		}

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Cloth the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Cloth::model()->findByPk($id);
		if ($model===null) {
			throw new CHttpException(404,'The requested page does not exist.');
		}
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Cloth $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if (isset($_POST['ajax']) && $_POST['ajax']==='cloth-grid') {
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}