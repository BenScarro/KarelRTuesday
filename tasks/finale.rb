#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "columnmaker"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/tache_finale_b.kwld")
  

  karel = Columnmaker.new(1, 1, Robota::EAST, 0)

  karel.sweep_sequence
  tracknumber = 0
  karel.colsequence(tracknumber)
 


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