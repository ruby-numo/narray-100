# narray-100
This is a Ruby port of [numpy-100](https://github.com/rougier/numpy-100).

[![Binder](http://mybinder.org/badge.svg)](http://mybinder.org/repo/ruby-numo/numo-notebooks)

You can try ruby-numo example notebooks without installing IRuby. Please click *launch binder* badge.

## How to use numo-notebooks

```
git clone https://github.com/ruby-numo/numo-notebooks
cd numo-notebooks
docker build -t numo .
docker run -dp 443:8888 numo
```

Finally, Open 192.168.99.100:443 with your browser.
