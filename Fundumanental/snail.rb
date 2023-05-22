

def snail(ar)

k=[]
# loop 
k << top_array(ar)
k << right_arr(ar)
k << last_arr(ar)
k << left_arr(ar)

return k
end

def top_array(ar)
  result=ar[0]
  ar.delete_at(0)
  return result
end

def right_arr(ar)
    k=[]
    ar.each do |sub_array|
       
       k << sub_array[sub_array.length-1]
       sub_array.delete_at(sub_array.length-1)
    end
    return k
end

def last_arr(ar)
    result=ar[ar.length-1]
    ar.delete_at(ar.length-1)
    return result
end

def left_arr(ar)
    k=[]
    ar.each do |sub_array|
       k << sub_array[0]
       sub_array.delete_at(0)
    end
    return k
end


test_array=[[1,2,3],[4,5,6],[7,8,9]]

print right_arr(test_array)

