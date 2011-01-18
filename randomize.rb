#!/usr/bin/env ruby

txt = STDIN.read
arr = txt.split(/\n+/).collect do |line|
  [line, rand]
end

arr = arr.sort { |a, b| a[1] <=> b[1] }
arr = arr.collect { |x| x[0] }

puts arr
