class String
  def int
    Integer(self) rescue nil
  end
end

def add(x,y)
	x + y 
end

def sub(x,y)
	x - y
end
def div(x,y)
	(x/1.00) / y
end
def mul(x,y)
	x * y
end
def expo(x,y)
	x ** y
end
def root(x,y)
	x ** (1.00 / y)
end

	def calc
	    puts "Please select calculator type '(b)asic' or '(a)dvanced' or (q)uit"
	    type = gets.chomp
		 	if type == "b"
			basicCalc
		 	elsif type == "a"
			advancedCalc
			elsif type == "q"
				puts "Thank you, goodbye"
				exit
			else
				puts "Please type 'b', 'a', or 'q'!" 
				calc
			end
	end

	def basicCalc
		puts "Welcome to the basic calculator. Please type what kind of operation you would like to do. (a)dd, (s)ubtract, (m)ultiply, (d)ivide"			
			basicOperation = gets.chomp
				puts "Please enter first number"
				first_number = gets.chomp
						while first_number.to_i == 0 
						puts "Please enter a valid integer!"
						first_number = gets.chomp
						end
				puts "Please enter the second number."
				second_number = gets.chomp
						while second_number.to_i == 0 
						puts "Please enter a valid integer!"
						second_number = gets.chomp
						end
									if basicOperation == "a"
										
										puts "#{first_number} plus #{second_number} equals #{add(first_number.to_i,second_number.to_i)} "
								
									elsif basicOperation == "s"
										
										puts "#{first_number} minus #{second_number} equals #{sub(first_number.to_i,second_number.to_i)} "

									elsif basicOperation == "d"
										
										puts "#{first_number} divided by #{second_number} equals #{div(first_number.to_i,second_number.to_i)} "
									
									elsif basicOperation == "m"
										
										puts "#{first_number} times #{second_number} equals #{mul(first_number.to_i,second_number.to_i)} "
									else
											puts "Please enter the first letter of one of the four choices 'add, subtract, multiply, or divide'."
											basicOperation = gets.chomp
									end
			calc
	end		

	def advancedCalc
		puts "Welcome to the advanced calculator. Please type what kind of operation you would like to do. (r)oot or (e)xponent."
		advOperation = gets.chomp
		until advOperation == "r" or advOperation == "e"
			puts "Please enter either 'r' for root or 'e' for exponent."
			advOperation = gets.chomp
		end
			puts "Please enter the first number."
			first_number = gets.chomp
			while first_number.to_i == 0 
				puts "Please enter a valid integer!"
				first_number = gets.chomp
			end
			puts "Please enter the second number."
			second_number = gets.chomp
			while second_number.to_i == 0 
					puts "Please enter a valid integer!"
					second_number = gets.chomp
			end
					if advOperation == "r"
					puts "#{first_number} root #{second_number} equals #{root(first_number.to_i,second_number.to_i)} "
					elsif advOperation == "e"
					puts "#{first_number} to the power of #{second_number} equals #{expo(first_number.to_i,second_number.to_i)} "
					else
						puts "Error"
					end
					calc
				
			
	end


calc
