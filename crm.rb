class MainMenu
	def initialize
		@contacts = ['fayadh', 'daniel', 'never', 'harlem', 'anderson']
	end

	def run 
		puts ' ---------------------------------- '
		puts 'Main Menu. Welcome to Contact Book.'
		puts ''
		puts '[1] List All Contacts'
		puts '[2] Add New Contact' 
		puts '[3] Edit Contact Information'
		puts '[4] Sort By'
		puts ' '
		puts 'What would you like to do today? [Select Number]'
		puts ' ---------------------------------- '
		print 'Selection: '
		@input = gets.chomp.to_i 
		puts ' ---------------------------------- '

		if @input == 1 then list_contacts end
		if @input == 2 then add_new_contact end
	end

	def add_new_contact
		#This is what holds all our contacts.
		puts "What's the first name of the contact?"
		input = gets.chomp.to_s
		@contacts.push(input) 
		puts "Added name: #{input}"
	end

	def list_contacts	
		@contacts.each { |file| puts file }
		echo "clear"  
		run
	end


	def sort_contacts
		@contacts.sort
	end

	def edit_contact_information
		puts " ---------------------------------- "
		puts"Please Choose User: "
		user = gets.chomp.to_s
		@contacts.find { |data| data == user} 
		puts "What would you like to edit?"
		puts "[1] First Name"
		puts "[2] Last Name"
		puts "[3] E-mail"
		puts "[4] Telephone number"
		puts " ---------------------------------- "
		puts "Selection:"
		puts " ---------------------------------- "
	end
end

menu = MainMenu.new 
menu.run 

