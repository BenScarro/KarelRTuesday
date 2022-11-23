#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "clockworker"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/clockface")
  
  karel = ClockWorker.new(2, 2, Robota::SOUTH, 78)

  karel.turn_left
  karel.move
  karel.move
  karel.move
  karel.move
  karel.turn_left
  karel.place_number6
  karel.climb_rightup
  karel.turn_right
  karel.move
  karel.turn_left
  karel.place_number5
  karel.climb_rightup
  karel.move
  karel.place_number4
  karel.move
  karel.place_number3
  karel.move
  karel.turn_left
  karel.climb_rightup
  karel.place_number2
  karel.climb_rightup
  karel.move
  karel.place_number1
  karel.move
  karel.place_number12
  karel.move
  karel.turn_left
  karel.climb_rightup
  karel.place_number11
  karel.climb_rightup
  karel.move
  karel.place_number10
  karel.move
  karel.place_number9
  karel.move
  karel.turn_left
  karel.climb_rightup
  karel.place_number8
  karel.climb_rightup
  karel.move
  karel.place_number7


end

if __FILE__ == $0
  if $graphical
     screen = window(15, 90) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end