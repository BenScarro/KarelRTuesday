#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class of robots that are for making bells
class Bellmaker < UrRobot
  include Turner

  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

  def hook_right
    turn_right
    move
    turn_right
    move
  end

  def hook_left
    turn_left
    move
    turn_left
    move
  end
  

  def put_row3
    put_beeper
    move
    put_beeper
    move
    put_beeper
  end


  def put_row2
    put_row3
    move 
    put_beeper
    move
    put_beeper
  end


  def put_row1
    put_row2
    move
    put_beeper
    move
    put_beeper
  end

  def put_shaft1
    put_row3
    move
    hook_left
  end

  def put_shaft2
    put_row3
    move
    hook_right
  end


end
