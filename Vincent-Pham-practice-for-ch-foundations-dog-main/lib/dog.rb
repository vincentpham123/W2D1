class Dog
  def initialize(name, breed, age, bark,favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods =favorite_foods
  end
  # simple getters
  def name 
    @name
  end
  # simple getters
  def breed
    @breed
  end
  # simple getters
  def age
    @age 
  end
  #simple getter
  def favorite_foods
    @favorite_foods
  end
  #setter
  def age= number
      @age= number
  end
  #bark, conditional getter
  def bark 
      if @age >4 
          return @bark.upcase 
      else 
          return @bark.downcase 
      end
  end
      
  def favorite_food?(string)
      @favorite_foods.any? {|food| food.downcase == string.downcase}
  end
end