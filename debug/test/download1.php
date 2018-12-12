<?php
$file_path = '../dlfile/;'
$file_name = 'test1.txt'
// ダウンロードさせるファイル名
header("Content-Type: application/octet-stream");
header("Content-Disposition: attachment; filename=$file_name");
readfile($file_path + $file_name;
//ファイル削除
exit;
?>
