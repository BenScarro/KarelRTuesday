#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class of robots that are for working clocks
class Hrobot < UrRobot
  include Turner

  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

  def ecrit_lettre
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    back_up
    back_up
    turn_right
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    turn_left
    move
    put_beeper
    move
    put_beeper
    turn_around
    move
    move
    move
    put_beeper
    move
    put_beeper

  end


end


class Erobot < UrRobot
  include Turner

  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

  def ecrit_lettre
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    turn_right
    move
    put_beeper
    move
    put_beeper
    move
    turn_right
    move
    move
    turn_right
    move
    put_beeper
    move
    put_beeper
    move
    turn_left
    move
    move
    turn_left
    move
    put_beeper
    move
    put_beeper
  end


end


class Lrobot < UrRobot
  include Turner

  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

  def ecrit_lettre
    turn_right
    put_beeper
    move
    put_beeper
    move
    put_beeper
    back_up
    back_up
    turn_left
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
  end


end


class Orobot < UrRobot
  include Turner

  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

  def ecrit_lettre
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    turn_right
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    turn_right
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    turn_right
    move
    put_beeper
    move
    put_beeper
  end


end


