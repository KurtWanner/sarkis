local sarkis_red_desert_0 = table.deepcopy(data.raw["tile"]["red-desert-0"])
sarkis_red_desert_0.name = "sarkis-red-desert"
local sarkis_dirt_1 = table.deepcopy(data.raw["tile"]["dirt-1"])
sarkis_dirt_1.name = "sarkis-dirt-1"
 
local skin_1 = table.deepcopy(data.raw["tile"]["sand-1"])
skin_1.name = "sarkis-skin-1"


data:extend{
    sarkis_red_desert_0,
    sarkis_dirt_1
}
