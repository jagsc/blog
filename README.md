
# blog

https://jagsc.github.io/blog

## 記事を書く

### ファイルの作成

`_posts/` 内に `YYYY-MM-DD-タイトル.md` というファイルを作ります．

|項目|内容|
|:-:|:-:|
|YYYY|４桁の西暦年です|
|MM|2桁の月です|
|DD|2桁の日です|

### 情報の入力
 
記事の情報をそのファイル(`YYYY-MM-DD-タイトル.md`)に書きます．

こんな感じで，ファイルの最初に書いてください．

```
---
layout: post
title: 「記事名」
---
```

### 記事の執筆

その下からmarkdownという形式で記事を作ります．

Markdownの書き方は https://qiita.com/kamorits/items/6f342da395ad57468ae3 あたりが参考になります．

注意点として，画像は `images/` 内においてください．

例えば
- 画像を`hoge.jpg`という名前で`images/`に設置する
- 記事内に以下のように書くことで画像を挿入

```
![hoge](../images/hoge.jpg)
```

のようにすることで画像を設置します．


## ローカルで動かす

こうして

```bash
$ docker run --rm -it -v `pwd`:/srv/jekyll -p 4000:4000 jekyll/jekyll:pages jekyll serve -w
```

ここにアクセス

```
http://0.0.0.0:4000/blog/
```

## テスト

```bash
$ docker run --rm -it -v `pwd`:/srv/jekyll -p 4000:4000 jekyll/jekyll:pages jekyll build
$ docker run --rm -it -v `pwd`:/srv/jekyll -p 4000:4000 jekyll/jekyll:pages /usr/gem/bin/htmlproofer ./_site --allow-hash-href --check-html --disable-external
```