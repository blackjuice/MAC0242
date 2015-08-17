def hello(name)
    print "Hello, ", name, "\n"
end

def starts_with_consonant?(s)
    case s
    when /^[^aeiou]/i;  return true
    else;               return false
    end
end

def binary_multiple_of_4?(s)
    case s
    when /^[10]*00$/;   return true
    else;               return false
    end
end

#a = "albert"
#starts_with_consonant?(a)