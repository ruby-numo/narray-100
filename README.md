# numo-notebooks
Docker environment for Ruby-numo + IRuby notebook

[![Binder](http://mybinder.org/badge.svg)](http://mybinder.org/repo/sciruby-jp/sciruby-notebooks)

You can try ruby-numo example notebooks without installing IRuby. Please click *launch binder* badge.

## How to use numo-notebooks

```
git clone https://github.com/ruby-numo/numo-notebooks
cd numo-notebooks
docker build -t numo .
docker run -dp 443:8888 numo
```

Finally, Open 192.168.99.100:443 with your browser.
