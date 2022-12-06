#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class of robots that are for working clocks
class Basketrunner < UrRobot
  include Turner

  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

  
  def pass_wall1
    move
    move
    move
  end

  def pass_wall2
    move
    move
    move
    move
    move
    move
  end

  def pick_cluster
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
  end

  def move_twice
    move
    move
  end

  def put_cluster
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
