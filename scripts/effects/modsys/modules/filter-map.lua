---
--- Generated by Luanalysis
--- Created by Lyr.
--- DateTime: 1/25/2021 11:09 AM
---


--[[
  INPUT:  *
  CFG:    fields    {<from: to>}
          copy      boolean         false
--]]-- Todo, untested

if not Modsys then error("This script isn't supposed to be require'd yourself lol.") end
---@type Modsys, Filter
local Modsys, Filter = Modsys, Filter

---@class Map : Filter
local Map = Filter.new()

function Map:init()
end

function Map:update(dt)
end

function Map:uninit()
end

function Map:process(data)
  for from, to in pairs(self.cfg.fields) do
    if data[from] ~= nil then
      data[to] = data[from]
      if not self.cfg.copy then
        data[from] = nil
      end
    end
  end
  return data
end