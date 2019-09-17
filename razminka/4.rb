string = 'aabbbcccd'

def hash_symbol(string)
  key = string.chars                   #Перевожу строку в массив (разбитый по символам)
  h = Hash.new(0)                      #Если создаю хэш через h = {}, не работает
  key.each { |n| h.store(n, h[n]+1) }  #Здесь уже идет перебор хэша .store ассоциирует значение value с ключем key		
  p h 
end

hash_symbol(string)

