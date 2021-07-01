local dark_addon = dark_interface
local SB = dark_addon.rotation.spellbooks.GITwarlock
local AZ = dark_addon.rotation.spellbooks.azerite
-- To Do

-- Spells

SB.DemonicCore = 267102
SB.Implosion = 196277
SB.ExplosivePotential = 275395
SB.GrimoireFelguard = 111898
SB.SummonVilefiend = 264119
SB.SummonDemonicTyrant = 265187
SB.DemonicStrength = 267171
SB.BilescourgeBombers = 267211
SB.CallDreadStalkers = 104316
SB.HandOfGuldan = 105174
SB.Demonbolt = 264178
SB.PowerSiphon = 264130
SB.ShadowBolt2 = 686
SB.NetherPortal = 267217
SB.Doom = 265412
SB.SoulStrike = 264057
SB.DemonicConsumption = 267215
SB.BalefulInvocation = 287059
SB.CommandDemon = 119898
SB.AxeToss = 89766
SB.Felstorm = 89751
SB.LegionStrike = 30213
SB.ThreateningPresence = 134477
SB.DemonicGateway = 111771
SB.DemonicCircle = 268358
SB.HealthFunnel = 755
SB.DemonicCalling = 205146
SB.DemonHeartBuff = 264173
SB.FelGuard = 30146
SB.SoulStone = 20707
SB.Succub = 712
SB.FelHunter = 691
SB.Voidwalker = 697
SB.Impp = 688

local frame = CreateFrame("FRAME")
frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")

local impTime, impCast = {}, {}
local alreadyRegistered = false
local impCount = 0
local stalkerCount = 0
local stalkerspawnTime = {}
local playerGUID

frame:SetScript("OnEvent", function(self, event)
	local gettime = GetTime()
	playerGUID = UnitGUID("player")
	--print(playerGUID)
    local timestamp, type, hideCaster,
    sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellID = CombatLogGetCurrentEventInfo()
	
	if(event=="COMBAT_LOG_EVENT_UNFILTERED") then
		
		-- time out any Imps (12 seconds)
		for index, value in pairs(impTime) do
			if (value + 12) < gettime then
				impTime[index] = nil
				impCount = impCount - 1

				--print(("Imp timed out. Count: |cff00ff00%d|r"):format(impCount))
			end
		end
	
		-- imp imploded
		if (type == "SPELL_CAST_SUCCESS") and sourceGUID == playerGUID and spellID == 196277 then
			table.wipe(impTime)
			table.wipe(impCast)
			impCount = 0
			--print(("Imp imploded. Count: |cff00ff00%d|r"):format(impCount))
		end
		
		-- imp died
		if (type == "UNIT_DIED") and ((sourceName == "Wild Imp" or destName == "Wild Imp") or (sourceName == "Дикий бес" or destName == "Дикий бес") )then
			for index, value in pairs(impTime) do
				if destGUID == index then
					impTime[index] = nil
					impCast[index] = nil
					impCount = impCount - 1

					--print(("Imp died. Count: |cff00ff00%d|r"):format(impCount))
				end
			end
		end

		-- imp died from casting (5 casts)
		if (type == "SPELL_CAST_SUCCESS") and (sourceName == "Wild Imp" or sourceName == "Дикий бес") then
			for index,  value in pairs(impCast) do
				if sourceGUID == index then
					-- remove cast
					impCast[index] = impCast[index] - 1

					-- wild imp has casted 5 times so it dies
					if impCast[index] == 0 then
						impCast[index] = nil
						impTime[index] = nil
						impCount = impCount - 1

						--print(("Imp casted 5 times and died. Count: |cff00ff00%d|r"):format(impCount))
					end
				end
			end
		end
	
		-- imp summoned
		if (type == "SPELL_SUMMON") and (destName == "Wild Imp" or destName == "Дикий бес") and sourceGUID == playerGUID then
			--print("imp Summoned")
			impTime[destGUID] = gettime
			impCast[destGUID] = 5
			impCount = impCount + 1
			--print(("Imp spawned. Count: |cff00ff00%d|r"):format(impCount))
		end	
        
        -- Dreadstalker summoned
        if (type == "SPELL_SUMMON") and (destName == "Dreadstalker" or destName == "Зловещий охотник") and sourceGUID == playerGUID then
            --print("dreadstalker Summoned")
            stalkerCount = stalkerCount + 1
            stalkerspawnTime = timestamp
           -- print('Dreadstalker Spawn Time:' .. stalkerspawnTime)
            --print(("dreadstalker spawned. Count: |cff00ff00%d|r"):format(impCount))
        end

	end
end)



