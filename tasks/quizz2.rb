#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "grinch"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/grinch.kwld")

  karel = Grinch.new(12, 4, Robota::SOUTH, 0)


  karel.chimney_set
  karel.turn_right
  karel.move
  karel.move
  karel.turn_right
  karel.move6
  karel.turn_right
  karel.move6
  karel.move 
  karel.move
  karel.turn_left
  karel.chimney_set
  karel.turn_right
  karel.move
  karel.turn_right
  karel.move
  karel.move
  karel.move
  karel.turn_left
  karel.move
  karel.turn_right
  karel.move
  karel.move
  karel.deposit_presents
  


  




end

if __FILE__ == $0
  if $graphical
     screen = window(15, 60) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end