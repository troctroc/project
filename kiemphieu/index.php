<?php

defined('DS') or define('DS',DIRECTORY_SEPARATOR);

// change the following paths if necessary
//Server framework Path
// $yii=dirname(__FILE__).DS.'..'.DS.'framework'.DS .'yii.php';
$yii=dirname(__FILE__).DS.'..'.DS.'yii'.DS .'yii.php'; 
// $yii=dirname(__FILE__).'/../yii/yii.php';
$config=dirname(__FILE__).'/protected/config/main.php';

// remove the following lines when in production mode
$shortcuts=dirname(__FILE__).DS.'protected'.DS .'helpers'.DS .'shortcuts.php';
defined('YII_DEBUG') or define('YII_DEBUG',true);
// specify how many levels of call stack should be shown in each log message
defined('YII_TRACE_LEVEL') or define('YII_TRACE_LEVEL',3);

require_once($yii);
require($shortcuts);
Yii::createWebApplication($config)->run();