local function trink()
-- attention indian code
  local wrist = GetInventoryItemID("player", 6)
  -- local belt = GetInventoryItemID("player", 8)
  local ring1 = GetInventoryItemID("player", 11)
  local ring2 = GetInventoryItemID("player", 12)
  local hands = GetInventoryItemID("player", 7)
   
   
  local Trinket13 = GetInventoryItemID("player", 13)
  local Trinket14 = GetInventoryItemID("player", 14)
  local itemID = GetInventoryItemID("player", 13) 



	if itemID == 169314 then


		if GetItemCooldown(Trinket13) == 0 and not player.moving then
		  macro('/stopcasting')
		  macro('/use 13')
		end


	end

    if GetItemCooldown(Trinket14) == 0 then
			  macro('/use 14')
    end

	if GetItemCooldown(Trinket13) == 0 then
			  macro('/use 13')
	end


	if GetItemCooldown(ring1) == 0 and not itemID == 169314  and not player.channeling() then
			  macro('/use 11')
	end
	
	
		if GetItemCooldown(ring2) == 0 and not itemID == 169314  and not player.channeling() then
			  macro('/use 12')
	end
	
		if GetItemCooldown(hands) == 0 and not itemID == 169314  and not player.channeling() then
			  macro('/use 7')
	end
end
setfenv(trink, dark_addon.environment.env)

