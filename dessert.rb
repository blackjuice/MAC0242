=begin
	Integrantes: 
	Leonardo Daneu Lopes	8516816
	Lucas Sung Jun Hong	8124329
=end

class Dessert

    attr_accessor :name, :calories

    def initialize name, calories
        @name, @calories = name, calories
    end

    def healthy?
        if @calories < 200
            return true
        return false
    end
    
    def deicious?
        return true
    end
    
end

class JellyBean < Dessert

    attr_accessor :flavour

    def initialize flavour
        super(flavour + " jelly bean", 5)
        @flavour = flavour
    end

    def deicious?
        if @flavour = "licorice"
            return false
        end  
        return true
    end 

end
