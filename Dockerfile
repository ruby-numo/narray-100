FROM ubuntu:15.10
RUN apt update; apt install -y git ruby gcc ruby-dev rake make wget python python-dev g++
RUN cd; git clone git://github.com/ruby-numo/narray; cd narray; gem build numo-narray.gemspec; gem install numo-narray-0.9.0.1.gem

# jupyter
RUN cd; wget https://bootstrap.pypa.io/get-pip.py; python get-pip.py; pip install jupyter
# iruby
RUN apt install -y libzmq3-dev libtool-bin autoconf; gem install rbczmq iruby pry

ADD . /usr/src/numo-notebooks
EXPOSE 8888
CMD iruby notebook --no-browser --ip='*' --port 8888 --notebook-dir='/usr/src/numo-notebooks'
