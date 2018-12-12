<?php
$file_name = 'test1.txt';
$file_path = dirname(__FILE__).'/'.$file_name;
// ダウンロードさせるファイル名
header('Content-Type: application/force-download;');
//header("Content-Type: application/octet-stream");
header('Content-Length: '.filesize($file_path));
header('Content-Disposition: attachment; filename="'.$file_name.'"');
readfile($file_name);
//ファイル削除
exit;
?>
