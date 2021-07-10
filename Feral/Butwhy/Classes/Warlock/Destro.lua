local dark_addon = dark_interface
local SB = dark_addon.rotation.spellbooks.GITwarlock
local AZ = dark_addon.rotation.spellbooks.azerite
-- To Do

-- Spells

SB.Deathbolt = 264106
SB.AbsoluteCorruption = 196103
SB.BurningRush = 111400
SB.PhantomSingularity = 205179
SB.MortalCoil = 6789
SB.Haunt = 48181
SB.CreepingDeath = 264000
SB.ShadowBolt = 232670
SB.UnstableAffliction = 30108
SB.Chaos = 80240
SB.SeedofCorruption = 27243
SB.Corruption = 172
SB.SummonDarkglare = 205180
SB.DrainLife = 234153
SB.HealthFunnel = 755
SB.SummonImp = 688
SB.Fear = 5782
SB.CreateHealthstone = 6201
SB.SummonVoidwalker = 697
SB.EyeofKilrogg = 126
SB.UnendingBreath = 5697
SB.SummonSuccubus = 712
SB.Banish = 710
SB.SoulLeech = 108366
SB.SummonFelhunter = 691
SB.CommandDemon = 119898
SB.RitualofSummoning = 698
SB.Soulstone = 20707
SB.UnendingResolve = 104773
SB.EnslaveDemon = 1098
SB.Shadowfury = 30283
SB.CreateSoulwell = 29893
SB.MasteryPotentAfflictions = 77215
SB.DemonicGateway = 111771
SB.Relentless = 196029
SB.GladiatorsMedallion = 208683
SB.Adaptation = 214027
SB.RotandDecay = 212371
SB.EssenceDrain = 221711
SB.CurseofShadows = 234877
SB.CurseofFragility = 199954
SB.CurseofTongues = 199890
SB.CurseofWeakness = 199892
SB.NetherWard = 212295
SB.EndlessAffliction = 213400
SB.Soulshatter = 212356
SB.Immolate = 348
SB.Incinerate = 29722
SB.ChaosBolt = 116858
SB.Conflagrate = 17962
SB.FastCast = 117828
SB.Infernal = 1122
SB.DarkSoul = 113858
SB.FelGuard = 30146
SB.SoulStone = 20707
SB.Succub = 712
SB.FelHunter = 691
SB.Voidwalker = 697
SB.Impp = 688
SB.RainFire = 5740


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
  local itemID2 = GetInventoryItemID("player", 14) 


	if itemID == 169314 then


		if GetItemCooldown(Trinket13) == 0 and not player.moving then
		  macro('/stopcasting')
		  macro('/use 13')
		end
	end
	
	
	if itemID2 == 169314 then


		if GetItemCooldown(Trinket14) == 0 and not player.moving then
		  macro('/stopcasting')
		  macro('/use 14')
		end
	end

    if GetItemCooldown(Trinket13) == 0 and not player.channeling() then
			--  macro('/stopcasting')
      macro('/use 13')
    end

	if GetItemCooldown(Trinket14) == 0 and not player.channeling() then
			--  macro('/stopcasting')
			  macro('/use 14')
	end


	if GetItemCooldown(ring1) == 0 and not player.channeling() then
			  macro('/use 11')
	end
	
	
		if GetItemCooldown(ring2) == 0  and not player.channeling() then
			  macro('/use 12')
	end
	
		if GetItemCooldown(hands) == 0  and not player.channeling() then
			  macro('/use 7')
	end
	end
setfenv(trink, dark_addon.environment.env)


local function combat()


    local enemyCount = enemies.around(8)
    if enemyCount == 0 then
      enemyCount = 1
    end
  if GetCVar("nameplateShowEnemies") == '0' then
    SetCVar("nameplateShowEnemies", 1)
  end
  --print(enemyCount)
  macro('/cqs')
