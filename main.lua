local svg = require("SVGWriter")

local doc = svg.Document:new(240, 336)

local circleStyle = svg.Style:new("black" , 0, "black", 1, 0)
local ringStyle = svg.Style:new("black", 3, "white", 0, 1)
local textStyle = svg.Style:new():setOnlyFill("black")

local topCircle = doc:add(svg.Circle:new(0, 0, 40, circleStyle))
local topRing = doc:add(svg.Circle:new(0, 0, 45, ringStyle))

local bottomCircle = doc:add(svg.Circle:new(240, 336, 40, circleStyle))
local bottomRing = doc:add(svg.Circle:new(240, 336, 45, ringStyle))
local font = {
  ["font-style"] = "normal",
  ["font-variant"] = "normal",
  ["font-weight"] = "normal",
  ["font-stretch"] = "normal",
  ["font-family"] = "Arcade Normal",
  ["font-size"] = ".6em",
  ["text-anchor"] = "end"
}

textStyle:add(font)
local title = svg.Text:new("PURPLE DEATH MAN", 220, 20, textStyle)

doc:add(title)

doc:writeToFile("test.svg")