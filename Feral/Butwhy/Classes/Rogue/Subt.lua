local addon, dark_addon = ...
local SB = dark_addon.rotation.spellbooks.GITrogue
local AZ = dark_addon.rotation.spellbooks.azerite

SB.Shadowstrike = 185438
SB.SecretTechnique = 280719
SB.NightBlade = 195452
SB.Backstab = 53
SB.Eviscerate = 196819
SB.SymbolsOfDeath = 212283
SB.ShadowBlades = 121471
SB.Blind = 2094
SB.CheapShot = 1833
SB.KidneyShot = 408
SB.ShadowDance = 185313
SB.ShadowStep = 36554
SB.CloakOfShadows = 31224
SB.Sprint = 2983
SB.Vanish = 1856
SB.Kick = 1766
SB.Feint = 1966
SB.Distract = 1725
SB.CrimsonVial = 185311
SB.ShurikenToss = 114014
SB.ShurikenStorm = 197835
SB.TricksOftheTrade = 57934
SB.VanishBuff = 11327
SB.RecklessForce = 302917
SB.ShurikenTornado = 277925
SB.Gloomblade = 200758
SB.MarkForDeath = 137619

local function azer()
local delay = 0  
  --burst essences

	--1
if toggle('cooldowns') then
    if castable(AZ.GuardianofAzeroth1) and -spell(AZ.GuardianofAzeroth1) == 0 then
    return cast(AZ.GuardianofAzeroth1, "Target")
    end 
	    if castable(AZ.GuardianofAzeroth2) and -spell(AZ.GuardianofAzeroth2) == 0 then
        return cast(AZ.GuardianofAzeroth2, "Target")
		end 
		    if castable(AZ.GuardianofAzeroth3) and -spell(AZ.GuardianofAzeroth3) == 0 then
			return cast(AZ.GuardianofAzeroth3, "Target")
			end 
	
	--2
	
    if castable(AZ.MemoryofLucidDreams1) and -spell(AZ.MemoryofLucidDreams1) == 0 then
    return cast(AZ.MemoryofLucidDreams1, "Target")
    end 
	    if castable(AZ.MemoryofLucidDreams2) and -spell(AZ.MemoryofLucidDreams2) == 0 then
        return cast(AZ.MemoryofLucidDreams2, "Target")
		end 
		    if castable(AZ.MemoryofLucidDreams3) and -spell(AZ.MemoryofLucidDreams3) == 0 then
			return cast(AZ.MemoryofLucidDreams3, "Target")
			end 

	--3 uncomment to cast (req. 8.3.0+ patch)
		if delay < GetTime() then
	if castable(AZ.MomentofGlory1) then
    return cast(AZ.MomentofGlory1, 'player')
    end 
	    if castable(AZ.MomentofGlory2) and -spell(AZ.MomentofGlory2) == 0 then
        return cast(AZ.MomentofGlory2, "Target")
		end 
		    if castable(AZ.MomentofGlory3) and -spell(AZ.MomentofGlory3) == 0 then
			return cast(AZ.MomentofGlory3, "Target")
			end 
		delay = GetTime() + 1.5
	end	
			
	--4
	
    if castable(AZ.WorldveinResonance1) and -spell(AZ.WorldveinResonance1) == 0 then
    return cast(AZ.WorldveinResonance1, "Target")
    end 
	    if castable(AZ.WorldveinResonance2) and -spell(AZ.WorldveinResonance2) == 0 then
        return cast(AZ.WorldveinResonance2, "Target")
		end 
		    if castable(AZ.WorldveinResonance3) and -spell(AZ.WorldveinResonance3) == 0 then
			return cast(AZ.WorldveinResonance3, "Target")
			end 

	
	
	
	--damage essences
	
	
	
	--1 
	
	 if castable(AZ.AnimaofDeath1) and -spell(AZ.AnimaofDeath1) == 0 then
        return cast(AZ.AnimaofDeath1, "Target")
    end
			 if castable(AZ.AnimaofDeath2) and -spell(AZ.AnimaofDeath2) == 0 then
        return cast(AZ.AnimaofDeath2, "Target")
    end
				 if castable(AZ.AnimaofDeath3) and -spell(AZ.AnimaofDeath3) == 0 then
        return cast(AZ.AnimaofDeath3, "Target")
    end
	
	--2 
	
	 if castable(AZ.BloodoftheEnemy1) and -spell(AZ.BloodoftheEnemy1) == 0 then
        return cast(AZ.BloodoftheEnemy1, "Target")
    end
			 if castable(AZ.BloodoftheEnemy2) and -spell(AZ.BloodoftheEnemy2) == 0 then
        return cast(AZ.BloodoftheEnemy2, "Target")
    end
				 if castable(AZ.BloodoftheEnemy3) and -spell(AZ.BloodoftheEnemy3) == 0 then
        return cast(AZ.BloodoftheEnemy3, "Target")
    end
	
		
	--3  uncomment to cast (req. 8.3.0+ patch)
	
	 if castable(AZ.ReapingFlames1) and -spell(AZ.ReapingFlames1) == 0 then
        return cast(AZ.ReapingFlames1, "Target")
    end
			 if castable(AZ.ReapingFlames2) and -spell(AZ.ReapingFlames2) == 0 then
        return cast(AZ.ReapingFlames2, "Target")
    end
				 if castable(AZ.ReapingFlames3) and -spell(AZ.ReapingFlames3) == 0 then
        return cast(AZ.ReapingFlames3, "Target")
    end
	
	--4
	if delay < GetTime() then
	 if castable(AZ.FocusedAzeriteBeam1) and -spell(AZ.FocusedAzeriteBeam1) == 0 then
        return cast(AZ.FocusedAzeriteBeam1, "Target")
    end
			 if castable(AZ.FocusedAzeriteBeam2) and -spell(AZ.FocusedAzeriteBeam2) == 0 then
        return cast(AZ.FocusedAzeriteBeam2, "Target")
    end
				 if castable(AZ.FocusedAzeriteBeam3) and -spell(AZ.FocusedAzeriteBeam3) == 0 then
        return cast(AZ.FocusedAzeriteBeam3, "Target")
    end
	 delay = GetTime() + 1.4
