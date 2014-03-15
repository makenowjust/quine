#!/usr/bin/env ruby
file = ARGV.shift
cmd  = ARGV.join " "

`#{cmd} #{file} > build/#{file}`

res = `diff --strip-trailing-cr #{file} build/#{file}`

puts res.strip
