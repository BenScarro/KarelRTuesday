#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "basketrunner"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/basket")

  karel = Basketrunner.new(2, 5, Robota::EAST, 0)

  karel.turn_around
  karel.pass_wall1
  karel.turn_right
  karel.pass_wall2
  karel.pick_cluster
  karel.turn_right
  karel.move
  karel.pick_cluster
  karel.turn_around
  karel.move
  karel.turn_left
  karel.move 
  karel.pick_cluster
  karel.back_up
  karel.pass_wall2
  karel.turn_left
  karel.pass_wall1
  karel.move 
  karel.turn_left
  karel.move_twice
  karel.turn_left
  karel.pass_wall1
  karel.turn_left
  karel.move
  karel.pick_cluster
  karel.turn_left
  karel.move
  karel.turn_left
  karel.pass_wall2
  karel.move_twice
  karel.turn_right
  karel.pass_wall2
  karel.turn_right
  karel.move
  karel.put_cluster
  karel.put_cluster
  karel.put_cluster
  karel.put_cluster
  karel.back_up




end

if __FILE__ == $0
  if $graphical
     screen = window(15, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end