end	
	--5
	
	 if castable(AZ.PurifyingBlast1) and -spell(AZ.PurifyingBlast1) == 0 then
        return cast(AZ.PurifyingBlast1, "Target")
    end
			 if castable(AZ.PurifyingBlast2) and -spell(AZ.PurifyingBlast2) == 0 then
        return cast(AZ.PurifyingBlast2, "Target")
    end
				 if castable(AZ.PurifyingBlast3) and -spell(AZ.PurifyingBlast3) == 0 then
        return cast(AZ.PurifyingBlast3, "Target")
    end
	
	--6
	
	 if castable(AZ.ConcentratedFlame1) and -spell(AZ.ConcentratedFlame1) == 0 then
        return cast(AZ.ConcentratedFlame1, "Target")
    end
			 if castable(AZ.ConcentratedFlame2) and -spell(AZ.ConcentratedFlame2) == 0 then
        return cast(AZ.ConcentratedFlame2, "Target")
    end
				 if castable(AZ.ConcentratedFlame3) and -spell(AZ.ConcentratedFlame3) == 0 then
        return cast(AZ.ConcentratedFlame3, "Target")
    end
	
	--7
			
	 if castable(AZ.TheUnboundForce1) and -spell(AZ.TheUnboundForce1) == 0 then
        return cast(AZ.TheUnboundForce1, "Target")
    end
			 if castable(AZ.TheUnboundForce2) and -spell(AZ.TheUnboundForce2) == 0 then
        return cast(AZ.TheUnboundForce2, "Target")
    end
				 if castable(AZ.TheUnboundForce3) and -spell(AZ.TheUnboundForce3) == 0 then
        return cast(AZ.TheUnboundForce3, "Target")
    end
	end
end
setfenv(azer, dark_addon.environment.env)

local function itemss()
 local Trinket13 = GetInventoryItemID("player", 13)
              local Trinket14 = GetInventoryItemID("player", 14)
			 -- local wrist = GetInventoryItemID("player", 6)
			  -- local belt = GetInventoryItemID("player", 8)
			  local ring1 = GetInventoryItemID("player", 11)
			  local ring2 = GetInventoryItemID("player", 12)
			  local hands = GetInventoryItemID("player", 7)
			  local ashvanes_razor_coral = false
		if toggle('cooldowns') then	  
			  
            if Trinket13 == 169311 or Trinket14 == 169311 then
                ashvanes_razor_coral = true
            end



            --font
            if Trinket13 == 169314 and target.time_to_die > 15 and player.buff(SB.Stealth).down and player.buff(114018).down and player.buff(256735).down and not player.moving then
                if GetItemCooldown(Trinket13) == 0 then
                    macro('/use 13')
                end


            elseif Trinket13 ~= 169314 then

                if GetItemCooldown(Trinket13) == 0 then
                    macro('/use 13')
                end
            end
            if GetItemCooldown(Trinket14) == 0 then
                macro('/use 14')
            end
			
			
			
	if GetItemCooldown(ring1) == 0 and not itemID == 169314 and not player.buff(SB.ShadowDance).up and not player.channeling() then
			  macro('/use 11')
	end
	
	
	if GetItemCooldown(ring2) == 0 and not itemID == 169314 and not player.buff(SB.ShadowDance).up and not player.channeling() then
			  macro('/use 12')
	end
	
	if GetItemCooldown(hands) == 0 and not itemID == 169314 and not player.buff(SB.ShadowDance).up and not player.channeling() then
			  macro('/use 7')
	end  
	end
	end
	setfenv(itemss, dark_addon.environment.env)
	
