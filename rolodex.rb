class Rolodex
	attr_accessor :first_name, :last_name, :contacts

	def initialize
		@contacts =  Array.new
		# @first_name = first_name
	end

	def add_contact(first_name, last_name)
		id = @contacts.length + 1
		entry = Array.new
		entry.push("#{id} #{first_name} #{last_name}")
		@contacts.push(entry)
	end 

	def print_edit_contact
		puts "What would you like to edit?"
		puts "[1] first_name"
		puts "[2] last_name"
		puts "[3] address"
		puts "[4] e-mail"
		puts "[5] telephone"
		print "Selection: "
		decision = gets.chomp.to_i
		if decision == 1 then edit_first_name end
	end

	def edit_first_name
		
	end

	def edit_last_name
	end

	def edit_address
	end

	def edit_email
	end
end