local summon = dark_addon.settings.fetch("dest_settings_summon")
if not GetCVar("CataclysmStart") then
return RegisterCVar("CataclysmStart", 2)
end

if not GetCVar("ImmolateDown") then
return RegisterCVar("ImmolateDown", 2)
end



if toggle('cooldowns', false) and target.alive and target.enemy and player.alive and not player.channeling() then
if trink() then return end
if castable(SB.DarkSoul) then
return cast(SB.DarkSoul)
end

if talent(6, 2) and toggle('Infernal_player', false)  then 

if castable(SB.Infernal) then
return cast(SB.Infernal, 'player')
end
		
   --Essence start
   	local delay = 0
   
   --burst essences

	--1

    if castable(AZ.GuardianofAzeroth1) and -spell(AZ.GuardianofAzeroth1) == 0 then
    return cast(AZ.GuardianofAzeroth1, 'target')
    end 
	    if castable(AZ.GuardianofAzeroth2) and -spell(AZ.GuardianofAzeroth2) == 0 then
        return cast(AZ.GuardianofAzeroth2, 'target')
		end 
		    if castable(AZ.GuardianofAzeroth3) and -spell(AZ.GuardianofAzeroth3) == 0 then
			return cast(AZ.GuardianofAzeroth3, 'target')
			end 
	
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

if -player.health < 55 and castable(SB.UnendingResolve) then
return cast(SB.UnendingResolve)
end

  if target.alive and target.enemy and player.alive and not player.channeling() then

if modifier.alt and castable(SB.Chaos) then 
--print('hold alt')
macro('/stopcasting')
return cast(SB.Chaos, 'mouseover')
end
 
if not toggle('Infernal_player', false) then
if modifier.lcontrol and castable(SB.Infernal) then 
--print('hold alt')
macro('/stopcasting')
return cast(SB.Infernal, 'cursor')
end 
end 
  
if modifier.shift then if castable(SB.RainFire) then 
--print('hold alt')
return cast(SB.RainFire, 'cursor')
end  end
  
    if (target.debuff(SB.Immolate).down or target.debuff(SB.Immolate).remains < 2.5) then SetCVar("ImmolateDown", 1) end
  if target.debuff(SB.Immolate).up then SetCVar("ImmolateDown", 0) end
  
  if GetCVar("ImmolateDown")  == '0' then
  
    if castable(SB.Cataclysm) then SetCVar("CataclysmStart", 0) end
	
    if not castable(SB.Cataclysm) then SetCVar("CataclysmStart", 1) end  
  
  

  if castable(SB.Incinerate) and player.power.soulshards.actual <= 2 then
  return cast(SB.Incinerate, 'target') 
  end
  
  if GetCVar("CataclysmStart")  == '0' then
  --print('proc')
  
  if castable(SB.Cataclysm) and (enemyCount >= 2 or enemyCount >= 3 or enemyCount == 4) then --(enemyCount == 2 or enemyCount == 3 or enemyCount == 4 or enemyCount == 5 or enemyCount == 6 or enemyCount == 7 or enemyCount == 8) 
  --  print('proc2')
  return cast(SB.Cataclysm, 'player')
  else 
 --  print('proc3')
  SetCVar("CataclysmStart", 1)
  end
  
  end
  
  
  
  
  if castable(SB.Conflagrate) and player.power.soulshards.actual >= 2 then
  return cast(SB.Conflagrate, 'target') 
  end
  
  if not modifier.shift then
  
  if castable(SB.ChaosBolt) and player.buff(SB.FastCast).up then 
  return cast(SB.ChaosBolt, 'target') 
  end
  
  if not castable(SB.Conflagrate) and castable(SB.ChaosBolt) then
    return cast(SB.ChaosBolt, 'target') 
  end
  
  
  end
  -- if player.buff(SB.Invisible).up then
-- SetCVar("CataclysmStart", 0)
-- end

