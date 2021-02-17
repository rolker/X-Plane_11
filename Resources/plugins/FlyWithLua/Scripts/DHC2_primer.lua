if PLANE_ICAO == "DHC2" then
--wobble pump to axis
DataRef("primer_value", "thranda/cockpit/actuators/primer", "writeable")
DataRef("speedbreak_axis", "sim/joystick/joy_mapped_axis_value", "readonly", 14)
DataRef("speedbreak_axis_available", "sim/joystick/joy_mapped_axis_avail", "readonly", 14)

last_primer_value = 0.0

function primer_axis()
  if speedbreak_axis_available == 1 then
	last_primer_value = speedbreak_axis
  end
  primer_value = last_primer_value
end

do_every_frame("primer_axis()")
end