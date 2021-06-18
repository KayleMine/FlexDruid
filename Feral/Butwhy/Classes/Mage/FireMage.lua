
local addon, dark_addon = ...
local SB = dark_addon.rotation.spellbooks.GITmage
local AZ = dark_addon.rotation.spellbooks.azerite

SB.WorldveinRes = 295186 
SB.ArcaneInt = 1459 
SB.PhoenixFlames = 257541 
SB.ConeofCold = 120 
SB.Freeze = 33395 
SB.CFlame = 295373 
SB.Meteor = 153561 
SB.FireBlast = 108853 
SB.FocusBeam = 295258 
SB.ClearcastingBuff = 263725  -- 263725 
SB.PrismaticBarrier = 235450 
SB.WintersReach = 273347 
SB.WintersReachOther = 237346 
SB.GreaterPyroblast = 203286 
SB.Combustion = 190319 
SB.ConcentradedFlame = 295373 
SB.AzeriteGuardian = 295840 
SB.Ripple = 302731 
SB.Counterspell = 2139 
SB.GladMed = 208683 
SB.RemoveCurse = 475 
SB.SpellSteal = 30449 
SB.Polymorph = 118 
SB.Flamestrike = 2120 
SB.DragonsBreath = 31661 
SB.BlazingBarrier = 235313 
SB.Fireball = 133 
SB.Scorch = 2948 
SB.Icicles = 205473 
SB.HotStreak = 48108 
SB.HeatingUp = 48107 
SB.IceLance = 30455 
SB.FingersofFrost = 44544 
SB.FrostBomb = 112948 
SB.LivingBomb = 44457 
SB.LucidDreams = 298357 
SB.LivingBombDebuff = 217694 
SB.Frostbolt = 116 
SB.FrostNova = 122 
SB.Flurry = 44614 
SB.BrainFreeze = 190446 
SB.SummonWaterElemental = 31687 
SB.RuneofPower = 116011 
SB.RuneofPowerBuff = 116014 
SB.IcyVeins = 12472 
SB.GlacialSpike = 199786 
SB.IceNova = 157997 
SB.CometStorm = 153595 
SB.Blizzard = 190356 
SB.RayofFrost = 205021 
SB.ArcaneTorrent = 28730 
SB.IceBarrior = 11426 
SB.IceBlock = 45438 
SB.MirrorImage = 55342 
SB.RingofFrost = 113724 
SB.FrozenOrb = 84714 
SB.Ebonbolt = 257537 
SB.ArcaneBarrage = 44425 
SB.ArcaneBlast = 30451 
SB.ArcaneExplosion = 1449 
SB.Evocation = 12051 
SB.ArcaneFamilliar = 205022 
SB.Amplification = 236628 
SB.WordsofPower = 205035 
SB.Shimmer = 212653 
SB.Slipstream = 236457 
SB.ManaShield = 235463 
SB.IncantersFlow = 1463 
SB.Resonance = 205028 
SB.ChargedUp = 205032 
SB.Supernova = 157980 
SB.ChronoShift = 235711 
SB.RingofFrost = 113724 
SB.IceWard = 205036 
SB.Erosion = 205039 
SB.UnstableMagic = 157976 
SB.NetherTempest = 114923 
SB.Overpowered = 155147 
SB.TemporalFlux = 234302 
SB.ArcaneOrb = 153626 
SB.ArcaneMissiles = 5143 
SB.PrecenseofMind = 205025 
SB.ArcanePower = 12042 
SB.ArcaneMissileProc = 79683 
SB.MarkofAluneth = 224968 
SB.Pyroblast = 11366 
SB.Blink = 1953 
SB.HeatingUp = 48107
SB.AzsharaTrinket = 296962
SB.Invisible = 32612



-- if spell(SB.Combustion).cooldown > 50 then
    -- -- do something
-- end



local function combat()
if not GetCVar("DropCombat") then
return RegisterCVar("DropCombat", 2)
end

if player.buff(SB.Invisible).up then
SetCVar("DropCombat", 0)
end

