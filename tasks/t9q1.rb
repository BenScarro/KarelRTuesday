#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "custommove"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World

  karel = Conditionedmoverobot.new(1, 1, Robota::NORTH, INFINITY)
  karel.move


end

if __FILE__ == $0
  if $graphical
     screen = window(30, 60) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end