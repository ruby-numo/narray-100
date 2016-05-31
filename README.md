# numo-docker
Dockerfile to build ruby-numo instance

# How to use

Clone the repo and run `docker build -t ruby-numo .`

### Interactive

```bash
docker run -it ruby-numo

irb(main):001:0> require "numo/narray"
=> true
irb(main):002:0> a = Numo::DFloat.new(3,5).seq
=> Numo::DFloat#shape=[3,5]
[[0, 1, 2, 3, 4],
 [5, 6, 7, 8, 9],
 [10, 11, 12, 13, 14]]
irb(main):003:0> a.shape
=> [3, 5]
irb(main):004:0> a.ndim
=> 2
irb(main):005:0> a.class
=> Numo::DFloat
irb(main):006:0> a.size
=> 15
```

### Running a app

```bash
docker run -v "`pwd`":/app ruby-numo ruby narray.rb
```

### Running a app inside the container

```bash
docker run -v "`pwd`":/app -it ruby-numo /bin/bash
# ruby narray.rb
```
