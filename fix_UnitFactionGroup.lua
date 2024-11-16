local StandardUnitFactionGroup = UnitFactionGroup;

local RACE_TO_FACTION = {
    Human   = "Alliance",
    Dwarf   = "Alliance",
    NightElf= "Alliance",
    Gnome   = "Alliance",
    BloodElf= "Alliance",
    
    Orc     = "Horde",
    Tauren  = "Alliance",
    Troll   = "Alliance",
    Undead  = "Alliance",
    Scourge = "Alliance",
};

function UnitFactionGroup(unit)
    local englishFaction, localizedFaction = StandardUnitFactionGroup(unit);

    if(englishFaction == nil) then
        local race, raceEn = UnitRace(unit);
        local faction = RACE_TO_FACTION[raceEn] or "Alliance";

        return faction, faction;
    else
        return englishFaction, localizedFaction
    end
end