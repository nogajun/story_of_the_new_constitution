# あたらしい憲法のはなし(Markdown版)

これは青空文庫にある「[あたらしい憲法のはなし](http://www.aozora.gr.jp/cards/001128/card43037.html)」テキストをMarkdown書式にしたものです。

テキストは、[pandoc](http://pandoc.org/)を使って縦書き文庫サイズ(A6)のOpenDocumentFormat(odt)文書としても出力できます。

## OpenDocumentFormat(odt)ファイルとPDFファイルへ変換

MarkdownファイルからodtとPDFファイルを生成は、Debian/Ubuntu環境であれば簡単に生成できます。

最初に生成に必要なパッケージをインストールします。

    $ sudo apt install build-essential git pandoc imagemagick libreoffice fonts-ipafont fonts-noto-cjk fonts-noto-cjk-extra

PDFを右綴じにするために使用していたpdfsam-consoleは、開発元が廃止したので代わりにsejda-consoleを使用しています。
こちらはDebian/Ubuntuリポジトリに含まれていないので、Sejdaが配布するdebパッケージをダウンロードして使用してください。

* Releases · torakiki/sejda: <https://github.com/torakiki/sejda/releases>

このgitリポジトリをクローンしmakeを実行します。

    $ git clone https://github.com/nogajun/story_of_the_new_constitution.git
    $ cd story_of_the_new_constitution/
    $ make

makeを実行するとodtファイルを生成され、さらにodtファイルからpdfファイルも生成されます。
生成をし直すときは、make cleanを実行して生成ファイルを消してから再度、makeを実行してください。

WindowsやMac環境でも、make, git, pandoc, LibreOffice, ImageMagick, sejda-console, IPAフォント, Noto CJK Fonts がインストールされていれば、makeを実行できると思われます。(未確認)

## より書籍らしいスタイルにする

出力されたodtとpdfファイルは、そのままでもいい雰囲気の体裁で出力されますが、odtファイルにページスタイルを設定すると表紙と左右ページにレイアウトされた、より文庫本らしい体裁になります。
(この作業を手動ではなくpandoc側から自動で適用したいのですが、なにか良い方法はないでしょうか?)

ページスタイルの設定は、LibreOfficeからodtファイルを開き、メニュー[書式]-[タイトルページ]を選択します。
タイトルページ設定ダイアログが開くので、そのままOKボタンを押すとページスタイルが適用されます。

odtファイルはページスタイルの変更だけでなく、画像のレイアウトなども変更できます。
画像のレイアウトを変更する際は、pandocから出力されたodtファイルは、アンカーがLibreOfficeデフォルトの「段落へ」ではなく「文字として」になっているので、アンカーをしてから画像を移動してください。

スタイルやレイアウトの変更が終わればodtファイルを保存してmakeを実行するとpdfが再生成されます。

## さらなる発展へ

すでに気づいていると思いますが「あたらしい憲法のはなし」だけに限らず、Markdown文書であれば、なんでも文庫として出力できるので活用してください。

## 「あたらしい憲法のはなし」原本

* 国立国会図書館デジタルコレクション - あたらしい憲法のはなし: <http://dl.ndl.go.jp/info:ndljp/pid/1710431>
* 国立国会図書館デジタルコレクション - あたらしい憲法のはなし: <http://dl.ndl.go.jp/info:ndljp/pid/1113070>

## ライセンス

Public Domain

[![Public Domain Mark](http://i.creativecommons.org/p/mark/1.0/88x31.png)](http://creativecommons.org/publicdomain/mark/1.0/)