local function cvarss()
if not GetCVar("DropCombat") then
return RegisterCVar("DropCombat", 2)
end

if player.buff(SB.VanishBuff).up or player.buff(SB.Stealth)  then
SetCVar("DropCombat", 0)
end

if not player.buff(SB.VanishBuff).up or player.buff(SB.Stealth) then
SetCVar("DropCombat", 1)
end
end
setfenv(cvarss, dark_addon.environment.env)

local function kickcs()
local intpercent = math.random(50,100)
         
if target.alive and target.enemy and player.alive then	
	if toggle("pveinterrupt", false) then
	
	if castable(SB.Kick, 'target') and -spell(Kick) == 0 and target.interrupt(intpercent, false) then
      return cast(SB.Kick, 'target')
    end

	if castable(SB.Blind, 'target') and not castable(SB.Kick) and -spell(Blind) == 0 and target.interrupt(intpercent, false) then
      return cast(SB.Blind, 'target')
    end
	
	if castable(SB.CheapShot, 'target') and not castable(SB.Kick) and -spell(CheapShot) == 0 and target.interrupt(intpercent, false) then
      return cast(SB.CheapShot, 'target')
    end	
	end
end

end
setfenv(kickcs, dark_addon.environment.env)

local function survivetest()
if toggle("survivetest", false) then
if player.alive then	

if -player.health <= 10 then

if castable(SB.Evasion) then
 return cast(SB.Evasion)
end

if castable(SB.CloakOfShadows) then
 return cast(SB.CloakOfShadows)
end

end

end
end

end
setfenv(survivetest, dark_addon.environment.env)

-- local function SpellCastTest() -- private server meme

-- if player.alive and target.enemy and target.alive then

-- test = CreateFrame("Frame", "test", UIParent);
-- test:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED");

-- test:SetScript("OnEvent", function(self, event, arg1, arg2, arg3, arg4)

	-- if(event=="UNIT_SPELLCAST_SUCCEEDED" and arg1 == "target") then

		-- if arg3==(SB.WarriorStun) then

			-- return cast(SB.Blind, "Target")

		-- end

	-- end
	
	-- end)

-- end


-- end
-- setfenv(SpellCastTest, dark_addon.environment.env)

-- local function smartcloak()
-- -- in future...
-- if castable(SB.CloakOfShadows) and (player.debuff(Smart.1) or player.debuff(Smart.2).count = 3) then return cast(SB.CloakOfShadows) end
-- end
-- setfenv(smartcloak, dark_addon.environment.env)
	

-- if flex and castable(SB.Vanish, 'target') and -spell(SB.Vanish) == 0 then cast(SB.Vanish)
		-- if not target.exists and lastcast(SB.Vanish) then
		-- macro('/lasttarget')
        -- return cast(SB.Shadowstrike, 'target')
        -- end 
-- end
	
	
local function combat()

        if talent(2, 1) or talent(2, 3) then
            SB.Stealth = 1784
        end
        if talent(2, 2) then
            SB.Stealth = 115191
        end
		
if cvarss then return end
if kickcs then return end
if survivetest then return end
if GetCVar("DropCombat") == '1' then 
  local ShadowSteps = dark_addon.settings.fetch("FlexDagger_ShadowSteps")
 -- local useshadowstep = dark_addon.settings.fetch('FlexDagger_useshadowstep', false)
  local enemyCount = enemies.around(8)
    if enemyCount == 0 then enemyCount = 1 end
