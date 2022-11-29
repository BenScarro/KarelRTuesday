#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class of robots that are for working clocks
class Rearrange < UrRobot
  include Turner
  
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

  def moveandpick
    move
    pick_beeper
  end

  def pickhalfrow
    moveandpick
    moveandpick
  end

  def move_twice
    move 
    move 
  end

  def moveandput
    move 
    put_beeper
  end

  def puthalfrow
    moveandput
    moveandput
  end

end