VBAに関して調べたこととかを書く

## 新しいBookを作成して指定するシートをコピーする。

'新規ブックの作成とテンプレートのコピー
Workbooks.Add '新規にBook（Excelファイル）を作成
ThisWorkbook.Worksheets("テンプレート").Copy before:=ActiveWorkbook.Sheets(1) '新規ワークブックのsheet1の前にひな形をコピー
ActiveWorkbook.Sheets("Sheet1").Delete 'もし新規作成するときに生成されたシートが余計なら削除する。


## VBAの変数に関して

変更に強い変数になるようにするには以下のように宣言するのが良い
Dim 変数名 As データ型名
変数名 = 値

## 個人用マクロを作成する
マクロを特定のBookに保存したくない場合は個人用マクロに保存する。
https://a2d.webcraft.work/wp-content/uploads/2016/05/2016-05-15-3.png
PERSONAL.xlsb
編集したい場合は「alt+F11」でVBAを開くことが出来る。

## シート上の図形をリサイズする。

アクティブシート上で以下をする
ActiveSheet.Shapes.SelectAll
これで全選択が可能。

## 保護ビューを解除する

オプションを選択し、セキュリティーセンターの設定を開く

インターネットからダウンロードしてきたファイルの検査を有効にするとか書いてあるチェックを外す