local function azer()
--Essence start
print('trigger 1')
if toggle('cooldowns', false) then
print('trigger 2')
   	local delay = 0
   
   --burst essences

	--1
	if delay < GetTime() then
    if castable(AZ.GuardianofAzeroth1) and -spell(AZ.GuardianofAzeroth1) == 0 then
	print('trigger 3 1')
    return cast(AZ.GuardianofAzeroth1, 'target')
    end 
	    if castable(AZ.GuardianofAzeroth2) and -spell(AZ.GuardianofAzeroth2) == 0 then
		print('trigger 3 2')
        return cast(AZ.GuardianofAzeroth2, 'target')
		end 
		    if castable(AZ.GuardianofAzeroth3) and -spell(AZ.GuardianofAzeroth3) == 0 then
			print('trigger 3 3')
			return cast(AZ.GuardianofAzeroth3, 'target')
			end 
	delay = GetTime() + 1.5 end
	--2
	
    if castable(AZ.MemoryofLucidDreams1) and -spell(AZ.MemoryofLucidDreams1) == 0 then
    return cast(AZ.MemoryofLucidDreams1, 'target')
    end 
	    if castable(AZ.MemoryofLucidDreams2) and -spell(AZ.MemoryofLucidDreams2) == 0 then
        return cast(AZ.MemoryofLucidDreams2, 'target')
		end 
		    if castable(AZ.MemoryofLucidDreams3) and -spell(AZ.MemoryofLucidDreams3) == 0 then
			return cast(AZ.MemoryofLucidDreams3, 'target')
			end 

	--3 uncomment to cast (req. 8.3.0+ patch)
	
		if delay < GetTime() then
	if castable(AZ.MomentofGlory1) then
    return cast(AZ.MomentofGlory1, 'player')
    end 
	    if castable(AZ.MomentofGlory2) and -spell(AZ.MomentofGlory2) == 0 then
        return cast(AZ.MomentofGlory2, 'target')
		end 
		    if castable(AZ.MomentofGlory3) and -spell(AZ.MomentofGlory3) == 0 then
			return cast(AZ.MomentofGlory3, 'target')
			end 
		delay = GetTime() + 1.5
	end	
			
	--4
	
    if castable(AZ.WorldveinResonance1) and -spell(AZ.WorldveinResonance1) == 0 then
    return cast(AZ.WorldveinResonance1, 'target')
    end 
	    if castable(AZ.WorldveinResonance2) and -spell(AZ.WorldveinResonance2) == 0 then
        return cast(AZ.WorldveinResonance2, 'target')
		end 
		    if castable(AZ.WorldveinResonance3) and -spell(AZ.WorldveinResonance3) == 0 then
			return cast(AZ.WorldveinResonance3, 'target')
			end 

	
	
	
	--damage essences
	
	
	
	--1 
	
	 if castable(AZ.AnimaofDeath1) and -spell(AZ.AnimaofDeath1) == 0 then
        return cast(AZ.AnimaofDeath1, 'target')
    end
			 if castable(AZ.AnimaofDeath2) and -spell(AZ.AnimaofDeath2) == 0 then
        return cast(AZ.AnimaofDeath2, 'target')
    end
				 if castable(AZ.AnimaofDeath3) and -spell(AZ.AnimaofDeath3) == 0 then
        return cast(AZ.AnimaofDeath3, 'target')
    end
	
	--2 
	
	 if castable(AZ.BloodoftheEnemy1) and -spell(AZ.BloodoftheEnemy1) == 0 then
        return cast(AZ.BloodoftheEnemy1, 'target')
    end
			 if castable(AZ.BloodoftheEnemy2) and -spell(AZ.BloodoftheEnemy2) == 0 then
        return cast(AZ.BloodoftheEnemy2, 'target')
    end
				 if castable(AZ.BloodoftheEnemy3) and -spell(AZ.BloodoftheEnemy3) == 0 then
        return cast(AZ.BloodoftheEnemy3, 'target')
    end
	
		
	--3  uncomment to cast (req. 8.3.0+ patch)
	
	 if castable(AZ.ReapingFlames1) and -spell(AZ.ReapingFlames1) == 0 then
        return cast(AZ.ReapingFlames1, 'target')
    end
			 if castable(AZ.ReapingFlames2) and -spell(AZ.ReapingFlames2) == 0 then
        return cast(AZ.ReapingFlames2, 'target')
    end
				 if castable(AZ.ReapingFlames3) and -spell(AZ.ReapingFlames3) == 0 then
        return cast(AZ.ReapingFlames3, 'target')
    end
	
	--4
	if delay < GetTime() then
	 if castable(AZ.FocusedAzeriteBeam1) and -spell(AZ.FocusedAzeriteBeam1) == 0 then
        return cast(AZ.FocusedAzeriteBeam1, 'target')
    end
			 if castable(AZ.FocusedAzeriteBeam2) and -spell(AZ.FocusedAzeriteBeam2) == 0 then
        return cast(AZ.FocusedAzeriteBeam2, 'target')
    end
				 if castable(AZ.FocusedAzeriteBeam3) and -spell(AZ.FocusedAzeriteBeam3) == 0 then
        return cast(AZ.FocusedAzeriteBeam3, 'target')
    end
	 delay = GetTime() + 1.4
end	
	--5
	
	 if castable(AZ.PurifyingBlast1) and -spell(AZ.PurifyingBlast1) == 0 then
        return cast(AZ.PurifyingBlast1, 'target')
    end
			 if castable(AZ.PurifyingBlast2) and -spell(AZ.PurifyingBlast2) == 0 then
        return cast(AZ.PurifyingBlast2, 'target')
    end
				 if castable(AZ.PurifyingBlast3) and -spell(AZ.PurifyingBlast3) == 0 then
        return cast(AZ.PurifyingBlast3, 'target')
    end
	
	--6
	
	 if castable(AZ.ConcentratedFlame1) and -spell(AZ.ConcentratedFlame1) == 0 then
        return cast(AZ.ConcentratedFlame1, 'target')
    end
			 if castable(AZ.ConcentratedFlame2) and -spell(AZ.ConcentratedFlame2) == 0 then
        return cast(AZ.ConcentratedFlame2, 'target')
    end
				 if castable(AZ.ConcentratedFlame3) and -spell(AZ.ConcentratedFlame3) == 0 then
        return cast(AZ.ConcentratedFlame3, 'target')
    end
	
	--7
			
	 if castable(AZ.TheUnboundForce1) and -spell(AZ.TheUnboundForce1) == 0 then
        return cast(AZ.TheUnboundForce1, 'target')
    end
			 if castable(AZ.TheUnboundForce2) and -spell(AZ.TheUnboundForce2) == 0 then
        return cast(AZ.TheUnboundForce2, 'target')
    end
				 if castable(AZ.TheUnboundForce3) and -spell(AZ.TheUnboundForce3) == 0 then
        return cast(AZ.TheUnboundForce3, 'target')
    end
	end
