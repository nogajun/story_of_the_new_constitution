# あたらしい憲法のはなし(Markdown版)

これは青空文庫にある「[あたらしい憲法のはなし](http://www.aozora.gr.jp/cards/001128/card43037.html)」のテキストをMarkdown書式にしたものです。

テキストは[pandoc](http://pandoc.org/)を使って縦書き文庫サイズのodtとしても出力できます。

## odtとPDFファイルへ変換

Debian/Ubuntu環境であれば、必要なパッケージをインストールしてmakeを実行します。

    $ sudo apt install build-essential pandoc imagemagick fonts-ipafont git pdfsam
    $ git clone https://github.com/nogajun/story_of_the_new_constitution.git
    $ cd story_of_the_new_constitution/
    $ make

makeを実行するとodtファイルを生成し、さらにodtファイルからpdfファイルも生成されます。

WindowsやMac環境でも、aptでインストールしているmake, pandoc, IPAフォント, git, pdfsamがインストールされていれば、makeを実行できると思われます。(未確認)

## より書籍らしいスタイルにする

出力されたodtとpdfファイルは、そのままでもいい感じの体裁で出力されますが、odtファイルにページスタイルを設定すると表紙と左右ページにレイアウトされた、より文庫本らしい体裁になります。
(この作業を手動ではなくpandoc側から自動で適用したいのですが、なにか良い方法はないでしょうか?)

ページスタイルの設定は、LibreOfficeからodtファイルを開き、メニュー[書式]-[タイトルページ]を選択します。
タイトルページ設定ダイアログが開くので、そのままOKボタンを押すとページスタイルが適用されます。

odtファイルはページスタイルの変更だけでなく、画像のレイアウトなども変更できます。
画像のレイアウトを変更する際は、pandocから出力されたodtファイルは、アンカーがLibreOfficeデフォルトの「段落へ」ではなく「文字として」になっているので、アンカーをしてから画像を移動してください。

スタイルやレイアウトの変更が終わればodtファイルを保存して、makeを実行するとpdfが再生成されます。

## 原本

* 国立国会図書館デジタルコレクション - あたらしい憲法のはなし: <http://dl.ndl.go.jp/info:ndljp/pid/1710431>
* 国立国会図書館デジタルコレクション - あたらしい憲法のはなし: <http://dl.ndl.go.jp/info:ndljp/pid/1113070>

## さらなる


