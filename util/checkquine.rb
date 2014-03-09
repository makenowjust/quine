file = ARGV.shift
cmd  = ARGV.join " "

`#{cmd} #{file} > dist/#{file}`

res = `diff #{file} dist/#{file}`

puts res.strip
