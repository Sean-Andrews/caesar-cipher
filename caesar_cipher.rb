def caesar_cipher(string, number)
  ascii_array = string.chars.map { |letter| letter.ord}
  new_ascii_array = ascii_array.map do |ascii_char| 
    if (ascii_char >= 65 && ascii_char <= 90) || (ascii_char >= 97 && ascii_char <= 122)
      ascii_char += number
     else 
       ascii_char = ascii_char
    end
  end
  final_ascii_array = new_ascii_array.map do |new_char|
    if (new_char >= 91 && new_char <= 96) || (new_char >= 123)
      new_char -= 26
    else
      new_char = new_char
    end
  end
  answer = final_ascii_array.map { |final_char| final_char.chr}
  p answer.join("")
end




# def wrap_around(ascii_char)
#   if (ascii_char >= 91 && ascii_char <= 96) || (ascii_char >=123)
#     final_ascii_char = (ascii_char - 26).chr
#   else 
#     final_ascii_char = ascii_char.chr   
#   end
#   final_cipher(final_ascii_char)
# end

# def final_cipher(final_numbers)
#   p final_numbers
# end


caesar_cipher("What a string!", 5)