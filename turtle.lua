Lib = {
    dig3 = function(value) -- Перемещается вперёд, ломая блок, и ломает под и над собой блоки
        for i = 1, value do
            turtle.dig()
            turtle.forward()
            turtle.digDown()
            turtle.digUp()
        end
    end,

    turnBack = function() -- разворот на 180
        turtle.turnLeft()
        turtle.turnLeft()
    end,

    move = function(value) -- ломает блок и едет вперёт
        for i = 1, value do
            turtle.dig()
            turtle.forward()
        end
    end,

    moveDown = function(value) -- ломает блок снизу и едет вниз
        for i = 1, value do
            turtle.digDown()
            turtle.down()
        end
    end,

    moveUp = function(value) -- Ломает блок сверху и едет наверх
        for i = 1, value do
            turtle.digUp()
            turtle.up()
        end
    end,

    plantGrownDown = function() -- Проверяет выросло ли то что под ним
        f, tmp = turtle.inspectDown()
        if f then
            if tmp.name == "minecraft:wheat" and tmp.state.age == 7 then         -- Пшеница
                return true
            elseif tmp.name == "minecraft:carrots" and tmp.state.age == 7 then   -- Морковка
                return true
            elseif tmp.name == "minecraft:potatoes" and tmp.state.age == 7 then  -- Картоха
                return true
            elseif tmp.name == "minecraft:beetroots" and tmp.state.age == 7 then -- Свёкла
                return true
            end
        end
        return false
    end
}
