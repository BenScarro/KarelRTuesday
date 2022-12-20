#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "areasweeper2"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/aleatoire.kwld")

  karel = Areasweeper2.new(11, 10, Robota::SOUTH, INFINITY)

  karel.sweep_row1
  karel.place_edgemarker
  karel.put_beeper # this is an extra beeper because it will get accidently picked up by the area_sweep loop
  karel.turn_around
  karel.row_move
  karel.place_edgemarker
  karel.turn_around
  karel.row_move
  karel.sweep_area
  karel.place_edgemarker
  karel.turn_around
  karel.row_move
  karel.place_edgemarker
  karel.back_up
 


end

if __FILE__ == $0
  if $graphical
     screen = window(30, 89) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end