if not player.buff(SB.Invisible).up then
SetCVar("DropCombat", 1)
end
if GetCVar("DropCombat") == '1' then 
local current_gcd = (1.5 / ((UnitSpellHaste("player") / 100) + 1))
local gcd_fixed = math.ceil((1.5 / ((UnitSpellHaste("player") / 100) + 1)))
local intpercentlow = dark_addon.settings.fetch("Firem_settings_intpercentlow", 50)
local intpercenthigh = dark_addon.settings.fetch("Firem_settings_intpercenthigh", 65)
local enemyCount = enemies.count(function (unit)
		return unit.alive and unit.combat and unit.distance == target.distance 
	end)
	
    dark_addon.interface.status_extra("T#:" .. enemyCount .. " GCD:" .. gcd_fixed)
local frame17 = CoolDownsFrame or CreateFrame("ScrollingMessageFrame", "CoolDownsFrame", UIParent)
frame17:SetPoint("CENTER", 0,595)
frame17:SetSize(900, 100)
frame17:SetTimeVisible(1.0);
frame17:SetMaxLines(1);
frame17:SetFontObject(ChatFontNormal);
frame17:SetIndentedWordWrap(true);
frame17:SetJustifyH("CENTER"); 				
frame17:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 35, "OUTLINE, MONOCHROME")
if toggle("cooldowns", false)  then 
frame17:AddMessage(" |cffcfffff CoolDowns |r|cff5BFF33 enabled|r")	
else
frame17:AddMessage(" |cffcfffff CoolDowns |r|cffF00000 disabled|r")	
end



local frame8 = MeteorFrame or CreateFrame("ScrollingMessageFrame", "MeteorFrame", UIParent)
frame8:SetPoint("CENTER", 0,505)
frame8:SetSize(900, 100)
frame8:SetTimeVisible(1.0);
frame8:SetMaxLines(1);
frame8:SetFontObject(ChatFontNormal);
frame8:SetIndentedWordWrap(true);
frame8:SetJustifyH("CENTER"); 				
frame8:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 35, "OUTLINE, MONOCHROME")
if talent(7, 3) and castable(SB.Meteor) then 
frame8:AddMessage(" |cffcfffff CONTROL  --  \124TInterface\\ICONS\\spell_mage_meteor:0\124t |r|cff5BFF33 READY!|r")	
else
if talent(7, 3) then
frame8:AddMessage(" |cffcfffff ON   COOLDOWN  --  \124TInterface\\ICONS\\spell_mage_meteor:0\124t |r|cffF00000 NOT READY.|r")	
end
end

local frame48 = FlamestrikeFrame or CreateFrame("ScrollingMessageFrame", "FlamestrikeFrame", UIParent)
frame48:SetPoint("CENTER", 0,551)
frame48:SetSize(900, 100)
frame48:SetTimeVisible(1.0);
frame48:SetMaxLines(1);
frame48:SetFontObject(ChatFontNormal);
frame48:SetIndentedWordWrap(true);
frame48:SetJustifyH("CENTER"); 				
frame48:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 35, "OUTLINE, MONOCHROME")
if enemyCount > 5 and castable(SB.Flamestrike) then 
frame48:AddMessage(" |cffcfffff HOLD SHIFT  --  \124TInterface\\ICONS\\spell_fire_selfdestruct:0\124t |r|cff5BFF33 READY!|r")	
else
if enemyCount < 2 then
frame48:AddMessage("Need more adds --  \124TInterface\\ICONS\\spell_fire_selfdestruct:0\124t |r|cffF00000 NOT READY.|r")	
end

end

