require 'date'

head = Date.today.strftime("%B, %Y") 
year = Date.today.year #今年の西暦
mon = Date.today.mon   #今日の月

# # puts head
# # puts year 
# # puts mon

firstday_wday = Date.new(year,mon,1).wday
lastday_date = Date.new(year,mon,-1).day
youbi = %w(Sun Mon Tue Wed The Fri Sat)
wday = firstday_wday


puts head.center(20)
puts youbi.join(" ")
print "    " * wday

(1..lastday_date).each do |date|
	print date.to_s.rjust(3) + " "
	wday = wday + 1
	if wday % 7 == 0
		print "\n"
	end
end
# 終わり綺麗にする
if wday % 7 != 0
	print "\n"
end

# youbi = firstday_wday
# if youbi % 7 == 0
# 	print "/n"
# end
# puts head.center(15)
# puts firstday_wday
# # puts lastday_date
# # print week

# lastday_date.times { |i| 
# 	puts i+1
	
# }


