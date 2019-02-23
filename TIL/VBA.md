VBAに関して調べたこととかを書く

## 新しいBookを作成して指定するシートをコピーする。

    '新規ブックの作成とテンプレートのコピー
    Workbooks.Add '新規にBook（Excelファイル）を作成
    ThisWorkbook.Worksheets("テンプレート").Copy before:=ActiveWorkbook.Sheets(1) '新規ワークブックのsheet1の前にひな形をコピー
    ActiveWorkbook.Sheets("Sheet1").Delete 'もし新規作成するときに生成されたシートが余計なら削除する。
