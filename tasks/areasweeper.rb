#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"
# A class of robots that are for working clocks
class Areasweeper < UrRobot
  include Turner
  include SensorPack
  attr_accessor :street, :avenue

  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

  def conditioned_pick
    if next_to_a_beeper? ==  true 
        pick_beeper
    end

  end

  def sweep_frame
    conditioned_pick
    move
  end


  def sweep_row1
    sweep_frame until front_is_clear? == false
    conditioned_pick
  end


  def sweep_row2
    turn_right
    move
    turn_right
    sweep_frame until front_is_clear? == false
    turn_left
    move
    turn_left
  end


  def sweep_area
    while avenue != 2
        sweep_row1
        sweep_row2
    end
    sweep_row1
  end

end


