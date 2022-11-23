#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class of robots that are for working clocks
class ClockWorker < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end


  def climb_rightup
    turn_right
    move
    turn_left
    move
  end

  def place_number1
    put_beeper
    
  end

  def place_number2
    put_beeper
    put_beeper
    
  end

  def place_number3
    put_beeper
    put_beeper
    put_beeper
    
  end

  def place_number4
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    
  end

  def place_number5
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    
  end

  def place_number6
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    
  end

  def place_number7
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    
  end

  def place_number8
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    
  end

  def place_number9
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    
  end

  def place_number10
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    
  end

  def place_number11
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    
  end

  def place_number12
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    
  end

end