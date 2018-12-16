# Example: Taiwanese-flavored Lamb Hot Pot Recipe
<img src=IMG_20181213_150933_HDR.jpg alt='input photo' title='input photo' style='width: 7.5cm' />

This is a Taiwanese-flavored Lamb Hot Pot Recipe, captured by RedMi Note 3's camera and thus have wrong DPI setting(72).

## What you know
* The paper's width is 7.5cm, height is 10.5cm, measured by a regular ruler
* The pre-processed(cropped) photo's dimension is 2916x4022px
* The real DPI is currently unknown

## The calculation
The paper's dimension in inches is approx. 2.95x4.13 inches(divide by 2.54).  
The real DPI is approx. 988x974 DPI(horizontal/vertical pixels divided by width/height measurements in inches).

## The actual command call

    $ image-density-fixer 7.5 10.5 IMG_20181213_150933_HDR.jpg

You can also `--dry-run`, to see the actual calculation:

    $ image-density-fixer --dry-run 7.5 10.5 IMG_20181213_150933_HDR.jpg
    The resulting horizontal dpi: 987
    The resulting vertical dpi: 972
    The resulting mogrify command:
        mogrify -density 987x972 IMG_20181213_150933_HDR.jpg

## Profit
Before fixing density:

    $ tesseract -l HanT_vert examples/Taiwanese-flavored\ Lamb\ Hot\ Pot\ Recipe/IMG_20181213_150933_HDR.jpg result

yields:

    電 鍋 煮 法 太 加 和夫 家 2 商 和 | 半 的 高 漲
    不 洲 酒 施 适 銀 內 , 完成 估 , 移 至 瓦斯 爐 將
    另 一 半 高 湯加 入 痢 大 約 記 分 即 可 。
    (B) 電 鍋 S3~4 杯 水 跳 起 完成 後 , 保 溫 級 2~S
    小 時 左右 , 要 吃 之 前 換 斯 爐 痢 熟 , 再 加 上
    自 己 要 吃 的 配料 面 可 。
    
    火 旬 剖 法 : 羊 肉 和 高 湯 和 米酒 放 入 負 內 , 坏 涼 鞭 上 編著
    後, 轉 小 火 約 筷 ~ 鋪 分 鐘 。 女 要 蓋 負 蓋
    
    火鍋 痢 法 大 約 刀 ~ 旋 分 鐘 , 間 燒鍋 痢 法 大 約 認 小 時 。
    
    R 肉 糊 佃 人 喜好 , , 如 需 再 熟 爛 可 瓦斯 爐 再 痢 大 約
    從 半 吸 可 加 自 己 喜歡 的 食材 , 如 : 確 萄 青菜 革 豆 皮 九 子 若 類 。
    
    台 灣 味 羊 爐 肉
    
    =

