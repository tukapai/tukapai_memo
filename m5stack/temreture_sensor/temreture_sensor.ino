

#include<M5Stack.h>

// #define FONT_7SEG

#define PIN 36
#define MULTISAMPLES 10


void setup() {
  M5.begin();
  M5.Speaker.write(0);
  Serial.begin(115200);

  pinMode(PIN, INPUT);

#ifdef FONT_7SEG
  M5.Lcd.setTextSize(2);
  M5.Lcd.setTextColor(RED, BLACK);
#else
  M5.Lcd.setTextSize(3);
#endif // FONT_7SEG
}

void loop() {
  // loop する内容は明日書く

}
