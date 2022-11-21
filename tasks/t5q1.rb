#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true


require_relative "../karel/ur_robot"

# a task for a stair sweeper
def task()

  
  karel = UrRobot.new(1, 5, NORTH, 10)
  karel.move
  karel.put_beeper
  karel.move
  karel.turn_left
  karel.move
  karel.put_beeper
  karel.turn_left
  karel.turn_left
  karel.move
  karel.move
  karel.put_beeper
  karel.turn_left
  karel.move
  karel.turn_left
  karel.turn_left
  karel.turn_left 
  karel.move
  karel.put_beeper
  karel.turn_left
  karel.turn_left
  karel.move
  karel.move
  karel.put_beeper
  karel.move
  karel.move
  karel.put_beeper
  karel.turn_left
  karel.turn_left
  karel.turn_left
  karel.move
  karel.turn_left
  karel.move
  karel.put_beeper
  karel.turn_left
  karel.turn_left
  karel.move
  karel.move
  karel.put_beeper
  karel.move
  karel.move 
  karel.put_beeper
  karel.move
  karel.move
  karel.put_beeper
  karel.turn_left
  karel.move
  karel.turn_left
  karel.move
  karel.move
  karel.move
  karel.turn_left

  
end

if __FILE__ == $0
  if $graphical
     screen = window(8, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end