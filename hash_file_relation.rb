class FileProcess
  def hash_process_eng(ctrl)
    hash={}
    File.open("dictionary.txt") do |file|
      file.each do |line|
        key, value = line.chomp.split(':')
        if ctrl == "eng"
          hash[key] = value
        elsif ctrl == "tr"
          hash[value] = key
        end
      end
      return hash
    end
  end
  def eng_tr(s)
    hash_one=hash_process_eng("eng")
    if hash_one[s] ==nil
      puts "This word doesn't exist !"
    else
      print "#{s} => ",hash_one[s]
    end
    end
  def tr_eng(s)
    hash_two=  hash_process_eng("tr")
    if hash_two[s] ==nil
    puts "This word doesn't exist !"
    else
      print "#{s} => ",hash_two[s]
    end
  end

  end

