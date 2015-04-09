## We have to describe this first. 
## There are many things communicating with each other. 

## The CRM class is the menu that gets you where you need to be. 
## The Contact_Editor class defines the attributes I want to change or add.
## The Contact_Editor class passes that information over to the rolodex,
## where everything is stored. 
require_relative 'rolodex'

class CRM

	def initialize
		@rolodex = Rolodex.new
	end

	def print_main_menu
		puts ' ---------------------------------- '
		puts 'Main Menu. Welcome to Contact Book.'
		puts ''
		puts '[1] List All Contacts'
		puts '[2] Add New Contact' 
		puts '[3] Edit Contact Information'
		puts '[4] Sort By'
		puts '[5] Import Existing CRM'
		puts '[6] Save Current CRM Database'
		puts ' '
		puts 'What would you like to do today? [Select Number]'
		puts ' ---------------------------------- '
		print 'Selection: '
		@input = gets.chomp.to_i 
		puts ' ---------------------------------- '
		decision(@input)
	end

	def decision(input)
		if @input == 1 then list_contacts end
		if @input == 2 then add_new_contact end
		if @input == 3 then edit_contact_information end	
	end

	def add_new_contact
		puts "What's the first name of the contact?"
		first_name = gets.chomp.to_s
		puts "What's the last name of the contact?"
		last_name = gets.chomp.to_s
		puts "Thank You."
		@rolodex.add_contact(first_name, last_name)
		puts "Added name: #{first_name} #{last_name}"
		print_main_menu
	end

	def list_contacts	
		@rolodex.contacts.each { |file| puts file } 
		print_main_menu
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

menu = CRM.new 
menu.print_main_menu 

