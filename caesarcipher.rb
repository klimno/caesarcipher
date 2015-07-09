def caesar_cipher_encode(shiftnum, message)
  alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
  
  message.downcase! 
  message = message.split("")
  x = 0
  
  message.each do |char|
    position = alphabet.index(char)
    if char != " "      
      if position + shiftnum > 25
      char = alphabet[(shiftnum + position) - 26]
      else char = alphabet[shiftnum + position]
      end      
    else
    end
    message[x] = char
    x += 1
  end
  puts message.join
end


def caesar_cipher_decode(shiftnum, message)
    alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
  
  message.downcase! 
  message = message.split("")
  x = 0
  
  message.each do |char|
    position = alphabet.index(char)
    if char != " "
      char = alphabet[position - shiftnum]
    end
    message[x] = char
    x += 1
  end
  puts message.join
end

i = 0
while i == 0
puts "Decode or encode? (type d or e)"
en_or_de = gets.chomp

if en_or_de == "e"
puts "Input the message you want to encode"
message = gets.chomp
puts "Input the value by which you want to shift the characters"
shiftnum = gets.chomp.to_i
i = 1
  
  caesar_cipher_encode(shiftnum, message)
else if en_or_de == "d"
  puts "Input the message you want to decode"
  message = gets.chomp
  puts "Input the value by which the characters were shifted"
  shiftnum = gets.chomp.to_i
  i = 1
  caesar_cipher_decode(shiftnum, message)
else puts "Please type either d or e"
end
end
end
