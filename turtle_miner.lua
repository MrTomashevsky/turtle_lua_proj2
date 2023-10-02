require("./turtle")

lib_miner {
    rectXY = function(x, y) -- снос прямоугольника x*y
        for i = 1, x do
            for j = 1, y do
                turtle.digDown()
                turtle.forward()
            end
            if FLAG == true then
                turtle.turnLeft()
                turtle.forward()
                turtle.turnLeft()
            else
                turtle.turnRight()
                turtle.forward()
                turtle.turnRight()
            end
            FLAG = not FLAG
            turtle.forward()
        end
    end,

    rectXYZ = function(x, y, z)
        for i = 1, z do
            rectXY(x, y)
        end
    end,
}
