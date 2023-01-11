#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class of robots that are for 
class Commandtaker < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  def commands
    %w[move move move move move move move turn_left turn_left turn_left move move move put_beeper]
  end

  def execute_commands
    commands.each do |command|
      send(command)
    end
  end



end