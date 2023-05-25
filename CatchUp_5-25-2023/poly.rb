class Shape

    attr_accessor:type
  
    def initialize(type="Not set")
        @type=type
    end

    def area
        # DEfault implementation
        puts "Calculting area of a  #{@type}"
    end

end

class Circle <Shape
    def initialize(radius=1)
        super("Circle")
        @radius=radius
    end

    def area
        super
        return 3.142*@radius*@radius
    end
end

class Rectangle <Shape
    def initialize(width,height)
        @width=width
        @height=height
        super("Rectangle")
    end
    def area
        super
        return @width*@height
    end
end

class Square <Shape
    def initialize(l)
        @length=l
        super("Square")
    end
    def area
        super
        return  @length*@length
    end
end

c1=Circle.new(2)
c2=Rectangle.new(2,3)
c3=Square.new(10)


puts c1.area
puts c2.area