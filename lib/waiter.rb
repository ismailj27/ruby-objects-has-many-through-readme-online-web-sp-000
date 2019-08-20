require "pry"
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
  
  def new_meal(a_customer, a_total, a_tip)
    Meal.new(a_customer, self, a_total, a_tip)
  end
  
  def meals
    meals_arr = []
    Waiter.all.each do |d_waiter|
      if d_waiter.name == self.name
        meals_arr << d_waiter
      end
    end
    meals_arr
  end
  
  def best_tipper
    Customer.all.each do |d_customer|
      meals.each do |d_meal|
      binding.pry
      end 
    end
  end
  
 
end