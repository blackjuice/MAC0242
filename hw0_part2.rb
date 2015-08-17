def hello(name)
	print "Hello, ", name, "\n"
end

def starts_with_consonant?(s)
	case s
	when /^[^aeiou]/i; 	puts true
	else;				puts false
	end
end

def binary_multiple_of_4?(s)
	case s
	when /^[10]*00$/; 	puts true
	else;				puts false
	end
end



/********* LEO VERSION ********/


def hello(name)
	return "Hello, " + name
end

def starts_with_consonant?(s)
	case s
	when /^[^aeiou]/i; 	return true
	else;			return false
	end
end

def binary_multiple_of_4?(s)
	case s
	when /^[10]*00$/; 	return true
	else;			return false
	end
end