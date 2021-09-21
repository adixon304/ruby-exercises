def caesar_cipher(text, key)

    #ensure sizing is consistent and split text into array
    text_array = text.split("")

    encrypted_text = Array.new
    text_array.each do | character |

        #set min/max values based on if the character is upper case or not
        if character == character.upcase then
            minValue = 65
            maxValue = 90
        else
            minValue = 97
            maxValue = 122
        end       

        #handle if the character isn't a letter
        if character.ord < minValue || character.ord > maxValue then
            encrypted_text.push(character)
            next
        end

        #get ordinal value of the character
        ord_new = character.ord + key

        #handle invalid characters
        if ord_new > maxValue  then 
            ord_new = (ord_new - maxValue ) + (minValue - 1)
        end 

        #convert new value back to a string character
        character_new = ord_new.chr

        #add new character to our encrypted arry
        encrypted_text.push(character_new)
    end

    #return joined encrypted text array
    puts encrypted_text.join 
end

caesar_cipher("What a string!", 5)