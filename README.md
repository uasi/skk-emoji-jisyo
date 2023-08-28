skk-emoji-jisyo
===============

GitHub で使える絵文字を SKK で入力できるようにする辞書

インストール
------------

### AquaSKK

まず辞書ファイルをダウンロードします。

```bash
cd ~/Library/Application\ Support/AquaSKK
curl -O https://raw.githubusercontent.com/uasi/skk-emoji-jisyo/master/SKK-JISYO.emoji.utf8
```

AquaSKK の環境設定の「辞書」タブを開き、「SKK 辞書(UTF-8)」を追加して辞書ファイルの場所を選択します。

![Aqua SKK Preferences](https://cloud.githubusercontent.com/assets/22321/3549779/e90d8d0a-08ce-11e4-94d1-205d12c74199.png)

辞書が読み込まれない場合、しばらく待つか、入力ソースをことえりなどに切り替えてから AquaSKK に戻します。

### ibus-skk (Linux)

AquaSKK同様に辞書ファイルを任意の場所にダウンロードします。次の例では、既定のユーザ辞書とおなじ場所にしました。

```bash
cd ~/.config/ibus-skk/
curl -O https://raw.githubusercontent.com/uasi/skk-emoji-jisyo/master/SKK-JISYO.emoji.utf8
```

ibus-skkの「設定」の「辞書」を開き「追加」ボタンをおして、ダウンロードしたファイルを「ユーザ辞書」として登録します。


使い方
------

▽モードで絵文字の名前を入力します。名前の定義は [gemoji gem](https://github.com/github/gemoji) に基づいています。名前と対応する絵文字のリストは [Emoji cheat sheet](http://www.emoji-cheat-sheet.com) で確認できます（ただし gemoji の最新の定義を反映していない場合があります）。

![Input](https://cloud.githubusercontent.com/assets/22321/3549963/211fd39e-08d2-11e4-8214-3b9a1ea29096.gif)

更新履歴
--------

- v0.0.9 2023-08-27 絵文字名の定義データを [gemoji 4.1.0](https://github.com/github/gemoji/releases/tag/v4.1.0) に更新。
- v0.0.8 2022-12-18 絵文字名の定義データを [gemoji 4.0.1](https://github.com/github/gemoji/releases/tag/v4.0.1) に更新。
- v0.0.7 2020-08-14 絵文字名の定義データを [gemoji 4.0.0.rc2](https://github.com/github/gemoji/releases/tag/v4.0.0.rc2) に更新。
- v0.0.6 2018-08-30 libskk で辞書をロードできない問題を修正。
- v0.0.5 2018-08-09 絵文字名の定義データを gemoji 3.0.0 に更新。
- v0.0.4 2016-10-06 絵文字名の定義データを gemoji 3.0.0.rc1 に更新。
