def sum (a)
	x = 0
	if (a.length != 0)
		0.upto a.length do |i|
			x = x + a[i].to_i
		end
	end
	puts x
end

def max_2_sum (a)
	a.sort!.reverse!
	x = a[0]
	if (a.length > 1)
		0.upto a.length do |i|
			x = a[0].to_i + a[1].to_i
		end
	end
	puts x
end

def sum_to_n? (a, n)
	flag = false
	if (a.length > 1)
		a.uniq!
		b = a.repeated_combination(2).to_a
		0.upto b.length - 1 do |i|
			x = b[i][0].to_i + b[i][1].to_i
			if (x == n) ; flag = true ; break ; end
		end
	end
	puts flag
end


/********** LEO VERSION ***************/


def sum(a)
    b = 0
    a.each{|x| b += x}
    return b
end

def max_2_sum(a)
    b = 0

    if a.length > 0
        b += a.max_by{|x| x}.max
    end
    
    if a.length > 1
        b += a.reject{|x| x == b}.max
    end
    return b
end

def sum_to_n(a, n)
    for i in 0..a.repeated_combination(2).to_a.length - 1
        if sum(a.repeated_combination(2).to_a[i]) == n
            c = true
            break
        else 
            c = false
        end
    end
    return c
end


