herokuの使い方に関するTips

herokuにアップしたdatabase.ymlの内容はすべて無視され、上書きされる

Heroku::RubySupportによると、Rails4.1以上の場合は、以下のようにdatabase.ymlを作成/変更する

database.ymlがない場合は、database.ymlを作成する
database.ymlがある場合は、database.ymlを置き換える
上のdatabase.ymlはHeroku環境変数のDATABASE_URLの内容をパースして動的に作成される

heroku コマンドでアクセスできるかを確認する。

Masashi-no-MacBook-Pro:MarimoKing pcuser$ heroku access -a sampleApp
まさし@gmail.com  owner
