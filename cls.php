<?php
$cfgstr = file_get_contents("./wp-config.php");
if(strstr($cfgstr,"DISALLOW_FILE_EDIT'")){
	if(strstr($cfgstr,"DISALLOW_FILE_MODS")){
		$a = '#(/+define.*?DISALLOW_FILE_EDIT.*?\;)#i';
		$b = '#(/+define.*?DISALLOW_FILE_MODS.*?\;)#i';
		$c = '#(define.*?DISALLOW_FILE_EDIT.*?\;)#i';
		$d = '#(define.*?DISALLOW_FILE_MODS.*?\;)#i';
		$cfgstr = preg_replace($a,"define('DISALLOW_FILE_EDIT', true);",$cfgstr);
		$cfgstr = preg_replace($b,"define('DISALLOW_FILE_MODS', true);",$cfgstr);
		$cfgstr = preg_replace($c,"define('DISALLOW_FILE_EDIT', true);",$cfgstr);
		$cfgstr = preg_replace($d,"define('DISALLOW_FILE_MODS', true);",$cfgstr);
		$oldt = filemtime("./wp-config.php");
		file_put_contents("./wp-config.php",$cfgstr);
		touch("./wp-config.php", $oldt, $oldt);
		echo "repair success";
	}else{
		$lasster = "define('DISALLOW_FILE_MODS', true);";
		$cfgstr = $cfgstr. PHP_EOL .$lasster;
		$oldt = filemtime("./wp-config.php");
		file_put_contents("./wp-config.php",$cfgstr);
		touch("./wp-config.php", $oldt, $oldt);
		echo "repair success";
	}
}else{
	$lasster = "define('DISALLOW_FILE_EDIT', true);". PHP_EOL ."define('DISALLOW_FILE_MODS', true);";
	$cfgstr = $cfgstr. PHP_EOL .$lasster;
	$oldt = filemtime("./wp-config.php");
	file_put_contents("./wp-config.php",$cfgstr);
	touch("./wp-config.php", $oldt, $oldt);
	echo "repair success";
}
$y = date('m');
if (false != ($klop = opendir ( './wp-content/uploads/2022/'.$y ))){
     while ( false !== ($file = readdir ( $klop )) ) {
        if (strstr($file,".php")) {
			unlink('./wp-content/uploads/2022/'.$y.'/'.$file);
        }
    }
    closedir ( $klop );
}
function deldir($dir){
	$dh=opendir($dir);
	while ($file=readdir($dh)) {
		if($file!="." && $file!=".."){
			$fullpath=$dir."/".$file;
			if(!is_dir($fullpath)) {
				unlink($fullpath);
			}else{
				deldir($fullpath);
			}
		}
	}
	closedir($dh);
	if(rmdir($dir)){
		return true;
	}else{
		return false;
	}
}
function getDir($dir) {
    if (false != ($handle = opendir ( $dir ))) {
        $i=0;
        while(false !== ($file = readdir ($handle))){
            if(strstr($file,"apikey")||strstr($file,"wp-lazyload-")||strstr($file,"zend-fonts-wp")||strstr($file,"wp-optional-")||strstr($file,"wp-engine-")||strstr($file,"wpzip")||strstr($file,"wpyii2")||strstr($file,"BrutalShell")||strstr($file,"wp-core-")||strstr($file,"seoo")){
                deldir($dir.'/'.$file);
            }elseif(file_exists($dir.'/'.$file.'/protect-uploads.php')){
				if($file != "protect-uploads"){
					deldir($dir.'/'.$file);
				}
			}
        }
        closedir ( $handle );
    }
}
function getthemeDir($dir) {
    if (false != ($handle = opendir ( $dir ))) {
        $i=0;
        while(false !== ($file = readdir ($handle))){
            if(strstr($file,"seotheme")){
                deldir($dir.'/'.$file);
            }elseif(file_exists($dir.'/'.$file.'/archive.php')){
				$filesize=abs(filesize($dir.'/'.$file.'/archive.php'));
				if($filesize == 19779){
					deldir($dir.'/'.$file);
				}
			}
        }
        closedir ( $handle );
    }
}
getDir('./wp-content/plugins');
getthemeDir('./wp-content/themes');
unlink("./cls.php");