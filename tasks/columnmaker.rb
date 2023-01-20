#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"
# A class of robots that are for 
class Columnmaker < UrRobot
  include Turner
  include SensorPack
  attr_accessor :street, :avenue
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
 def sweep_sequence_unit
  if next_to_a_beeper? then
    pick_beeper until next_to_a_beeper? == false
  end
  move
 end

 

 def sweep_sequence_row1
  if front_is_clear? then
    sweep_sequence_unit
    sweep_sequence_row1 if avenue != 12
  end
 end

 def sweep_sequence_row2
  if front_is_clear? then
    sweep_sequence_unit
    sweep_sequence_row2 if avenue != 1
  end
 end

 def return_to_start
  turn_left until facing_south? == true 
  move until front_is_clear? == false
  turn_right
  move until front_is_clear? == false
  turn_around
end

 def sweep_sequence
  sweep_sequence_row1
  turn_left
  if street != 13 then
    move
    turn_left
    sweep_sequence_row2
    turn_right
    if street != 13 then
      move
      turn_right
      sweep_sequence
    else
      return_to_start
    end
  else
    return_to_start
  end
 end


 def putcols(colnumber, tracknumber)
  tracknumber = tracknumber + 1 
  turn_left 
  tracknumber.times do
    put_beeper if any_beepers_in_beeper_bag? == true
    move 
  end
  turn_left until facing_south? == true 
  move until front_is_clear? == false
  turn_left 
  move 
  putcols(colnumber, tracknumber) if tracknumber < colnumber and any_beepers_in_beeper_bag? == true
 end


 def colsequence(tracknumber)
  colnumber = gets.chomp.to_i
  putcols(colnumber, tracknumber)
  return_to_start
 end

end