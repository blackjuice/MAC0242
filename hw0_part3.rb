=begin
    Integrantes: 
    Leonardo Daneu Lopes    8516816
    Lucas Sung Jun Hong 8124329
=end

class BookInStock < ArgumentError
    def initialize(isbn, price)
        @isbn   = isbn
        @price  = price
        
        if (@price <= 0 || @isbn.empty? == true)
            raise ArgumentError
        end
    end

    attr_accessor :isbn
    attr_accessor :price

    def price_as_string
        price_new = "$" + price.to_s
        if ( price.to_s =~ /^\d+\.\d{1}$/ )
            price_new << "0"
        elsif ( price.to_s =~ /^\d+$/ )
            price_new << ".00"
        end
        return price_new
    end
end

=begin
x = "0123123123123"
x_price = 29
y = ""
y_price = 0
z = "123134123"
z_price = 0
f1 = "1231"
f1_price = 29.1
f2 = "1231"
f2_price = 29.10

object_x=BookInStock.new(x, x_price); object_x.price_as_string
#object_y=BookInStock.new(y, y_price); object_y.price_as_string
#object_z=BookInStock.new(z, z_price); object_z.price_as_string
object_f1=BookInStock.new(f1, f1_price); object_f1.price_as_string
object_f2=BookInStock.new(f2, f2_price); object_f2.price_as_string

a = object_x.price_as_string
b = object_f1.price_as_string
c = object_f2.price_as_string
puts a, b, c
=end
