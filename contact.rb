contacts = []
option = ''
while option != "exit"
	contact_menu = ["", "-- Contact Menu --", "1: List Contacts", 
					"2: Create New", "3: Edit Contact", "4: Delete Contact",
					"5: Print Array", "6: Exit"]
	contact_menu.each do |menu|
		puts menu
	end
	print "> "
	option = gets.strip
	case option
	when "1"
			puts "All Contacts:" 
			contacts.each do |cont|
				puts cont
			end
	when "2"
			puts "Please Enter Contact Information:"
			contacts << gets.strip.downcase
			puts "Added: #{contacts.last}"
	when "3"
			puts "Edit - Enter a name:"
			edit_name = gets.strip.downcase
			puts "Selected #{edit_name}. Edit?"
			if gets.strip == "yes"
				puts "Enter a new name:"
				new_name = gets.strip.downcase
				puts "Replace #{edit_name} with #{new_name}?"
					if gets.strip == "yes"
						contacts.delete_if{ |e| e == "#{edit_name}"}
						contacts.push("#{new_name}")
						puts "#{edit_name} has been changed to #{new_name}."
					else
						puts "Did not edit."
					end
			else
				puts "Did not edit."
			end
	when "4"
			puts "Delete - Enter a name:"
			delete_name = gets.strip.downcase
			puts "Selected #{delete_name}. Delete?"
				if gets.strip == "yes"
					contacts.delete_if{ |d| d == "#{delete_name}"}
					puts "#{delete_name} has been removed!"
				else
					puts "#{delete_name} will not be destroyed."
				end
	when "5"
		puts "#{contacts}" # Wanted to look at the array 
	when "6", "exit" 
		puts "Closing Contacts"
		exit
	else
		puts "Enter a valid option"
	end
end	


