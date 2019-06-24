require 'rqrcode'
require 'rqrcode_png'

# やりたいこと
# wifiのSSIDとかパスワードの組み合わせを入力したらQRコードを出力出来るようにしたい
#ソース https://qiita.com/zakuroishikuro/items/e415f4454dcf32cbede5

content = 'Hello World'
size    = '3'           # 1..40
level   = :h            # l, m, q, h

# QRコードの生成
qr  = RQRCode::QRCode.new(content, size: size, level: level)
png = qr.to_img
#リサイズして保存
png.resize(200, 200).save("#{content}_#{size}_#{level.to_s}.png")