if azer() then return end
if itemss() then return end

 if castable(SB.ShadowStep) and target.distance <= 25 and (ShadowSteps == "shift" and modifier.shift) or (ShadowSteps == "control" and modifier.control) or (ShadowSteps == "alt" and modifier.alt) and spell(SB.ShadowStep).charges >= 1 and not lastcast(SB.ShadowStep) then
      return cast(SB.ShadowStep, "target")
    end
	
if player.alive then

   local Feint = dark_addon.settings.fetch("FlexDagger_Feint", 30)
   if Feint and -player.health <= Feint and player.power.energy.actual >= 35 then
    return cast(SB.Feint)
   end
    

    local Evasion = dark_addon.settings.fetch("FlexDagger_Evasion", 15)
    if not toggle("survivetest", false) then 
	if Evasion and -player.health <= Evasion then
     return cast(SB.Evasion)
    end
	end
	
   local CrimsonVial = dark_addon.settings.fetch("FlexDagger_CrimsonVial", 45)
   if CrimsonVial and -player.health <= CrimsonVial then
    return cast(SB.CrimsonVial)
   end
	
	
end
if target.enemy and target.alive and target.distance < 8 then
 auto_attack()
end	

if target.alive and target.enemy and player.alive and not -target.debuff(SB.Blind) and not player.channeling()  then

 if talent(3, 3) and castable(SB.MarkForDeath) then
   if Target.Time_To_Die > 35 then
   
   if castable(SB.SecretTechnique) and player.power.combopoints.actual <= 3 then
    return cast(SB.MarkForDeath, 'target')
   end
   
   if spell(SB.SecretTechnique).cooldown > 15 then 
   
   if castable(SB.Eviscerate) and player.power.combopoints.actual <= 3 then
       return cast(SB.MarkForDeath, 'target')
   end
   
   end
  end
 end
 
if spell(SB.SymbolsOfDeath).cooldown == 15 and castable(SB.ShadowDance) and not player.buff(SB.ShadowDance).up then
	return cast(SB.ShadowDance)
	end	
		
	if (not castable(SB.Backstab) and not castable(SB.Shadowstrike) and not castable(SB.NightBlade)) or not castable(SB.Backstab) and not castable(SB.NightBlade) then
	if not castable(SB.SecretTechnique) and -spell(SB.Eviscerate) == 0 and player.power.combopoints.actual >= 5 and player.power.energy.actual >= 25 then
	return cast(SB.Eviscerate, "Target") 
	else
	if castable(SB.SecretTechnique) and player.power.combopoints.actual >= 5 and player.power.energy.actual >= 30 then
	return cast(SB.SecretTechnique, "Target") 
		end		
		end
end

if toggle('cooldowns') then
	if castable(SB.ShadowBlades) then
	return cast(SB.ShadowBlades)
	end	
