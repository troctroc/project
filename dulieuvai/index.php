<?php

defined('BACKEND') or define('BACKEND',false);
defined('LOCAL_DOMAIN') or define('LOCAL_DOMAIN','yiiapp2.dev');
define('CURRENT_ACTIVE_DOMAIN', $_SERVER['HTTP_HOST']);
defined('APP_DEPLOYED') or define('APP_DEPLOYED',!(CURRENT_ACTIVE_DOMAIN == LOCAL_DOMAIN));
defined('DS') or define('DS',DIRECTORY_SEPARATOR);


//Local Framework Path
$yii=(!APP_DEPLOYED)?dirname(__FILE__).DS.'..'.DS.'framework'.DS .'yii.php':
//Server framework Path
// dirname(__FILE__).DS.'..'.DS.'framework'.DS .'yii.php';
dirname(__FILE__).DS.'..'.DS.'yii'.DS .'yii.php'; 

$config=dirname(__FILE__).'/protected/config/main.php';
$shortcuts=dirname(__FILE__).DS.'protected'.DS .'helpers'.DS .'shortcuts.php';
$utils=dirname(__FILE__).DS.'protected'.DS .'helpers'.DS .'utils.php';

// remove the following lines when in production mode
defined('YII_DEBUG') or define('YII_DEBUG',true);
// specify how many levels of call stack should be shown in each log message
defined('YII_TRACE_LEVEL') or define('YII_TRACE_LEVEL',3);

require($shortcuts);
require($utils);
require_once($yii);

Yii::createWebApplication($config)->run();
