#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class of robots that are for working clocks
class North < UrRobot
  include Turner
  
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end


end