class Waiter
  attr_accessor :name, :yrs_experience
  
  @@all = []
  
  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def add_meal(customer, total, tip) #same as Customer instance, only swapping self to the Waiter's spot
    Meal.new(self, customer, total, tip)
  end
end