end
setfenv(azer, dark_addon.environment.env)

local function combat()

if not GetCVar("PetExistCheck") then
return RegisterCVar("PetExistCheck", 2)
end

local summon = dark_addon.settings.fetch("Demon_settings_summon")
  if GetCVar("nameplateShowEnemies") == '0' then
    SetCVar("nameplateShowEnemies", 1)
  end
  
  macro('/cqs')
  
  local enemyCount = enemies.around(8)
  if enemyCount == 0 then enemyCount = 1 end
  
  if not pet.exists and player.power.soulshards.actual >= 2 then SetCVar("PetExistCheck", 0) end
  
  if pet.exists then SetCVar("PetExistCheck", 1) end    
  
  
if target.alive and target.enemy and player.alive and not player.channeling() then


if GetCVar("PetExistCheck")  == '0' then 
if player.power.soulshards.actual >= 2 then 
if not pet.exists and not player.moving and not player.channeling() then
if not talent(6, 3) then 
if not spell(SB.Succub).lastcast or not spell(SB.FelGuard).lastcast or not spell(SB.FelHunter).lastcast  or not spell(SB.Voidwalker).lastcast or not spell(SB.Impp).lastcast then
	if (summon == "Succub") and -spell(SB.Succub) == 0 then
      return cast(SB.Succub)
    end
	if (summon == "FelGuard") and -spell(SB.FelGuard) == 0 then
      return cast(SB.FelGuard)
    end						
	if (summon == "FelHunter") and -spell(SB.FelHunter) == 0 then
      return cast(SB.FelHunter)
    end		
	if (summon == "Voidwalker") and -spell(SB.Voidwalker) == 0 then
      return cast(SB.Voidwalker)
    end	
	if (summon == "Impp") and -spell(SB.Impp) == 0 then
      return cast(SB.Impp)
    end	
end

if talent(6, 3) and (not spell(SB.GrimoireFelguard).lastcast) then
return cast(SB.GrimoireFelguard)
end
end
end
elseif not pet.exists then SetCVar("PetExistCheck", 1) end
end


if GetCVar("PetExistCheck")  == '1' then  
if trink() then return end
--if azer() then return end
if toggle('cooldowns', false) and not player.moving then 

if not talent(7, 2) then
if castable(SB.SummonDemonicTyrant) then return cast(SB.SummonDemonicTyrant, 'target') end 
end


if talent(7, 2) then

if castable(SB.SummonDemonicTyrant) and impCount >= 4 then
 return cast(SB.SummonDemonicTyrant, 'target') 
end
end
end
if toggle('cooldowns', false) then 

if not talent(7, 2) then
if castable(SB.SummonDemonicTyrant) then return cast(SB.SummonDemonicTyrant, 'target') end 
end


if talent(7, 2) then

if castable(SB.SummonDemonicTyrant) and impCount >= 4 then
 return cast(SB.SummonDemonicTyrant, 'target') 
end
end

end

if talent(2, 3) and (target.debuff(SB.Doom).down or target.debuff(SB.Doom).remains < 3.5) then return cast(SB.Doom, 'target') end
if talent(2, 2) and castable(SB.PowerSiphon) and impCount >= 2 then return cast(SB.PowerSiphon) end

if talent(1, 3) and castable(SB.BilescourgeBombers) and player.power.soulshards.actual >= 2 and enemyCount > 3 then return cast(SB.BilescourgeBombers, 'ground') end





local currentTime = {}
local stalkerupTime = {}

