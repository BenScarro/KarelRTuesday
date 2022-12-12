#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "hello"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World

  karelH = Hrobot.new(1, 1, Robota::NORTH, INFINITY)
  karelE = Erobot.new(1, 6, Robota::NORTH, INFINITY)
  karelL = Lrobot.new(1, 10, Robota::NORTH, INFINITY)
  karelL2 = Lrobot.new(1, 14, Robota::NORTH, INFINITY)
  karelO = Orobot.new(1, 18, Robota::NORTH, INFINITY)

  karelH.ecrit_lettre
  karelE.ecrit_lettre
  karelL.ecrit_lettre
  karelL2.ecrit_lettre
  karelO.ecrit_lettre




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