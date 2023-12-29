function onCollisionEnter(info)
    if(info.collision_object.getName() == 'Board') then
        self:setPosition({31.26, -4.07, 0.00})
        self:setRotation({304.97, 270.05, 359.99})
        self.setInvisibleTo({'Red', 'Green', 'White', 'Purple', 'Blue', 'Brown', 'Orange'})

        --Clone New Objects
        --Object Group List: BOHROK, VA, KRANA
        local Cards = {
            getObjectFromGUID("0d53b6").clone({position = {-5.76, 9.15, 0.00}, rotation = {0.0, 180.0, 0.0}}),
            getObjectFromGUID("5e5786").clone({position = {-5.76, 9.15, 0.00}, rotation = {0.0, 0.00, 180.0}}),
            getObjectFromGUID("2b6879").clone({position ={-5.76, 9.15, 0.00}, rotation = {0.0, 180.0, 180.0}})
        }

        --Move Bohrok/Va/Krana Into Place
        local Va = Cards[2]
        local Krana = Cards[3]
        Va:setPositionSmooth({-13.45, 1.04, 1.87})
        Krana:setPositionSmooth({-13.44, 1.09, -1.88})

        --Add Tags, Tooltip, & Shuffle
        for i=1, #Cards, 1 do
            if Cards[i] ~= nil then
                Cards[i].addTag("InPlay")
                Cards[i].removeTag("Dev")
                Cards[i].tooltip = true
                if Cards[i].hasTag("Shuffle") then
                    Wait.time(
                        function()   
                            Cards[i].randomize()
                        end,
                        1
                    )
                end
            end
        end
    end
end