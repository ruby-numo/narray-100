require "numo/narray"
a = Numo::DFloat.new(3,5).seq
puts a.inspect
puts a.shape
puts a.ndim
puts a.class
puts a.size
