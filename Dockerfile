FROM ruby
RUN mkdir /app
RUN git clone git://github.com/ruby-numo/narray
WORKDIR narray
RUN gem build numo-narray.gemspec
RUN gem install numo-narray-0.9.0.1.gem
WORKDIR /app
