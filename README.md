# robosys2023
***ロボットシステム学***

* このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです。
  * [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)


## plusコマンド
このコマンドは入力された数字の足し合わせと階乗を出力します。

## 使い方
### ダウンロード方法
以下のコマンドでダウンロードします。
```
$ git clone git@github.com:ryotarokarikomi/robosys2023.git
```

### 起動手順
* 以下のコマンドでplusコマンドがあるディレクトリに移動します。
```
$ cd robosys2023
```
* 実行例  
5までの連続番号を足し合わせと階乗を出力します。
```
$ seq 5 | ./plus
  15 120
```

## 必要なソフトウェア
  * Python
    * テスト済み: 3.7 ~ 3.10
    * ![test](https://github.com/ryotarokarikomi/robosys2023/actions/workflows/test.yml/badge.svg)


## テスト環境
* Ubuntu


## 著作権・ライセンス

* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます。


* © 2023 Ryotaro Karikomi
