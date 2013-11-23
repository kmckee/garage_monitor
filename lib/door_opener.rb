class DoorOpener
  def initialize main_pin, secondary_pin, on_time = 0.5
    @main_pin = main_pin
    @secondary_pin = secondary_pin
    @on_time = on_time
  end
  def open_main_door
    @main_pin.on
    sleep @on_time
    @main_pin.off
  end
  def open_secondary_door
    @secondary_pin.on
    sleep @on_time 
    @secondary_pin.off
  end
end
