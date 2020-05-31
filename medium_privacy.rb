class Machine
  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  def switch_status
    puts "The switch is currently #{switch}."
  end

  private

  attr_accessor :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

# Modify this class so both flip_switch and the setter method switch= are private methods.

new_machine = Machine.new
new_machine.start
new_machine.switch_status
new_machine.stop
new_machine.switch_status
