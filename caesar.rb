def caesar(name,key,result = '')
    name.downcase!
    key.to_i
    name.each_char do |i|
        if i >= 'a' && i <= 'z' then 
            conValue = i.ord
            encrpytValue = ((conValue - 'a'.ord + key) % 26 + 'a'.ord)
            result.concat(encrpytValue.chr)
        else
            result.concat(i);
        end
    end 
    puts result
end
caesar("zzhello world!",5)