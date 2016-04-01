require 'pry'
class ShoppingCart
  def initialize 
    @items = []
  end

  def add_cart (item)
    @items.push(item)
  end

  def price_of_cart
    total_price_of_cart = 0
    @items.each do |item|
      total_price_of_cart += item.price
    end
    total_price_of_cart
  end

  def special_discount
    if @items > 5
      total_price_of_cart * 0.90
    else 
      total_price_of_cart
    end
  end
end




class Item 
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
      @price
  end

end

class Houseware < Item
  def price
    if @price > 100 
      @price * 0.95
    else
      @price
    end 
  end
end

class Fruit < Item
  def price
    if Time.now.saturday? || Time.now.sunday?
      @price * 0.90
    else
      @price
    end
  end
end



banana = Fruit.new("Banana", 10)
orange_juice = Fruit.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

puts banana.price
puts orange_juice.price
puts rice.price
puts vacuum_cleaner.price
puts anchovies.price


john_cart = ShoppingCart.new
john_cart.add_cart(banana)
john_cart.add_cart(rice)
puts john_cart.price_of_cart

paul_cart = ShoppingCart.new
paul_cart.add_cart(banana)
paul_cart.add_cart(orange_juice)
paul_cart.add_cart(rice)
paul_cart.add_cart(vacuum_cleaner)
paul_cart.add_cart(anchovies)
paul_cart.add_cart(banana)
paul_cart.add_cart(orange_juice)
puts paul_cart.price_of_cart