currentTime = GetServerTime()


		-- Blood Fury - only used if playing an Orc
		-- if castable(SB.BloodFury) and -spell(SB.BloodFury) == 0 then
		-- 	return cast(SB.BloodFury)
		-- end

		-- Health Funnel to heal your pet while in combat
		if pet.exists and castable(SB.HealthFunnel) and player.health.percent >= 75 and pet.health.percent <= 50 then
			return cast(SB.HealthFunnel)
		end
		
		
		-- Implosion for AoE and buff uptime (Azerite trait Explosive Potential)
		if not castable(SB.SummonDemonicTyrant) and castable(SB.Implosion) and (not buff(SB.ExplosivePotential).up or buff(SB.ExplosivePotential).remains < 2) and impCount >= 3 and target.distance <= 40 then
			return cast(SB.Implosion, 'target')
		end

		-- Call Dreadstalkers with Demonic Calling buff
		if castable(SB.CallDreadStalkers) and player.buff(SB.DemonicCalling).up and player.power.soulshards.actual >= 1 then
			return cast(SB.CallDreadStalkers, 'target')
		end

		-- Grimoire Felguard
		-- if castable(SB.GrimoireFelguard) and -spell(SB.GrimoireFelguard) == 0 and player.power.soulshards.actual >= 1 then
			-- return cast(SB.GrimoireFelguard, 'target')
		-- end

		-- Hand of Gul'dan for Explosive Potential
		if castable(SB.HandOfGuldan) and not buff(SB.ExplosivePotential).up and player.power.soulshards.actual >= 3 and not spell(SB.HandOfGuldan).lastcast then
			return cast(SB.HandOfGuldan, 'target')
		end

		-- Demonic Strength
		if pet.exists and castable(SB.DemonicStrength) and not pet.buff(SB.Felstorm).up and -spell(SB.DemonicStrength) == 0 then
			return cast(SB.DemonicStrength)
		end

		-- Call Dreadstalkers
		if castable(SB.CallDreadStalkers) and player.power.soulshards.actual >= 2 then
			return cast(SB.CallDreadStalkers, 'target')
		end

		-- Summon Demonic Tyrant - best to use when you have many demons summoned!
		-- if castable(SB.SummonDemonicTyrant) and impCount >= 3 and -spell(SB.CallDreadStalkers).remains > 10 then
			-- return cast(SB.SummonDemonicTyrant)
		-- end

		-- Hand of Gul'dan filler
		if castable(SB.HandOfGuldan) and player.power.soulshards.actual >= 3 and  not spell(SB.HandOfGuldan).lastcast then
			return cast(SB.HandOfGuldan, 'target')
		end

		-- Demonbolt @ 2+ stacks of Demonic Core
		if castable(SB.Demonbolt) and (player.buff(SB.DemonicCore).up or player.buff(SB.DemonHeartBuff).up) then
		macro('/stopcasting')
			return cast(SB.Demonbolt, 'target')
		end
		
		-- Nether Portal
		if castable(SB.NetherPortal) and -spell(SB.NetherPortal) == 0 and player.power.soulshards.actual >= 1 then
			return cast(SB.NetherPortal)
		end
		
		-- Summon Vilefiend
		if castable(SB.SummonVilefiend) and -spell(SB.SummonVilefiend) == 0 and player.power.soulshards.actual >= 1 then
			return cast(SB.SummonVilefiend)
		end
		-- Soul Strike
		if pet.exists and castable(SB.SoulStrike) and -spell(SB.SoulStrike) == 0 then
			return cast(SB.SoulStrike)
		end
		
		-- Bilescourge Bombers

		
		-- Shadowbolt spam to generate shards
		if castable(SB.ShadowBolt2) then
			return cast(SB.ShadowBolt2, 'target')
		end


end









if toggle('indiantoggler' ,false) then
if modifier.alt and castable(SB.DemonicGateway) then 
return cast(SB.DemonicGateway, 'ground')
end

if modifier.lcontrol and castable(SB.SoulStone) then
  return cast(SB.SoulStone, 'mouseover')
end
end

end
end

local function resting()

if not GetCVar("PetExistCheck") then
return RegisterCVar("PetExistCheck", 2)
end

local summon = dark_addon.settings.fetch("Demon_settings_summon")

if toggle('indiantoggler' ,false) then
if modifier.alt and castable(SB.DemonicGateway) then 
return cast(SB.DemonicGateway, 'ground')
end

if modifier.lcontrol and castable(SB.SoulStone) then
  return cast(SB.SoulStone, 'mouseover')
