# robosys2023
***ロボットシステム学***  
このレポジトリはplusコマンドとBMIコマンド、それぞれのプログラムを記述しています。


## 使用方法
### ダウンロード方法
以下のコマンドでダウンロードします。
```
$ git clone git@github.com:ryotarokarikomi/robosys2023.git
```

### 起動手順
* 以下のコマンドでコマンドがあるディレクトリに移動します。
```
$ cd robosys2023
```
## 実行例  

### plusコマンド
* このコマンドは入力された数字の足し合わせと階乗を出力します。
* 5までの連続番号の足し合わせと階乗を出力します。
```
$ seq 5 | ./plus
  15 120
```

### BMIコマンド
* このコマンドは自身の体重と身長を入力し、BMIを求めます。
* 体重62kg、身長174cmの人のBMIを求めます。
```
$ echo 62 174 | ./BMI
  20.48
```

## 必要なソフトウェア
  * Python
    * テスト済み: 3.7 ~ 3.10
    * plus ![test](https://github.com/ryotarokarikomi/robosys2023/actions/workflows/test_plus.yml/badge.svg)
    * BMI ![test](https://github.com/ryotarokarikomi/robosys2023/actions/workflows/test_BMI.yml/badge.svg)


## テスト環境
* Ubuntu(22.04.3 LTS)


## 著作権・ライセンス

* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます。
* このパッケージのplusコマンドの一部のコードは、下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを、本人の許可を得て自身の著作としたものです。
  * [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)


* © 2023 Ryotaro Karikomi
