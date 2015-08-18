=begin
    Integrantes: 
    Leonardo Daneu Lopes    8516816
    Lucas Sung Jun Hong 8124329
=end

def hello(name)
    name = "Hello, " + name
end

def starts_with_consonant?(s)
    case s
    when /^[a-z&&[^aeiou]]/i;   return true
    else;                       return false
    end
end

def binary_multiple_of_4?(s)
    case s
    when /^[10]*0+$/;   return true
    else;               return false
    end
end
