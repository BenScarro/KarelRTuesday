#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "areasweeper"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/aleatoire.kwld")

  karel = Areasweeper.new(11, 10, Robota::SOUTH, INFINITY)

  karel.sweep_area
 


end

if __FILE__ == $0
  if $graphical
     screen = window(30, 100) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end