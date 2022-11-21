#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "broccoli"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/broccolipatch")
  
  karel = BroccoliPicker.new(1, 6, Robota::NORTH, 0)
  
  karel.move1_and_pick
  karel.move
  karel.turn_left
  karel.move1_and_pick
  karel.moveback2_and_pick
  karel.turn_right
  karel.move 
  karel.turn_right
  karel.move1_and_pick
  karel.moveback2_and_pick
  karel.moveback2_and_pick
  karel.turn_left
  karel.move
  karel.turn_left
  karel.move1_and_pick
  karel.moveback2_and_pick
  karel.moveback2_and_pick
  karel.moveback2_and_pick
  karel.turn_right
  karel.move 
  karel.turn_left
  karel.move1_and_pick
  karel.move2_and_pick 
  karel.move2_and_pick
  karel.turn_right
  karel.move 
  karel.turn_right
  karel.move1_and_pick
  karel.move2_and_pick
  karel.turn_left
  karel.move 
  karel.turn_left
  karel.move1_and_pick 

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