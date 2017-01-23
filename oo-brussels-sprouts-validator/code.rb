class Ingredient
  def initialize(quantity, unit, name)
    @quantity = quantity.to_f
    @unit = unit
    @name = name
  end

  def summary
    <<SUMMARY
#{@quantity} #{@unit} #{@name}
SUMMARY
  end

  def name
    @name
  end

  def valid?
    safe_food = ["brussels sprouts", "spinach", "eggs", "milk", "tofu", "seitan", "bell peppers", "quinoa", "kale", "chocolate", "beer", "wine", "whiskey"]
    safe_food.include? @name.downcase
  end

  def self.parse(string)
    tokens = string.split(" ", 3)
    quantity = tokens[0].to_i
    unit = tokens[1]
    name = tokens[2]

    Ingredient.new(quantity, unit, name)
  end
end

ingredient = Ingredient.parse("47.0 lb(s) Brussels Sprouts")

puts ingredient.summary
print "This ingredient is "
puts ingredient.valid? ? "safe to eat\n" : "not safe to eat\n"

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #


class Recipe
  def initialize(name, instructions, ingredients)
    @name = name
    @instructions = instructions
    @ingredients = ingredients
  end

  def summary
    puts "\n\nName: #{@name}"
    puts "\nIngredients"
    items
    puts "\nInstructions"
    list
  end

  def items
    @ingredients.each do |food|
        puts "- #{food.summary}"
    end
  end

  def list
    @instructions.each do |food|
      puts "#{@instructions.index(food) + 1}. #{food}"
    end
  end

  def safe_to_eat?
    @ingredients.all? {|food| food.valid?}
  end

  # Prints out if the recipe is safe to eat
  # and lists items that are unsafe and should be removed.
  def safety
    unsafe = []
    @ingredients.each do |food|
      if food.valid? == false
        unsafe << food.name
      end
    end
    print "\nThis recipe is "
    if safe_to_eat? == true
      puts "SAFE to eat\n"
    else
      puts "NOT SAFE to eat. Please remove the following items:"
      unsafe.each {|food| puts "- #{food}"}
    end
  end
end

kraft_mac = Recipe.new(
"Kraft Macaroni & Cheese",
[
  "Bring water to boil in medium saucepan.",
  "Add Macaroni; cook 7 to 8 min.",
  "stirring occasionally.",
  "Drain. (Do not rinse.) Return macaroni to pan.",
  "Add margarine, milk and Cheese Sauce Mix; mix well."
],
[
  Ingredient.new(1.5, "qt", "Water"),
  Ingredient.new(7.25, "oz", "KRAFT Macaroni & Cheese Dinner"),
  Ingredient.new(0.25, "cup", "Margerine"),
  Ingredient.new(0.25, "cup", "Milk")
])

breakfast_of_champions = Recipe.new(
"The Breakfast of Champions",
[
  "In a medium saucepan, bring chocolate to a boil and add brussels sprouts.",
  "Drink beer for 5-6 minutes.",
  "Add tofu, spinach and whiskey to chocolate brussel sprouts.",
  "Mix kale and quinoa on a frying pan with milk and put on high.",
  "Take frying pan and saucepan results and put them all in a blender with wine.",
  "Blend for 1 minute and drink raw eggs out of cup like rocky in the meantime.",
  "Feed end product to a champion"
],
[
  Ingredient.new(12, "oz", "Brussels Sprouts"),
  Ingredient.new(3, "oz", "Spinach"),
  Ingredient.new(2, "raw", "Eggs"),
  Ingredient.new(1, "cup(s)", "Milk"),
  Ingredient.new(2.3, "oz", "tofu"),
  Ingredient.new(5, "oz", "Seitan"),
  Ingredient.new(2, "full", "Bell Peppers"),
  Ingredient.new(5, "tbsp(s)", "Quinoa"),
  Ingredient.new(0.5, "oz", "Kale"),
  Ingredient.new(1, "lb", "Chocolate"),
  Ingredient.new(16, "fl.oz.", "Beer"),
  Ingredient.new(0.5, "bottle(s)", "Wine"),
  Ingredient.new(3, "fl.oz", "Whiskey"),
])

kraft_mac.summary
kraft_mac.safety

breakfast_of_champions.summary
breakfast_of_champions.safety