end

		-- if toggle("VanishAttack", false) and castable(SB.Vanish) then 
	-- return cast(SB.Vanish) 
	-- end		

        if (not player.buff(SB.Stealth) or player.buff(SB.VanishBuff)) and player.power.energy.actual >= 40 and target.distance >= 10 and target.distance <= 30 and -spell(SB.ShurikenToss) == 0 then
            return cast(SB.ShurikenToss, "Target")
        end

	if enemyCount <= 1 then		
			--if spell(SB.Combustion).cooldown > 41
			
	if player.power.energy.actual >= 35 then
	if -spell(SB.SymbolsOfDeath) == 0 and castable(SB.ShadowDance) then
	return cast(SB.SymbolsOfDeath) 
	end	
	
	if player.buff(SB.SymbolsOfDeath).up and not player.buff(SB.ShadowDance).up and castable(SB.ShadowDance) then
	return cast(SB.ShadowDance) 
	end	
	end
	
	if spell(SB.ShadowDance).cooldown > 40 and castable(SB.SymbolsOfDeath) and not player.buff(SB.SymbolsOfDeath).up then
	return cast(SB.SymbolsOfDeath)
	end
	
	
	if  talent(7, 2) then
	if castable(SB.SecretTechnique) and player.power.combopoints.actual >= 5 and player.power.energy.actual >= 30 and target.debuff(SB.NightBlade).up then
	return cast(SB.SecretTechnique, "Target") 
	end
	end
	
	
	if player.buff(SB.ShadowDance).up then 				-- <<< AAAA
	
	if player.power.combopoints.actual < 5 then 
	if player.power.energy.actual >= 25 and castable(SB.Shadowstrike) then
	return cast(SB.Shadowstrike, "Target")
	else
	if not talent(1, 3) then
	if player.power.energy.actual >= 25 and not castable(SB.Shadowstrike) and castable(SB.Backstab) then
	return cast(SB.Backstab, "Target")
	end
	end
	if talent(1, 3) then
	if player.power.energy.actual >= 35 and not castable(SB.Shadowstrike) and castable(SB.Gloomblade) then
	return cast(SB.Gloomblade, "Target")
	end
	end
	end
	end
	
	
	if player.power.combopoints.actual >= 5 and player.power.energy.actual >= 25 and target.debuff(SB.NightBlade).remains <= 3 then
	return cast(SB.NightBlade, "Target") 
	end
	
	
				
	if not castable(SB.SecretTechnique) and -spell(SB.Eviscerate) == 0 and player.power.combopoints.actual >= 5 and player.power.energy.actual >= 25 then
	return cast(SB.Eviscerate, "Target") 
	end
	
	
	
	end 													-- >>> AAA
	
	
	if not player.buff(SB.ShadowDance).up then
	
	
	if player.power.combopoints.actual < 5 then 
	
	if not talent(1, 3) then
	if player.power.energy.actual >= 25 and not castable(SB.Shadowstrike) and castable(SB.Backstab) then
	return cast(SB.Backstab, "Target")
	end
	end
	
	if talent(1, 3) then
	if player.power.energy.actual >= 35 and not castable(SB.Shadowstrike) and castable(SB.Gloomblade) then
	return cast(SB.Gloomblade, "Target")
	end
	end
	
	end
	
	
	
	if player.power.combopoints.actual >= 5 and player.power.energy.actual >= 25 and target.debuff(SB.NightBlade).remains <= 3 then
	return cast(SB.NightBlade, "Target") 
	end

	
				
	if not castable(SB.SecretTechnique) and -spell(SB.Eviscerate) == 0 and player.power.combopoints.actual >= 5 and player.power.energy.actual >= 25 then
	return cast(SB.Eviscerate, "Target") 
	end
	
	end
	
	end

	if enemyCount >= 2 then
		if -spell(SB.SymbolsOfDeath) == 0 and castable(SB.ShadowDance) then
	return cast(SB.SymbolsOfDeath) 
	end	
	
	if player.buff(SB.SymbolsOfDeath).up and not player.buff(SB.ShadowDance).up and castable(SB.ShadowDance) then
	return cast(SB.ShadowDance) 
	end	
	
	
	if spell(SB.ShadowDance).cooldown > 40 and castable(SB.SymbolsOfDeath) and not player.buff(SB.SymbolsOfDeath).up then
	return cast(SB.SymbolsOfDeath)
	end

	if player.power.combopoints.actual < 5 then 
	
	if player.power.energy.actual >= 25 and castable(SB.ShurikenStorm) then
	return cast(SB.ShurikenStorm, "Target")
	end
	
	end
		
	if player.power.combopoints.actual >= 5 and player.power.energy.actual >= 25 and target.debuff(SB.NightBlade).remains <= 3 then
	return cast(SB.NightBlade, "Target") 
	end
	
	if player.buff(SB.SymbolsOfDeath).up and player.buff(SB.ShadowDance).up then
	
	if talent(7,2) and castable(SB.SecretTechnique) and player.power.combopoints.actual >= 5 and player.power.energy.actual >= 30 and target.debuff(SB.NightBlade).up then
	return cast(SB.SecretTechnique, "Target") 
	end
	
	else

	if -spell(SB.Eviscerate) == 0 and player.power.combopoints.actual >= 5 and player.power.energy.actual >= 25 then
	return cast(SB.Eviscerate, "Target") 
	end
	end
	end
	
	
	if enemyCount >= 3 then
		if -spell(SB.SymbolsOfDeath) == 0 and castable(SB.ShadowDance) then
	return cast(SB.SymbolsOfDeath) 
	end	
	
	if player.buff(SB.SymbolsOfDeath).up and not player.buff(SB.ShadowDance).up and castable(SB.ShadowDance) then
	return cast(SB.ShadowDance) 
	end	
	
	
	if spell(SB.ShadowDance).cooldown > 40 and castable(SB.SymbolsOfDeath) and not player.buff(SB.SymbolsOfDeath).up then
	return cast(SB.SymbolsOfDeath)
	end
	
	if talent(7,2) and castable(SB.SecretTechnique) and player.power.combopoints.actual >= 5 and player.power.energy.actual >= 30 and (player.buff(SB.SymbolsOfDeath).up or player.buff(SB.ShadowDance).up) then
	return cast(SB.SecretTechnique, "Target") 
	end
	
	if talent(7,3) and castable(SB.ShurikenTornado) then 
		return cast(SB.ShurikenTornado) 
	end
	

				
	if not castable(SB.SecretTechnique) and -spell(SB.Eviscerate) == 0 and player.power.combopoints.actual >= 5 and player.power.energy.actual >= 25 then
	return cast(SB.Eviscerate, "Target") 
	end
