if PLANE_ICAO == "DHC2" then
--wobble pump to axis
DataRef("wobble_value", "thranda/fuel/WobblePump", "writeable")
DataRef("wingsweep_axis", "sim/joystick/joy_mapped_axis_value", "readonly", 13)
DataRef("wingsweep_axis_available", "sim/joystick/joy_mapped_axis_avail", "readonly", 13)

last_wobble_value = 1.0

function wobble_axis()
  if wingsweep_axis_available == 1 then
	last_wobble_value = wingsweep_axis
  end
  wobble_value = last_wobble_value
end

do_every_frame("wobble_axis()")
end