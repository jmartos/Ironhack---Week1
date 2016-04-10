
#Very First Version

class Room
  attr_accessor :name, :text, :exit
  def initialize (name, text, exit)
    @name = name
    @text = text
    @exit = exit
  end
end

room1 = Room.new "Forest", "You are in the forest", "n"
room2 = Room.new "Castele", "You are in the castle", "e"
room3 = Room.new "Tower", "You are in the tower", "e"
room4 = Room.new "Mountain", "You are in the mountain", "s"

class Player 
  def initialize (player, actual_room)
    @player = player
    @actual_room = actual_room
    #lifes = [0..10]
  end

  # def show (room)
  #   @room.push(room)
  #   puts "#{@room}"
  # end

  def player_name
    puts "Welcome to the game of rooms, introduce your name please"
    @player = gets.chomp
  end

  def move
    puts "Choose a direction n, s, e, w"
    dir = gets.chomp
    if dir == @room.exit
      puts "Great! Go to the next room"
      #change_room
    else
      puts "Sorry, try again"
      #self.move
      lifes-1
    end
  end

  def change_room
    if @actual_room = room1
      @actual_room = room2
      elsif @actual_room = room2
      @actual_room = room3
      elsif @actual_room = room3
      @actual_room = room4
      elsif @actual_room = room4
       puts "You Win!!!"
     end
        
     
        
  end

  # def loose
  #   if lifes = 0
  #     puts "You loose!! Try again!"
  #     #self. iniciar de nuevo
  #   end
  end


end


javi = Movement.new (room1)
#javi.show(room1)
javi.move
