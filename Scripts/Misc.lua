--Bohrok Canister
function onLoad()
    self.interactable = false
    self.tooltip = false
    self.gizmo_selectable = false
end

--Ground
function onUpdate()
    self:setLock(true) 
end

--NOTE: Game Mode & Dev Mode buttons have self-setting state changes with a timer on state 2. 
--Possibly Bohrok canister as well. Hard to access.