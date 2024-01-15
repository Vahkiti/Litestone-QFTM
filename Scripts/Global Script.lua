--MegaFreeze: Makes Objects Non-Interactive
--Object List: TABLE, PILLARS 1-4, GROUND, BOARD 1-4, MAKUTA TABLE, STORAGE TABLE 1 & 2, CARD BOARDS 1-18
TableFreezeLST = {'3d484c', '4724d5', 'a36b1f', '94adc9', '819e91', '0933b5', '24b65c', 'b14653', '368e71', 'a31342', '899089', 'e2d925', 'f01443', '8bb03e', 'f04318', '933342',
'2f73d6', '30b897', '764c87', 'dc7580', '4f464f', '151f14', 'a95f8b', '45b064', '3b5c3c', 'e33705', '39317b', '393c29', '80ec51', '4eca5e', 'ff0351'}

--Object List: THRACKERZOD, STUDIO TILES 1-4, TAB SOUND 1-3, TAB WIKI, TURNBUTTON 1-8, MODEBUTTON, DEVBUTTON, BOWLS 1-7, BOHROCKS, BOHCAN, BOHLID, BOHROK
ObjectFreezeLST = {'bf8821', '46e314', 'ff04f2', '41c648', '45b939', '907bd7', '13ca74', '880c5e', 'e8c077', 'bcf9f3', 'c24cdc', '711e18', '5c3ca6', '46ff68', '49bea0', '7ffc4c',
'256153', '3bb2af', '4a83e9', 'c673c7', 'a82aae','533164', 'd5ed8f', '673189', '49fc51', 'a7d9de', '3b0f24', '0bf751', '8109ec', '1971d9'}

--Force Tag Exclusion
--Object List: BOARD 1-4, TAB SOUND 1-3, MAN 1-4, LORE, BOHCAN, MODEBUTTON 1&2, DEVBUTTON 1&2, MAKUTA BUTTON 1 & 2, LEGEND 1&2
TagExclusionLST = {'24b65c', 'b14653', '368e71', 'a31342', '907bd7', '13ca74', '880c5e', '9a8753', 'bc2f55', '905bc3', 'b9e0f7',  'c9f45c', '0bf751', '3bb2af','6963c5', '4a83e9',
'7ffc4c', 'd9b152', '256153', '8bb03e', 'f04318', '933342', '2f73d6', '30b897', '764c87', 'dc7580', '4f464f', '151f14', 'a95f8b', '45b064', '3b5c3c', 'e33705', '39317b', '393c29', 
'80ec51', '4eca5e', 'ff0351', 'c9f45c', '8c45a4'}

function onLoad()
    local MakutaDie = getObjectFromGUID("26a094")
    local MakutaBag = getObjectFromGUID("916518")
    TableFreeze()
    ObjectFreeze()
    SetStorage()
    --MakutaDie.setInvisibleTo({'Red', 'Green', 'White', 'Purple', 'Blue', 'Brown', 'Orange'})
    --MakutaBag.setInvisibleTo({'Red', 'Green', 'White', 'Purple', 'Blue', 'Brown', 'Orange'})   
    --Cleanup() 
end

function TableFreeze()
    for i=1, #TableFreezeLST, 1 do
    local obj = getObjectFromGUID(TableFreezeLST[i])
        if obj ~= nil then
            obj.interactable = false
            obj.tooltip = false
        end
    end
end

function ObjectFreeze()
    for i=1, #ObjectFreezeLST, 1 do
        local obj = getObjectFromGUID(ObjectFreezeLST[i])
        if obj ~= nil then
            obj.interactable = false
            obj.tooltip = false
        end
    end
end

function SetStorage()
    if getObjectFromGUID("e2d925").hasTag("DEVINACTIVE") then      
        for i, object in ipairs(getObjects()) do
            if object ~= nil then      
                if object.hasTag("Dev") then
                    object.interactable = false
                    object.tooltip = false
                end
            end
        end
        getObjectFromGUID("e2d925").interactable = false
        getObjectFromGUID("e2d925").tooltip = false
        getObjectFromGUID("f01443").interactable = false
        getObjectFromGUID("f01443").tooltip = false
    end
end

function Cleanup()
    --Create Var For Board
    if getObjectFromGUID("24b65c") ~= nil then
        Board = getObjectFromGUID("24b65c")
    elseif getObjectFromGUID("b14653") ~= nil then
        Board = getObjectFromGUID("b14653")
    elseif getObjectFromGUID("368e71") ~= nil then
        Board = getObjectFromGUID("368e71")
    elseif getObjectFromGUID("a31342") ~= nil then
        Board = getObjectFromGUID("a31342")
    end
    
    --Create Var For Toa Boards
    if getObjectFromGUID("8bb03e") ~= nil then
        TahuBoard = getObjectFromGUID("8bb03e")
    elseif getObjectFromGUID("f04318") ~= nil then
        TahuBoard = getObjectFromGUID("f04318")
    elseif getObjectFromGUID("933342") ~= nil then
        TahuBoard = getObjectFromGUID("933342")
    end
    
    if getObjectFromGUID("2f73d6") ~= nil then
        OnuaBoard = getObjectFromGUID("2f73d6")
    elseif getObjectFromGUID("30b897") ~= nil then
        OnuaBoard = getObjectFromGUID("30b897")
    elseif getObjectFromGUID("764c87") ~= nil then
        OnuaBoard = getObjectFromGUID("764c87")
    end
    
    if getObjectFromGUID("dc7580") ~= nil then
        PohatuBoard = getObjectFromGUID("dc7580")
    elseif getObjectFromGUID("4f464f") ~= nil then
        PohatuBoard = getObjectFromGUID("4f464f")
    elseif getObjectFromGUID("151f14") ~= nil then
        PohatuBoard = getObjectFromGUID("151f14")
    end
    
    if getObjectFromGUID("a95f8b") ~= nil then
        KopakaBoard = getObjectFromGUID("a95f8b")
    elseif getObjectFromGUID("45b064") ~= nil then
        KopakaBoard = getObjectFromGUID("45b064")
    elseif getObjectFromGUID("3b5c3c") ~= nil then
        KopakaBoard = getObjectFromGUID("3b5c3c")
    end
    
    if getObjectFromGUID("e33705") ~= nil then
        LewaBoard = getObjectFromGUID("e33705")
    elseif getObjectFromGUID("39317b") ~= nil then
        LewaBoard = getObjectFromGUID("39317b")
    elseif getObjectFromGUID("393c29") ~= nil then
        LewaBoard = getObjectFromGUID("393c29")
    end
    
    if getObjectFromGUID("80ec51") ~= nil then
        GaliBoard = getObjectFromGUID("80ec51")
    elseif getObjectFromGUID("4eca5e") ~= nil then
        GaliBoard = getObjectFromGUID("4eca5e")
    elseif getObjectFromGUID("ff0351") ~= nil then
        GaliBoard = getObjectFromGUID("ff0351")
    end
    
    --Create Var For Manual
    if getObjectFromGUID("9a8753") ~= nil then
        Manual = getObjectFromGUID("9a8753")
    elseif getObjectFromGUID("bc2f55") ~= nil then
        Manual = getObjectFromGUID("bc2f55")        
    elseif getObjectFromGUID("905bc3") ~= nil then
        Manual = getObjectFromGUID("905bc3")      
    elseif getObjectFromGUID("b9e0f7") ~= nil then
        Manual = getObjectFromGUID("b9e0f7")  
    end
    
    --Create Var For Legend
    if getObjectFromGUID("c9f45c") ~= nil then
        Legend = getObjectFromGUID("c9f45c")  
    elseif getObjectFromGUID("8c45a4") ~= nil then
        Legend = getObjectFromGUID("8c45a4")  
    end

    --Create Var For Tablet
    if getObjectFromGUID("907bd7") ~= nil then
        Tablet = getObjectFromGUID("907bd7")
    elseif getObjectFromGUID("13ca74") ~= nil then
        Tablet = getObjectFromGUID("13ca74")
    elseif getObjectFromGUID("880c5e") ~= nil then
        Tablet = getObjectFromGUID("880c5e")
    end

    --Create Var For Bohrok Objects
    Bohrok = getObjectFromGUID("1971d9")
    BohrokCON = getObjectFromGUID("0bf751")    
    BohrokCL = getObjectFromGUID("8109ec")

    --Delete Existing Objects
    for i, object in ipairs(getObjects()) do
        if object.hasTag("InPlay") then
            object.destruct()
        end
    end

    --Reset Canisters, Book of Chronicles, & 810 Tin
    getObjectFromGUID("50c279").reset()
    getObjectFromGUID("408afc").reset()
    getObjectFromGUID("75d608").reset()
    getObjectFromGUID("a36761").reset()
    getObjectFromGUID("039900").reset()
    getObjectFromGUID("4efc88").reset()
    getObjectFromGUID("fed4f9").reset()
    getObjectFromGUID("39374a").reset()

    --Bohrok Cleanup
    BohrokCL.locked = true
    BohrokCL.setPosition({32.00, -5.00, 0.00})
    BohrokCL.setRotation({30.00, 270.00, 0.00})

    --Reset Makuta Table, Hand, Objects, & Button
    getObjectFromGUID("899089"):setPosition({-36.00, -18.0, 0.0})
    getObjectFromGUID("c5b23e"):setPosition({-43.97, 1000.00, 0.0})
    local MakutaBowl = getObjectFromGUID("a7d9de")
    MakutaBowl:setPosition({-36.42, -17.0, 3.00})
    MakutaBowl.locked = true
    local MakutaDie = getObjectFromGUID("26a094")            
    MakutaDie:setPosition({-36.42, -17.0, 3.00})    
    MakutaDie.locked = true
    MakutaDie.interactable = false
    MakutaDie.tooltip = false
    MakutaDie.setInvisibleTo({'Red', 'Green', 'White', 'Purple', 'Blue', 'Brown', 'Orange', 'Grey', 'Black'})
    local MakutaBag = getObjectFromGUID("916518")
    MakutaBag:setPosition({-36.42, -17.0, -3.00})
    MakutaBag.locked = true
    MakutaBag.interactable = false
    MakutaBag.tooltip = false
    MakutaBag.setInvisibleTo({'Red', 'Green', 'White', 'Purple', 'Blue', 'Brown', 'Orange', 'Grey', 'Black'})
    if getObjectFromGUID("7ffc4c") ~= nil then
        getObjectFromGUID("7ffc4c").setState(2)
    end
    if getObjectFromGUID("256153") ~= nil then
        getObjectFromGUID("256153"):setPosition({20.12, -3.00, 0.0})
    end

    --Reset Thrackerzod
    getObjectFromGUID("bf8821"):setPosition({6.09, 0.92, -3.53})
    getObjectFromGUID("bf8821"):setRotation({0.0, 255.0, 0.0})
