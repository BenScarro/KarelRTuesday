#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class of robots that are for working clocks
class Relayracer < UrRobot
  include Turner

  def initialize (street, avenue, direction, beepers, color)
    super(street, avenue, direction, beepers, color)
  end

  def firstpass
    move
    put_beeper
    turn_right
  end

  def pass
    pick_beeper
    move
    put_beeper
    turn_right
  end


end
