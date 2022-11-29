#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "rearrange"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/arrangement")
  karel = Rearrange.new(4, 3, Robota::EAST, 78)

  karel.move_twice
  karel.pick_beeper
  karel.turn_left
  karel.pickhalfrow
  karel.turn_around
  karel.move_twice
  karel.pickhalfrow
  karel.turn_around
  karel.move_twice
  karel.put_beeper
  karel.turn_left
  karel.puthalfrow
  karel.turn_around
  karel.move_twice
  karel.puthalfrow


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