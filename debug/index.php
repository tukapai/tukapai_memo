<?php
function download()
{
 $file_name = 'test1.txt';
 $file_path = dirname(__FILE__).'/dlfile/'.$file_name;
 // ダウンロードさせるファイル名
 header('Content-Type: application/force-download;');
 //header("Content-Type: application/octet-stream");
 header('Content-Length: '.filesize($file_path));
 header('Content-Disposition: attachment; filename="'.$file_name.'"');
 readfile($file_name);
 //ファイル削除
 exit();
}

?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>HTML 5 complete</title>
<!--[if IE]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

</head>
<body>

<form name="download1" target="target1" action="test/download1.php"></form>
<input type="button" value="ダウンロード" onclick="download();">
</body>
</html>