-- if not player.buff(SB.Invisible).up then
-- SetCVar(CataclysmStart)
-- end
  end
if GetCVar("ImmolateDown")  == '1' then
	
  if (target.debuff(SB.Immolate).down or target.debuff(SB.Immolate).remains < 2.5) and castable(SB.Immolate) then
  return cast(SB.Immolate, 'target')
  else
	SetCVar("ImmolateDown", 0) 
  end
end

end

if not pet.exists then
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
end
end

local function resting()
  local enemyCount = enemies.around(8)
  if enemyCount == 0 then enemyCount = 1 end
local summon = dark_addon.settings.fetch("dest_settings_summon")
if not GetCVar("CataclysmStart") then
return RegisterCVar("CataclysmStart", 2)
end

if not GetCVar("ImmolateDown") then
return RegisterCVar("ImmolateDown", 2)
end
if not pet.exists then
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
end
end


local function interface()

    local settings = {
        key = 'dest_settings',
        title = 'Destruction Warlock',
        width = 300,
        height = 500,
        resize = true,
        show = false,
        template = {
            { type = 'header', text = "Destruction Warlock Settings" },
            { type = 'header', text = 'Talents' },
            { type = 'text', text = 'Only Talents - 2 2 2 3 3 2 3' },
            { type = 'text', text = 'Alt - Chaos mouseover' },
			{ type = 'text', text = 'LControl - Infernal (If not toggle on self) ' },
            { type = 'text', text = 'Shift - Rain of Fire ' },			
            { type = 'header', text = 'Summon Settings' },
			{ key = 'summon', type = 'dropdown', text = 'Pick demon', desc = 'If no talent 6 - 3', default = '0000',
				list = {	
							{ key = 'Impp', text = 'IMP' },
							{ key = 'Voidwalker', text = 'Voidwalker' },
							{ key = 'FelHunter', text = 'FelHunter' },
							{ key = 'FelGuard', text = 'FelGuard' },
							{ key = 'Succub', text = 'Succub' },
					    } },
            -- { type = 'rule' },
            -- { type = 'text', text = 'Interrupt Settings' },
            -- { key = 'intpercentlow', type = 'spinner', text = 'Interrupt Low %', default = '50', desc = 'low% cast time to interrupt at', min = 5, max = 50, step = 1 },
            -- { key = 'intpercenthigh', type = 'spinner', text = 'Interrupt High %', default = '65', desc = 'high% cast time to interrupt at', min = 51, max = 100, step = 1 },
            -- { type = 'text', text = 'Defensive Settings' },
            -- { key = 'DHealth', type = 'spinner', text = 'Dispersion at Health %', default = '30', desc = 'cast Dispersion at', min = 0, max = 100, step = 1 },
            -- { key = 'SMHealth', type = 'spinner', text = 'Shadow Mend at Health %', default = '50', desc = 'cast Shadow Mend at', min = 0, max = 100, step = 1 },
        }
    }

    configWindow = dark_addon.interface.builder.buildGUI(settings)

    dark_addon.interface.buttons.add_toggle({
        name = 'settings',
        label = 'Rotation Info',
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
	dark_addon.interface.buttons.add_toggle({
		name = 'Infernal_player',
		label = 'Drop infernal on self. (Disable bind)',
		on = {
		  label = 'ON',
		  color = dark_addon.interface.color.dark_blue,
		  color2 = dark_addon.interface.color.ratio(dark_addon.interface.color.dark_blue, 0.7)
		},
		off = {
		  label = 'OFF',
		  color = dark_addon.interface.color.grey,
		  color2 = dark_addon.interface.color.dark_grey
		}
    })
    
end

-- This is what actually tells DR about your custom rotation
dark_addon.rotation.register({
    spec = dark_addon.rotation.classes.warlock.destruction,
    name = 'RexDestLock',
    label = 'Rex Destruction Warlock',
    combat = combat,
    resting = resting,
    interface = interface,
    trink = trink
})