After fixing density:

    羊肉 爐 熟 飲 . 一 斤 肉 加 1~2 瓶 米酒 / 半 酒水 誤 可 。
    
    YN 信人 羊肉 和 一 半 的 高 湯
    和 米酒 放 進 鍋 內, 完成 後 , 寢 至 下 期 由 眉
    另 一 半 高 湯加 入 素 大 約 @ 分 即 可 。
    8) 電 鍋 3~4 杯 水 跳 起 完成 後 , 保 溫 的 2iS
    小 時 左右 , 要 吃 之 前 換 万 斯 爐 囊 熱 , 再 加 上
    自 己 要 吃 的 配料 亦 可 。
    火鍋 煮 法 : 羊 肉 和 高 湯 和 米酒 放 入 鍋 (內 , 痢 滬 蓋 上 鍋 蓋
    後 , 轉 小 火 約 甩 ~ 分 鐘 。 太 要 靶 鍋 蓋
    鍋 痢 法 大 的 ~ 分 鐘 , 几 燒鍋 痢 法 大 的 小 時 。
    天 下
    路 可 加 自 己 喜歡 的 食 村 , 如 : 雁 鞠 青 葉 鞭 豆 皮 九 子 菇 疾 。
    
    台 灣 味 羊 爐 肉
    
    1 和 Ne
    RN "i oo
    
    品 汪

 :-/, but still slightly better than the first one.

## The result of the same paper, properly scanned with Epson Perfection V39 and OCR-ed using the same `tesseract` command

### 2400DPI

```
Tesseract Open Source OCR Engine v4.0.0-beta.3-249-g607e with Leptonica
Detected 405 diacritics
Image too small to scale!! (1x36 vs min width of 3)
Line cannot be recognized!!
Image too small to scale!! (1x36 vs min width of 3)
Line cannot be recognized!!
```

```
羊肉 爐 京 鮭 方法 : 一 斤 肉 加 1~2 瓶 米酒 / 半 酒水 亦 可 。
電 鍋 痢 法 :A) 引 鍋 m 歷 3;4 杯 水 , 基 J
! 和 米酒 放 進 鍋 內 , 完 成 後 , 移 至 瓦斯 爐 將
另 一 半 高 湯加 作者 大 抑 四
8 電費 3~4 杯 水 跳 起 完成 後 , 保 溫 約
時 左右 , 要 吃 之 前 換 瓦斯 爐 剖 熱 , 再 加 上
自 己 要 吃 的 本 人
負 吉 法 羊肉 和 高 湯 和 米酒 放 入 久 . 痢 滬 蓋 上 鍋 基
後 , 還 小 六 八 ~ 鋪 分 踢 女 要 蓋 鍋 蓋 。
「 痢 法 大 約 ~ 本 分 鐘 , 加 娃 旬 者 法 大 的 二 小 時 。

外 3/0

Ho
HA

大 池

i 叻 蝦 和 人 如 需 再 熟 燭 可 巫 艙 爐 再 弟 大 約

3 X

灣 味 半 爐 從

約 2~S

後 半 和 可 加 自選 1 如 : 雁 萄 ka 窗 豆 皮 九 子 革 類 。

```

### 1200DPI

```
Tesseract Open Source OCR Engine v4.0.0-beta.3-249-g607e with Leptonica
Image too small to scale!! (1x36 vs min width of 3)
Line cannot be recognized!!
```

```
那 志 * 錳 用

_。 星 鑽 馬 乍 吾 下 閣下 二 旦 售 索 : 吐 站 妥 夠 湊合 蝦

侈 半 尖 生 難 妊 時 自 盯 典 全 昌

. 減
A
A?

蔭 中 說
和 $ 財
有
加 則 澡 潑 潤
) 嘆 悅 加 點 | 米 放
三代 對 上 Ho 長 前 財
x 米 By’ 4 沁 論 (
. 啟 廬 加 粗 弟 言 四 ap
以 童 冊 療 > 只 冰
# 性 串 弄 謝 縣 訓 :
殼 沁 洪 濕 嫩 澡 歷
和 衝 涼 泗
說 說 闌 誤 池 當
i 發 三 旭 w 本 |
3.5 主 加
I\ 由 喝 說
戰 說 ~
© 有 盅 NN ~ 0

和 言 “ 雇 訓

1

. 腦 晤 現 央 奔 包 去

。 鋰 踢 名 疇 未 / 忠 米 叔 ~L 貴 多 出 一 .

```

...not sure why this result so badly...

### 600DPI

```
Tesseract Open Source OCR Engine v4.0.0-beta.3-249-g607e with Leptonica
Detected 152 diacritics
```

```
羊肉 爐 襄 鉗 方法 : 一 斤 肉 加 1~2 瓶 米酒 / 半 酒水 誤 可 。
電 鍋 痢 法 :A) 殉 鍋 放 3~4 杯 水 , 羊 肉 和 一 半 的 高 湯
和 米酒 放 進 銅 內 , 完 所 後 , 移 至 坏 英 爐 將
另 一 半 高 湯加 入 痢 大 約 記 分 即 可 。
(8B8) 電 鍋 S3~4 杯 水 跳 起 完成 後 , 保 溫 約 2~3
小 時 左右 , 要 吃 之 前 換 瓦斯 爐 素 熱 , , 再 加 上

自 己 要 吃 的 配料 歷 可 。

火鍋 痢 法 : 羊 肉 和 高 湯 和 米酒 放 入 鍋 肉 , 者 滬 著 上 銅 著
後 , 轉 小 火 約 刀 ~ 鋪 分 鐘 。 女 要 蓋 鍋 蓋 。

快 鍋 痢 法 大 的 0D~ 扯 分 鐘 , 辣 燒鍋 痢 法 大 約 說 小 時 。

1

衝 半 吸 可 各 自 己 喜歡 的 食材 , 如 : 芭 萄 表 菜豆 褒 豆 皮 九 子 基 烽 。
台 灣 味 羊 爐 肉

```

### 300DPI

```
Tesseract Open Source OCR Engine v4.0.0-beta.3-249-g607e with Leptonica
Detected 207 diacritics
```

```
羊肉 爐 誤 找 方 法 : 一 斤 肉 加 1~2 瓶 米酒 / 半 酒

電 鍋 痢 法 : 猴 鍋 放 3~4 杯 水 , 羊 肉 和 一 半
和 米酒 放 進 鍋 內 , 完 成 後 , 移 至 將
另 一 半 高 湯加 入 者 大 約 如 分 即 可 。

8) 電 負 S8~4 本 水 路 起 完成 後 , 保 溫 約 2~8
小 時 左右 , 要 吃 之 前 換 五 斯 爐 痢 熱 , 再 加 上
自 己 要 吃 的 配料 亦 可 。

火鍋 章 法 : 羊 肉 和 高 湯 和 米酒 放 入 鍋 內 , 煮 滾 蓋 上 鋼 革
後 , 轉 小 火 約 ~ 鋪 分 鐘 。 女 要 蓋 鍋 蓋 。

選 負 m 痢 法 大 約 ~ 巧 分 鐘 , 癌 燒鍋 痢 法 大 約 歸 小 時 。

A 條 多 全 人 喜好 , 如 需 再 可 下 站 再 素 大 的

生 半邊 可 加 自 己 喜歡 的 食材 , 如 : 雁 萄 表 其 丟 廟 豆 皮 九 子 尋 類 。
台 灣 味 羊 距 崗

_ 蔽 記
0

水 誤
的
下

```
