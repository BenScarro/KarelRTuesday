#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "bellmaker"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World

  karel = Bellmaker.new(1, 6, Robota::WEST, 26)


  karel.put_beeper
  karel.move 
  karel.move
  karel.move
  karel.move
  karel.turn_right
  karel.move
  karel.turn_right
  karel.move 
  karel.put_row1
  karel.hook_left
  karel.put_row2
  karel.hook_right
  karel.put_shaft1
  karel.put_shaft2
  karel.put_shaft1
  karel.put_shaft2
  karel.move
  karel.put_beeper

end

if __FILE__ == $0
  if $graphical
     screen = window(15, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end