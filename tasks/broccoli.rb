#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class of robots that are for 
class BroccoliPicker < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  def move1_and_pick
    move
    pick_beeper
  end

  def move2_and_pick
    move
    move
    pick_beeper
  end

  def moveback1_and_pick
    back_up
    pick_beeper
  end

  def moveback2_and_pick
    back_up
    back_up
    pick_beeper
  end

end