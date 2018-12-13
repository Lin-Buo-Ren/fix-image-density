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
