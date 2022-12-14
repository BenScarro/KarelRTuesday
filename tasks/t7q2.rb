#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "hellomanager"
require_relative "hello"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World

  sequence = Sequenceclass.new()

  sequence.execute


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