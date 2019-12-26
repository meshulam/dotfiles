hs.hotkey.bind({"ctrl", "alt"}, "r", nil, function(e)
    print("Reloading Hammerspoon Config")
    hs.reload()
end)

-- Window positioning hotkeys
hs.loadSpoon("WindowHalfsAndThirds")
spoon.WindowHalfsAndThirds:bindHotkeys({
  left_half = { {"ctrl", "alt"}, "Left" },
  right_half = { {"ctrl", "alt"}, "Right" },
  max_toggle = { {"ctrl", "alt"}, "Up" },
})


-- require('./scroll_with_button_pressed')


-- hs.hints.style = "vimperator"
-- local logKeys = false
-- hs.hotkey.bind({"ctrl", "alt"}, "k", nil, function(e)
--     hs.hints.windowHints()
-- end)

-- see http://www.hammerspoon.org/docs/hs.eventtap.event.html#types
local logEvents = {
  -- hs.eventtap.event.types.NSApplicationDefined,
  -- hs.eventtap.event.types.NSEventTypeGesture,
}

hs.eventtap.new(logEvents, function(e)
  print("got event")
  local pressedMouseButton = e:getProperty(hs.eventtap.event.properties['mouseEventButtonNumber'])
  print("pressed mouse" .. pressedMouseButton)
end):start()
