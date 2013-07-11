class Haunted_Home
	attr_accessor :name
	attr_accessor :street
	attr_accessor :floor_count
	attr_accessor :basement

	def intro
		puts "You have entered the #{name} home which is located in #{street} and has #{floor_count} floors. What would you like to do? Explore or Leave?"
	end

	def inside_home
		puts "You have now entered the #{name} home. "
	end

end 

puts "Welcome to the haunted house game, please select a location between Hempstead, Mineola and Garden City"
first_input = gets.chomp.downcase

	hempstead = Haunted_Home.new
	hempstead.name = "Hempstead"
	hempstead.street = "Hempstead, NY"
	hempstead.floor_count = "4"
	hempstead.basement = true 


	mineola = Haunted_Home.new
	mineola.name = "Mineola"
	mineola.street = "Mineola, NY"
	mineola.floor_count = "2"
	hempstead.basement = false


	garden_city = Haunted_Home.new
	garden_city.name = "Garden City"
	garden_city.street = "Garden City, NY"
	garden_city.floor_count = "1"
	garden_city.basement = true
 


	if first_input == "hempstead" 
		puts hempstead.intro
	elsif first_input == "mineola"
		puts mineola.intro
	elsif first_input == "garden city"
		puts garden_city.intro 
	else
		puts "Please try again and enter a valid home"
	end
	

second_input = gets.chomp.downcase

	if second_input == "explore"
		puts "You decided to explore the home and came accross a gruesome monster!! Do you attack or run away?"
	elsif second_input == "leave"
		puts "You have unknowingly averted danger and are better off than your peers. Hurray for your life!"
	abort  
	else 
		puts "Please enter a valid option and try again!"
	end

third_input = gets.chomp.downcase

	if third_input == "attack" && first_input == "hempstead"
		puts "You successfully landed a few punches on the beast and made it out alive!!"
	elsif third_input == "attack" && first_input == "mineola"
		puts "Unfortunately, the monster cornered you and defeated you :("
	elsif third_input == "attack" && first_input == "garden city"
		puts "You defeated the monster but with lots of injury, you better get to a hospital!"
	elsif third_input == "run away" && first_input == "hempstead"
		puts "Your escape attempt was unsuccessful because you were on the 4th floor and the monster caught up to you"
	elsif third_input == "run away" && first_input == "mineola"
		puts "Hurray! you escaped!"
	elsif third_input == "run away"
		puts "You successfully escaped!"
	end