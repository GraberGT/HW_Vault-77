# frozen_string_literal: true

Dir['./Lesson_21/*.rb'].sort.each { |file| require file }

def list_carriage(train)
  train.each_carriage do |carriage|
    puts(train.carriage.index(carriage) + 1).to_s + if carriage.type == 'cargo'
                                                      ", cargo, #{carriage.free_volume}, #{carriage.engadged_volume}"
                                                    else
                                                      ", passenger, #{carriage.free_seats}, #{carriage.engadged_seat}"
        end
  end
end

station = Station.new

train1 = PassengerTrain.new('001-11')
train2 = CargoTrain.new('002-22')
train3 = PassengerTrain.new('003-33')

carriage1 = Cargowagon.new(20)
carriage2 = Passengerwagon.new(10)
carriage3 = Cargowagon.new(15)
carriage4 = Passengerwagon.new(5)

station.take_train(train1)
station.take_train(train2)
station.take_train(train3)
station.each_train { |train| puts "#{train.number}, #{train.type}, #{train.carriage}" }

train2.add_carriage(carriage1)
train2.add_carriage(carriage3)
list_carriage(train2)

train1.add_carriage(carriage2)
train1.add_carriage(carriage4)
list_carriage(train1)

route1 = Route.new(ala, ast)
route2 = Route.new(la, sa)

train_lambda = ->(train) { p "#{train.number} => #{train}" }
my_proc = proc { |train| p "#{train.number} => #{train}" }
a.block_test('STRING', &my_proc)
a.block_test(&my_proc)
a.block_test { |_train| p 'bad' }
