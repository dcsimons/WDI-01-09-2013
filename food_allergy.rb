# file path:  DSimons/WDI/01 09 2013/food_allergy.rb

pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]

class AllergyError < ArgumentError

end



class Person

	def initialize(stomach_arr=[], allergy_str)
		@stomach_arr = stomach_arr
		@allergy_str = allergy_str
	end

	def eat(food_arr)
		person_stomach_arr = @stomach_arr
		food_arr.each do |ingredient|
			if ingredient == @allergy_str
				begin
					raise AllergyError.new("You are allergic to #{ingredient}!")
				rescue AllergyError => e
					puts "DO NOT EAT #{e}!"
				end
			else
				person_stomach_arr << ingredient
				puts "#{ingredient} tasting good!"
			end
		end
		puts "My stomach is full of #{person_stomach_arr}."
	end

end

Chris = Person.new("gluten")
Chris.eat(water)
Chris.eat(pizza)

Beth = Person.new("scallops")
Beth.eat(pizza)
Beth.eat(pan_seared_scallops)