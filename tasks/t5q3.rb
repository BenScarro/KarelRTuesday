#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "wallmaker"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/constructionsite")
  
  karel = WallMaker.new(9, 2, Robota::SOUTH, 28)

  karel.place_firstwall
  karel.turn_left
  karel.place_wall
  karel.turn_left
  karel.place_wall
  karel.turn_left
  karel.place_finalwall
  
  

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