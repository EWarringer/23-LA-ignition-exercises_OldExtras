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
end

ingredient = Ingredient.new(47.0, "lb(s)", "Brussels Sprouts")
puts ingredient.summary

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

class Recipe
  def initialize(name, instructions, ingredients)
    @name = name
    @instructions = instructions
    @ingredients = ingredients
  end

  def summary
    puts "\nName: #{@name}"
    puts "\nIngredients"
    items
Instructions
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
end

brussel_sprouts = Recipe.new(
"Roasted Brussels Sprouts",
[
    "Preheat oven to 400 degrees F.",
    "Cut off the brown ends of the Brussels sprouts.",
    "Pull off any yellow outer leaves.",
    "Mix them in a bowl with the olive oil, salt and pepper.",
    "Pour them on a sheet pan and roast for 35 to 40 minutes.",
    "They should be until crisp on the outside and tender on the inside.",
    "Shake the pan from time to time to brown the sprouts evenly.",
    "Sprinkle with more kosher salt ( I like these salty like French fries).",
    "Serve and enjoy!"
    ],
    [
    Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
    Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
    Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
    Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
])
brussel_sprouts.summary
