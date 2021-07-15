-- Windwalker Monk for 8.1 by Nikopol - 12/2018
-- Talents: 1 - 2 - - 3 2
-- lcontrol - StormEarthFire
-- Left Alt - Touch of Karma
-- Left Shift - Vivify self
local dark_addon = dark_interface
local SB = m2jue4dgc56acfzz
local AZ = dark_addon.rotation.spellbooks.azerite
SB.stormbuff = 137639
local bloodlust_buffs = { 32182, 90355, 80353, 2825, 146555 }
local function has_bloodlust(unit)
  for i = 1, #bloodlust_buffs do
    if unit.buff(bloodlust_buffs[i]).up then return true end
  end
end

local function time_to_die(group, target)
  local damagers = group.count(function (unit)
    return unit.alive and UnitGroupRolesAssigned(unit) == 'DAMAGER'
  end)
  
  if damagers == 0 then
    damagers = 1
  end

  return target.health.actual / (20000 * damagers)
end

local combo_strike_spells = {
	[SB.BlackoutKick] = true,
	[SB.FistofFury] = true,
	[SB.FlyingSerpentKick] = true,
	[SB.RisingSunKick] = true,
	[SB.SpinningCrane] = true,
	[SB.FistoftheWhiteTiger] = true,
	[SB.TigerPalm] = true,
	[SB.TouchofDeath] = true,
	[SB.ChiWave] = true,
	[SB.ChiBurst] = true,
	[SB.RushingJadeWind] = true,
	[SB.WhirlingDragonPunch] = true,
	[SB.CracklingJade] = true
}

local function last_combo(spell)
  local last_combo_spell = dark_addon.tmp.fetch('last_combo_spell', false)
  return last_combo_spell == spell
end

local function StormEarthFire()
if GetCVar("StormEarthFire")  == '1' or GetCVar("StormEarthFire")  == '2'  then
if castable(SB.StormEarthFire) and (spell(SB.StormEarthFire).charges == 2 or (spell(SB.FistofFury).cooldown <= 6 and player.power.chi.actual >= 3 and spell(SB.RisingSunKick).cooldown <= 1) or (UnitLevel("target") == -1 and time_to_die(group, target) <= 15)) then
SetCVar("StormEarthFire", 0)
end
end

if GetCVar("StormEarthFire")  == '0' then
      if castable(SB.StormEarthFire) and (not player.buff(SB.stormbuff).up) then
				return cast(SB.StormEarthFire)
else
  SetCVar("StormEarthFire", 1)
end
end

end
setfenv(StormEarthFire, dark_addon.environment.env)


local function gcd()
  if not player.alive then return end
  
  if GetItemCooldown(5512) == 0 and player.health.effective < 30 then
    macro('/use Healthstone')
  end
  
  if modifier.lalt and target.castable(SB.TouchofKarma) then
    cast(SB.TouchofKarma, target)
  end
  
  if toggle('interrupts', false) and not player.channeling(SB.FistofFury) and target.interrupt(70) and target.castable(SB.SpearHandStrike) then
    cast(SB.SpearHandStrike, target)
  end
end

local function combat()
 
  
if modifier.lcontrol and toggle('cooldowns', false) then
	return cast(SB.StormEarthFire, 'target')
end
if toggle('cooldowns', false) then

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

  if player.alive and target.alive and target.enemy then
  if toggle('cooldowns', false) then
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
 
  if not player.alive then return end
  
      if toggle('cooldowns', false) then 
	  if StormEarthFire() then return end
	  end
	  
