def fibs(num)
    array = [0,1]
    num.times do |index|
        array << (array[index-2] + array[index-1]) if(index > 1)
    end
    array[0,num]
end
def fibs_rec(num)
    return [0] if(num == 1)
    return fibs_rec(1) + [1] if(num == 2)
    fibs_rec(num-1) + [fibs_rec(num-1)[num-3]+fibs_rec(num-1)[num-2]]
end