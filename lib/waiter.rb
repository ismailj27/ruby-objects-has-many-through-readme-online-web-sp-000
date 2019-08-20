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
    Meal.new(self, a_customer, a_total, a_tip)
  end
  
  def meals
    meals_arr = []
    Meal.all.each do |d_meal|
      if d_meal.waiter.name == self.name
        meals_arr << d_meal
      end
    end
    meals_arr
  end
  
  #Object relationships Waiter #best_tipper returns the Customer instance associated with the meal that received the largest tip
  
  def best_tipper
    Customer.all.each do |d_customer|
      meals.each do |d_meal|
        binding.pry
        if d_meal.customer.name == d_customer.name && 
          hst_tipper = d_customer
        end
      end 
    end
  end
  
 
end