hash = {January: 31, February: 28, March: 31, April: 30, May: 31, June: 30, July: 31, August: 30, September: 30, October: 31, November: 30, December: 31}

hash.each {|months, days| puts months if days == 30}
