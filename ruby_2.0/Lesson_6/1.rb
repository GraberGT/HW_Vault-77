def ask(str)
  return puts "Incorrect request" if str.class != String
    case str
      
    when "Time"
      puts Time.now.strftime("%H:%M")
    
    when "Date"
      puts Time.now.strftime("%d:%m:%y")
    
    when "Day"
      puts Time.now.strftime("%A")
    
    when "Remaining days"
      t = Time.now
      day = t.yday
      puts 365 - day.to_i
      print 366 - day.to_i; "If leap year"
    
    when "Remaining weeks"
      puts Time.now.strftime("%W").to_i - 52
    
  end    
end