end
	
  -- SB.ShurikenTornado = 21188
-- SB.Gloomblade = 19235
	end



-- if useshadowstep and player.buff(SB.VanishBuff).up and castable(SB.ShadowStep) and not lastcast(SB.Shadowstrike) and target.distance <= 25 then 
-- return cast(SB.ShadowStep, "Target") 
-- end

-- if toggle("VanishAttack", false) then
-- if player.buff(SB.VanishBuff).up and castable(SB.Shadowstrike) then 
-- return cast(SB.Shadowstrike, "Target") 
-- end
-- end



end

if GetCVar("DropCombat") == '0' then
print('Cannot Interrupt Combat!')
end
end

local function resting()

        if talent(2, 1) or talent(2, 3) then
            SB.Stealth = 1784
        end
        if talent(2, 2) then
            SB.Stealth = 115191
        end
if cvarss then return end
if survivetest then return end
  local enemyCount = enemies.around(8)
  if enemyCount == 0 then enemyCount = 1 end
  local ShadowSteps = dark_addon.settings.fetch("FlexDagger_ShadowSteps")
 -- local useshadowstep = dark_addon.settings.fetch('FlexDagger_useshadowstep', false)
  local nameplates = dark_addon.settings.fetch('FlexDagger_usenameplates', false)
  local seeplates = GetCVar("nameplateShowEnemies")
  
dark_addon.interface.status_extra('      Targets#:' .. enemyCount .. ' |cff5BFF33   Distance:|r ' .. target.distance)
 if target.distance <= 25 and (ShadowSteps == "shift" and modifier.shift) or (ShadowSteps == "control" and modifier.control) or (ShadowSteps == "alt" and modifier.alt) and -spell(SB.ShadowStep) == 0 then
      return cast(SB.ShadowStep, "Target")
    end
	
if player.alive then
  if nameplates == true  and seeplates == '0' then
     SetCVar("nameplateShowEnemies",1)
  end

  if nameplates == false and seeplates == '1' then
     SetCVar("nameplateShowEnemies",0)
  end
  
  if toggle('Autostealth', false) and not player.buff(SB.Stealth).up then
  return cast(SB.Stealth)
  end
  
end
if player.alive then

   local Feint = dark_addon.settings.fetch("FlexDagger_Feint", 30)
   if Feint and -player.health <= Feint and player.power.energy.actual >= 35 then
    return cast(SB.Feint)
   end
    

   local Evasion = dark_addon.settings.fetch("FlexDagger_Evasion", 15)
    if not toggle("survivetest", false) then  
 if Evasion and -player.health <= Evasion then
    return cast(SB.Evasion)
   end
end
	
   local CrimsonVial = dark_addon.settings.fetch("FlexDagger_CrimsonVial", 45)
   if CrimsonVial and -player.health <= CrimsonVial then
    return cast(SB.CrimsonVial)
   end
	
	
end

--if player.alive and target.alive and target.enemy and not -target.debuff(SB.Blind) and not player.channeling() then


-- if useshadowstep and player.buff(SB.VanishBuff).up and castable(SB.ShadowStep) and (not lastcast(SB.Shadowstrike)) and target.distance <= 25 then 
-- return cast(SB.ShadowStep, "Target") 
-- end

-- if toggle("VanishAttack", false) then
-- if player.buff(SB.VanishBuff).up and castable(SB.Shadowstrike) then 
-- return cast(SB.Shadowstrike, "Target") 
-- end
-- end

--end


