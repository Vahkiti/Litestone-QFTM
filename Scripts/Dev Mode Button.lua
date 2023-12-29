function onLoad()
    params = {}
    params.click_function = 'SetMode'
    params.function_owner = self
    params.width = 1600
    params.height = 1800
    self.createButton(params)
end

function SetMode()
    if getObjectFromGUID("e2d925").hasTag("DEVINACTIVE") then      
        getObjectFromGUID("e2d925").removeTag("DEVINACTIVE")   
        ToggleStorageON()
        print("DEV MODE ACTIVE")
    elseif getObjectFromGUID("e2d925").hasTag("DEVACTIVE")  then
        getObjectFromGUID("e2d925").removeTag("DEVACTIVE")
        ToggleStorageOFF()
        print("DEV MODE INACTIVE")
    end
end

function ToggleStorageON()
    for i, object in ipairs(getObjects()) do
        if object ~= nil then      
            if object.hasTag("Dev") then                
                object.interactable = true
                object.tooltip = true
                object.locked = true
                object.setPositionSmooth(object.getPosition() + vector(100, 0, 0))
                Wait.frames(
                    function()
                        object.locked = false
                        getObjectFromGUID("e2d925").locked = true
                        getObjectFromGUID("f01443").locked = true
                        getObjectFromGUID("4cb622").locked = true
                        getObjectFromGUID("dd6a94").locked = true   
                        getObjectFromGUID("911407").locked = true     
                        getObjectFromGUID("acdc27").locked = true     
                        getObjectFromGUID("207f49").locked = true                  
                    end,
                    100
                )                          
            end
        end
    end
    getObjectFromGUID("e2d925").interactable = true
    getObjectFromGUID("e2d925").tooltip = false
    getObjectFromGUID("f01443").interactable = false
    getObjectFromGUID("f01443").tooltip = false   
    getObjectFromGUID("e2d925").addTag("DEVACTIVE")
    self.setState(2)
end

function ToggleStorageOFF()
    for i, object in ipairs(getObjects()) do
        if object ~= nil then      
            if object.hasTag("Dev") then
                object.interactable = false
                object.tooltip = false
                object.locked = true
                object.setPositionSmooth(object.getPosition() + vector(-100, 0, 0))
                Wait.frames(
                    function()
                        object.locked = false
                        getObjectFromGUID("e2d925").locked = true
                        getObjectFromGUID("f01443").locked = true
                        getObjectFromGUID("4cb622").locked = true
                        getObjectFromGUID("dd6a94").locked = true   
                        getObjectFromGUID("911407").locked = true     
                        getObjectFromGUID("acdc27").locked = true     
                        getObjectFromGUID("207f49").locked = true                              
                    end,
                    100
                )   
            end
        end
    end
    getObjectFromGUID("e2d925").interactable = false
    getObjectFromGUID("e2d925").tooltip = false
    getObjectFromGUID("f01443").interactable = false
    getObjectFromGUID("f01443").tooltip = false
    getObjectFromGUID("e2d925").addTag("DEVINACTIVE")
    self.setState(2)
end