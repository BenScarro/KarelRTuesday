#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"
# A class of robots that are for working clocks
class Conditionedmoverobot2 < UrRobot
  include Turner
  include SensorPack

  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

  
  def move
    
    super unless front_is_clear? == false
    
  end

end