if not GetCVar("StormEarthFire") then
return RegisterCVar("StormEarthFire", 2)
end
  
  if GetCVar("nameplateShowEnemies") == '0' then
    SetCVar("nameplateShowEnemies", 1)
  end
  
  macro('/cqs')
    
  if GetItemCooldown(5512) == 0 and player.health.effective < 30 then
    macro('/use Healthstone')
  end
  
  if modifier.lshift and castable(SB.Vivify) then
    return cast(SB.Vivify, player)
  end
  
  if modifier.lalt and target.castable(SB.TouchofKarma) then
    cast(SB.TouchofKarma, target)
  end
  
  if toggle('dispell', false) and castable(SB.DetoxDPS) and player.dispellable(SB.DetoxDPS) then
    return cast(SB.DetoxDPS, player)
  end
  
  local nearest_target = enemies.match(function (unit)
    return unit.alive and unit.combat and unit.distance <= 5
  end)
  
  if (not target.exists or target.distance > 5) and nearest_target and nearest_target.name then
    macro('/target ' .. nearest_target.name)
  end
  
  if target.enemy and target.alive and target.distance <= 5 and not player.channeling(SB.FistofFury) then
    auto_attack()
    
    if player.channeling(SB.CracklingJade) then
      stopcast()
    end
    
    if toggle('interrupts', false) and target.interrupt(70) then
      if castable(SB.SpearHandStrike) then
        return cast(SB.SpearHandStrike, target)
      end
      
      if castable(SB.LegSweep) then
        return cast(SB.LegSweep)
      end

      if spell(SB.LegSweep).cooldown > 0 and target.castable(SB.Paralysis) then
        return cast(SB.Paralysis, target)
      end
    end
      
    if player.buff(SB.Serenity).up then
      if castable(SB.RisingSunKick) and (enemies.around(8) < 3 or last_combo(SB.SpinningCrane)) then
        return cast(SB.RisingSunKick, target)
      end
      
      if castable(SB.FistofFury) and ((has_bloodlust(player) and last_combo(SB.RisingSunKick)) or player.buff(SB.Serenity).remains < 1 or (enemies.around(8) > 1 and enemies.around(8) < 5)) and toggle('multitarget', false) then
        return cast(SB.FistofFury, target)
      end
      
      if not last_combo(SB.SpinningCrane) and (enemies.around(8) >= 3 or (enemies.around(8) == 2 and last_combo(SB.BlackoutKick))) and toggle('multitarget', false) then
        return cast(SB.SpinningCrane)
      end
      
      return cast(SB.BlackoutKick)
    end
    
    if castable(SB.FistoftheWhiteTiger) and (player.power.energy.tomax < 1 or (talent(7, 3) and spell(SB.Serenity).cooldown < 2)) and player.power.chi.deficit >= 3 then
      return cast(SB.FistoftheWhiteTiger, target)
    end
    
    if castable(SB.TigerPalm) and (player.power.energy.tomax < 1 or (talent(7, 3) and spell(SB.Serenity).cooldown < 2)) and player.power.chi.deficit >= 2 and not last_combo(SB.TigerPalm) then
      return cast(SB.TigerPalm, target)
    end
    
    if toggle('cooldowns', false) then
      if castable(SB.InvokeXuen) then
        return cast(SB.InvokeXuen)
      end
      
      local start, duration, enable = GetInventoryItemCooldown("player", 13)
      if enable == 1 and start == 0 then
        return macro('/use 13')
      end
      
      start, duration, enable = GetInventoryItemCooldown("player", 14)
      if enable == 1 and start == 0 then
        return macro('/use 14')
      end
      
      if castable(SB.Berserking) then
        cast(SB.Berserking)
      end
      
      if castable(SB.TouchofDeath) and time_to_die(group, target) > 10 then
        return cast(SB.TouchofDeath, target)
      end

      if castable(SB.Serenity) and (spell(SB.RisingSunKick).cooldown <= 2 or (UnitLevel("target") == -1 and time_to_die(group, target) <= 12)) then
        return cast(SB.Serenity)
      end
    end
    
    local enemies_around = enemies.around(5)
    
    if enemies_around < 3 or not toggle('multitarget', false) then
      if castable(SB.WhirlingDragonPunch) and toggle('multitarget', false) then
        return cast(SB.WhirlingDragonPunch, target)
      end
      
      if castable(SB.RisingSunKick) and player.power.chi.actual >= 5 then
        return cast(SB.RisingSunKick, target)
      end
      
      if castable(SB.FistofFury) and toggle('multitarget', false) then
        return cast(SB.FistofFury, target)
      end
      
      if castable(SB.RisingSunKick) then
        return cast(SB.RisingSunKick, target)
      end
      
      if castable(SB.SpinningCrane) and not last_combo(SB.SpinningCrane) and player.buff(SB.DanceofChiJi).up and toggle('multitarget', false) then
        return cast(SB.SpinningCrane)
      end
      
      if castable(SB.RushingJadeWind) and player.buff(SB.RushingJadeWind).down and enemies_around > 1 and toggle('multitarget', false) then
        return cast(SB.RushingJadeWind)
      end
      
      if castable(SB.FistoftheWhiteTiger) and player.power.chi.actual <= 2 then
        return cast(SB.FistoftheWhiteTiger, target)
      end
      
      if castable(SB.EnergizingElixir) and player.power.chi.actual <= 3 and player.power.energy.actual < 50 then
        return cast(SB.EnergizingElixir)
      end
      
      if not last_combo(SB.BlackoutKick) and castable(SB.BlackoutKick) and (spell(SB.RisingSunKick).cooldown > 3 or player.power.chi.actual >= 3) and (spell(SB.FistofFury).cooldown > 4 or player.power.chi.actual >= 4 or (player.power.chi.actual == 2 and last_combo(SB.TigerPalm))) then
        return cast(SB.BlackoutKick, target)
      end
      
      if castable(SB.ChiWave) and toggle('multitarget', false) then
        return cast(SB.ChiWave, target)
      end
      
      if not player.moving and castable(SB.ChiBurst) and ((player.power.chi.deficit >= 1 and enemies_around == 1) or player.power.chi.deficit >= 2) and toggle('multitarget', false) then
        return cast(SB.ChiBurst)
      end
    end
    
    if toggle('multitarget', false) and enemies_around >= 3 then
      if toggle('auto_mark', false) then
        local enemy_for_mark = enemies.match(function (unit)
          return unit.alive and unit.combat and unit.distance <= 5 and unit.debuff(SB.MarkoftheCrane).remains < 2
        end)

        if target.debuff(SB.MarkoftheCrane).remains > 10 and enemy_for_mark and enemy_for_mark.name then
          for i=1,enemies_around do
            macro('/target ' .. enemy_for_mark.name)
            if target.guid == enemy_for_mark.guid then break end
          end
        end
      end
      
      if castable(SB.RisingSunKick) and talent(7, 2) and spell(SB.WhirlingDragonPunch).cooldown < 5 and spell(SB.FistofFury).cooldown > 3 then
        return cast(SB.RisingSunKick, target)
      end
      
      if castable(SB.WhirlingDragonPunch) then
        return cast(SB.WhirlingDragonPunch, target)
      end
      
      if castable(SB.EnergizingElixir) and not last_combo(SB.TigerPalm) and player.power.chi.actual <= 1 and player.power.energy.actual < 50 then
        return cast(SB.EnergizingElixir)
      end
      
      if castable(SB.FistofFury) then
        return cast(SB.FistofFury, target)
      end
      
      if castable(SB.RushingJadeWind) and player.buff(SB.RushingJadeWind).down then
        return cast(SB.RushingJadeWind)
      end
      
      if castable(SB.SpinningCrane) and not last_combo(SB.SpinningCrane) and (((player.power.chi.actual > 3 or spell(SB.FistofFury).cooldown > 6) and (player.power.chi.actual >= 5 or spell(SB.FistofFury).cooldown > 2)) or player.power.energy.tomax <= 3) then
        return cast(SB.SpinningCrane)
      end
      
      if not player.moving and castable(SB.ChiBurst) and player.power.chi.actual <= 3 then
        return cast(SB.ChiBurst)
      end
      
      if castable(SB.FistoftheWhiteTiger) and player.power.chi.deficit >= 3 then
        return cast(SB.FistoftheWhiteTiger, target)
      end

      if castable(SB.TigerPalm) and player.power.chi.deficit >= 2 and not last_combo(SB.TigerPalm) then
        return cast(SB.TigerPalm, target)
      end
      
      if castable(SB.ChiWave) then
        return cast(SB.ChiWave, target)
      end
      
      if not last_combo(SB.BlackoutKick) and castable(SB.BlackoutKick) and (player.buff(SB.BlackoutKickBuff).up or (talent(6, 1) and last_combo(SB.TigerPalm) and player.power.chi.actual < 4)) then
        return cast(SB.BlackoutKick, target)
      end
    end
    
    if castable(SB.TigerPalm) and not last_combo(SB.TigerPalm) then
      return cast(SB.TigerPalm, target)
    end
    
    if castable(SB.CracklingJade) and last_combo(SB.TigerPalm) and player.power.energy.actual >= 70 then
      return cast(SB.CracklingJade, target)
    end
  end
