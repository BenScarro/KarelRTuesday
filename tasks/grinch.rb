#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class of robots that are for making bells
class Grinch < UrRobot
  include Turner

  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

  def get_presents
    move
    move
    turn_right
    move
    turn_left
    move
    move
    pick_beeper
    pick_beeper
    turn_right
    move
    pick_beeper
    pick_beeper
    turn_around
    move
    turn_left
    move
    move
    turn_right
    move
    turn_left
    move
    move
  end

  def next_chimney
    turn_right
    move
    move
    move
    turn_right
  end



  def chimney_set
    get_presents
    next_chimney
    get_presents
    next_chimney
    get_presents
  end

  def move6
    move
    move
    move
    move
    move
    move
  end


  def deposit_presents
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
