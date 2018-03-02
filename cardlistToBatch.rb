#! /bin/sh
exec ruby -S -x "$0" "$@"
#! ruby
cardset = ARGV[0]
p cardset
if File.exist?(cardset+".sh")
  p "rename sh exists."
  exit
end
if !File.exist?(cardset+".txt")
  p "Card list file do not exists.."
  exit
end
f= open("/Users/zhaoliang/workspace/workspace9/"+cardset+".txt").drop(1)
f2 = open("/Users/zhaoliang/workspace/workspace9/"+cardset+".sh","w")

f2.puts("#!/bin/sh")
landno=0
previous = nil
lands = ["Plains","Island","Swamp","Mountain","Forest"]
isFirst = Array.new(5,true)
cardnoland = 0
f.each{|line|
  # no = line.match(/\d+[ab]?/)[0]
  cardlistArray = line.split(" ",2)
  cardno = cardlistArray[0]
  cardname = cardlistArray[1].chomp

  for i in 0..4
    if cardname==lands[i] then
      if isFirst[i] then
        landno = 1
        cardname = lands[i] + landno.to_s
        landno = landno+1
        isFirst[i] = false
      elsif !isFirst[i] then
        cardname = lands[i] + landno.to_s
        landno = landno+1
      end
    end
  end

  f2.puts("mv " + cardno.to_s + ".jpg \"" + cardname.chomp + ".full.jpg\"\n")
  # p no
}