local LivingBombsFrame1 = LivingBombsFrame or CreateFrame("ScrollingMessageFrame", "LivingBombsFrame", UIParent)
LivingBombsFrame1:SetPoint("CENTER", 0,465)
LivingBombsFrame1:SetSize(900, 100)
LivingBombsFrame1:SetTimeVisible(1.0);
LivingBombsFrame1:SetMaxLines(1);
LivingBombsFrame1:SetFontObject(ChatFontNormal);
LivingBombsFrame1:SetIndentedWordWrap(true);
LivingBombsFrame1:SetJustifyH("CENTER"); 				
LivingBombsFrame1:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 35, "OUTLINE, MONOCHROME")
if talent(6, 3) and castable(SB.LivingBomb) then 
LivingBombsFrame1:AddMessage(" |cffcfffff ALT  --  \124TInterface\\ICONS\\ability_mage_livingbomb:0\124t |r|cff5BFF33 READY!|r")	
else
if talent(6, 3)  and not castable(SB.LivingBomb) then
LivingBombsFrame1:AddMessage(" ON   COOLDOWN  --  \124TInterface\\ICONS\\ability_mage_livingbomb:0\124t |r|cffF00000 NOT READY.|r")	
end
end





  if GetCVar("nameplateShowEnemies") == '0' then
    SetCVar("nameplateShowEnemies", 1)
  end

    -- Pummel
    if
      toggle("interrupts", false) and castable(SB.Counterspell, "target") and -spell(SB.Counterspell) == 0 and not player.buff(SB.Combustion).up and
        target.interrupt(intpercent, false) and
        target.distance < 40
     then
	 macro('/stopcasting')
      return cast(SB.Counterspell, "target")
    end
  
  
  
if talent(7, 3) and castable(SB.Meteor) then

if modifier.lcontrol then
  return cast(SB.Meteor, 'ground')
end

end

if talent(6, 3) and castable(SB.LivingBomb) then

if modifier.alt then 
return cast(SB.LivingBomb, 'target')
end

end

if talent(6, 3) and castable(SB.LivingBomb) then

if enemyCount > 3 then 
return cast(SB.LivingBomb, 'target')
end

end

if castable(SB.BlazingBarrier) and player.buff(SB.BlazingBarrier).down and not player.buff(SB.Combustion).up  and not player.channeling() then return cast(SB.BlazingBarrier, 'player') end
if castable(SB.ArcaneInt) and not player.buff(SB.ArcaneInt).up and not player.buff(SB.Combustion).up  and not player.channeling() then return cast(SB.ArcaneInt, 'player') end

if target.alive and target.enemy and player.alive and not -target.debuff(SB.Polymorph) and not player.channeling()  then
if player.moving then

if castable(SB.Scorch) and not player.buff(SB.HotStreak).up then
return cast(SB.Scorch) 
end

if player.buff(SB.HotStreak).up then
	if not modifier.shift then
		return cast(SB.Pyroblast, 'target')
	end
	if modifier.shift then
    return cast(SB.Flamestrike, 'ground')
	end
end



end





-- if spell(SB.Scorch).current and -buff(SB.HotStreak) and not player.moving and not -buff(SB.Combustion)  then
      -- stopcast()
-- end

if toggle('cooldowns', false) and not player.moving then
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


		if GetItemCooldown(Trinket13) == 0 and not player.moving and not player.buff(SB.Combustion).up then
		  macro('/stopcasting')
		  macro('/use 13')
		end


	end

    if GetItemCooldown(Trinket14) == 0 and not player.buff(SB.Combustion).up and not player.channeling() then
      macro('/use 14')
    end

	if GetItemCooldown(Trinket13) == 0 and not itemID == 169314 and not player.buff(SB.Combustion).up and not player.channeling() then
			  macro('/use 13')
	end


	if GetItemCooldown(ring1) == 0 and not itemID == 169314 and not player.buff(SB.Combustion).up and not player.channeling() then
			  macro('/use 11')
	end
	
	
		if GetItemCooldown(ring2) == 0 and not itemID == 169314 and not player.buff(SB.Combustion).up and not player.channeling() then
			  macro('/use 12')
	end
	
		if GetItemCooldown(hands) == 0 and not itemID == 169314 and not player.buff(SB.Combustion).up and not player.channeling() then
			  macro('/use 7')
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



if castable(SB.RuneofPower) and castable(SB.Combustion) then
      return cast(SB.RuneofPower, 'ground')
end

if player.buff(SB.RuneofPowerBuff).up and castable(SB.Combustion) then
	  return cast(SB.Combustion, 'target')
end



-- if player.buff(SB.RuneofPowerBuff).down and not castable(SB.Combustion) and castable(SB.RuneofPower) then
      -- return cast(SB.RuneofPower, 'ground')
-- end


