Colour = Nil
function onLoad()
    params = {}
    params.click_function = 'ShowModeWindow'
    params.function_owner = self
    params.width = 1600
    params.height = 1800
    self.createButton(params)
end

function ShowModeWindow(obj, color, alt_click)
    local Message = color
    local Message = Message .. " is changing the game mode!"
    if color == "Red" then
        Colour = "Red"
    elseif color == "Green" then
        Colour = "Green"
    elseif color == "White" then
        Colour = "White"
    elseif color == "Purple" then
        Colour = "Purple"
    elseif color == "Blue" then
        Colour = "Blue"
    elseif color == "Brown" then
        Colour = "Brown"
    elseif color == "Orange" then
        Colour = "Orange"
    end
    UI.setAttribute("GameModeSwitch", "visibility", color)
    UI.setAttribute("GameModeSwitch", "active", "true")
    broadcastToAll(Message, Colour)
end