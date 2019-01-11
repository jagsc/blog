docker run --rm -it -v `pwd`:/srv/jekyll -p 4000:4000 jekyll/jekyll:pages jekyll build -d _site/blog 
docker run --rm -it -v `pwd`:/srv/jekyll -p 4000:4000 jekyll/jekyll:pages /usr/gem/bin/htmlproofer ./_site --allow-hash-href --check-html --disable-external
