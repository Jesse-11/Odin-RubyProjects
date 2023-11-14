require 'pry-byebug'

def caesar_cipher(text, shift)

    for i in 0...text.length
        char_code = text[i].ord

        (a, z) = case char_code
            when 65..90 then [65, 90] # Uppercase
            when 97..122 then [97, 122] # Lowercase
            else next
        end

        rotate = shift > 0 ? 26 : -26 

        char_code += shift
        char_code -= rotate unless char_code.between?(a, z)

        text[i] = char_code.chr
    end
end

message = "Bazinga is the best show ever!"

caesar_cipher(message, 5)
p message

    














