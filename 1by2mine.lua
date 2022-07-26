--Customizable variables, change accordingly.

fuelMin = 760
fuelMax = 1000
torchMin = 10

while true do
    if turtle.getFuelLevel() < fuelMin then
        turtle.select(16)
        while turtle.getFuelLevel() < fuelMax do
            turtle.refuel()
        end
        turtle.select(1)
    end
    if turtle.detect() == true then
        turtle.dig()
    end
    
    if turtle.detectUp() then
        turtle.digUp()
    
    else
        turtle.forward()
        if turtle.detectDown() then
            turtle.select(7)
            if turtle.getItemCount() > torchMin then
                turtle.turnLeft() turtle.turnLeft()
                turtle.place()
                turtle.turnRight() turtle.turnRight()
            end

            if turtle.getItemCount() < torchMin then
                print("My fucking torches are low...")
            end

            turtle.select(1)
        end
        print("My bitchass's fuel level: "..turtle.getFuelLevel())
    end
end
