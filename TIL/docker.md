# docker tool boxのメモ

ホストOSからポートフォワーディングする場合はdefaultのVMを指定して起動をする。

DockerのVM上のポート設定とvirtual box上で設定するのポートフォワーディングがあるので混同するとうまく動かない

インターネットに接続せずにDockerイメージを持ってきたい場合

Dockerイメージを持っているOSでDockerコマンドを実行する
$ docker hoge -o hoge.tar

イメージを受け取りたいDocker上で以下を実行
$ docker load -i hoge.tar
