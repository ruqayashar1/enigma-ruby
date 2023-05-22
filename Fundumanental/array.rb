# 
# puts ar

# puts "================================"

# ar << 5 # array.push(5)

# puts ar

#break and continue



def myFunc
    ar=[1,2,3,4,5,6,7,8]
    ar.each do |element|
        
        # if element ==4
        #     break # break from a loop
        # end

        if element==4 || element==6
            next # continue 
        end
        puts element
    end

    puts "Some other code over here"
end

myFunc()