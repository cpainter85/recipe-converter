class RecipeConverter
  def initialize(list_of_ingredients)
    @list_of_ingredients = list_of_ingredients
  end

  def to_tablespoons
    @list_of_ingredients.each do |ingredient_set|
      ingredient_set.each_pair do |name, amount|
        ingredient_set[name] = amount/15
      end
    end
  end

  def to_cups
    @list_of_ingredients.each do |ingredient_set|
      ingredient_set.each_pair do |name, amount|
        ingredient_set[name] = amount/240
      end
    end
  end

end
