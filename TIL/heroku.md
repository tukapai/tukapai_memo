herokuの使い方に関するTips

herokuにアップしたdatabase.ymlの内容はすべて無視され、上書きされる

Heroku::RubySupportによると、Rails4.1以上の場合は、以下のようにdatabase.ymlを作成/変更する

database.ymlがない場合は、database.ymlを作成する
database.ymlがある場合は、database.ymlを置き換える
上のdatabase.ymlはHeroku環境変数のDATABASE_URLの内容をパースして動的に作成される

heroku コマンドでアクセスできるかを確認する。

```
Masashi-no-MacBook-Pro:MarimoKing pcuser$ heroku access -a sampleApp
まさし@gmail.com  owner
```


```
Masashi-no-MacBook-Pro:MarimoKing pcuser$ heroku run rails about -a marimoking
Running rails about on ⬢ marimoking... up, run.7558 (Hobby)
About your application's environment
Rails version             5.2.3
Ruby version              2.6.0-p0 (x86_64-linux)
RubyGems version          3.0.1
Rack version              2.0.7
JavaScript Runtime        Node.js (V8)
Middleware                Rack::Sendfile, ActionDispatch::Static, ActionDispatch::Executor, ActiveSupport::Cache::Strategy::LocalCache::Middleware, Rack::Runtime, Rack::MethodOverride, ActionDispatch::RequestId, ActionDispatch::RemoteIp, Rails::Rack::Logger, ActionDispatch::ShowExceptions,ActionDispatch::DebugExceptions, ActionDispatch::Callbacks, ActionDispatch::Cookies, ActionDispatch::Session::CookieStore, ActionDispatch::Flash, ActionDispatch::ContentSecurityPolicy::Middleware, Rack::Head, Rack::ConditionalGet, Rack::ETag, Rack::TempfileReaper
Application root          /app
Environment               production
Database adapter          postgresql
Database schema version   0

```
