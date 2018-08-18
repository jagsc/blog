
# blog

https://jagsc.github.io/blog

# ローカルで動かす

こうして

```
$ docker pull jekyll/jekyll:pages
$ docker run --rm -v `pwd`:/srv/jekyll -p 4000:4000 jekyll/jekyll:pages jekyll serve --watch
```

ここにアクセス

```
http://0.0.0.0:4000/
```