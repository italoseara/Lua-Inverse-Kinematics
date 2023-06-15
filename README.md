# Lua-Inverse-Kinematics

A simple Inverse Kinematics library for LÖVE

## Requirements

-   [LÖVE](https://love2d.org/)
-   [vector.lua](src/vector.lua)

## Installation

Put the [IK.lua](src/IK.lua) file in your project folder and require it. You also need to put the [vector.lua](src/vector.lua) file in your project folder and require it.

```lua
local IK = require 'IK'
```

## Example

```lua
local IK = require 'IK'

local ik

function love.load()
    ik = IK()

    for i = 1, 20 do
        ik:addSegment(20)
    end

    ik:setFixedPoint(love.graphics.getWidth() / 2, love.graphics.getHeight())
    ik:setTarget(love.mouse.getPosition())
    ik.debug = true
end

function love.update(dt)
    ik:setTarget(love.mouse.getPosition())
    ik:update()
end

function love.draw()
    ik:draw()
end
```

## Documentation

### IK()

Creates a new IK object.

### IK.debug

A boolean value that determines whether the `IK` object is drawn or not.

### IK:addSegment(length)

Adds a segment to the `IK` object.

### IK:setFixedPoint(x, y)

Sets the fixed point of the `IK` object.

### IK:setTarget(x, y)

Sets the target of the `IK` object.

### IK:update()

Updates the `IK` object.

### IK:draw()

Draws the `IK` object.
