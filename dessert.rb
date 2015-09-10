class Dessert

    attr_accessor :name, :calories

    def initialize name, calories
        @name, @calories = name, calories
    end

    def healthy?
        if @calories < 200
            return true
        end
        return false
    end
    
    def delicious?
        return true
    end
    
end

class JellyBean < Dessert

    attr_accessor :flavour

    def initialize flavour
        super(flavour + " jelly bean", 5)
        @flavour = flavour
    end

    def delicious?
        if @flavour == "licorice"
            return false
        end  
        return true
    end 

end
