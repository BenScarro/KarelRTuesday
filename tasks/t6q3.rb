#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "relayracer"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  karel1 = Relayracer.new(1, 1, Robota::NORTH, 1, :yellow)
  karel2 = Relayracer.new(2, 1, Robota::EAST, 0, :red)
  karel3 = Relayracer.new(2, 2, Robota::SOUTH, 0, :blue)
  karel4 = Relayracer.new(1, 2, Robota::WEST, 0, :green)
  
  karel1.firstpass
  karel2.pass
  karel3.pass
  karel4.pass
  karel4.pass
  karel1.pass
  karel2.pass
  karel3.pass
  karel3.pass
  karel4.pass
  karel1.pass
  karel2.pass
  karel2.pass
  karel3.pass
  karel4.pass
  karel1.pass




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