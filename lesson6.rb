def ask(string)


	puts "Incorrect Request" if string.class != a

    case a

	when "Time" 
	puts Time.now.strftime("%H:%M") 

    	when "Date"
    	puts Time.now.strftime("%d:%m:%y") 
		
	when "Day"
	puts Time.now.strftime("%A") 

	when "Remaining days"
        puts Time.now.strftime("%j") 

	when "Remaining weeks"
	puts Time.now.strftime("%W") 	
        
        end

end

ask('string')
