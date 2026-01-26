--- Sarkis API
-- 
-- Dependencies: `lib.remove-replace-object`
-- @module api.lua
-- @pragma nostrip
Sarkis = {}

Sarkis.get_stage = require("lib.get-stage").get_stage
Sarkis.stage = Sarkis.get_stage()
--- Library of table manipulation scripts.
-- @see lib.remove-replace-object
Sarkis.rro = require("lib.remove-replace-object")
Sarkis.img = require("lib.images")
Sarkis.vectors=require("lib.vectors")
Sarkis.multiply_energy = require("lib.energy-multiply").multiply_energy


if Sarkis.stage == "data" then
    data:extend{{
        type = "mod-data",
        name = "sarkis-constants",
        data = {

        }
    }}
    Sarkis.constants = data.raw["mod-data"]["sarkis-constants"].data

    -- Resource generation libraries forked from vanilla 
    Sarkis.icons = require("lib.dual-item-icon")
    require("prototypes.mod-data.constants")
elseif Sarkis.stage == "control" then
    Sarkis.constants = prototypes.mod_data["sarkis-constants"].data
    Sarkis.events = require("lib.events")
    Sarkis.complete_research = require("lib.notifications").research_technology
end 

require("lib.table")


return Sarkis