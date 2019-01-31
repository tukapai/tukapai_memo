from m5stack import *
import units  # センサーユニットのライブラリーunitsをインポート
import machine
from machine import Pin
import time
import ambient  # Ambientライブラリーをインポート

dark = False

nmoves = 0  # 動いた回数

def cb(pin):  # PIRのコールバック関数
    val = pin.irqvalue()  # 割り込み時点のピンの値を取得
    if val > 0:  # 値が0を超えていたら
        print('callback(' + str(val) + ')')
        global nmoves
        nmoves += 1  # 動いた数を1増やす

class PIR():  # モーションセンサークラス
	def __init__(self, handler=None):
		self.pin = Pin(units.PORTB[1], Pin.IN, handler=handler, trigger=(Pin.IRQ_RISING | Pin.IRQ_FALLING), debounce=100)

	def read(self):
		return self.pin.value()

	def deinit(self):
	    self.pin.init(handler=None, trigger=Pin.IRQ_DISABLE)

def menu(a = None, b = None, c = None):  # ボタンの上にメニューを書く関数
    _, y = lcd.fontSize()
    y = 240 - y - 10
    if a != None:
        lcd.print(a, 40, y)
    if b != None:
        lcd.print(b, 135, y)
    if c != None:
        lcd.print(c, 225, y)

def dispTHP(t, h, p):
    _, y = lcd.fontSize()
    lcd.print("%.1f" % t + "'C", lcd.CENTER, 10)
    lcd.print("%.1f" % h + "%", lcd.CENTER, 20 + y)
    lcd.print("%.1f" % p + "hPa", lcd.CENTER, 30 + y * 2)

pir = PIR(handler=cb)  # callback関数を指定してPIRのインスタンスを作る
env = units.ENV()  # ENVセンサーのインスタンスを作る
am = ambient.Ambient(100, 'writeKey')  # Ambientのインスタンスを作る

print('start')
lcd.clear()  # LCDを消去する
lcd.setBrightness(0 if dark else 80)
lcd.font(lcd.FONT_Default)
menu('stop', '', 'disp on/off')  # ボタンAの上に'stop'を書く
lcd.font(lcd.FONT_DejaVu24)

while True:
    startT = time.time()
    end = False
    state = machine.disable_irq()
    n = nmoves
    nmoves = 0
    machine.enable_irq(state)
    temp = env.temperature()
    humid = env.humidity()
    press = env.pressure()
    r = am.send({'d1': temp, 'd2': humid, 'd3': press, 'd4': n})
    dispTHP(temp, humid, press)
    print(temp, humid, press, n, r.status_code)
    r.close()
    while (time.time() - startT) < 300.0:
        if buttonA.wasPressed():  # ボタンAが押されたら終わる
            end = True
            break
        if buttonC.wasPressed():
            dark = not dark
            lcd.setBrightness(0 if dark else 80)
        time.sleep(1)
    if end:
        break

pir.deinit()
lcd.clear()  # LCDを消去する
print('end')
