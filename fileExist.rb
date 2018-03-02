#! /bin/sh
exec ruby -S -x "$0" "$@"
#! ruby
cardset = ARGV[0]
no  = ARGV[1]
for i in 1..no.to_i
  # for i in 1..301
  prefix = "/Users/zhaoliang/Library/Caches/Forge/pics/cards/"+cardset+"/"
  if !File.exist?(prefix+i.to_s+".jpg") then
    puts "http://magiccards.info/scans/en/"+cardset+"/"+i.to_s+".jpg"
  end
end
