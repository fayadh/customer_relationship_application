class Rolodex
	attr_accessor :first_name, :last_name, :contacts

	def initialize
		@contacts =  Array.new
		# @first_name = first_name
	end

	def add_contact(first_name, last_name)
		# id = @contacts.length
		@contacts.push(first_name, last_name)
	end
end