local wibox = require("wibox")

battery_widget = wibox.widget.textbox()

function getBatteryStatus()
   local fd= io.popen("/path/to/battery.sh")
   local status = fd:read()
   fd:close()
   return status
end

