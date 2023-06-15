-- Example of usage of the IK library

local IK = require 'IK'

local ik

function love.load()
    ik = IK()

    for i = 1, 20 do
        ik:addSegment(20)
    end

    ik:setTarget(love.mouse.getPosition())

    -- Setting the fixed point is optional
    ik:setFixedPoint(love.graphics.getWidth() / 2, love.graphics.getHeight())

    -- Setting debug to true will draw the segments' joints and the target
    ik.debug = false
end

function love.update(dt)
    ik:setTarget(love.mouse.getPosition())
    ik:update()
end

function love.draw()
    ik:draw()
end