end
end




if not pet.exists and not player.moving and not player.channeling() then

if not talent(6, 3) then 
if not spell(SB.Succub).lastcast or not spell(SB.FelGuard).lastcast or not spell(SB.FelHunter).lastcast  or not spell(SB.Voidwalker).lastcast or not spell(SB.Impp).lastcast then
	if (summon == "Succub") and -spell(SB.Succub) == 0 then
      return cast(SB.Succub)
    end
	if (summon == "FelGuard") and -spell(SB.FelGuard) == 0 then
      return cast(SB.FelGuard)
    end						
	if (summon == "FelHunter") and -spell(SB.FelHunter) == 0 then
      return cast(SB.FelHunter)
    end		
	if (summon == "Voidwalker") and -spell(SB.Voidwalker) == 0 then
      return cast(SB.Voidwalker)
    end	
	if (summon == "Impp") and -spell(SB.Impp) == 0 then
      return cast(SB.Impp)
    end	
end

if talent(6, 3) and (not spell(SB.GrimoireFelguard).lastcast) then
return cast(SB.GrimoireFelguard)
end

end
end




end



local function interface()

    local settings = {
        key = 'Demon_settings',
        title = 'Demon Warlock',
        width = 300,
        height = 500,
        resize = true,
        show = false,
        template = {
            { type = 'header', text = "Demon W3ЯL0CK" },
            { type = 'text', text = 'Suggested Talents - 1 3 1 1 2 1 1' },
            { type = 'text', text = 'GATE - LALT | SOUL STONE - LCONTROL' },
            { type = 'rule' },
            { type = 'text', text = 'Interrupt Settings' },
            { key = 'intpercentlow', type = 'spinner', text = 'Interrupt Low %', default = '50', desc = 'low% cast time to interrupt at', min = 5, max = 50, step = 1 },
            { key = 'intpercenthigh', type = 'spinner', text = 'Interrupt High %', default = '65', desc = 'high% cast time to interrupt at', min = 51, max = 100, step = 1 },
            { type = 'text', text = 'Summon Settings' },
			{ key = 'summon', type = 'dropdown', text = 'Pick demon', desc = 'If no talent 6 - 3', default = '0000',
				list = {	
							{ key = 'Impp', text = 'IMP' },
							{ key = 'Voidwalker', text = 'Voidwalker' },
							{ key = 'FelHunter', text = 'FelHunter' },
							{ key = 'FelGuard', text = 'FelGuard' },
							{ key = 'Succub', text = 'Succub' },
					    } },
				
        }
    }

    configWindow = dark_addon.interface.builder.buildGUI(settings)

    dark_addon.interface.buttons.add_toggle({
        name = 'settings',
        label = 'Rotation Settings',
        font = 'dark_addon_icon',
        on = {
            label = dark_addon.interface.icon('cog'),
            color = dark_addon.interface.color.cyan,
            color2 = dark_addon.interface.color.dark_cyan
        },
        off = {
            label = dark_addon.interface.icon('cog'),
            color = dark_addon.interface.color.grey,
            color2 = dark_addon.interface.color.dark_grey
        },
        callback = function(self)
            if configWindow.parent:IsShown() then
                configWindow.parent:Hide()
            else
                configWindow.parent:Show()
            end
        end
    })
    
	    dark_addon.interface.buttons.add_toggle(
    {
      name = "indiantoggler",
      label = "ON - OFF Alt | Ctrl binds.",
      font = "dark_addon_icon",
      on = {
        label = dark_addon.interface.icon("toggle-on"),
        color = dark_addon.interface.color.warrior_brown,
        color2 = dark_addon.interface.color.warrior_brown
      },
      off = {
        label = dark_addon.interface.icon("toggle-off"),
        color = dark_addon.interface.color.grey,
        color2 = dark_addon.interface.color.dark_grey
      }
    }
  )

end

-- This is what actually tells DR about your custom rotation
dark_addon.rotation.register({
    spec = dark_addon.rotation.classes.warlock.demonology,
    name = 'FixDemo',
    label = 'Fixed Rex Demonology Warlock',
    combat = combat,
    resting = resting,
    interface = interface
})
