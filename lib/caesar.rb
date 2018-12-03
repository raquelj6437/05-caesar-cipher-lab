def caesar_encode(string,offset)
    alphabet_hash = {'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4,'e' => 5,'f' => 6,'g' => 7,'h' => 8,'i' => 9,'j' => 10,'k' => 11,'l' => 12,'m' => 13,'n' => 14,'o' => 15,'p' => 16,'q' => 17,'r' => 18,'s' => 19,'t' => 20,'u' => 21,'v' => 22,'w' => 23,'x' => 24,'y' => 25,'z' => 26}
    string_arr = string.split('')
    new_string = []
    for i in string_arr do
        value = alphabet_hash[i.downcase]
        if value != nil
            value = (value+offset)%26
            if i == i.capitalize
                new_string.push(alphabet_hash.keys[value-1].capitalize)
            else
                new_string.push(alphabet_hash.keys[value-1])
            end
        else
            new_string.push(i)
        end
    end
    new_string.join
end

def caesar_decode(string,offset)
    alphabet_hash = {'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4,'e' => 5,'f' => 6,'g' => 7,'h' => 8,'i' => 9,'j' => 10,'k' => 11,'l' => 12,'m' => 13,'n' => 14,'o' => 15,'p' => 16,'q' => 17,'r' => 18,'s' => 19,'t' => 20,'u' => 21,'v' => 22,'w' => 23,'x' => 24,'y' => 25,'z' => 26}
    string_arr = string.split('')
    new_string = []
    for i in string_arr do
        value = alphabet_hash[i.downcase]
        if value != nil
            value = (value-offset)%26
            if i == i.capitalize
                new_string.push(alphabet_hash.keys[value-1].capitalize)
            else
                new_string.push(alphabet_hash.keys[value-1])
            end
        else
            new_string.push(i)
        end
    end
    new_string.join
end