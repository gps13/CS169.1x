class Dessert
  attr_accessor :name, :calories
  def initialize(name, calories)
    @name=name
    @calories=calories
  end
  def healthy?
    @calories<200
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @name = "#{flavor} jelly bean"
    @calories = 5
    @flavor = flavor
  end
  def delicious?
    @flavor != 'licorice'
  end

end

cake = Dessert.new('cake', 400)
puts cake.name
puts cake.calories
puts cake.healthy?
puts cake.delicious?
puts '---------------------------'
apple = Dessert.new('apple', 75)
puts apple.name
puts apple.calories
puts apple.healthy?
puts apple.delicious?
puts '---------------------------'
jelly = JellyBean.new('vanilla')
puts jelly.name
puts jelly.calories
puts jelly.healthy?
puts jelly.delicious?
puts '---------------------------'
jelly2 = JellyBean.new('licorice')
puts jelly2.name
puts jelly2.delicious?