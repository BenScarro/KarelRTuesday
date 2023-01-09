#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class of robots that are for 
class Squaremaker < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  def place_firstrow
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
  end

  def place_2_3row
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
  end

  def place_final
    move
    put_beeper
    move 
    put_beeper
    move
    put_beeper
    move
  end

  def movements
    ["place_firstrow", "turn_right", "place_2_3row", "turn_right", "place_2_3row", "turn_right", "place_final"]
  end


end