require 'pry'

class Incription
  @@userText = ""
  @@textIncripted = ""
  @@key = 0

  def incriptor
    #user input in the terminal
    puts "Input your incripted text:"
    @@userText = gets.chomp!
    puts "Select the incription level (eg: 0 - 10):"
    num = gets.chomp!
    @@key = num.to_i
    
    textIncriptedAcii = @@userText.bytes
    #original text in bytes is incripted with the key
    textIncriptedAcii.map! {|i| i + @@key}
    @@textIncripted = textIncriptedAcii.pack('c*')

    #output ciphered text on the terminal
    puts "Incripted text with #{@@key} level incription:"
    puts @@textIncripted
  end

end

test = Incription.new
test.incriptor
