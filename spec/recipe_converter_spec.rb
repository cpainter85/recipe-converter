require_relative '../recipe_converter'

RSpec.describe RecipeConverter do
  let(:ingredients) { RecipeConverter.new([{'salt' => 480}, {'oil' => 720} ])}

  describe '#to_tablespoons' do
    it 'returns list of ingredients with amounts in tablespoons' do
      ingredients_in_tablespoons = ingredients.to_tablespoons
      expected_output = [{'salt' => 32}, {'oil' => 48}]
      expect(ingredients_in_tablespoons).to eq(expected_output)
    end
  end

  describe '#to_cups' do
    it 'returns list of ingredients with amounts in cups' do
      ingredients_in_cups = ingredients.to_cups
      expected_output = [{'salt' => 2}, {'oil' => 3}]
      expect(ingredients_in_cups).to eq(expected_output)
    end
  end
end
