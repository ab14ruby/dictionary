system('clear')
require './hash_file_relation'
puts " ***** Welcome to Ruby-Dic ***** "
puts "\tPress 1 for Eng => Tr"
puts "\tPress 2 for Tr => Eng"
puts "\tPress 3 for Exit"

class Dictionary
  def control
    loop do
      puts "\nWhat do you want to translate (1/2/3)?"
      choose=gets.chomp.to_i
    if choose==1
      puts "* From Eng to Tr *"
      print "Enter the English sentences => "
      sentence=gets.chomp.downcase
      FileProcess.new.eng_tr(sentence)

    elsif choose == 2
      puts "* From Tr to Eng *"
      print "Enter the Turkish sentences => "
      sentence=gets.chomp.downcase
      FileProcess.new.tr_eng(sentence)
    elsif choose == 3
      break
    else
      puts "Try Again !"
    end
    end
  end


end


d = Dictionary.new
print d.control




