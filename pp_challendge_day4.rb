require 'ruby-dictionary'
require 'pry'

class WordChain
  def initialize(start, final)
  	@dictionary = Dictionary.from_file("/usr/share/dict/words")	
    @start = start
    @final = final

  end
  def find_chain
    if @start.length != @final.length
      puts "Las palabras no son de la misma longitud"
    else
    	change_letters
    end
  end

  def change_letters

    @start.each_char.with_index do |first_char, index|
      if first_char != @final[index]
      	current_word = @start.clone
      	current_word[index] = @final[index]
          # binding.pry
        puts current_word
      
      end
    end
  end
end

  my_chain = WordChain.new("cat", "dog")
  my_chain.find_chain
  