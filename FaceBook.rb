100.times{ |n|
n += 1

if n % 3 == 0 && n % 5 == 0
	puts "FaceBook"

elsif n % 5 == 0 && n % 3 != 0
	puts "Book"

elsif n % 3 == 0 && n % 5 != 0
	puts "Face"

else
	puts n
end

}