end

--Add Tags To New Objects
function onObjectSpawn(object)   
    object.addTag("InPlay")
    for i=1, #TagExclusionLST, 1 do
        local obj = getObjectFromGUID(TagExclusionLST[i])
        if obj ~= nil then
            obj.removeTag("InPlay")
        end
    end
end

--Game Mode Stuff
function LoadQFTM()
    Cleanup()

    --Set Object States
    if Board.getStateId() ~= 1 then
        Board.setState(1)
    end
    if TahuBoard.getStateId() ~= 1 then
        TahuBoard.setState(1)
    end
    if OnuaBoard.getStateId() ~= 1 then
        OnuaBoard.setState(1)
    end
    if PohatuBoard.getStateId() ~= 1 then
        PohatuBoard.setState(1)
    end
    if KopakaBoard.getStateId() ~= 1 then
        KopakaBoard.setState(1)
    end
    if LewaBoard.getStateId() ~= 1 then
        LewaBoard.setState(1)
    end
    if GaliBoard.getStateId() ~= 1 then
        GaliBoard.setState(1)
    end
    if Tablet.getStateId() ~= 1 then
        Tablet.setState(1)
    end
    if Manual.getStateId() ~= 1 then
        Manual.setState(1)
    end    
    if Legend.getStateId() ~= 1 then
        Legend.setState(1)
    end

    --Clone New Objects
    --Object List: TOA, STAN GM, FOIL GM, MOM GM, MOM NM, GA, GA EXP, MISS, MISS EXP, GMC, RAHI, ART 1&2, 810, HINT
    local Objects = {
        getObjectFromGUID("6fa7d8").clone({position = {0.12, 9.15, -14.57}, rotation = {0.0, 180.0, 0.0}}),
        getObjectFromGUID("caf9de").clone({position = {-0.19, 9.15, 14.59}, rotation = {0.0, 0.0, 0.0}}),
        getObjectFromGUID("339c00").clone({position = {12.66, 9.15, -7.28}, rotation = {0.0, 120.0, 0.0}}),
        getObjectFromGUID("17f589").clone({position = {-12.70, 9.15, 7.22}, rotation = {0.0, 300.0, 0.0}}),
        getObjectFromGUID("919ea8").clone({position = {-12.57, 9.15, -7.42}, rotation = {0.0, 240.0, 0.0}}),
        getObjectFromGUID("77217f").clone({position = {12.50, 9.15, 7.62}, rotation = {0.0, 60.0, 0.0}}),     

        getObjectFromGUID("ce94ee").clone({position = {-2.49, 7.50, -24.18}, rotation = {0.0, 180.0, 180.0}}),
        getObjectFromGUID("508ca7").clone({position = {2.47, 7.50, 24.18}, rotation = {0.0, 0.0, 180.0}}),
        getObjectFromGUID("2d220a").clone({position = {19.76, 7.50, -14.20}, rotation = {0.0, 120.0, 180.0}}),
        getObjectFromGUID("d6b241").clone({position = {-19.82, 7.50, 14.20}, rotation = {0.0, 300.0, 180.0}}),
        getObjectFromGUID("fd3cb1").clone({position = {-22.19, 7.50, -9.98}, rotation = {0.0, 240.0, 180.0}}),
        getObjectFromGUID("951ed5").clone({position = {22.19, 7.50, 9.93}, rotation = {0.0, 60.0, 180.0}}),

        getObjectFromGUID("469e8c").clone({position = {-29.93, 7.00, 7.12}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("5174d6").clone({position = {-29.93, 7.00, -1.36}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("7f8f19").clone({position = {-29.93, 7.00, -6.78}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("a848e6").clone({position = {-29.93, 7.00, 1.57}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("6b6f8f").clone({position = {-29.93, 7.00, 4.30}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("d57e4a").clone({position = {-29.93, 7.00, -4.19}, rotation = {0.0, 270.0, 0.0}}),      
 
        getObjectFromGUID("aafafb").clone({position = {0.00, 7.50, -24.18}, rotation = {0.0, 180.0, 180.0}}),
        getObjectFromGUID("ad92d0").clone({position = {0.00, 7.50, 24.18}, rotation = {0.0, 0.0, 180.0}}),
        getObjectFromGUID("297127").clone({position = {20.99, 7.50, -12.06}, rotation = {0.0, 120.0, 180.0}}),
        getObjectFromGUID("56b918").clone({position = {-21.06, 7.50, 12.06}, rotation = {0.0, 300.0, 180.0}}),
        getObjectFromGUID("d8ae44").clone({position = {-20.96, 7.50, -12.13}, rotation = {0.0, 240.0, 180.0}}),
        getObjectFromGUID("f2e171").clone({position = {20.96, 7.50, 12.06}, rotation = {0.0, 60.0, 180.0}}),

        getObjectFromGUID("182329").clone({position = {2.46, 7.50, -24.21}, rotation = {0.0, 180.0, 180.0}}),
        getObjectFromGUID("2ce947").clone({position = {-2.46, 7.50, 24.21}, rotation = {0.0, 0.0, 180.0}}),
        getObjectFromGUID("e35afb").clone({position = {22.23, 7.50, -9.90}, rotation = {0.0, 120.0, 180.0}}),
        getObjectFromGUID("b26051").clone({position = {-22.33, 7.50, 9.90}, rotation = {0.0, 300.0, 180.0}}),
        getObjectFromGUID("66a31f").clone({position = {-19.73, 7.50, -14.26}, rotation = {0.0, 240.0, 180.0}}),
        getObjectFromGUID("c0d920").clone({position = {19.73, 7.50, 14.21}, rotation = {0.0, 60.0, 180.0}}),

        getObjectFromGUID("e11d44").clone({position = {5.46, 9.15, 9.17}, rotation = {0.0, 270.0, 180.0}}),
        getObjectFromGUID("7af61e").clone({position = {1.62, 9.15, 9.17}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("40c0a2").clone({position = {-3.15, 9.15, 9.21}, rotation = {0.0, 270.0, 180.0}}),
        getObjectFromGUID("54dbf9").clone({position = {-6.99, 9.15, 9.18}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("f69061").clone({position = {7.81, 9.15, -9.13}, rotation = {0.0, 270.0, 180.0}}),
        getObjectFromGUID("e93dfc").clone({position = {-0.80, 9.15, -9.13}, rotation = {0.0, 270.0, 180.0}}),

        getObjectFromGUID("493f7b").clone({position = {13.48, 10.00, 1.83}, rotation = {0.0, 0.0, 180.0}}),
        getObjectFromGUID("d7fc97").clone({position = {13.48, 10.50, 1.83}, rotation = {0.0, 0.0, 180.0}}),

        getObjectFromGUID("d929aa").clone({position = {13.70, 11.00, -1.67}, rotation = {0.0, 0.0, 0.0}}),        
        
        getObjectFromGUID("4db4e7").clone({position = {13.48, 11.50, 1.83}, rotation = {0.0, 0.0, 180.0}})        
    }

    --Move Studio Tiles
    getObjectFromGUID("46e314").setPosition({-12.27, -2.71, 21.25})
    getObjectFromGUID("ff04f2").setPosition({-12.23, -2.69, -21.23})
    getObjectFromGUID("45b939").setPosition({-13.50, -2.49, -19.22})
    getObjectFromGUID("41c648").setPosition({-10.43, -3.05, -22.60})
    getObjectFromGUID("ff04f2").setRotation({28.83, 209.89, 359.94})

    --Spawn Cansiters & Toa Tokens
    local Canisters = {
        getObjectFromGUID("dd6a94").clone({position = {0.74, 133.00, -7.07}, rotation = {0.0, 315.0, 0.0}, scale = {0.0, 0.0, 0.0}}),
        getObjectFromGUID("dd6a94").clone({position = {6.64, 133.00, 5.91}, rotation = {0.0, 225.0, 0.0}, scale = {0.0, 0.0, 0.0}}),
        getObjectFromGUID("dd6a94").clone({position ={11.36, 133.00, 0.0}, rotation = {0.0, 270.0, 0.0}, scale = {0.0, 0.0, 0.0}}),
        getObjectFromGUID("dd6a94").clone({position = {-0.44, 133.00, 7.09}, rotation = {0.0, 180.0, 0.0}, scale = {0.0, 0.0, 0.0}}),
        getObjectFromGUID("dd6a94").clone({position = {-9.88, 133.00, 0.0}, rotation = {0.0, 90.0, 0.0}, scale = {0.0, 0.0, 0.0}}),
        getObjectFromGUID("dd6a94").clone({position = {4.28, 133.00, -2.35}, rotation = {0.0, 300.0, 0.03}, scale = {0.0, 0.0, 0.0}})
    }

    local ToaTokens = {
        getObjectFromGUID("48695e").clone({position = {0.74, -5.00, -7.07}, rotation = {0.0, 315.0, 0.0}}),
        getObjectFromGUID("989f32").clone({position = {6.64, -5.00, 5.91}, rotation = {0.0, 225.0, 0.0}}),
        getObjectFromGUID("1b60da").clone({position = {11.36, -5.00, 0.0}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("faa7cb").clone({position = {-0.44, -5.00, 7.09}, rotation = {0.0, 180.0, 0.0}}),
        getObjectFromGUID("f7ee99").clone({position = {-9.88, -5.00, 0.0}, rotation = {0.0, 90.0, 0.0}}),
        getObjectFromGUID("52ae02").clone({position = {4.28, -5.00, -2.35}, rotation = {0.0, 300.0, 0.03}})
    }
    
    for i=1, #ToaTokens, 1 do
        ToaTokens[i].removeTag("Dev")
        ToaTokens[i].tooltip = true
        ToaTokens[i].locked = true
    end  
            
    --Unlock Canisters & Play Sound
    for i=1, #Canisters, 1 do
        Canisters[i].locked = false      
        Wait.time(
            function()   
                Canisters[1].AssetBundle.playTriggerEffect(0)
                Canisters[3].AssetBundle.playTriggerEffect(0)
                Canisters[6].AssetBundle.playTriggerEffect(0)
                Canisters[i].setScale({1.0, 1.0, 1.0})
                Canisters[i].interactable = false
                Canisters[i].tooltip = false
                Canisters[i].removeTag("Dev")
            end,
            1
        )
    end
  
    Wait.time(
        function()  
            --Destroy Canisters
            for i=1, #Canisters, 1 do
                Canisters[i].destruct()
            end

            --Add Tags To Cloned Objects
            for i=1, #ToaTokens, 1 do
                Wait.time(
                    function()
                        ToaTokens[i]:setPosition(ToaTokens[i].getPosition() + vector (0, 11, 0))
                        ToaTokens[i].AssetBundle.playTriggerEffect(0)
                        ToaTokens[i].locked = false
                    end,
                    0.01
                )
            end                            
        end,
        4.4
    )

    --Hide Mode Select Window
    UI.hide("GameModeSwitch")
    getObjectFromGUID("3bb2af").setState(2)

    --Adjust Tags, Tooltip, & Shuffle
    for i=1, #Objects, 1 do
        if Objects[i] ~= nil then
            Objects[i].removeTag("Dev")
            Objects[i].tooltip = true
            if Objects[i].hasTag("Shuffle") then
                Wait.time(
                    function()
                        Objects[i].randomize()
                    end,
                    1
                )
            end
        end
    end
    TableFreeze()
    ObjectFreeze()
end

function LoadBOSW()
    Cleanup()

    --Set Object States/Bohrok Launch
    if Board.getStateId() ~= 2 then
        Board.setState(2)
    end
    if TahuBoard.getStateId() ~= 2 then
        TahuBoard.setState(2)
    end
    if OnuaBoard.getStateId() ~= 2 then
        OnuaBoard.setState(2)
    end
    if PohatuBoard.getStateId() ~= 2 then
        PohatuBoard.setState(2)
    end
    if KopakaBoard.getStateId() ~= 2 then
        KopakaBoard.setState(2)
    end
    if LewaBoard.getStateId() ~= 2 then
        LewaBoard.setState(2)
    end
    if GaliBoard.getStateId() ~= 2 then
        GaliBoard.setState(2)
    end
    if Tablet.getStateId() ~= 2 then
        Tablet.setState(2)
    end
    if Manual.getStateId() ~= 2 then
        Manual.setState(2)
    end
    if Legend.getStateId() ~= 2 then
        Legend.setState(2)
    end

    --Clone New Objects
    --Object List: TOA, STAN GM, FOIL GM, MOM GM, MOM NM, GA, GA EXP, GA EXP 2, MISS, MISS EXP, MISS EXP 2, GMC, RAHI, ART 1&2, 810, HINT
    local Objects = {
        getObjectFromGUID("5f9c1c").clone({position = {0.12, 9.15, -14.57}, rotation = {0.0, 180.0, 0.0}}),
        getObjectFromGUID("4e9d08").clone({position = {-0.19, 9.15, 14.59}, rotation = {0.0, 0.0, 0.0}}),
        getObjectFromGUID("9c7109").clone({position = {12.66, 9.15, -7.28}, rotation = {0.0, 120.0, 0.0}}),
        getObjectFromGUID("b127aa").clone({position = {-12.70, 9.15, 7.22}, rotation = {0.0, 300.0, 0.0}}),
        getObjectFromGUID("ad325c").clone({position = {-12.57, 9.15, -7.42}, rotation = {0.0, 240.0, 0.0}}),
        getObjectFromGUID("905cb5").clone({position = {12.50, 9.15, 7.62}, rotation = {0.0, 60.0, 0.0}}),

        getObjectFromGUID("b88da8").clone({position = {-2.49, 7.50, -24.18}, rotation = {0.0, 180.0, 180.0}}),
        getObjectFromGUID("bc0973").clone({position = {2.47, 7.50, 24.18}, rotation = {0.0, 0.0, 180.0}}),
        getObjectFromGUID("e1376a").clone({position = {19.76, 7.50, -14.20}, rotation = {0.0, 120.0, 180.0}}),
        getObjectFromGUID("66b985").clone({position = {-19.82, 7.50, 14.20}, rotation = {0.0, 300.0, 180.0}}),
        getObjectFromGUID("6380ee").clone({position = {-22.19, 7.50, -9.98}, rotation = {0.0, 240.0, 180.0}}),
        getObjectFromGUID("e08fb4").clone({position = {22.19, 7.50, 9.93}, rotation = {0.0, 60.0, 180.0}}),

        getObjectFromGUID("12e366").clone({position = {-29.93, 7.00, 7.12}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("f6e8f1").clone({position = {-29.93, 7.00, -1.36}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("bc9554").clone({position = {-29.93, 7.00, -6.78}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("29218b").clone({position = {-29.93, 7.00, 1.57}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("021854").clone({position = {-29.93, 7.00, 4.30}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("ecd492").clone({position = {-29.93, 7.00, -4.19}, rotation = {0.0, 270.0, 0.0}}),       

        getObjectFromGUID("36f2bb").clone({position = {0.00, 7.50, -24.18}, rotation = {0.0, 180.0, 180.0}}),
        getObjectFromGUID("886fd3").clone({position = {0.00, 7.50, 24.18}, rotation = {0.0, 0.0, 180.0}}),
        getObjectFromGUID("193831").clone({position = {20.99, 7.50, -12.06}, rotation = {0.0, 120.0, 180.0}}),
        getObjectFromGUID("0a538b").clone({position = {-21.06, 7.50, 12.06}, rotation = {0.0, 300.0, 180.0}}),
        getObjectFromGUID("3d1c0e").clone({position = {-20.96, 7.50, -12.13}, rotation = {0.0, 240.0, 180.0}}),
        getObjectFromGUID("ba88f6").clone({position = {20.96, 7.50, 12.06}, rotation = {21.32, 60.0, 180.0}}),

        getObjectFromGUID("2c6845").clone({position = {2.46, 7.50, -24.21}, rotation = {0.0, 180.0, 180.0}}),
        getObjectFromGUID("2562c0").clone({position = {-2.46, 7.50, 24.21}, rotation = {0.0, 0.0, 180.0}}),
        getObjectFromGUID("b079da").clone({position = {22.23, 7.50, -9.90}, rotation = {0.0, 120.0, 180.0}}),
        getObjectFromGUID("46a300").clone({position = {-22.33, 7.50, 9.90}, rotation = {0.0, 300.0, 180.0}}),
        getObjectFromGUID("3bd6cc").clone({position = {-19.73, 7.50, -14.26}, rotation = {0.0, 240.0, 180.0}}),
        getObjectFromGUID("1aa38c").clone({position = {19.73, 7.50, 14.2}, rotation = {0.0, 60.0, 180.0}}),

        getObjectFromGUID("215b12").clone({position = {5.46, 9.15, 9.17}, rotation = {0.0, 270.0, 180.0}}),
        getObjectFromGUID("7c7bc4").clone({position = {1.62, 9.15, 9.17}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("4b219f").clone({position = {1.62, 9.25, 9.17}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("f91519").clone({position = {-3.15, 9.15, 9.21}, rotation = {0.0, 270.0, 180.0}}),
        getObjectFromGUID("d32687").clone({position = {-6.99, 9.15, 9.18}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("d8ab21").clone({position = {-6.99, 9.25, 9.18}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("9f8222").clone({position = {7.81, 9.15, -9.13}, rotation = {0.0, 270.0, 180.0}}),
        getObjectFromGUID("e93dfc").clone({position = {-0.80, 9.15, -9.13}, rotation = {0.0, 270.0, 180.0}}),

        getObjectFromGUID("493f7b").clone({position = {13.48, 10.00, 1.83}, rotation = {0.0, 0.0, 180.0}}),
        getObjectFromGUID("d7fc97").clone({position = {13.48, 10.50, 1.83}, rotation = {0.0, 0.0, 180.0}}),

        getObjectFromGUID("d929aa").clone({position = {13.70, 11.00, -1.67}, rotation = {0.0, 0.0, 0.0}}), 

        getObjectFromGUID("4db4e7").clone({position = {13.48, 11.50, 1.83}, rotation = {0.0, 0.0, 180.0}})  
    }

    --Move Studio Tiles
    getObjectFromGUID("46e314").setPosition({-12.27, -2.71, 21.25})
    getObjectFromGUID("ff04f2").setPosition({-12.23, -2.69, -21.23})
    getObjectFromGUID("45b939").setPosition({-13.50, -2.49, -19.22})
    getObjectFromGUID("41c648").setPosition({-10.43, -3.05, -22.60})
    getObjectFromGUID("ff04f2").setRotation({28.83, 209.89, 359.94})

    --Spawn Cansiters & Toa Tokens
    local Canisters = { 
        getObjectFromGUID("dd6a94").clone({position = {0.74, 133.00, -7.07}, rotation = {0.0, 315.0, 0.0}, scale = {0.0, 0.0, 0.0}}),
        getObjectFromGUID("dd6a94").clone({position = {6.64, 133.00, 5.91}, rotation = {0.0, 225.0, 0.0}, scale = {0.0, 0.0, 0.0}}),
        getObjectFromGUID("dd6a94").clone({position = {11.36, 133.00, 0.0}, rotation = {0.0, 270.0, 0.0}, scale = {0.0, 0.0, 0.0}}),
        getObjectFromGUID("dd6a94").clone({position = {-0.44, 133.00, 7.09}, rotation = {0.0, 180.0, 0.0}, scale = {0.0, 0.0, 0.0}}),
        getObjectFromGUID("dd6a94").clone({position = {-9.88, 133.00, 0.0}, rotation = {0.0, 90.0, 0.0}, scale = {0.0, 0.0, 0.0}}),
        getObjectFromGUID("dd6a94").clone({position = {4.28, 133.00, -2.35}, rotation = {0.0, 300.0, 0.03}, scale = {0.0, 0.0, 0.0}})      
    }
    
    local ToaTokens = {
        getObjectFromGUID("7d6efe").clone({position = {0.74, -5.00, -7.07}, rotation = {0.0, 315.00, 0.0}}),
        getObjectFromGUID("d7272f").clone({position = {6.64, -5.00, 5.91}, rotation = {0.0, 225.0, 0.0}}),
        getObjectFromGUID("332ce1").clone({position = {11.36, -5.00, 0.0}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("2ad542").clone({position = {-0.44, -5.00, 7.09}, rotation = {0.0, 180.0, 0.0}}),
        getObjectFromGUID("c7bbbe").clone({position = {-9.88, -5.00, 0.0}, rotation = {0.0, 90.00, 0.0}}),
        getObjectFromGUID("ef13db").clone({position = {4.28, -5.00, -2.35}, rotation = {0.0, 300.0, 0.03}})
    }

    for i=1, #ToaTokens, 1 do
        ToaTokens[i].removeTag("Dev")
        ToaTokens[i].tooltip = true
        ToaTokens[i].locked = true
    end  

    --Unlock Canisters & Play Sound
    for i=1, #Canisters, 1 do
        Canisters[i].locked = false      
        Wait.time(
            function()   
                Canisters[1].AssetBundle.playTriggerEffect(0)
                Canisters[3].AssetBundle.playTriggerEffect(0)
                Canisters[6].AssetBundle.playTriggerEffect(0)
                Canisters[i].setScale({1.0, 1.0, 1.0})
                Canisters[i].interactable = false
                Canisters[i].tooltip = false
                Canisters[i].removeTag("Dev")
            end,
            1
        )
    end
  
    Wait.time(
        function()    
            --Destroy Canisters
            for i=1, #Canisters, 1 do
                Canisters[i].destruct()
            end

            --Add Tags To Cloned Objects
            for i=1, #ToaTokens, 1 do
                if ToaTokens[i] ~= nil then
                    Wait.time(
                        function()  
                            ToaTokens[i]:setPosition(ToaTokens[i].getPosition() + vector (0, 11, 0))
                            ToaTokens[i].AssetBundle.playTriggerEffect(0)
                            ToaTokens[i].locked = false
                        end,
                        0.01
                    )
                end
            end                              
        end,
        4.4
    )

    --Launch Bohrok
    BohrokCL.locked = false
    BohrokCON.setState(2)
    Bohrok.setInvisibleTo()
    Wait.time(
        function()
            BohrokCL.addForce({-26,26,0})
            BohrokCL.addTorque({3,-1,0.5})
        end,
        0.1
    )    
    Wait.time(
        function()    
            Bohrok.addForce({-19,25,0})
            Bohrok.addTorque({0,0,3})     
            Bohrok.AssetBundle.playTriggerEffect(0)                              
        end,
        0.1
    )

    --Hide Mode Select Window
    UI.hide("GameModeSwitch")
    getObjectFromGUID("3bb2af").setState(2)

    --Adjust Tags, Tooltip, & Shuffle
    for i=1, #Objects, 1 do
        if Objects[i] ~= nil then
            Objects[i].removeTag("Dev")
            Objects[i].tooltip = true
            if Objects[i].hasTag("Shuffle") then
                Wait.time(
                    function()   
                        Objects[i].randomize()
                    end,
                    1
                )
            end
        end
    end
    TableFreeze()
    ObjectFreeze()
    BohrokCL.interactable = true
    BohrokCL.tooltip = true
end

function LoadRSHL()
    Cleanup()

    --Set Object States
    if Board.getStateId() ~= 3 then
        Board.setState(3)
    end    
    if TahuBoard.getStateId() ~= 3 then
        TahuBoard.setState(3)
    end
    if OnuaBoard.getStateId() ~= 3 then
        OnuaBoard.setState(3)
    end
    if PohatuBoard.getStateId() ~= 3 then
        PohatuBoard.setState(3)
    end
    if KopakaBoard.getStateId() ~= 3 then
        KopakaBoard.setState(3)
    end
    if LewaBoard.getStateId() ~= 3 then
        LewaBoard.setState(3)
    end
    if GaliBoard.getStateId() ~= 3 then
        GaliBoard.setState(3)
    end
    if Tablet.getStateId() ~= 3 then
        Tablet.setState(3)
    end
    if Manual.getStateId() ~= 3 then
        Manual.setState(3)
    end
    if Legend.getStateId() ~= 2 then
        Legend.setState(2)
    end

    --Clone New Objects
    --Object List: TOA, GM, NM, GA, GA EXP, GA EXP 2, MISS, MISS EXP, MISS EXP 2, GMC, RAHI, ART 1&2, 810, HINT
    local Objects = {
        getObjectFromGUID("6949b1").clone({position = {0.12, 9.15, -14.57}, rotation = {0.0, 180.0, 0.0}}),
        getObjectFromGUID("1405e0").clone({position = {-0.19, 9.15, 14.59}, rotation = {0.0, 0.0, 0.0}}),
        getObjectFromGUID("b6e928").clone({position = {12.66, 9.15, -7.28}, rotation = {0.0, 120.0, 0.0}}),
        getObjectFromGUID("167b05").clone({position = {-12.70, 9.15, 7.22}, rotation = {0.0, 300.0, 0.0}}),
        getObjectFromGUID("7e71f1").clone({position = {-12.57, 9.15, -7.42}, rotation = {0.0, 240.0, 0.0}}),
        getObjectFromGUID("8fd99d").clone({position = {12.50, 9.15, 7.62}, rotation = {0.0, 60.0, 0.0}}),

        getObjectFromGUID("d1f6d8").clone({position = {-1.85, 7.50, -24.17}, rotation = {0.0, 180.0, 180.0}}),
        getObjectFromGUID("0ded19").clone({position = {1.85, 7.50, 24.17}, rotation = {0.0, 0.0, 180.0}}),
        getObjectFromGUID("142f24").clone({position = {20.08, 7.50, -13.66}, rotation = {0.0, 120.0, 180.0}}),
        getObjectFromGUID("f38bb2").clone({position = {-20.08, 7.50, 13.66}, rotation = {0.0, 300.0, 180.0}}),
        getObjectFromGUID("f22ef5").clone({position = {-21.89, 7.50, -10.53}, rotation = {0.0, 240.0, 180.0}}),
        getObjectFromGUID("cfad59").clone({position = {21.89, 7.50, 10.49}, rotation = {0.0, 60.0, 180.0}}),  

        getObjectFromGUID("141c18").clone({position = {1.85, 7.50, -24.22}, rotation = {0.0, 180.0, 180.0}}),
        getObjectFromGUID("1ca8b4").clone({position = {-1.85, 7.50, 24.22}, rotation = {0.0, 0.0, 180.0}}),
        getObjectFromGUID("877351").clone({position = {21.93, 7.50, -10.45}, rotation = {0.0, 120.0, 180.0}}),
        getObjectFromGUID("a90c49").clone({position = {-22.00, 7.50, 10.45}, rotation = {0.0, 300.0, 180.0}}),
        getObjectFromGUID("93d91d").clone({position = {-20.05, 7.50, -13.72}, rotation = {0.0, 240.0, 180.0}}),
        getObjectFromGUID("21af86").clone({position = {20.05, 7.50, 13.68}, rotation = {0.0, 60.0, 180.0}}),

        getObjectFromGUID("6676ab").clone({position = {5.46, 9.15, 9.17}, rotation = {0.0, 270.0, 180.0}}),
        getObjectFromGUID("ed8ffb").clone({position = {1.62, 9.15, 9.17}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("9d6143").clone({position = {1.62, 9.25, 9.17}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("828dd0").clone({position = {-3.15, 9.15, 9.21}, rotation = {0.0, 270.0, 180.0}}),
        getObjectFromGUID("2ae60b").clone({position = {-6.99, 9.15, 9.18}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("67d856").clone({position = {-6.99, 9.25, 9.18}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("345407").clone({position = {7.81, 9.15, -9.13}, rotation = {0.0, 270.0, 180.0}}),
        getObjectFromGUID("e93dfc").clone({position = {-0.80, 9.15, -9.13}, rotation = {0.0, 270.0, 180.0}}),

        getObjectFromGUID("493f7b").clone({position = {13.48, 10.00, 1.83}, rotation = {0.0, 0.0, 180.0}}),
        getObjectFromGUID("d7fc97").clone({position = {13.48, 10.50, 1.83}, rotation = {0.0, 0.0, 180.0}}),

        getObjectFromGUID("d929aa").clone({position = {13.70, 11.00, -1.67}, rotation = {0.0, 0.0, 0.0}}), 

        getObjectFromGUID("ed939b").clone({position = {13.48, 11.50, 1.83}, rotation = {0.0, 0.0, 180.0}})   
    }
    
    --Add/Replace Meme Cards
    local Bees = 0.01
    if math.random() < Bees then
        local BeesActive = getObjectFromGUID("6a5635").clone({position = {-0.80, 9.15, -9.13}, rotation = {0.0, 270.0, 180.0}})   
        Wait.time (
            function()
                BeesActive.removeTag("Dev")
                BeesActive.putObject(Objects[26])
            end,
            0.1
        )
    end
    local Trees = 0.01
    if math.random() < Trees then
        local TreesActive = getObjectFromGUID("b36d54").clone({position = {5.46, 9.15, 9.17}, rotation = {0.0, 270.0, 180.0}})     
        Wait.time (
            function()
                TreesActive.removeTag("Dev")
                TreesActive.putObject(Objects[19])
            end,
            0.1
        )
    end
    local Bioquake = 0.01
    if math.random() < Bioquake then
        local BioquakeActive = getObjectFromGUID("ab07b8").clone({position = {5.46, 9.15, 9.17}, rotation = {0.0, 270.0, 180.0}}) 
        Wait.time (
            function()
                BioquakeActive.removeTag("Dev")
                BioquakeActive.putObject(Objects[19])
            end,
            0.1
        )
    end
    local TheWorld = 0.01
    if math.random() < TheWorld then
        local TheWorldActive = getObjectFromGUID("25ea03").clone({position = {5.46, 9.15, 9.17}, rotation = {0.0, 270.0, 180.0}})
        Wait.time (
            function()
                TheWorldActive.removeTag("Dev")
                TheWorldActive.putObject(Objects[19])
            end,
            0.1
        )
    end

    --Move Studio Tiles
    getObjectFromGUID("46e314").setPosition({-10.36, -2.85, 22.65})
    getObjectFromGUID("ff04f2").setPosition({-13.40, -2.11, 19.62})
    getObjectFromGUID("45b939").setPosition({-10.57, -2.69, -22.19})
    getObjectFromGUID("41c648").setPosition({-13.60, -2.13, -19.39})
    getObjectFromGUID("ff04f2").setRotation({28.83, 329.95, 359.98})

    --Spawn Lightshafts & Toa Tokens
    local Lightshaft1 = getObjectFromGUID("911407").clone({position = {1000, 0.00, -7.07}, rotation = {0.0, 315.0, 0.0}})
    local Lightshaft2 = getObjectFromGUID("911407").clone({position = {1000, 0.00, 5.91}, rotation = {0.0, 225.0, 0.0}})
    local Lightshaft3 = getObjectFromGUID("911407").clone({position = {1000, 0.00, 0.0}, rotation = {0.0, 270.0, 0.0}})
    local Lightshaft4 = getObjectFromGUID("911407").clone({position = {1000, 0.00, 7.09}, rotation = {0.0, 180.0, 0.0}})
    local Lightshaft5 = getObjectFromGUID("911407").clone({position = {1000, 0.00, 0.0}, rotation = {0.0, 90.0, 0.0}})
    local Lightshaft6 = getObjectFromGUID("911407").clone({position = {1000, 0.00, -2.35}, rotation = {0.0, 300.0, 0.03}})
    
    --Tahu
    Wait.time(
        function()  
            Lightshaft1.removeTag("Dev")
            Wait.time(
                function()   
                    Lightshaft1.AssetBundle.playTriggerEffect(0)
                    Lightshaft1.setPosition({0.74, 1.75, -7.07})
                end,
                0.5
            )
            Wait.time(
                function()   
                    Lightshaft1.setPosition({1000, -1.75, -7.07})
                end,
                2.6
            )
            Wait.time(
                function()  
                    local Toa = getObjectFromGUID("7a1452").clone({position = {0.74, 9.15, -7.07}, rotation = {0.0, 315.0, 0.0}})
                    Toa.removeTag("Dev")
                    Toa.tooltip = true
                    Toa.locked = true
                    Wait.time(
                        function()  
                            Toa.locked = false
                        end,
                        1.1
                    )
                end,
                1.9
            )
        end,
        4.52
    )

    --Onua
    Wait.time(
        function()  
            Lightshaft2.removeTag("Dev")
            Wait.time(
                function()   
                    Lightshaft2.AssetBundle.playTriggerEffect(0)
                    Lightshaft2.setPosition({6.64, 1.75, 5.91})
                end,
                0.5
            )
            Wait.time(
                function()   
                    Lightshaft2.setPosition({1000, -1.75, 5.91})
                end,
                2.6
            )
            Wait.time(
                function()  
                    local Toa = getObjectFromGUID("e8ca3c").clone({position = {6.64, 9.15, 5.91}, rotation = {0.0, 225.0, 0.0}})
                    Toa.removeTag("Dev")
                    Toa.tooltip = true
                    Toa.locked = true
                    Wait.time(
                        function()  
                            Toa.locked = false
                        end,
                        1.1
                    )
                end,
                1.9
            )
        end,
        3.71
    )

    --Pohatu
    Wait.time(
        function()              
            Lightshaft3.removeTag("Dev")
            Wait.time(
                function()   
                    Lightshaft3.AssetBundle.playTriggerEffect(0)
                    Lightshaft3.setPosition({11.36, 1.75, 0.0})
                end,
                0.5
            )
            Wait.time(
                function()   
                    Lightshaft3.setPosition({1000, -1.75, 0.0})
                end,
                2.6
            )
            Wait.time(
                function()  
                    local Toa = getObjectFromGUID("8bb9f1").clone({position = {11.36, 9.15, 0.0}, rotation = {0.0, 270.0, 0.0}})
                    Toa.removeTag("Dev")
                    Toa.tooltip = true
                    Toa.locked = true
                    Wait.time(
                        function()  
                            Toa.locked = false
                        end,
                        1.1
                    )
                end,
                1.9
            )
        end,
        3.04
    )

    --Kopaka
    Wait.time(
        function()             
            Lightshaft4.removeTag("Dev")
            Wait.time(
                function()   
                    Lightshaft4.AssetBundle.playTriggerEffect(0)
                    Lightshaft4.setPosition({-0.44, 1.75, 7.09})
                end,
                0.5
            )
            Wait.time(
                function()   
                    Lightshaft4.setPosition({1000, -1.75, 7.09})
                end,
                2.6
            )
            Wait.time(
                function()  
                    local Toa = getObjectFromGUID("1842c6").clone({position = {-0.44, 9.15, 7.09}, rotation = {0.0, 180.0, 0.0}})
                    Toa.removeTag("Dev")
                    Toa.tooltip = true
                    Toa.locked = true
                    Wait.time(
                        function()  
                            Toa.locked = false
                        end,
                        1.1
                    )
                end,
                1.9
            )
        end,
        4.03
    )

    --Lewa
    Wait.time(
        function()             
            Lightshaft5.removeTag("Dev")
            Wait.time(
                function()   
                    Lightshaft5.AssetBundle.playTriggerEffect(0)
                    Lightshaft5.setPosition({-9.88, 1.75, 0.0})
                end,
                0.5
            )
            Wait.time(
                function()   
                    Lightshaft5.setPosition({1000,  -1.75, 0.0})
                end,
                2.6
            )
            Wait.time(
                function()  
                    local Toa = getObjectFromGUID("5dd747").clone({position = {-9.88, 9.15, 0.0}, rotation = {0.0, 90.0, 0.0}})
                    Toa.removeTag("Dev")
                    Toa.tooltip = true
                    Toa.locked = true
                    Wait.time(
                        function()  
                            Toa.locked = false
                        end,
                        1.1
                    )
                end,
                1.9
            )
        end,
        3.59
    )

    --Gali
    Wait.time(
        function()              
            Lightshaft6.removeTag("Dev")
            Wait.time(
                function()   
                    Lightshaft6.AssetBundle.playTriggerEffect(0)
                    Lightshaft6.setPosition({4.28, 1.75, -2.35})
                end,
                0.5
            )
            Wait.time(
                function()   
                    Lightshaft6.setPosition({1000, -1.75, -2.35})
                end,
                2.6
            )
            Wait.time(
                function()  
                    local Toa = getObjectFromGUID("e27be6").clone({position = {4.28, 9.15, -2.35}, rotation = {0.0, 300.0, 0.03}})
                    Toa.removeTag("Dev")
                    Toa.tooltip = true
                    Toa.locked = true
                    Wait.time(
                        function()  
                            Toa.locked = false
                        end,
                        1.1
                    )
                end,
                1.9
            )
        end,
        2.30
    )

    --Launch Bohrok
    BohrokCL.locked = false
    BohrokCON.setState(2)
    Bohrok.setInvisibleTo()
    Wait.time(
        function()
            BohrokCL.addForce({-26,26,0})
            BohrokCL.addTorque({3,-1,0.5})
        end,
        0.1
    )    
    Wait.time(
        function()    
            Bohrok.addForce({-19,25,0})
            Bohrok.addTorque({0,0,3})     
            Bohrok.AssetBundle.playTriggerEffect(0)                                                 
        end,
        0.1
    )
      
    --Hide Mode Select Window
    UI.hide("GameModeSwitch")
    getObjectFromGUID("3bb2af").setState(2)

    --Adjust Tags, Tooltip, & Shuffle
    for i=1, #Objects, 1 do
        if Objects[i] ~= nil then
            Objects[i].removeTag("Dev")
            Objects[i].tooltip = true
            if Objects[i].hasTag("Shuffle") then
                Wait.time(
                    function()   
                        Objects[i].randomize()
                    end,
                    1
                )
            end
        end
    end
    TableFreeze()
    ObjectFreeze()
    BohrokCL.interactable = true
    BohrokCL.tooltip = true
end

function LoadKUTA()
    Cleanup()

    --Set Object States
    if Board.getStateId() ~= 4 then
        Board.setState(4)
    end    
    if TahuBoard.getStateId() ~= 3 then
        TahuBoard.setState(3)
    end
    if OnuaBoard.getStateId() ~= 3 then
        OnuaBoard.setState(3)
    end
    if PohatuBoard.getStateId() ~= 3 then
        PohatuBoard.setState(3)
    end
    if KopakaBoard.getStateId() ~= 3 then
        KopakaBoard.setState(3)
    end
    if LewaBoard.getStateId() ~= 3 then
        LewaBoard.setState(3)
    end
    if GaliBoard.getStateId() ~= 3 then
        GaliBoard.setState(3)
    end
    if Tablet.getStateId() ~= 3 then
        Tablet.setState(3)
    end
    if Manual.getStateId() ~= 4 then
        Manual.setState(4)
    end
    if Legend.getStateId() ~= 2 then
        Legend.setState(2)
    end

    --Clone New Objects
    --Object List: TOA, GM, NM, GA, MISS, GMC, TAKANUVA 1&2, MAKUTA 1, SHADOW TOA, ART 1&2, 810, HINT 1&2
    local Objects = {
        getObjectFromGUID("6949b1").clone({position = {0.12, 9.15, -14.57}, rotation = {0.0, 180.0, 0.0}}),
        getObjectFromGUID("1405e0").clone({position = {-0.19, 9.15, 14.59}, rotation = {0.0, 0.0, 0.0}}),
        getObjectFromGUID("b6e928").clone({position = {12.66, 9.15, -7.28}, rotation = {0.0, 120.0, 0.0}}),
        getObjectFromGUID("167b05").clone({position = {-12.70, 9.15, 7.22}, rotation = {0.0, 300.0, 0.0}}),
        getObjectFromGUID("7e71f1").clone({position = {-12.57, 9.15, -7.42}, rotation = {0.0, 240.0, 0.0}}),
        getObjectFromGUID("8fd99d").clone({position = {12.50, 9.15, 7.62}, rotation = {0.0, 60.0, 0.0}}),

        getObjectFromGUID("d1f6d8").clone({position = {-1.85, 7.50, -24.17}, rotation = {0.0, 180.0, 180.0}}),
        getObjectFromGUID("0ded19").clone({position = {1.85, 7.50, 24.17}, rotation = {0.0, 0.0, 180.0}}),
        getObjectFromGUID("142f24").clone({position = {20.08, 7.50, -13.66}, rotation = {0.0, 120.0, 180.0}}),
        getObjectFromGUID("f38bb2").clone({position = {-20.08, 7.50, 13.66}, rotation = {0.0, 300.0, 180.0}}),
        getObjectFromGUID("f22ef5").clone({position = {-21.89, 7.50, -10.53}, rotation = {0.0, 240.0, 180.0}}),
        getObjectFromGUID("cfad59").clone({position = {21.89, 7.50, 10.49}, rotation = {0.0, 60.0, 180.0}}),  

        getObjectFromGUID("141c18").clone({position = {1.85, 7.50, -24.22}, rotation = {0.0, 180.0, 180.0}}),
        getObjectFromGUID("1ca8b4").clone({position = {-1.85, 7.50, 24.22}, rotation = {0.0, 0.0, 180.0}}),
        getObjectFromGUID("877351").clone({position = {21.93, 7.50, -10.45}, rotation = {0.0, 120.0, 180.0}}),
        getObjectFromGUID("a90c49").clone({position = {-22.00, 7.50, 10.45}, rotation = {0.0, 300.0, 180.0}}),
        getObjectFromGUID("93d91d").clone({position = {-20.05, 7.50, -13.72}, rotation = {0.0, 240.0, 180.0}}),
        getObjectFromGUID("21af86").clone({position = {20.05, 7.50, 13.68}, rotation = {0.0, 60.0, 180.0}}),
        
        getObjectFromGUID("78071e").clone({position = {5.46, 9.15, 9.17}, rotation = {0.0, 270.0, 180.0}}),
        getObjectFromGUID("5393b7").clone({position = {-3.15, 9.15, 9.21}, rotation = {0.0, 270.0, 180.0}}),
        getObjectFromGUID("a6464c").clone({position = {7.81, 9.15, -9.13}, rotation = {0.0, 270.0, 180.0}}),
        
        getObjectFromGUID("e053fb").clone({position = {-0.80, 9.17, -9.13}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("a2893d").clone({position = {-4.62, 9.17, -9.13}, rotation = {0.0, 270.0, 0.0}}),
        getObjectFromGUID("cfd609").clone({position = {-0.80, 9.15, -9.13}, rotation = {0.0, 270.0, 0.0}}),      
        
        getObjectFromGUID("4c1949").clone({position = {-13.22, 9.15, 0.01}, rotation = {0.0, 180.0, 0.0}}),

        getObjectFromGUID("493f7b").clone({position = {13.48, 10.00, 1.83}, rotation = {0.0, 0.0, 180.0}}),
        getObjectFromGUID("d7fc97").clone({position = {13.48, 10.50, 1.83}, rotation = {0.0, 0.0, 180.0}}),

        getObjectFromGUID("d929aa").clone({position = {13.70, 11.00, -1.67}, rotation = {0.0, 0.0, 0.0}}), 

        getObjectFromGUID("3e59d0").clone({position = {13.48, 11.50, 1.83}, rotation = {0.0, 0.0, 180.0}}),
        getObjectFromGUID("443a67").clone({position = {13.48, 12.00, 1.83}, rotation = {0.0, 0.0, 180.0}})         
    }
    
    --Add/Replace Meme Cards
    local Trees = 0.01
    if math.random() < Trees then
        local TreesActive = getObjectFromGUID("b36d54").clone({position = {1.00, 0.00, 0.00}, rotation = {0.0, 270.0, 180.0}})
        Wait.time (
            function()
                TreesActive.removeTag("Dev")
                TreesActive.putObject(Objects[19])
            end,
            0.1
        )
    end
    local Bioquake = 0.01
    if math.random() < Bioquake then
        local BioquakeActive = getObjectFromGUID("ab07b8").clone({position = {2.00, 0.00, 0.00}, rotation = {0.0, 270.0, 180.0}})    
        Wait.time (
            function()
                BioquakeActive.removeTag("Dev")
                BioquakeActive.putObject(Objects[19])
            end,
            0.1
        )
    end
    local TheWorld = 0.01
    if math.random() < TheWorld then
        local TheWorldActive = getObjectFromGUID("25ea03").clone({position = {3.00, 0.00, 0.00}, rotation = {0.0, 270.0, 180.0}})    
        Wait.time (
            function()
                TheWorldActive.removeTag("Dev")
                TheWorldActive.putObject(Objects[19])
            end,
            0.1
        )
    end

    --Move Studio Tiles
    getObjectFromGUID("46e314").setPosition({-10.36, -2.85, 22.65})
    getObjectFromGUID("ff04f2").setPosition({-13.40, -2.11, 19.62})
    getObjectFromGUID("45b939").setPosition({-10.57, -2.69, -22.19})
    getObjectFromGUID("41c648").setPosition({-13.60, -2.13, -19.39})
    getObjectFromGUID("ff04f2").setRotation({28.83, 329.95, 359.98})

    --Spawn Lightshafts & Toa Tokens
    local Lightshaft1 = getObjectFromGUID("911407").clone({position = {1000, 0.00, -7.07}, rotation = {0.0, 315.0, 0.0}})
    local Lightshaft2 = getObjectFromGUID("911407").clone({position = {1000, 0.00, 5.91}, rotation = {0.0, 225.0, 0.0}})
    local Lightshaft3 = getObjectFromGUID("911407").clone({position = {1000, 0.00, 0.0}, rotation = {0.0, 270.0, 0.0}})
    local Lightshaft4 = getObjectFromGUID("911407").clone({position = {1000, 0.00, 7.09}, rotation = {0.0, 180.0, 0.0}})
    local Lightshaft5 = getObjectFromGUID("911407").clone({position = {1000, 0.00, 0.0}, rotation = {0.0, 90.0, 0.0}})
    local Lightshaft6 = getObjectFromGUID("911407").clone({position = {1000, 0.00, -2.35}, rotation = {0.0, 300.0, 0.03}})
    
    --Tahu
    Wait.time(
        function()  
            Lightshaft1.removeTag("Dev")
            Wait.time(
                function()   
                    Lightshaft1.AssetBundle.playTriggerEffect(0)
                    Lightshaft1.setPosition({0.74, 1.75, -7.07})
                end,
                0.5
            )
            Wait.time(
                function()   
                    Lightshaft1.setPosition({1000, -1.75, -7.07})
                end,
                2.6
            )
            Wait.time(
                function()  
                    local Toa = getObjectFromGUID("7a1452").clone({position = {0.74, 9.15, -7.07}, rotation = {0.0, 315.0, 0.0}})
                    Toa.removeTag("Dev")
                    Toa.tooltip = true
                    Toa.locked = true
                    Wait.time(
                        function()  
                            Toa.locked = false
                        end,
                        1.1
                    )
                end,
                1.9
            )
        end,
        2.22
    )

    --Onua
    Wait.time(
        function()  
            Lightshaft2.removeTag("Dev")
            Wait.time(
                function()   
                    Lightshaft2.AssetBundle.playTriggerEffect(0)
                    Lightshaft2.setPosition({6.64, 1.75, 5.91})
                end,
                0.5
            )
            Wait.time(
                function()   
                    Lightshaft2.setPosition({1000, -1.75, 5.91})
                end,
                2.6
            )
            Wait.time(
                function()  
                    local Toa = getObjectFromGUID("e8ca3c").clone({position = {6.64, 9.15, 5.91}, rotation = {0.0, 225.0, 0.0}})
                    Toa.removeTag("Dev")
                    Toa.tooltip = true
                    Toa.locked = true
                    Wait.time(
                        function()  
                            Toa.locked = false
                        end,
                        1.1
                    )
                end,
                1.9
            )
        end,
        1.41
    )

    --Pohatu
    Wait.time(
        function()              
            Lightshaft3.removeTag("Dev")
            Wait.time(
                function()   
                    Lightshaft3.AssetBundle.playTriggerEffect(0)
                    Lightshaft3.setPosition({11.36, 1.75, 0.0})
                end,
                0.5
            )
            Wait.time(
                function()   
                    Lightshaft3.setPosition({1000, -1.75, 0.0})
                end,
                2.6
            )
            Wait.time(
                function()  
                    local Toa = getObjectFromGUID("8bb9f1").clone({position = {11.36, 9.15, 0.0}, rotation = {0.0, 270.0, 0.0}})
                    Toa.removeTag("Dev")
                    Toa.tooltip = true
                    Toa.locked = true
                    Wait.time(
                        function()  
                            Toa.locked = false
                        end,
                        1.1
                    )
                end,
                1.9
            )
        end,
        0.74
    )

    --Kopaka
    Wait.time(
        function()             
            Lightshaft4.removeTag("Dev")
            Wait.time(
                function()   
                    Lightshaft4.AssetBundle.playTriggerEffect(0)
                    Lightshaft4.setPosition({-0.44, 1.75, 7.09})
                end,
                0.5
            )
            Wait.time(
                function()   
                    Lightshaft4.setPosition({1000, -1.75, 7.09})
                end,
                2.6
            )
            Wait.time(
                function()  
                    local Toa = getObjectFromGUID("1842c6").clone({position = {-0.44, 9.15, 7.09}, rotation = {0.0, 180.0, 0.0}})
                    Toa.removeTag("Dev")
                    Toa.tooltip = true
                    Toa.locked = true
                    Wait.time(
                        function()  
                            Toa.locked = false
                        end,
                        1.1
                    )
                end,
                1.9
            )
        end,
        1.73
    )

    --Lewa
    Wait.time(
        function()             
            Lightshaft5.removeTag("Dev")
            Wait.time(
                function()   
                    Lightshaft5.AssetBundle.playTriggerEffect(0)
                    Lightshaft5.setPosition({-9.88, 1.75, 0.0})
                end,
                0.5
            )
            Wait.time(
                function()   
                    Lightshaft5.setPosition({1000,  -1.75, 0.0})
                end,
                2.6
            )
            Wait.time(
                function()  
                    local Toa = getObjectFromGUID("5dd747").clone({position = {-9.88, 9.15, 0.0}, rotation = {0.0, 90.0, 0.0}})
                    Toa.removeTag("Dev")
                    Toa.tooltip = true
                    Toa.locked = true
                    Wait.time(
                        function()  
                            Toa.locked = false
                        end,
                        1.1
                    )
                end,
                1.9
            )
        end,
        1.29
    )

    --Gali
    Wait.time(
        function()              
            Lightshaft6.removeTag("Dev")
            Wait.time(
                function()   
                    Lightshaft6.AssetBundle.playTriggerEffect(0)
                    Lightshaft6.setPosition({4.28, 1.75, -2.35})
                end,
                0.5
            )
            Wait.time(
                function()   
                    Lightshaft6.setPosition({1000, -1.75, -2.35})
                end,
                2.6
            )
            Wait.time(
                function()  
                    local Toa = getObjectFromGUID("e27be6").clone({position = {4.28, 9.15, -2.35}, rotation = {0.0, 300.0, 0.03}})
                    Toa.removeTag("Dev")
                    Toa.tooltip = true
                    Toa.locked = true
                    Wait.time(
                        function()  
                            Toa.locked = false
                        end,
                        1.1
                    )
                end,
                1.9
            )
        end,
        0.00
    )

    --Spawn Takanuva & Makuta
    local Makuta = getObjectFromGUID("7feda9").clone({position = {-0.44, 5.00, 0.00}, rotation = {0.0, 270.0, 0.0}})
    Makuta.removeTag("Dev")
    Makuta.tooltip = true
    Makuta.locked = true
    local Takanuva = getObjectFromGUID("2b06ad").clone({position = {-0.80, 5.00, -9.13}, rotation = {0.0, 0.0, 0.0}})
    Takanuva.removeTag("Dev")    
    Takanuva.tooltip = true
    Takanuva.locked = true
    local TakaPortal = getObjectFromGUID("acdc27").clone({position = {-1000, 5.00, -9.13}, rotation = {0.0, -90.0, 0.0}})
    TakaPortal.locked = true
    local MakutaPortal = getObjectFromGUID("207f49").clone({position = {-1000, 5.00, 0.00}, rotation = {0.0, 0.0, 0.0}})
    MakutaPortal.locked = true
    local MakutaTablePortal = getObjectFromGUID("207f49").clone({position = {-1000.00, -30.00, 0.00}, rotation = {0.0, 0.0, 0.0}, scale = {10.0, 15.0, 23.0}})
    MakutaTablePortal.locked = true
    Wait.time(
        function()
            Wait.time(
                function() 
                    TakaPortal.AssetBundle.playTriggerEffect(0)
                    TakaPortal.setPosition({-0.80, 1.00, -9.13})
                    MakutaPortal.AssetBundle.playTriggerEffect(0)
                    MakutaPortal.setPosition({-0.44, 0.90, 0.00})
                end,
                0.5
            )
            Wait.time(
                function()
                    Takanuva.setPositionSmooth({-0.80, 0.90, -9.13})
                    Makuta.setPositionSmooth({-0.44, 0.85, 0.00})
                    Wait.time(
                        function()
                            Takanuva.locked = false
                            TakaPortal.destruct()                          
                            Makuta.locked = false
                            MakutaPortal.destruct()
                        end,
                        4.00
                    )
                end,
                0.5
            )
            TakaPortal.removeTag("Dev")
            MakutaPortal.removeTag("Dev")        
        end,
        4.0
    )

    --Hide Mode Select Window
    UI.hide("GameModeSwitch")
    getObjectFromGUID("3bb2af").setState(2)

    --Move Makuta Table, Hand, Cards, Objects, & Button
    Wait.time(
        function()
            Wait.time(
                function() 
                    MakutaTablePortal.AssetBundle.playTriggerEffect(0)
                    MakutaTablePortal.setPosition({-38.00, -4.50, 0.00})
                end,
                0.5
            )
            Wait.time(
                function()                     
                    MakutaTablePortal.destruct()
                end,
                4.00
            )
            MakutaTablePortal.removeTag("Dev")
            Wait.time(
                function()
                    local Cards = {
                        getObjectFromGUID("ce790f").clone({position = {-39.28, -8.00, 8.31}, rotation = {0.0, 270.0, 180.0}}),
                        getObjectFromGUID("b189ab").clone({position = {-39.28, -8.00, -5.41}, rotation = {0.0, 270.0, 180.0}}),
                        getObjectFromGUID("9ec01a").clone({position = {-34.54, -8.00, 2.60}, rotation = {0.0, 270.0, 0.0}}),
                        getObjectFromGUID("cd994b").clone({position = {-34.54, -8.00, 0.86}, rotation = {0.0, 270.0, 0.0}}),
                        getObjectFromGUID("a77e27").clone({position = {-34.54, -8.00, -0.87}, rotation = {0.0, 270.0, 0.0}}),
                        getObjectFromGUID("9e0c24").clone({position = {-34.54, -8.00, -2.62}, rotation = {0.0, 270.0, 0.0}}),
                        getObjectFromGUID("888a13").clone({position = {-38.70, -8.00, 0.00}, rotation = {0.0, 270.0, 0.0}})
                    }

                    local Kraata = Cards[1]
                    local Rahkshi = Cards[2]
                    local Token1 = Cards[3]
                    local Token2 = Cards[4]
                    local Token3 = Cards[5]
                    local Token4 = Cards[6]      
                    local Kraahkan = Cards[7]
                    local Rockshi = 0.01
                    if math.random() < Rockshi then
                        local RockshiActive = getObjectFromGUID("016e83").clone({position = {4.00, 0.00, 0.00}, rotation = {0.0, 270.0, 180.0}})    
                        Wait.time (
                            function()
                                RockshiActive.removeTag("Dev")
                                RockshiActive.putObject(Rahkshi)
                            end,
                            0.1
                        )
                    end
                    local Kayahk = 0.01
                    if math.random() < Kayahk then
                        local KayahkActive = getObjectFromGUID("2b8812").clone({position = {5.00, 0.00, 0.00}, rotation = {0.0, 270.0, 180.0}})
                        Wait.time (
                            function()
                                KayahkActive.removeTag("Dev")
                                KayahkActive.putObject(Rahkshi)
                            end,
                            0.1
                        )
                    end
                    local YeOlrahk = 0.01
                    if math.random() < YeOlrahk then
                        local YeOlrahkActive = getObjectFromGUID("6bbcf5").clone({position = {6.00, 0.00, 0.00}, rotation = {0.0, 270.0, 180.0}})
                        Wait.time (
                            function()
                                YeOlrahkActive.removeTag("Dev")
                                YeOlrahkActive.putObject(Rahkshi)
                            end,
                            0.1
                        )
                    end                  
                    local Sonahk = 0.01
                    if math.random() < Sonahk then
                        local SonahkActive = getObjectFromGUID("6ef821").clone({position = {7.00, 0.00, 0.00}, rotation = {0.0, 270.0, 180.0}})
                        Wait.time (
                            function()
                                SonahkActive.removeTag("Dev")
                                SonahkActive.putObject(Rahkshi)
                            end,
                            0.1
                        )
                    end                    
                    local EveryBagel = 0.01
                    if math.random() < EveryBagel then
                        local EveryBagelActive = getObjectFromGUID("910fcd").clone({position = {8.00, 0.00, 0.00}, rotation = {0.0, 270.0, 180.0}})
                        Wait.time (
                            function()
                                EveryBagelActive.removeTag("Dev")
                                EveryBagelActive.putObject(Rahkshi)
                            end,
                            0.1
                        )
                    end
                    local Baguette = 0.01
                    if math.random() < Baguette then
                        local BaguetteActive = getObjectFromGUID("1c05a3").clone({position = {9.00, 0.00, 0.00}, rotation = {0.0, 270.0, 180.0}})
                        Wait.time (
                            function()
                                BaguetteActive.removeTag("Dev")
                                BaguetteActive.putObject(Kraata)
                            end,
                            0.1
                        )
                    end
            
                    Kraata:setPositionSmooth({-39.28, 6.00, 8.31})
                    Rahkshi:setPositionSmooth({-39.28, 6.00, -5.41})
                    Kraahkan:setPositionSmooth({-38.70, 6.00, 0.00})
                    Token1:setPositionSmooth({-34.54, 6.00, 2.60})
                    Token1.removeTag("Dev")
                    Token2:setPositionSmooth({-34.54, 6.00, 0.86})
                    Token2.removeTag("Dev")
                    Token3:setPositionSmooth({-34.54, 6.00, -0.87})
                    Token3.removeTag("Dev")
                    Token4:setPositionSmooth({-34.54, 6.00, -2.62})
                    Token4.removeTag("Dev")
                    getObjectFromGUID("c5b23e"):setPositionSmooth({-43.97, 4.00, 0.0})
                    getObjectFromGUID("256153").setState(1)
                    getObjectFromGUID("7ffc4c"):setPositionSmooth({20.12, -0.60, 0.0})     
                    local MakutaBowl = getObjectFromGUID("a7d9de"):setPositionSmooth({-36.43, 5.00, 3.00})
                    local MakutaDie = getObjectFromGUID("26a094")
                    MakutaDie:setPositionSmooth({-36.43, 5.75, 3.00})
                    MakutaDie:setRotation({0.00, 90.00, 180.00})
                    MakutaDie.locked = false
                    MakutaDie.interactable = true
                    MakutaDie.tooltip = true
                    MakutaDie.setInvisibleTo()
                    local MakutaBag = getObjectFromGUID("916518")
                    MakutaBag:setPositionSmooth({-36.43, 5.00, -3.00})    
                    MakutaBag.interactable = true
                    MakutaBag.tooltip = true       
                    MakutaBag.setInvisibleTo()                        
                    local MakutaTable = getObjectFromGUID("899089"):setPositionSmooth({-36.00, -5.0, 0.0})
                    
                    --Adjust Tags, Tooltip & Shuffle
                    for i=1, #Cards, 1 do
                        if Cards[i] ~= nil then
                            Cards[i].removeTag("Dev")
                            Cards[i].tooltip = true
                            if Cards[i].hasTag("Shuffle") then
                                Wait.time(
                                    function()   
                                        Cards[i].randomize()
                                    end,
                                    2
                                )
                            end
                        end
                    end
                end,
                0.5
            )
        end,
        4.00
    )

    --Adjust Tags, Tooltip, & Shuffle
    for i=1, #Objects, 1 do
        if Objects[i] ~= nil then
            Objects[i].removeTag("Dev")
            Objects[i].tooltip = true
            if Objects[i].hasTag("Shuffle") then
                Wait.time(
                    function()   
                        Objects[i].randomize()
                    end,
                    1
                )
            end
        end
    end
    TableFreeze()
    ObjectFreeze()
end

function CloseWin()
    UI.hide("GameModeSwitch")
end

--Camera Zone Reset
function onPlayerChangeColor(color)
    if color == "White" then
        Wait.time(function()
            Player["White"].lookAt({
                position = {x=0,y=0,z=0},
                pitch    = 31,
                yaw      = 120,
                distance = 50
            })
        end, 
        0.8)
    end
    if color == "Green" then
        Wait.time(function()
            Player["Green"].lookAt({
                position = {x=0,y=0,z=0},
                pitch    = 31,
                yaw      = 60,
                distance = 50
            })
        end, 
        0.8)
    end
    if color == "Red" then
        Wait.time(function()
            Player["Red"].lookAt({
                position = {x=0,y=0,z=0},
                pitch    = 31,
                yaw      = 0,
                distance = 50
            })
        end, 
        0.8)
    end
    if color == "Brown" then
        Wait.time(function()
            Player["Brown"].lookAt({
                position = {x=0,y=0,z=0},
                pitch    = 31,
                yaw      = 300,
                distance = 50
            })
        end, 
        0.8)
    end
    if color == "Blue" then
        Wait.time(function()
            Player["Blue"].lookAt({
                position = {x=0,y=0,z=0},
                pitch    = 31,
                yaw      = 240,
                distance = 50
            })
        end, 
        0.8)
    end
    if color == "Purple" then
        Wait.time(function()
            Player["Purple"].lookAt({
                position = {x=0,y=0,z=0},
                pitch    = 31,
                yaw      = 180,
                distance = 50
            })
        end, 
        0.8)
    end
    if color == "Orange" then
        Wait.time(function()
            Player["Orange"].lookAt({
                position = {x=0,y=0,z=0},
                pitch    = 20,
                yaw      = 90,
                distance = 59
            })
        end, 
        0.8)
    end
end