end

local function resting()
  if not player.alive then return end
  if not GetCVar("StormEarthFire") then
return RegisterCVar("StormEarthFire", 2)
end
  if modifier.lshift and castable(SB.Vivify) then
    return cast(SB.Vivify, player)
  end
  
  if player.health.effective < 50 and castable(SB.Vivify) and not player.moving then
    return cast(SB.Vivify, player)
  end

  if toggle('dispell', false) and castable(SB.DetoxDPS) and player.dispellable(SB.DetoxDPS) then
    return cast(SB.DetoxDPS, player)
  end
end
-- lcontrol - Storm Earth Fire
-- Left Alt - Touch of Karma
-- Left Shift - Vivify self

function interface()

    local settings = {
        key = 'nik_setts',
        title = 'Windwalker',
        width = 300,
        height = 500,
        resize = true,
        show = false,
        template = {
            { type = 'header', text = "Windwalker Info", align = 'CENTER'},
            { type = 'header', text = 'Talents', align = 'CENTER' },
            { type = 'text', text = 'Talents: 1 - 2 - - 3 2', align = 'CENTER' },
            { type = 'text', text = 'LControl - Storm Earth Fire', align = 'CENTER' },
			{ type = 'text', text = 'Left Alt - Touch of Karma', align = 'CENTER' },
			{ type = 'text', text = 'Left Shift - Vivify self', align = 'CENTER' },			
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
    name = 'dispell',
    label = 'Auto Dispell',
    on = {
      label = 'DSP',
      color = dark_addon.interface.color.green,
      color2 = dark_addon.interface.color.green
    },
    off = {
      label = 'dsp',
      color = dark_addon.interface.color.grey,
      color2 = dark_addon.interface.color.dark_grey
    }
  })
  dark_addon.interface.buttons.add_toggle({
    name = 'auto_mark',
    label = 'Auto targeting for Mark of the Crane',
    on = {
      label = 'Auto Mark',
      color = dark_addon.interface.color.green,
      color2 = dark_addon.interface.color.green
    },
    off = {
      label = 'auto mark',
      color = dark_addon.interface.color.grey,
      color2 = dark_addon.interface.color.dark_grey
    }
  })
end

dark_addon.rotation.register({
  spec = dark_addon.rotation.classes.monk.windwalker,
  name = 'ww_nikopol',
  label = 'Windwalker by Nikopol',
  gcd = gcd,
  combat = combat,
  resting = resting,
  StormEarthFire = StormEarthFire,
  interface = interface
})

dark_addon.event.register("UNIT_SPELLCAST_SUCCEEDED", function(...)
  local unitID, _, spellID = ...
  if unitID == "player" and combo_strike_spells[spellID] then
    dark_addon.tmp.store('last_combo_spell', spellID)
  end
end)
