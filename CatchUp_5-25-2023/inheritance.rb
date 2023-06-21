# Inheritance and how it works
# Class -> methods 
# Instance of an object

# Parent ->  Child (inheritance from parent) 
# Class -> Methods (child inherit them)
# Super class ->super keyword comes in.

#species
#Kindom Animalia

# SQL


# ORM 
# ACTIVE RECORDS 


class Shape
    attr_accessor :l,:w ,:h

    def initialize(l=1,w=1,h=1)
        @l=l
        @w=w
        @h=h
    end

    def area
        return @l*@w
    end

end

class Square <Shape

    def initialize(l=1,h=1)
        super(l,l,h)
    end

end


class Rectangle <Shape
    def initialize(l=1,w=1,h=1)
        super(l,w,h)
    end
end


sq1=Square.new(10)
rq1=Rectangle.new(2,4)

k=23

m=23.23

# s=Integer.new(10)

p s=10

p "m.class #{m.class}" 
p "k.class #{k.class}" 

p "m.class.superclass #{m.class.superclass}" 
p "k.class.superclass #{k.class.superclass}" 

p "rq1.class #{rq1.class}" 
p "sq1.class #{sq1.class}" 

p "rq1.class.superclass #{rq1.class.superclass}" 
p "sq1.class.superclass #{sq1.class.superclass}" 

puts sq1.area
puts rq1.area
