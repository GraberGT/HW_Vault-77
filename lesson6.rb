def ask(string)

	puts "What do you want to know? Time, Date, Day, Remaining days, Remaining weeks."
    a = gets.chomp.capitalize

	puts "Incorrect Request" if string.class != a

    case a

		when "Time" 
		puts Time.now.strftime("%H:%M") if a == "Time"

    	when "Date"
    	puts Time.now.strftime("%d:%m:%y") if a == "Date"
		
		when "Day"
	    puts Time.now.strftime("%A") if a == "Day"

		when "Remaining days"
        
		puts Time.now.strftime("%j") if a == "Remaining days"

		when "Remaining weeks"
		puts Time.now.strftime("%W") if a == "Remaining weeks"	
        
        end

	end

ask('string')