if spell(SB.Combustion).cooldown > 41 then

	  if castable(SB.RuneofPower) then
		return cast(SB.RuneofPower, 'ground')
	  end

end



end



-- if castable(SB.Scorch) and player.moving then
      -- return cast(SB.Scorch, 'target')
-- end


    -- if target.health.percent <= 30 and talent(1,3) then
      -- return cast(SB.Scorch)
    -- end
if talent(1, 3) and -target.health > 30 then




if player.buff(SB.HotStreak).up then
	
	if castable(SB.Pyroblast) and not modifier.shift then
		return cast(SB.Pyroblast, 'target')
	end
	

	if modifier.shift then
    return cast(SB.Flamestrike, 'ground')
	end

end



if not player.buff(SB.HeatingUp).up and not player.buff(SB.HotStreak).up then

	if castable(SB.FireBlast) then
		  return cast(SB.FireBlast, 'target')
	end

	else

	if not castable(SB.FireBlast) and castable(SB.Fireball) then
		  return cast(SB.Fireball, 'target')
	end

end

if player.buff(SB.HeatingUp).up and not player.buff(SB.HotStreak).up then



	if castable(SB.FireBlast) then
		  return cast(SB.FireBlast, 'target')
	end

	else

	if not castable(SB.FireBlast) and castable(SB.Fireball) then
		  return cast(SB.Fireball, 'target')
	end


end

end
end


if target.alive and target.enemy and player.alive and not -target.debuff(SB.Polymorph) and not player.channeling()  then

if player.moving then

if castable(SB.Scorch) and not player.buff(SB.HotStreak).up then
return cast(SB.Scorch) 
end

if player.buff(SB.HotStreak).up then
	if not modifier.shift then
		return cast(SB.Pyroblast, 'target')
	end
	if modifier.shift then
    return cast(SB.Flamestrike, 'ground')
	end
end

end


if talent(1, 3) and -target.health < 30 then


if player.buff(SB.HotStreak).up then
	
	if castable(SB.Pyroblast) and not modifier.shift then
		return cast(SB.Pyroblast, 'target')
	end
	

	if modifier.shift then
    return cast(SB.Flamestrike, 'ground')
	end
	
end



if not player.buff(SB.HeatingUp).up and not player.buff(SB.HotStreak).up then

	if castable(SB.FireBlast) then
		  return cast(SB.FireBlast, 'target')
	end
	


	else

	if not castable(SB.FireBlast) and castable(SB.Scorch) then
		  return cast(SB.Scorch, 'target')
	end

end

if player.buff(SB.HeatingUp).up and not player.buff(SB.HotStreak).up then



	if castable(SB.FireBlast) then
		  return cast(SB.FireBlast, 'target')
	end

	else

	if not castable(SB.FireBlast) and castable(SB.Scorch) then
		  return cast(SB.Scorch, 'target')
	end


end


end


end


    if toggle("dispell", false) then
    -- self-cleanse
    -- if castable(SB.RemoveCurse) and player.dispellable(SB.RemoveCurse) then
      -- return cast(SB.RemoveCurse, player)
    -- end
    -- group cleanse
    local unit = group.dispellable(SB.RemoveCurse)
    if unit and unit.castable(SB.RemoveCurse) then
      return cast(SB.RemoveCurse, unit)
    end
  end
  end
end






local function resting()
if not GetCVar("DropCombat") then
return RegisterCVar("DropCombat", 2)
end

if player.buff(SB.Invisible).up then
SetCVar("DropCombat", 0)
end

if not player.buff(SB.Invisible).up then
SetCVar("DropCombat", 1)
end


local gcd_fixed = math.ceil((1.5 / ((UnitSpellHaste("player") / 100) + 1)))
local current_gcd = (1.5 / ((UnitSpellHaste("player") / 100) + 1))
if castable(SB.BlazingBarrier) and player.buff(SB.BlazingBarrier).down and not player.buff(SB.Combustion).up  and not player.channeling() then return cast(SB.BlazingBarrier, 'player') end


if castable(SB.ArcaneInt) and player.buff(SB.ArcaneInt).down then return cast(SB.ArcaneInt, 'player') end
    local enemyCount = enemies.around(8)
    if enemyCount == 0 then
      enemyCount = 1
    end
    dark_addon.interface.status_extra("T#:" .. enemyCount .. " GCD:" .. gcd_fixed)
