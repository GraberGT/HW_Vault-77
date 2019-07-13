def ask(string)


    puts "Incorrect Request" if string.class != string

    case 

	when "Time" 
	puts Time.now.strftime("%H:%M") 

    	when "Date"
    	puts Time.now.strftime("%d:%m:%y") 
		
	when "Day"
	puts Time.now.strftime("%A") 

	when "Remaining days"
	days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]	
        
        if year % 4 == 0 || year % 400 == 0 || year % 100 != 0
        
        days[1] = 29 if month == 1
        result = day

	end

	sum = days[0...(month - 1)].sum + day
        
        puts Time.now.strftime("%j").to_i - day

	when "Remaining weeks"
	puts Time.now.strftime("%W").to_i - 52 	
        
     end

end

ask('string')
