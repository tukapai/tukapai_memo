<?php

// ダウンロードさせるファイル名
$tmp_file = $file_name;
// ヘッダ
header("Content-Type: application/octet-stream");
// ダイアログボックスに表示するファイル名
header("Content-Disposition: attachment; filename=$tmp_file");
// 対象ファイルを出力する。
readfile($tmp_file);

//ファイル削除
exit;
?>