local frame17 = CoolDownsFrame or CreateFrame("ScrollingMessageFrame", "CoolDownsFrame", UIParent)
frame17:SetPoint("CENTER", 0,595)
frame17:SetSize(900, 100)
frame17:SetTimeVisible(1.0);
frame17:SetMaxLines(1);
frame17:SetFontObject(ChatFontNormal);
frame17:SetIndentedWordWrap(true);
frame17:SetJustifyH("CENTER"); 				
frame17:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 35, "OUTLINE, MONOCHROME")
if toggle("cooldowns", false)  then 
frame17:AddMessage(" |cffcfffff CoolDowns |r|cff5BFF33 enabled|r")	
else
frame17:AddMessage(" |cffcfffff CoolDowns |r|cffF00000 disabled|r")	
end



local frame8 = MeteorFrame or CreateFrame("ScrollingMessageFrame", "MeteorFrame", UIParent)
frame8:SetPoint("CENTER", 0,505)
frame8:SetSize(900, 100)
frame8:SetTimeVisible(1.0);
frame8:SetMaxLines(1);
frame8:SetFontObject(ChatFontNormal);
frame8:SetIndentedWordWrap(true);
frame8:SetJustifyH("CENTER"); 				
frame8:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 35, "OUTLINE, MONOCHROME")
if talent(7, 3) and castable(SB.Meteor) then 
frame8:AddMessage(" |cffcfffff CONTROL  --  \124TInterface\\ICONS\\spell_mage_meteor:0\124t |r|cff5BFF33 READY!|r")	
else
if talent(7, 3) then
frame8:AddMessage(" |cffcfffff ON   COOLDOWN  --  \124TInterface\\ICONS\\spell_mage_meteor:0\124t |r|cffF00000 NOT READY.|r")	
end
end
local frame48 = FlamestrikeFrame or CreateFrame("ScrollingMessageFrame", "FlamestrikeFrame", UIParent)
frame48:SetPoint("CENTER", 0,551)
frame48:SetSize(900, 100)
frame48:SetTimeVisible(1.0);
frame48:SetMaxLines(1);
frame48:SetFontObject(ChatFontNormal);
frame48:SetIndentedWordWrap(true);
frame48:SetJustifyH("CENTER"); 				
frame48:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 35, "OUTLINE, MONOCHROME")
if enemyCount > 5 and castable(SB.Flamestrike) then 
frame48:AddMessage(" |cffcfffff HOLD SHIFT  --  \124TInterface\\ICONS\\spell_fire_selfdestruct:0\124t |r|cff5BFF33 READY!|r")	
else
if enemyCount < 2 then
frame48:AddMessage("Need more adds --  \124TInterface\\ICONS\\spell_fire_selfdestruct:0\124t |r|cffF00000 NOT READY.|r")		
end

end

local LivingBombsFrame1 = LivingBombsFrame or CreateFrame("ScrollingMessageFrame", "LivingBombsFrame", UIParent)
LivingBombsFrame1:SetPoint("CENTER", 0,465)
LivingBombsFrame1:SetSize(900, 100)
LivingBombsFrame1:SetTimeVisible(1.0);
LivingBombsFrame1:SetMaxLines(1);
LivingBombsFrame1:SetFontObject(ChatFontNormal);
LivingBombsFrame1:SetIndentedWordWrap(true);
LivingBombsFrame1:SetJustifyH("CENTER"); 				
LivingBombsFrame1:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 35, "OUTLINE, MONOCHROME")
if talent(6, 3) and castable(SB.LivingBomb) then 
LivingBombsFrame1:AddMessage(" |cffcfffff ALT  --  \124TInterface\\ICONS\\ability_mage_livingbomb:0\124t |r|cff5BFF33 READY!|r")	
else
if talent(6, 3)  and not castable(SB.LivingBomb) then
LivingBombsFrame1:AddMessage(" ON   COOLDOWN  --  \124TInterface\\ICONS\\ability_mage_livingbomb:0\124t |r|cffF00000 NOT READY.|r")	
end
end


 -- if GetCVar("DropCombat") == '0' then
  -- SetCVar("DropCombat", 1)
  -- else 
  -- RegisterCVar("DropCombat","0")
  -- end

  if toggle("dispell", false) then
    -- self-cleanse
    -- if castable(SB.RemoveCurse) and player.dispellable(SB.RemoveCurse) then
      -- return cast(SB.RemoveCurse, player)
    -- end
    -- group cleanse
    local unit = group.dispellable(SB.RemoveCurse)
    if unit and unit.castable(SB.RemoveCurse) then
      return cast(SB.RemoveCurse, unit)
    end
  end