end

  
	  
	  
local function interface()
if (GetLocale() == "ruRU") then

 local settings = {
    key = 'FlexDagger',
    title = 'Subtlety',
    width = 250,
    height = 320,
    resize = true,
    show = false,
    template = {
      { type = 'header', text = 'Шд рога', align= 'center'},
      { type = 'text', text = 'Рекоменд. таланты: 2 - 3 - 2 - 0 - 0 - 3 - 1/2' },
      { type = 'rule' },
      { type = 'text', text = 'Основные настройки' },
	  -- { key = 'useshadowstep', type = 'checkbox', text = 'Use Shadow Step on Vanish', desc = '' },
      { key = 'usenameplates', type = 'checkbox', text = 'ВКЛ\ВЫКЛ Nameplate (Не Реком.)', desc = 'Считает кол-в врагов через Nameplate' },
     -- { key = 'checkbox_for_something...', type = 'checkbox', text = 'хххххххххххх', desc = 'ууууууууууу' },
	        { type = 'rule' },
		{ type = 'header', text = "Сейвы!", align= 'center' },
		{ key = 'CrimsonVial', type = 'spinner', text = 'Авто Флакон', desc = 'On HP %', default = 45, min = 1, max = 100, step = 15 }, 
		{ key = 'Evasion', type = 'spinner', text = 'Авто Ускользание', desc = 'On HP % (! Не работает пока вкл EVC !)', default = 30, min = 1, max = 100, step = 10 }, 
		{ key = 'Feint', type = 'spinner', text = 'Авто Увертка', desc = 'On HP %', default = 30, min = 1, max = 100, step = 10 }, 				
		
		
		{ type = 'rule' },		
      { type = 'header', text = 'Настройки биндов.', align= 'center'},	  
			{ key = 'ShadowSteps', type = 'dropdown', text = 'ШС по бинду', desc = '', default = 'alt',
				list = {
							{ key = 'empty', text = 'Выкл' },
							{ key = 'control', text = 'CTRL' },
							{ key = 'alt', text = 'ALT' },
							{ key = 'shift', text = 'SHIFT' },
					    } },

    }
  }

  configWindow = dark_addon.interface.builder.buildGUI(settings)

  dark_addon.interface.buttons.add_toggle(
    {
      name = "settings",
      label = "Настройки профиля",
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
  
  
  
  -- dark_addon.interface.buttons.add_toggle(
            -- {
            -- name = "VanishAttack",
            -- label = "Vanish to Attack",
            -- on = {
              -- label = "Vanish SStrike ON",
              -- color = dark_addon.interface.color.orange,
              -- color2 = dark_addon.interface.color.ratio(dark_addon.interface.color.dark_orange, 0.7)
            -- },
            -- off = {
              -- label = "Vanish SStrike  OFF",
              -- color = dark_addon.interface.color.red,
              -- color2 = dark_addon.interface.color.ratio(dark_addon.interface.color.red, 0.5)
            -- }
          -- }
  -- )
  
  
  dark_addon.interface.buttons.add_toggle(
            {
            name = "Autostealth",
            label = "Авто Инвиз",
            on = {
              label = "Авто Инвиз ON",
              color = dark_addon.interface.color.orange,
              color2 = dark_addon.interface.color.ratio(dark_addon.interface.color.dark_orange, 0.7)
            },
            off = {
              label = "Авто Инвиз OFF",
              color = dark_addon.interface.color.red,
              color2 = dark_addon.interface.color.ratio(dark_addon.interface.color.red, 0.5)
            }
          }
  )
  dark_addon.interface.buttons.add_toggle(
            {
            name = "pveinterrupt",
            label = "Кикаем всё подряд.",
            on = {
              label = "Пве Кик ON",
              color = dark_addon.interface.color.orange,
              color2 = dark_addon.interface.color.ratio(dark_addon.interface.color.dark_orange, 0.7)
            },
            off = {
              label = "Пве Кик OFF",
              color = dark_addon.interface.color.red,
              color2 = dark_addon.interface.color.ratio(dark_addon.interface.color.red, 0.5)
            }
          }
  )   
  
  dark_addon.interface.buttons.add_toggle(
            {
            name = "survivetest",
            label = "10% HP:Ускользание -> Плащ.",
            on = {
              label = "EVC ON",
              color = dark_addon.interface.color.orange,
              color2 = dark_addon.interface.color.ratio(dark_addon.interface.color.dark_orange, 0.7)
            },
            off = {
              label = "EVC OFF",
              color = dark_addon.interface.color.red,
              color2 = dark_addon.interface.color.ratio(dark_addon.interface.color.red, 0.5)
            }
          }
  )  

else 
    local settings = {
    key = 'FlexDagger',
    title = 'Subtlety',
    width = 250,
    height = 320,
    resize = true,
    show = false,
    template = {
      { type = 'header', text = 'Subtlety Settings', align= 'center'},
      { type = 'text', text = 'Recomend Talents: Any' },
      { type = 'rule' },
      { type = 'text', text = 'General Settings' },
	  -- { key = 'useshadowstep', type = 'checkbox', text = 'Use Shadow Step on Vanish', desc = '' },
      { key = 'usenameplates', type = 'checkbox', text = 'Show Enemy Nameplates', desc = 'Use name plates to count baddies' },
     -- { key = 'checkbox_for_something...', type = 'checkbox', text = 'хххххххххххх', desc = 'ууууууууууу' },
	        { type = 'rule' },
		{ type = 'header', text = "Save Ur Ass!", align= 'center' },
		{ key = 'CrimsonVial', type = 'spinner', text = 'Auto CrimsonVial', desc = 'On HP %', default = 45, min = 1, max = 100, step = 15 }, 
		{ key = 'Evasion', type = 'spinner', text = 'Auto Evasion', desc = 'On HP % (! Not working while EVC ON !)', default = 30, min = 1, max = 100, step = 10 }, 
		{ key = 'Feint', type = 'spinner', text = 'Auto Feint', desc = 'On HP %', default = 30, min = 1, max = 100, step = 10 }, 				
		
		
		{ type = 'rule' },		
      { type = 'header', text = 'Modifier Settings', align= 'center'},	  
			{ key = 'ShadowSteps', type = 'dropdown', text = 'ShadowStep', desc = '', default = 'alt',
				list = {
							{ key = 'empty', text = 'Off' },
							{ key = 'control', text = 'CTRL' },
							{ key = 'alt', text = 'ALT' },
							{ key = 'shift', text = 'SHIFT' },
					    } },

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
  
  
  
  -- dark_addon.interface.buttons.add_toggle(
            -- {
            -- name = "VanishAttack",
            -- label = "Vanish to Attack",
            -- on = {
              -- label = "Vanish SStrike ON",
              -- color = dark_addon.interface.color.orange,
              -- color2 = dark_addon.interface.color.ratio(dark_addon.interface.color.dark_orange, 0.7)
            -- },
            -- off = {
              -- label = "Vanish SStrike  OFF",
              -- color = dark_addon.interface.color.red,
              -- color2 = dark_addon.interface.color.ratio(dark_addon.interface.color.red, 0.5)
            -- }
          -- }
  -- )
  
  
  dark_addon.interface.buttons.add_toggle(
            {
            name = "Autostealth",
            label = "Auto Stealth",
            on = {
              label = "Auto Stealth ON",
              color = dark_addon.interface.color.orange,
              color2 = dark_addon.interface.color.ratio(dark_addon.interface.color.dark_orange, 0.7)
            },
            off = {
              label = "Auto Stealth OFF",
              color = dark_addon.interface.color.red,
              color2 = dark_addon.interface.color.ratio(dark_addon.interface.color.red, 0.5)
            }
          }
  )
  dark_addon.interface.buttons.add_toggle(
            {
            name = "pveinterrupt",
            label = "Auto Kick Everything.",
            on = {
              label = "Kick Everything ON",
              color = dark_addon.interface.color.orange,
              color2 = dark_addon.interface.color.ratio(dark_addon.interface.color.dark_orange, 0.7)
            },
            off = {
              label = "Kick Everything OFF",
              color = dark_addon.interface.color.red,
              color2 = dark_addon.interface.color.ratio(dark_addon.interface.color.red, 0.5)
            }
          }
  )   
  
  dark_addon.interface.buttons.add_toggle(
            {
            name = "survivetest",
            label = "10% HP:Evasion -> CLOAK.",
            on = {
              label = "EVC ON",
              color = dark_addon.interface.color.orange,
              color2 = dark_addon.interface.color.ratio(dark_addon.interface.color.dark_orange, 0.7)
            },
            off = {
              label = "EVC OFF",
              color = dark_addon.interface.color.red,
              color2 = dark_addon.interface.color.ratio(dark_addon.interface.color.red, 0.5)
            }
          }
  )  
end
  
end

dark_addon.rotation.register({
  spec = dark_addon.rotation.classes.rogue.subtlety,
  name = 'subt',
  label = 'Dagger in A$$',
  combat = combat,
  resting = resting,
  interface = interface
})



-- -- test = { 314993, 310224, 284219, 294195, 294929 }

-- dark_addon.rotation.spellbook.smart = {
-- 1 = { 314993, 310224, 284219, 294195, 294929 }
-- }
-- local smart = dark_addon.rotation.spellbook.smart
  -- if player.debuff(smart.1) then do stuff end
