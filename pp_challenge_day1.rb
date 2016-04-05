#require 'pry'

class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

  array_of_languages = [ruby, python, javascript, go, rust, swift, java]

  def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

  def obj_printer(obj)
    puts "Language: #{obj.name} |  Age: #{obj.age} |  Type System: #{obj.type}"
  end

#array_printer(array_of_languages)

aged_languages = array_of_languages.map {|item| ProgrammingLanguage.new(item.name, item.age+=1, item.type)}

puts "The programming languages aged one year are: "
#array_printer(aged_languages)

sort_array = aged_languages.sort_by {|x| x.age}

#array_printer(sort_array)

delete_array = sort_array.delete_if {|x| x.name == "Java"}

#array_printer(delete_array)

shuffle_array = delete_array.shuffle

#array_printer(shuffle_array)

taken_array = delete_array.take_while {|x| x.age < 20}


#array_printer(taken_array)
#binding.pry
sample_obj = sort_array.sample
# aux = ProgrammingLanguage.new (sample_obj.name, sample_obj.age, sample_obj.type)
#obj_printer(sample_obj)

last_array = array_of_languages.map! { | language | language.name + "!!!"}

array_printer(last_array)
#dropped_array = shuffle_array.drop(shuffle_array.length)

#array_printer(dropped_array)
