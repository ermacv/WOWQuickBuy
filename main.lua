--
-- Local vars
--
local MouseBuyButton = 5
local LeftMouseButton = 1 
local MouseBuyEvent = "MOUSE_BUTTON_RELEASED"

local WOWBuyButtonXPos = 30000
local WOWBuyButtonYPos = 31800

local WOWBuyAcceptButtonXPos = 30000
local WOWBuyAcceptButtonYPos = 15700

--
--Main Function
--
function OnEvent(event, arg)
    OutputLogMessage("event = %s, arg = %d\n", event, arg)
    if arg == MouseBuyButton and event == MouseBuyEvent then
        CurrentXPos, CurrentYPos = GetMousePosition();
        PressAndReleaseMouseButton(LeftMouseButton);
        Sleep(10)
        MoveMouseTo(WOWBuyButtonXPos, WOWBuyButtonYPos)
        Sleep(10)
        MoveMouseTo(WOWBuyAcceptButtonXPos, WOWBuyAcceptButtonYPos)
        PressAndReleaseMouseButton(LeftMouseButton);
        Sleep(10)
        MoveMouseTo(CurrentXPos, CurrentYPos)
    end
end
