class Customer
  attr_accessor :name, :age 
  
  @@all = [] 
  
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_meal(waiter, total, tip=0) #pass customer in as self, that way it refers to the specific instance. Through this, you can create a new meal as a customer and have all the attibutes associated to the Customer instance
    Meal.new(waiter, self, total, tip)
  end
  
  def meals
end