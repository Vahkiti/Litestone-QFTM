--Bohrok Canister
function onLoad()
    self.interactable = false
    self.tooltip = false
end

--Ground
function onUpdate()
    self:setLock(true) 
end