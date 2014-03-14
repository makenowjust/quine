#!/usr/bin/env ruby
file = ARGV.shift
cmd  = ARGV.join " "

`#{cmd} #{file} > dist/#{file}`

res = `diff --strip-trailing-cr #{file} dist/#{file}`

puts res.strip
