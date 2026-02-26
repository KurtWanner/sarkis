
Sarkis.constants.flesh_drills = {
    ["electric-mining-drill"] = "electric-mining-drill",
    ["big-mining-drill"] = "big-mining-drill"
}

Sarkis.constants.pumpjacks = {
    ["pumpjack"] = "pumpjack"
}

Sarkis.constants.big_mining_drill = {
    energy_required = 5,
    max_neighbors = 8,
    recipes = {
        {10, 1, 0, 0},
        {10, 0.75, 0.05, 0},
        {10, 0.6, 0.1, 0},
        {10, 0.5, 0.3, 0.05},
        {10, 0.25, 0.35, 0.1},
        {10, 0.15, 0.3, 0.15},
        {10, 0.1, 0.1, 0.25},
        {10, 0.05, 0.05, 0.3},
        {10, 0, 0, 0.4}
    }
}

Sarkis.constants.electric_mining_drill = {
    max_neighbors = 2,
    energy_required = 2.5,
    recipes = {
        {25, 1, 0, 0},
        {25, 0.35, 0.1, 0},
        {25, 0.2, 0.15, 0.05}
    }
}
