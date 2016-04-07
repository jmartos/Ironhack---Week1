
class ShoppingCart
  attr_accessor :name, :price, :cost, :amount
  def initialize 
    @items = []
  end

  def add_cart (item)
    item.item_cost
    @items.push(item)
  end

  def cart_show
    @items.each do |item|
      puts "#{item.amount} #{item.name}: #{item.cost}"
    end
  end

  def cart_cost
     total_price_of_cart = 0
    @items.each do |item|
      total_price_of_cart += item.cost
    end
    puts "---------------\nThe total price of your shopping is: #{total_price_of_cart}"
  end
end

class Item
  attr_accessor :name, :price, :cost, :amount, :grapeamount
  def initialize (name, price)
    @name = name
    @price = price
    @cost = cost
    @amount = amount
    @@grapeamount = grapeamount
  end
end

class Spec_ofer_apples < Item

  def season
    t = Time.now
    day_hash = t.yday
    case day_hash
      when 0..91 
        @price = 12
      when 92..183 
        @price = 10
      when 184..274 
        @price = 10
      when 275..365 
        @price = 15
      end 
    end

  def item_cost
    puts "How many #{@name} do you want?"
    @amount = gets.chomp.to_f
    if @amount.to_i.even? == true
      @price = (@price/2)
    else
      @price
    end
    @cost = @amount*@price
  end
end

class Spec_ofer_oranges < Item
  def season
    t = Time.now
    day_hash = t.yday
    case day_hash
      when 0..91 
        @price = 5
      when 92..183 
        @price = 5
      when 184..274 
        @price = 2
      when 275..365 
        @price = 5
      end 
    end

  def item_cost
    puts "How many #{@name} do you want?"
    @amount = gets.chomp.to_f
    if @amount == 3
      @cost = 10.0
    else
      @cost = @amount*@price
    end
  end
end

class Spec_ofer_grapes < Item
  attr_accessor :name, :price, :cost, :amount, :grapeamount

    # @@grapeamount = 4 

    def item_cost
    puts "How many #{@name} do you want?"
    @amount = gets.chomp.to_f
    if @amount == 4
     puts "******You win a banana!******"
    end
    @cost = @amount*@price
    @@grapeamount = @amount
    end


end

class Spec_ofer_bananas < Item
    attr_accessor :name, :price, :cost, :amount, :grapeamount
    
    def season
    t = Time.now
    day_hash = t.yday
    case day_hash
      when 0..91 
        @price = 21
      when 92..183 
        @price = 20
      when 184..274 
        @price = 20
      when 275..365 
        @price = 20
      end 
    end

  def item_cost
    
    puts "How many #{@name} do you want?"
    @amount = gets.chomp.to_f
    
    if@@grapeamount == 4
      @amount += 1
    end

    @cost = @amount*@price
  end
end

class Watermelon < Item
  def season
    if Time.now.sunday?
     @price = 100
   end
    end

  def item_cost
    puts "How many #{@name} do you want?"
    @amount = gets.chomp.to_f
    @cost = @amount*@price
  end
end

my_cart = ShoppingCart.new

apples = Spec_ofer_apples.new("apples", 10)
oranges = Spec_ofer_oranges.new("oranges", 5)
grapes = Spec_ofer_grapes.new("grapes", 15)
banana = Spec_ofer_bananas.new("banana", 20)
watermelon = Watermelon.new("watermelon", 50)


apples.season
oranges.season
banana.season
watermelon.season

my_cart.add_cart(apples)
my_cart.add_cart(oranges)
my_cart.add_cart(grapes)
my_cart.add_cart(banana)
my_cart.add_cart(watermelon)

my_cart.cart_show
my_cart.cart_cost






