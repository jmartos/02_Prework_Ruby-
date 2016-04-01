class ShakeShop
  def initialize 
    @milkshakes = [ ]
  end

  def add_milkshakes (milkshake)
    @milkshakes.push(milkshake)
  end

  def checkout
    result = ""
    @milkshakes.each do |milkshake|
      result << milkshake.show_milkshake 
    end
    result
  end
end


class MilkShake
  def initialize (name)
    @name = name
    @base_price = 3
    @ingredients = [ ]    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def list_ingredients
    ingredients = ""
    @ingredients.each do |ingredient|
      ingredients << ingredient.name + ", "
    end
    ingredients
  end

  def price_of_milkshake
  total_price_of_milkshake = @base_price
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
   total_price_of_milkshake
  end

  def show_milkshake
    "The #{@name} has #{list_ingredients}and costs #{price_of_milkshake} euros.\n"
  end
end


class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end


banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
strawberry = Ingredient.new("Strawberry", 2)
cookies = Ingredient.new("Cookies", 1)
orange_juice = Ingredient.new("Orane Juice", 3)
apple = Ingredient.new("Apple", 2)
caviar = Ingredient.new("Caviar", 50)


nizars_milkshake = MilkShake.new("Nizars")
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)


javi_milkshake = MilkShake.new("Javi`s")
javi_milkshake.add_ingredient(orange_juice)
javi_milkshake.add_ingredient(apple)
javi_milkshake.add_ingredient(strawberry)


golden_milkshake = MilkShake.new("Golden")
golden_milkshake.add_ingredient(orange_juice)
golden_milkshake.add_ingredient(caviar)


ironshake = ShakeShop.new
ironshake.add_milkshakes(nizars_milkshake)
ironshake.add_milkshakes(javi_milkshake)
ironshake.add_milkshakes(golden_milkshake)

puts ironshake.checkout