end

-- local function interface()
       
 -- local settings = {
    -- key = "firem_settings",
    -- title = "Fire Mage",
    -- width = 300,
    -- height = 500,
    -- resize = true,
    -- show = false,
    -- template = {
      
  -- }

  -- configWindow = dark_addon.interface.builder.buildGUI(settings)

  -- dark_addon.interface.buttons.add_toggle(
    -- {
      -- name = "settings",
      -- label = "Rotation Settings",
      -- font = "dark_addon_icon",
      -- on = {
        -- label = dark_addon.interface.icon("cog"),
        -- color = dark_addon.interface.color.cyan,
        -- color2 = dark_addon.interface.color.dark_cyan
      -- },
      -- off = {
        -- label = dark_addon.interface.icon("cog"),
        -- color = dark_addon.interface.color.grey,
        -- color2 = dark_addon.interface.color.dark_grey
      -- },
      -- callback = function(self)
        -- if configWindow.parent:IsShown() then
          -- configWindow.parent:Hide()
        -- else
          -- configWindow.parent:Show()
        -- end
      -- end
    -- }
  -- )

-- }
-- end



local function interface()
  local settings = {
    key = "Firem_settings",
    title = "Fire Mage",
    width = 300,
    height = 500,
    resize = true,
    show = false,
    template = {
	
	
	
	{type = "header", text = "Fire Mage Settings",  align = 'CENTER'},

      {type = "header", text = "PvE Kick Settings", align = 'CENTER'},
	  
      {
        key = "intpercentlow",
        type = "spinner",
        text = "Interrupt Low %",
        default = "50",
        desc = "low% cast time to interrupt at",
        min = 5,
        max = 50,
        step = 1
      },
      {
        key = "intpercenthigh",
        type = "spinner",
        text = "Interrupt High %",
        default = "65",
        desc = "high% cast time to interrupt at",
        min = 51,
        max = 100,
        step = 1
      },
      -- {key = "StormBoltInt", type = "checkbox", text = "Storm Bolt as an interrupt", desc = "", default = true},
	        -- {key = "IntimidatingShoutInt", type = "checkbox", text = "Intimidating Shout as an interrupt", desc = "", default = true},
	  
	  
	  			{ type = 'rule' },
	 
	
	
    }
  }

  configWindow = dark_addon.interface.builder.buildGUI(settings)

  dark_addon.interface.buttons.add_toggle(
    {
      name = "settings",
      label = "Rotation Settings",
      font = "dark_addon_icon",
      on = {
        label = dark_addon.interface.icon("cog"),
        color = dark_addon.interface.color.cyan,
        color2 = dark_addon.interface.color.dark_cyan
      },
      off = {
        label = dark_addon.interface.icon("cog"),
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
    }
  )

  dark_addon.interface.buttons.add_toggle(
          {
            name = "dispell",
            label = "dispell",
            on = {
              label = "Group Dispell ON",
              color = dark_addon.interface.color.orange,
              color2 = dark_addon.interface.color.ratio(dark_addon.interface.color.dark_orange, 0.7)
            },
            off = {
              label = "Group Dispell OFF",
              color = dark_addon.interface.color.red,
              color2 = dark_addon.interface.color.ratio(dark_addon.interface.color.red, 0.5)
            }
          }
  )


end




dark_addon.rotation.register({
  spec = dark_addon.rotation.classes.mage.fire,
  name = 'sfire',
  label = 'See',
  combat = combat,
  resting = resting,
  interface = interface
})
