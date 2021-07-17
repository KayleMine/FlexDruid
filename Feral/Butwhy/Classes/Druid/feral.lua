local dark_addon = dark_interface
local SB = dark_addon.rotation.spellbooks.druid
local p = dark_addon.rotation.spellbooks.p
local s = dark_addon.rotation.spellbooks.s
local l = dark_addon.rotation.spellbooks.l
local pn = dark_addon.rotation.spellbooks.pn
local f = dark_addon.rotation.spellbooks.f
local d = dark_addon.rotation.spellbooks.d
local t = dark_addon.rotation.spellbooks.t
local e = dark_addon.rotation.spellbooks.e
local a = dark_addon.rotation.spellbooks.a
local ef = dark_addon.rotation.spellbooks.ef
local rf = dark_addon.rotation.spellbooks.rf
local eb = dark_addon.rotation.spellbooks.eb
local c = dark_addon.rotation.spellbooks.c
local h = dark_addon.rotation.spellbooks.h
local cy = dark_addon.rotation.spellbooks.cy
local s = dark_addon.rotation.spellbooks.s
local m = dark_addon.rotation.spellbooks.m
local rp = dark_addon.rotation.spellbooks.rp
local ro = dark_addon.rotation.spellbooks.ro
local g = dark_addon.rotation.spellbooks.g
local gp = dark_addon.rotation.spellbooks.gp
local ct = dark_addon.rotation.spellbooks.ct
local rp = dark_addon.rotation.spellbooks.rp
local hb = dark_addon.rotation.spellbooks.hb
local rot = dark_addon.rotation.spellbooks.rot
local v = dark_addon.rotation.spellbooks.v
local fu = dark_addon.rotation.spellbooks.fu
local hogg = dark_addon.rotation.spellbooks.hogg
local soot = dark_addon.rotation.dispellbooks.soothe
local stund = dark_addon.rotation.CC
local flashl = dark_addon.rotation.spellbooks.flashlig
local holylight = dark_addon.rotation.spellbooks.holyli
local repentr = dark_addon.rotation.spellbooks.repa
local _, Feral = ...
-- essences 


	SB.AnimaofDeath1 = 294926
		SB.AnimaofDeath2 = 300002				--- Draw upon your vitality to sear your foes, dealing 10% of your maximum health in Fire damage to all nearby enemies and heal for 10% of your maximum health per enemy hit, up to 50% of your maximum health.
			SB.AnimaofDeath3 = 300003

	SB.BloodoftheEnemy1 = 297108
		SB.BloodoftheEnemy2 = 298273			--- The Heart of Azeroth erupts violently, dealing 18094 Shadow damage to enemies within 12 yds. You gain 25% critical strike chance against the targets for 10 sec, and increases your critical hit damage by 25% for 5 sec.
			SB.BloodoftheEnemy3 = 298277

	SB.ReapingFlames1 = 310690
		SB.ReapingFlames2 = 311194 --- Burn your target with a bolt of Azerite, dealing 0 Fire damage. If the target has less than 20% health or more than 80% health, the cooldown is reduced by 30 sec. If Reaping Flames kills an enemy, its cooldown is lowered to 5 sec and it will deal 100% increased damage on its next use.
			SB.ReapingFlames3 = 311195

	SB.GuardianofAzeroth1 = 295840
		SB.GuardianofAzeroth2 = 299355 --- Call upon Azeroth to summon a Guardian of Azeroth for 30 sec who impales your target with spikes of Azerite every 2.5 sec that deal [0 * (1 + Versatility) * (1.25)] Fire damage. Every 8 sec, the Guardian launches a volley of Azerite Spikes at its target, dealing 8 Fire damage to all nearby enemies. Each time the Guardian of Azeroth casts a spell, you gain 2% Haste, stacking up to 5 times. This effect ends when the Guardian of Azeroth despawns.
			SB.GuardianofAzeroth3 = 299358
	
	SB.FocusedAzeriteBeam1 = 295258
		SB.FocusedAzeriteBeam2 = 299336 --- Focus excess Azerite energy into the Heart of Azeroth, then expel that energy outward, dealing 92680 Fire damage to all enemies in front of you over 3 sec.
			SB.FocusedAzeriteBeam3 = 299338
	
	SB.MemoryofLucidDreams1 = 298357
		SB.MemoryofLucidDreams2 = 299372 --- Clear your mind and attune yourself with the Heart of Azeroth, increasing your [Mana][Energy][Maelstrom] generation rate by 100% and your Leech by 0 for 15 sec.
			SB.MemoryofLucidDreams3 = 299374
	
	SB.PurifyingBlast1 = 295337
		SB.PurifyingBlast2 = 299345 --- Call down a purifying beam upon the target area, dealing [4112 * (1 + Versatility) * 7] Fire damage over 6 sec. Has a low chance to immediately annihilate any specimen deemed unworthy by MOTHER.When an enemy dies within the beam, your damage is increased by 10% for 8 sec. Any Aberration struck by the beam is stunned for 3 sec.
			SB.PurifyingBlast3 = 299347
	
	SB.MomentofGlory1 = 311203
		SB.MomentofGlory2 = 311302 --- Release a wave of energy from your Heart of Azeroth, increasing the damage all party members within 15 yds deal with Azerite Essences by 45% and their Speed by 3 for the next 20 sec.
			SB.MomentofGlory3 = 311303
	
	SB.ConcentratedFlame1 = 295373
		SB.ConcentratedFlame2 = 299349 --- Blast your target with a ball of concentrated flame
			SB.ConcentratedFlame3 = 299353
	
	SB.TheUnboundForce1 = 298452
		SB.TheUnboundForce2 = 299376 --- Unleash the forces within the Heart of Azeroth, causing shards of Azerite to strike your target for 13017.88515 Fire damage over 2 sec. This damage is increased by 300% if it critically strikes.
			SB.TheUnboundForce3 = 299378
	
	SB.WorldveinResonance1 = 295186
		SB.WorldveinResonance2 = 298628 --- Concentrate energy into the Heart of Azeroth, immediately causing 3 Lifeblood Shards to erupt from the nearby ground for 18 sec, and incease the primary stat gained from Lifeblood Shards by 300% for 18 sec.
			SB.WorldveinResonance3 = 299334

-- Книга заклинаний
SB.Renewal = 108238
SB.Regrowth = 8936
SB.CatForm = 768
SB.Dash = 1850
SB.BearForm = 5487
SB.Eclipse = 279619
SB.Growl = 6795
SB.Revive = 50769
SB.TravelForm = 783
SB.AquaticForm = 276012
SB.FlightForm = 165962
SB.EntanglingRoots = 339
SB.Barkskin = 22812
SB.Rebirth = 20484
SB.Innervate = 29166
SB.MasteryStarlight = 77492
SB.SolarBeam = 78675
SB.Relentless = 196029
SB.GladiatorsMedallion = 208683
SB.Adaptation = 214027
SB.IronfeatherArmor = 233752
SB.PricklingThorns = 200549
SB.CrescentBurn = 200567
SB.MoonkinAura = 209740
SB.DeepRoots = 233755
SB.WildCharge = 102401
SB.MightyBash = 5211
SB.BrutalSlash = 202028
SB.Rip = 1079
SB.TigersFury = 5217
SB.Rake = 1822
SB.FerociousBite = 22568
SB.Shred = 5221
SB.Thrash = 77758
SB.Berserk = 106951
SB.Swipe = 213764
SB.PredatorySwiftness = 16974
SB.Mangle = 33917
SB.Prowl = 5215
SB.RemoveCorruption = 2782
SB.SurvivalInstincts = 61336
SB.OmenofClarity = 16864
SB.StampedingRoar = 106898
SB.InfectedWounds = 48484
SB.Soothe = 2908
SB.Maim = 22570
SB.Hibernate = 2637
SB.SkullBash = 106839
SB.MasteryRazorClaws = 77493
SB.WarStomp = 20549
SB.PrimalWrath = 285381
SB.ConcentratedFlame = 295373
SB.WorldveinResonance = 295186
SB.Rejuvenation = 774
SB.Swiftmend = 18562
SB.SavageRoar = 52610
SB.Clearcasting = 263725
SB.TigerDash = 252216
SB.Meld = 58984
SB.MoonFire = 155625
SB.NaturesCure = 88423
SB.AutoAttack = 6603
SB.Typhoon = 132469
SB.RemoveCorruption = 2782
SB.Soothe = 2908
SB.Barkskin = 22812
SB.SurvivalInstincts = 61336
SB.Moonfire = 8921
SB.Regrowth = 8936
SB.Clearcasting = 16870
SB.TravelForm = 783
SB.Hibernate = 2637
SB.TigerDash = 252216
SB.MoonkinForm = 24858
SB.SolarWrath = 190984
SB.Starsurge = 78674
SB.LunarStrike = 194153
SB.Sunfire = 93402
SB.RemoveCorruption = 2782
SB.Starfall = 191034
SB.Soothe = 2908
SB.SolarBeam = 78675
SB.WarriorOfElune = 202425
SB.IncarnationB = 102560
SB.FuryOfElune = 202770
SB.Flap = 164862
SB.MoonfireDebuff = 164812
SB.SunfireDebuff = 164815
SB.LunarEmpowerment = 164547
SB.SolarEmpowerment = 164545
SB.CatForm = 768
SB.FerociousBite = 22568
SB.RakeDebuff = 155722
SB.ThrashCat = 106830
SB.TigersFury = 5217
SB.Prowl = 5215
SB.Rip = 1079
SB.SwipeCat  =  106785
SB.Berserk = 106951
SB.PredatorySwiftness = 16974
SB.Shred = 5221
SB.Dash = 1850
SB.SavageRoar = 52610
SB.ClearcastingF = 135700
SB.Maul = 6807
SB.ThrashBear = 77758
SB.ThrashDebuff = 192090
SB.Ironfur = 192081
SB.SwipeBear = 213771
SB.FrenziedRegeneration = 22842
SB.StampedingRoar = 106898
SB.Mangle = 33917
SB.BristlingFur = 155835
SB.WildCharge = 16979
SB.Pulverize = 80313
SB.StampedingRoar = 77761
SB.GalacticGuardian = 203964
SB.Rejuvenation = 774
SB.Swiftmend = 18562
SB.Lifebloom = 33763
SB.NaturesCure = 88423
SB.WildGrowth = 48438
SB.Innervate = 29166
SB.Ironbark = 102342
SB.Revitalize = 212040
SB.Efflorescence = 145205
SB.Tranquility = 740
SB.CenarionWard = 102351
SB.IncarnationR = 33891
SB.Flourish = 197721
SB.TranquilityBuff = 157982
SB.UrsolsVortex = 102793
SB.Banish = 710
SB.CallDreadstalkers = 104316
SB.Cataclysm = 152108
SB.ChaosBolt = 116858
SB.CreateHealthstone = 6201
SB.CreateSoulwell = 29893
SB.ChaosNova = 179057
SB.DeathBolt = 264106
SB.Demonbolt = 157695
SB.DemonicCircle = 48018
SB.Fireball = 171764
SB.DemonicGateway = 111771
SB.DrainLife = 234153
SB.DrainSoul = 198590
SB.Fear = 5782
SB.HandofGuldan = 105174
SB.Haunt = 48181
SB.HealthFunnel = 755
SB.Immolate = 348
SB.ImprovedDreadstalkers = 196272
SB.Incinerate = 29722
SB.NetherWard = 212295
SB.RainofFire = 5740
SB.SeedOfCorruption = 27243
SB.ShadowBolt = 232670
SB.Shadowfury = 30283
SB.SummonDemon = 10
SB.SummonDemonicTyrant = 265187
SB.PhantomSingularity = 205179
SB.Legsweep = 119381
SB.Bash = 148300
SB.SoothingMist = 115175
SB.EssenceFont = 191837
SB.CracklingJadeLightning = 117952
SB.Penance = 47540
SB.DivineHymn = 64843
SB.Tranquility = 740
SB.LightningLaso = 204437
SB.Mindcontrol = 136287
SB.Berserking = 23505
SB.Incarnation = 102543
SB.KidneyDebuff = 408
SB.SmokeBombDebuff = 212182
SB.DivineShield = 642
SB.LifeCocoon = 116849
SB.BlessingofSacrifice = 6940
SB.BlessingofProtectionBuff = 1022
SB.PainSuppression = 33206
SB.GuardianSpirit = 47788
SB.RayofHopeBuff = 232707
SB.PowerWordBarrierBuff = 81782
SB.Polymorph = 118
SB.Flamestrike = 2120
SB.Frostbolt = 116
SB.Flurry = 44614
SB.GlacialSpike = 199786
SB.Blizzard = 190356
SB.Ebonbolt = 257537
SB.ArcaneBlast = 30451
SB.Evocation = 12051
SB.ArcaneMissiles = 5143
SB.Pyroblast = 11366
SB.RayofFrost = 205021
SB.RingofFrost = 113724
SB.RuneofPower = 116011
SB.EyeBeam = 198013
SB.vify = 116670
SB.fuse = 218912
SB.velopingMist = 124682
SB.HolyLight = 82326
SB.FlashofLight = 19750
SB.DivineFavor = 210294
SB.Redemption = 7328
SB.FlashHeal = 2061
SB.Heal = 2060
SB.GreaterHeal = 290106
SB.MindControl = 605
SB.Smite = 585
SB.ShadowMend = 186263
SB.DarkVoid = 263346
SB.Mindflay = 15407
SB.MindSear = 48045
SB.MindBlast = 8092
SB.ShadowWordVoid = 205351
SB.GreaterPyro = 203286
SB.ChainLightning = 188443
SB.HealingSurge = 8004
SB.ChainHeal = 1064
SB.HealingWave = 77472
SB.HealingRain = 73920
SB.Hex = 51514
SB.LavaBurst = 51505
SB.LightningBolt = 188196
SB.Cyclone = 209753
SB.GreaterPyroblast = 203286
SB.Roots = 66070
SB.GroundTotem = 8178
SB.UberStrike = 167385
SB.GreaterBless = 203538
SB.FeralFrenzy = 274837
SB.Iris = 299336

local function combat()
-- if not UIParent:IsShown() then
   -- RunMacroText("/reload")
-- end
--Кик в цель
	local Kick0 = dark_addon.settings.fetch('KiraFeral_settings2_Kick0', true)
	local Kick1 = dark_addon.settings.fetch('KiraFeral_settings2_Kick1', true)
	local Kick2 = dark_addon.settings.fetch('KiraFeral_settings2_Kick2', true)
	local Kick3 = dark_addon.settings.fetch('KiraFeral_settings2_Kick3', true)
	local Kick4 = dark_addon.settings.fetch('KiraFeral_settings2_Kick4', true)
	local Kick5 = dark_addon.settings.fetch('KiraFeral_settings2_Kick5', true)
	local Kick6 = dark_addon.settings.fetch('KiraFeral_settings2_Kick6', true)
	local Kick7 = dark_addon.settings.fetch('KiraFeral_settings2_Kick7', true)
	local Kick8 = dark_addon.settings.fetch('KiraFeral_settings2_Kick8', true)
	local Kick9 = dark_addon.settings.fetch('KiraFeral_settings2_Kick9', true)
	local Kick10 = dark_addon.settings.fetch('KiraFeral_settings2_Kick10', true)
	local Kick11 = dark_addon.settings.fetch('KiraFeral_settings2_Kick11', true)
	local Kick12 = dark_addon.settings.fetch('KiraFeral_settings2_Kick12', true)
	local Kick13 = dark_addon.settings.fetch('KiraFeral_settings2_Kick13', true)
	local Kick14 = dark_addon.settings.fetch('KiraFeral_settings2_Kick14', true)
	local Kick15 = dark_addon.settings.fetch('KiraFeral_settings2_Kick15', true)
	local Kick16 = dark_addon.settings.fetch('KiraFeral_settings2_Kick16', true)
	local Kick17 = dark_addon.settings.fetch('KiraFeral_settings2_Kick17', true)
	local Kick18 = dark_addon.settings.fetch('KiraFeral_settings2_Kick18', true)
	local Kick19 = dark_addon.settings.fetch('KiraFeral_settings2_Kick19', true)
	local Kick20 = dark_addon.settings.fetch('KiraFeral_settings2_Kick20', true)
	local Kick21 = dark_addon.settings.fetch('KiraFeral_settings2_Kick21', true)
	local Kick22 = dark_addon.settings.fetch('KiraFeral_settings2_Kick22', true)
	local Kick23 = dark_addon.settings.fetch('KiraFeral_settings2_Kick23', true)
	local Kick24 = dark_addon.settings.fetch('KiraFeral_settings2_Kick24', true)
	local Kick25 = dark_addon.settings.fetch('KiraFeral_settings2_Kick25', true)
	local Kick26 = dark_addon.settings.fetch('KiraFeral_settings2_Kick26', true)
	local KickFocus0 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus0', true)
	local KickFocus1 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus1', true)
	local KickFocus2 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus2', true)
	local KickFocus3 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus3', true)
	local KickFocus4 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus4', true)
	local KickFocus5 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus5', true)
	local KickFocus6 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus6', true)
	local KickFocus7 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus7', true)
	local KickFocus8 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus8', true)
	local KickFocus9 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus9', true)
	local KickFocus10 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus10', true)
	local KickFocus11 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus11', true)
	local KickFocus12 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus12', true)
	local KickFocus13 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus13', true)
	local KickFocus14 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus14', true)
	local KickFocus15 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus15', true)
	local KickFocus16 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus16', true)
	local KickFocus17 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus17', true)
	local KickFocus18 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus18', true)
	local KickFocus19 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus19', true)
	local KickFocus20 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus20', true)
	local KickFocus21 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus21', true)
	local KickFocus22 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus22', true)
	local KickFocus23 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus23', true)
	local KickFocus24 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus24', true)
	local KickFocus25 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus25', true)
	local KickFocus26 = dark_addon.settings.fetch('KiraFeral_settings2_KickFocus26', true)
	local flex = dark_addon.settings.fetch('KiraFeral_settings_flex', false)
	local flex2 = dark_addon.settings.fetch('KiraFeral_settings_flex2', false)
	local flex3 = dark_addon.settings.fetch('KiraFeral_settings_flex3', false)
	local userake = dark_addon.settings.fetch('KiraFeral_settings_dotall')		
	
if target.alive and target.enemy and player.alive and not player.channeling() then
  local regrowhealth = dark_addon.settings.fetch('KiraFeral_settings2_regrowhealth',30)
  local intpercentlow = dark_addon.settings.fetch('KiraFeral_settings_intpercentlow',10)
  local intpercenthigh = dark_addon.settings.fetch('KiraFeral_settings_intpercenthigh',65)
  -- Проверка дистанции до цели
    local enemyCount = enemies.around(8)
    if enemyCount == 0 then enemyCount = 1 end
    dark_addon.interface.status_extra('T#:' .. enemyCount .. ' D:' .. target.distance)
  
  -- Начать Автоатаку
  if target.enemy and target.alive and target.distance < 8 then
    auto_attack()
  end  	
  
  -- local userakeaoe = dark_addon.settings.fetch('KiraFeral_settings_Rake_AOE', true)
  -- if userakeaoe and target.alive and target.enemy and player.alive and target.distance < 8 then
		   -- local userake = true 
		   -- local index = 0
		   -- local NotMain = true
		   -- local MainTarget = UnitGUID("target")
		   -- TargetNearestEnemy()
		   -- while(NotMain)
		   -- do
			  -- local RakeDur
			  -- for i = 1, 40 do
				 -- name, a, b, c, d, dur = UnitDebuff("target", i, "PLAYER")
				 -- if (name == "Rake") then
					-- RakeDur = dur   
				 -- end
			  -- end
			  -- if userake and castable(SB.Rake) and (RakeDur == nil or RakeDur-5 < GetTime()) and target.alive then
				-- CastSpellByName("Rake")
			  -- end
			  -- TargetNearestEnemy()
			  -- if(MainTarget == UnitGUID("target") or index == 30) then
				 -- NotMain = false
			  -- end
			  -- index = index + 1
		   -- end
-- end

local BearForm = dark_addon.settings.fetch("KiraFeral_settings_BearForm", 7)
   if BearForm and -player.health <= BearForm then
        return cast(SB.BearForm)
      end
	
local Renewal = dark_addon.settings.fetch("KiraFeral_settings_Renewal", 41)
   if Renewal and -player.health <= Renewal then
        return cast(SB.Renewal)
      end
  -- Определения для рандом кика каста
  local intpercent = math.random(intpercentlow,intpercenthigh)
         
	
	if toggle("KickALL", false) and castable(SB.SkullBash, 'target') and -spell(SB.SkullBash) == 0 and target.interrupt(intpercent, false) then
    --  print('Kicked' .. intpercent)
      return cast(SB.SkullBash, 'target')
    end
	if toggle("KickALL", false) and castable(SB.MightyBash, 'target') and -spell(SB.SkullBash) > 0 and -spell(SB.MightyBash) == 0 and target.interrupt(intpercent, false) then
      --  print('Kicked' .. intpercent)
        return cast(SB.MightyBash, 'target')
    end
	
  -- Вернуться в кота
   if castable(SB.CatForm) and not -buff(SB.CatForm) and not -buff(SB.BearForm) then
 		return cast(SB.CatForm, 'player')
    end 
	
	
   --Essence start
   	local delay = 0
   
   --burst essences

	--1

    if toggle("cooldowns", false) and castable(SB.GuardianofAzeroth1) and -spell(SB.GuardianofAzeroth1) == 0 then
    return cast(SB.GuardianofAzeroth1, 'target')
    end 
	    if toggle("cooldowns", false) and castable(SB.GuardianofAzeroth2) and -spell(SB.GuardianofAzeroth2) == 0 then
        return cast(SB.GuardianofAzeroth2, 'target')
		end 
		    if toggle("cooldowns", false) and castable(SB.GuardianofAzeroth3) and -spell(SB.GuardianofAzeroth3) == 0 then
			return cast(SB.GuardianofAzeroth3, 'target')
			end 
	
	--2
	
    if toggle("cooldowns", false) and castable(SB.MemoryofLucidDreams1) and -spell(SB.MemoryofLucidDreams1) == 0 then
    return cast(SB.MemoryofLucidDreams1, 'target')
    end 
	    if toggle("cooldowns", false) and castable(SB.MemoryofLucidDreams2) and -spell(SB.MemoryofLucidDreams2) == 0 then
        return cast(SB.MemoryofLucidDreams2, 'target')
		end 
		    if toggle("cooldowns", false) and castable(SB.MemoryofLucidDreams3) and -spell(SB.MemoryofLucidDreams3) == 0 then
			return cast(SB.MemoryofLucidDreams3, 'target')
			end 

		if delay < GetTime() then
	if toggle("cooldowns", false) and castable(SB.MomentofGlory1) then
    return cast(SB.MomentofGlory1, 'player')
    end 
	    if toggle("cooldowns", false) and castable(SB.MomentofGlory2) and -spell(SB.MomentofGlory2) == 0 then
        return cast(SB.MomentofGlory2, 'target')
		end 
		    if toggle("cooldowns", false) and castable(SB.MomentofGlory3) and -spell(SB.MomentofGlory3) == 0 then
			return cast(SB.MomentofGlory3, 'target')
			end 
		delay = GetTime() + 1.5
	end	
			
	--4
	
    if toggle("cooldowns", false) and castable(SB.WorldveinResonance1) and -spell(SB.WorldveinResonance1) == 0 then
    return cast(SB.WorldveinResonance1, 'target')
    end 
	    if toggle("cooldowns", false) and castable(SB.WorldveinResonance2) and -spell(SB.WorldveinResonance2) == 0 then
        return cast(SB.WorldveinResonance2, 'target')
		end 
		    if toggle("cooldowns", false) and castable(SB.WorldveinResonance3) and -spell(SB.WorldveinResonance3) == 0 then
			return cast(SB.WorldveinResonance3, 'target')
			end 

	
	
	
	--damage essences
	
	
	
	--1 
	
	 if castable(SB.AnimaofDeath1) and -spell(SB.AnimaofDeath1) == 0 then
        return cast(SB.AnimaofDeath1, 'target')
    end
			 if castable(SB.AnimaofDeath2) and -spell(SB.AnimaofDeath2) == 0 then
        return cast(SB.AnimaofDeath2, 'target')
    end
				 if castable(SB.AnimaofDeath3) and -spell(SB.AnimaofDeath3) == 0 then
        return cast(SB.AnimaofDeath3, 'target')
    end
	
	--2 
	
	 if castable(SB.BloodoftheEnemy1) and -spell(SB.BloodoftheEnemy1) == 0 then
        return cast(SB.BloodoftheEnemy1, 'target')
    end
			 if castable(SB.BloodoftheEnemy2) and -spell(SB.BloodoftheEnemy2) == 0 then
        return cast(SB.BloodoftheEnemy2, 'target')
    end
				 if castable(SB.BloodoftheEnemy3) and -spell(SB.BloodoftheEnemy3) == 0 then
        return cast(SB.BloodoftheEnemy3, 'target')
    end
	
		
	--3  uncomment to cast (req. 8.3.0+ patch)
	
	 if castable(SB.ReapingFlames1) and -spell(SB.ReapingFlames1) == 0 then
        return cast(SB.ReapingFlames1, 'target')
    end
			 if castable(SB.ReapingFlames2) and -spell(SB.ReapingFlames2) == 0 then
        return cast(SB.ReapingFlames2, 'target')
    end
				 if castable(SB.ReapingFlames3) and -spell(SB.ReapingFlames3) == 0 then
        return cast(SB.ReapingFlames3, 'target')
    end
	
	--4
	if delay < GetTime() then
	 if castable(SB.FocusedAzeriteBeam1) and -spell(SB.FocusedAzeriteBeam1) == 0 then
        return cast(SB.FocusedAzeriteBeam1, 'target')
    end
			 if castable(SB.FocusedAzeriteBeam2) and -spell(SB.FocusedAzeriteBeam2) == 0 then
        return cast(SB.FocusedAzeriteBeam2, 'target')
    end
				 if castable(SB.FocusedAzeriteBeam3) and -spell(SB.FocusedAzeriteBeam3) == 0 then
        return cast(SB.FocusedAzeriteBeam3, 'target')
    end
	 delay = GetTime() + 1.4
end	
	--5
	
	 if castable(SB.PurifyingBlast1) and -spell(SB.PurifyingBlast1) == 0 then
        return cast(SB.PurifyingBlast1, 'target')
    end
			 if castable(SB.PurifyingBlast2) and -spell(SB.PurifyingBlast2) == 0 then
        return cast(SB.PurifyingBlast2, 'target')
    end
				 if castable(SB.PurifyingBlast3) and -spell(SB.PurifyingBlast3) == 0 then
        return cast(SB.PurifyingBlast3, 'target')
    end
	
	--6
	
	 if castable(SB.ConcentratedFlame1) and -spell(SB.ConcentratedFlame1) == 0 then
        return cast(SB.ConcentratedFlame1, 'target')
    end
			 if castable(SB.ConcentratedFlame2) and -spell(SB.ConcentratedFlame2) == 0 then
        return cast(SB.ConcentratedFlame2, 'target')
    end
				 if castable(SB.ConcentratedFlame3) and -spell(SB.ConcentratedFlame3) == 0 then
        return cast(SB.ConcentratedFlame3, 'target')
    end
	
	--7
			
	 if castable(SB.TheUnboundForce1) and -spell(SB.TheUnboundForce1) == 0 then
        return cast(SB.TheUnboundForce1, 'target')
    end
			 if castable(SB.TheUnboundForce2) and -spell(SB.TheUnboundForce2) == 0 then
        return cast(SB.TheUnboundForce2, 'target')
    end
				 if castable(SB.TheUnboundForce3) and -spell(SB.TheUnboundForce3) == 0 then
        return cast(SB.TheUnboundForce3, 'target')
    end
	
		
	
	-- end essences 
	
	if castable(SB.FeralFrenzy) and  -spell(SB.FeralFrenzy) == 0 and player.power.combopoints.actual <= 3 and player.power.energy.actual >= 25 and target.debuff(SB.Rip).up  then
		return cast(SB.FeralFrenzy,  'target')
    end
	if talent(1,3) and castable(SB.MoonFire) and -spell(SB.MoonFire) == 0 and target.debuff(SB.MoonFire).down and player.power.energy.actual >= 30  and player.power.combopoints.actual >= 3 then
		return  cast(SB.MoonFire,  'target')	
	end	

        --Юзаем прок с таланта (7-2) если есть 4+ поинтов
        if castable(SB.Regrowth) and -spell(SB.Regrowth) == 0 and player.buff(SB.PredatorySwiftness).up 
        and talent(7,2) and player.power.combopoints.actual >= 4 then
            return cast(SB.Regrowth)
        end
        -- Ярость тигра если меньше  30 энерегии
        if castable(SB.TigersFury, 'target') and -spell(SB.TigersFury) == 0 and player.power.energy.actual <= 30 then
            return cast(SB.TigersFury)
        end     
		-- Если бурст вкл забурстить 3м кд
		if toggle('cooldowns', false) and castable(SB.Berserk) and -spell(SB.Berserk) == 0 and player.buff(SB.TigersFury).up then
			return  cast(SB.Berserk, 'target')	
		end
		
		if toggle('cooldowns', false) and talent(5, 3) and castable(SB.Incarnation) and -spell(SB.Incarnation) == 0 and player.buff(SB.TigersFury).up then
			return  cast(SB.Incarnation, 'target')	
		end
        -- Кусь что бы продлить разорвать
  --      if castable(SB.FerociousBite, 'target') and -spell(SB.FerociousBite) == 0 and player.power.combopoints.actual >= 5 and target.debuff(SB.Rip).up and player.power.energy.actual >= 50 then
   --     return cast(SB.FerociousBite)
   ---     end       
		
	local Felroci2 = dark_addon.settings.fetch('KiraFeral_settings_Felroci', true)
  if Felroci2 == true and target.alive and target.enemy and player.alive then
        if castable(SB.FerociousBite, 'target') and -spell(SB.FerociousBite) == 0 and player.power.combopoints.actual >= 5 and target.debuff(SB.Rip).up and player.power.energy.actual >= 50 then
        return cast(SB.FerociousBite)
        end 
  end
 if Felroci2 == false and target.alive and target.enemy and player.alive then
        if castable(SB.FerociousBite, 'target') and -spell(SB.FerociousBite) == 0 and player.power.combopoints.actual >= 5 and target.debuff(SB.Rip).up then
        return cast(SB.FerociousBite)
        end 
  end
  
	    if flex3 and castable(SB.MightyBash, 'target') and -spell(SB.MightyBash) == 0 and target.distance < 8 then
        return cast(SB.MightyBash, target)
        end  
		
        if flex2 and castable(SB.Maim, 'target') and -spell(SB.Maim) == 0 and player.power.combopoints.actual >= 5 and target.debuff(SB.Rake).up then
        return cast(SB.Maim, target)
        end  
		
		if flex and castable(SB.Rake, 'target') and -spell(SB.Rake) == 0  and -spell(SB.Meld) == 0 and target.debuff(SB.Rake).remains < 3 then cast(SB.Meld)
		if not target.exists and lastcast(SB.Meld) then
		macro('/lasttarget')
        return cast(SB.Rake, target)
        end 
		end
	
	--local Kick0 = dark_addon.settings.fetch('KiraFeral_settings2_Kick0', false)
  if toggle('interrupts', false) then
	if Kick0 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and p[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick1 == true then
        if target.castable(SB.MightyBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and s[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.MightyBash, target)
            end
          end
        end
	end
	if Kick2 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and l[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick3 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and pn[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick4 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and f[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick5 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and d[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick6 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and t[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick7 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and e[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick8 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and a[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick9 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and ef[spell_id] then
              --  print("Кикнул " .. name .. " на цели.")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick10 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and rf[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick11 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and eb[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick12 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and c[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick13 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and h[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick14 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and cy[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick15 == true then
        if target.castable(SB.MightyBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and s[spell_id] and target.distance < 8 then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.MightyBash, target)
            end
          end
        end
	end
	if Kick16 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and m[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick17 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and rp[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick18 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and ro[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick19 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and g[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick20 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and gp[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick21 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and ct[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick22 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and fu[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick23 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and hb[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick24 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and rot[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick25 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and v[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick26 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and holylight[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick27 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and flashl[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end
	if Kick28 == true then
        if target.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
            if name and repentr[spell_id] then
                --print("Кикнул " .. name .. " на цели!")
                return cast(SB.SkullBash, target)
            end
          end
        end
	end	
--Кик в фокус
	
	if KickFocus0 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and p[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus1 == true then
        if focus.castable(SB.MightyBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and s[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.MightyBash, focus)
            end
          end
        end
	end
	if KickFocus2 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and l[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus3 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and pn[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus4 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and f[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus5 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and d[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus6 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and t[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus7 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and e[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus8 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and a[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus9 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and ef[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus10 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and rf[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus11 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and eb[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus12 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and c[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus13 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and h[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus14 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and cy[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus15 == true then
        if focus.castable(SB.MightyBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and s[spell_id] and target.distance < 8 then
                --print("Кикнул " .. name .. " !")
                return cast(SB.MightyBash, focus)
            end
          end
        end
	end
	if KickFocus16 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and m[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus17 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and rp[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus18 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and ro[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus19 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and g[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus20 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and gp[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus21 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and ct[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus22 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and fu[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus23 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and hb[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus24 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and rot[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus25 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and v[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus26 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and holylight[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus27 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and flashl[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end
	if KickFocus28 == true then
        if focus.castable(SB.SkullBash) then
        for i = 1, 40 do
        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("focus", i)
            if name and repentr[spell_id] then
                --print("Кикнул " .. name .. " !")
                return cast(SB.SkullBash, focus)
            end
          end
        end
	end		

--	if Kick26 == true then
--        if target.castable(SB.SkullBash) then
--        for i = 1, 40 do
--        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
--            if name and reg[spell_id] then
--			if regrowhealth and target.health <= regrowhealth then
--                --print("Кикнул " .. name .. " на цели!")
--                return cast(SB.SkullBash, target)
--            end
--          end
--        end
--	end
--	end
end
  
  if toggle("dispel", false) and target.enemy and target.alive then
  if castable(SB.Soothe) then
      for i = 1, 2 do
    local name, _, _, count, debuff_type, _, _, _, _, spell_id = UnitDebuff("target", i) 
    if name and soot[spell_id] then
      return cast(SB.Soothe)
    end
  end
end
    -- self-cleanse
    if castable(SB.RemoveCorruption) and player.dispellable(SB.RemoveCorruption) then
      return cast(SB.RemoveCorruption, player)
    end
    -- group cleanse
    local unit = group.dispellable(SB.RemoveCorruption)
    if unit and unit.castable(SB.RemoveCorruption) then
      return cast(SB.RemoveCorruption, unit)
    end
  end


if (GetLocale() == "ruRU") then
  if toggle("FormIt", false) then
  if castable(SB.CatForm) then
      for i = 1, 2 do
    local name, _, _, count, debuff_type, _, _, _, _, spell_id = UnitDebuff("player", i) 
    if name and stund[spell_id] then
	print("Снял " .. name .. " с себя!")
      return cast(SB.CatForm)
    end
  end
end
end

  if toggle("Battleress", false) then
  if castable(SB.Rebirth) then
   if not focus.alive then
	print("Поднимаю " .. UnitName("focus")  .. " вот же ебучий вагон ссуканах!!!")
      return cast(SB.Rebirth, focus)
    end
  end
end

else
  if toggle("FormIt", false) then
  if castable(SB.CatForm) then
      for i = 1, 2 do
    local name, _, _, count, debuff_type, _, _, _, _, spell_id = UnitDebuff("player", i) 
    if name and stund[spell_id] then
	print("Trinked " .. name .. " !")
      return cast(SB.CatForm)
    end
  end
end
end

  if toggle("Battleress", false) then
  if castable(SB.Rebirth) then
   if not focus.alive then
	print("Rebith " .. UnitName("focus")  .. " fucking moron!!")
      return cast(SB.Rebirth, focus)
    end
  end
end
end

  -- print(group_type .. members.."target")
--SB.Regrowth
   --Вешаем разоврать на 2+ цели через талант Первобытный гнев
        if castable(SB.PrimalWrath, 'target') and -spell(SB.PrimalWrath) == 0 and player.power.combopoints.actual >= 5 and enemyCount >= 2 and talent(6,3) then
            return cast(SB.PrimalWrath)
        end
		--Юзаем Дикий рев
        if castable(SB.SavageRoar) and -spell(SB.SavageRoar) == 0 
				and player.power.combopoints.actual >= 4 and player.buff(SB.SavageRoar).remains < 5 then
            return cast(SB.SavageRoar)
        end
		
        --Юзнуть разорвать на цель если 5 поинтов
        if castable(SB.Rip, 'target') and -spell(SB.Rip) == 0 and player.power.combopoints.actual >= 5 
        and (target.debuff(SB.Rip).down or target.debuff(SB.Rip).remains < 3.5) then
            return cast(SB.Rip)
        end

        --Обновляем раны если осталось 2с дебафа 
        if castable(SB.Rake, 'target') and target.debuff(SB.Rake).remains < 2 then --and -spell(SB.Rake) == 0
            return cast(SB.Rake)
        end

        -- спамим Взбучка если 2+ цели 
        if enemyCount >= 2 and castable(SB.Thrash, 'target') and -spell(SB.Thrash) == 0 and target.debuff(SB.Thrash).remains < 4 then
            return cast(SB.Thrash)
        end

        -- Кусь если не нужно обновлять разорвать в след 5 сек.
       -- if castable(SB.FerociousBite, 'target') and -spell(SB.FerociousBite) == 0 and player.power.combopoints.actual >= 5 and target.debuff(SB.Rip).remains > 5 and player.power.energy.actual >= 50 then
   --         return cast(SB.FerociousBite)
       -- end
local Felroci = dark_addon.settings.fetch('KiraFeral_settings_Felroci', true)
  if Felroci == true and target.alive and target.enemy and player.alive then
if castable(SB.FerociousBite, 'target') and -spell(SB.FerociousBite) == 0 and player.power.combopoints.actual >= 5 and target.debuff(SB.Rip).remains > 5 and player.power.energy.actual >= 50 then
            return cast(SB.FerociousBite)
        end
  end
 if Felroci == false and target.alive and target.enemy and player.alive then
if castable(SB.FerociousBite, 'target') and -spell(SB.FerociousBite) == 0 and player.power.combopoints.actual >= 5 and target.debuff(SB.Rip).remains > 5 then
            return cast(SB.FerociousBite)
        end
  end


















        -- Жестокий удар когтями что бы стакать поинты
		if castable(SB.BrutalSlash, 'target') and -spell(SB.BrutalSlash) == 0 and player.power.combopoints.actual <= 4 then
			return cast(SB.BrutalSlash)
				end    

        -- Кастануть размах в 3+ цели
        if castable(SB.Swipe, 'target') and -spell(SB.Swipe) == 0 and player.power.combopoints.actual <= 4 and enemyCount >= 3 then
            return cast(SB.Swipe)
        end        

        --Полоснуть что бы настакать поинты
        if castable(SB.Shred, 'target') and -spell(SB.Shred) == 0 and player.power.combopoints.actual <= 4 and enemyCount <= 2 then
            return cast(SB.Shred)
        end



	-- спиды на бинд	
	local dash = dark_addon.settings.fetch("KiraFeral_settings_dash")
		
	if (dash == "shift" and modifier.shift) or (dash == "control" and modifier.control) or (dash == "alt" and modifier.alt) and -spell(SB.TigerDash) == 0 then
      return cast(SB.TigerDash, "ground")
    end
	
	-- рывок на бинд
	local charge = dark_addon.settings.fetch("KiraFeral_settings_charge")
		
	if (charge == "shift" and modifier.shift) or (charge == "control" and modifier.control) or (charge == "alt" and modifier.alt) and -spell(SB.WildCharge) == 0 then
      return cast(SB.WildCharge, "ground")
    end
	-- спиды на бинд2
	local dash2 = dark_addon.settings.fetch("KiraFeral_settings_dash2")
		
	if (dash2 == "shift" and modifier.shift) or (dash2 == "control" and modifier.control) or (dash2 == "alt" and modifier.alt) and -spell(SB.Dash) == 0 then
      return cast(SB.Dash, "ground")
	end				
    end
	-- Авто трини
local usetrinkets = dark_addon.settings.fetch('KiraFeral_settings_usetrinkets', true)
  local Trinket13 = GetInventoryItemID("player", 13)
  local Trinket14 = GetInventoryItemID("player", 14)
  if usetrinkets and target.alive and target.enemy and player.alive then
    if GetItemCooldown(Trinket13) == 0 then
      macro('/use 13')
    end
    if GetItemCooldown(Trinket14) == 0 then
      macro('/use 14')
    end
  end
  
 	local dash2 = dark_addon.settings.fetch("KiraFeral_settings_dash2")
		
	if (dash2 == "shift" and modifier.shift) or (dash2 == "control" and modifier.control) or (dash2 == "alt" and modifier.alt) and -spell(SB.Dash) == 0 then
      return cast(SB.Dash, "ground")
	end	
	
	 if (GetLocale() == "ruRU") then
	 
    local usehealthstone = dark_addon.settings.fetch("KiraFeral_settings_healthstone.check", true)
    local healthstonepercent = dark_addon.settings.fetch("KiraFeral_settings_healthstone.spin", 25)
	if usehealthstone == true and player.health.percent < healthstonepercent and GetItemCount(5512) >= 1 and GetItemCooldown(5512) == 0 then
      macro("/use Камень здоровья") -- переименую камень лока.
    end
	
	local usepotion = dark_addon.settings.fetch("KiraFeral_settings_potion.check", true)
    local potionpercent = dark_addon.settings.fetch("KiraFeral_settings_potion.spin", 30) 
	if usepotion == true and player.health.percent < potionpercent and GetItemCount(163082) >= 1 and GetItemCooldown(163082) == 0 then
      macro('/use Береговое зелье омоложения') -- переименую зелье на хп.
    end
	
	else
	    local usehealthstone = dark_addon.settings.fetch("KiraFeral_settings_healthstone.check", true)
    local healthstonepercent = dark_addon.settings.fetch("KiraFeral_settings_healthstone.spin", 25)
	if usehealthstone == true and player.health.percent < healthstonepercent and GetItemCount(5512) >= 1 and GetItemCooldown(5512) == 0 then
      macro("/use Healthstone") -- переименую камень лока.
    end
	
	local usepotion = dark_addon.settings.fetch("KiraFeral_settings_potion.check", true)
    local potionpercent = dark_addon.settings.fetch("KiraFeral_settings_potion.spin", 30) 
	if usepotion == true and player.health.percent < potionpercent and GetItemCount(163082) >= 1 and GetItemCooldown(163082) == 0 then
      macro('/use Coastal Rejuvenation Potion') -- переименую зелье на хп.
    end
	
	end
	
	local Instincts = dark_addon.settings.fetch("KiraFeral_settings_Instincts", 30)
	    if castable(SB.SurvivalInstincts) and not -buff(SB.SurvivalInstincts) and player.health.percent < Instincts then
      return cast(SB.SurvivalInstincts)
    end
	
if toggle("Information", false) then
	 
 if (GetLocale() == "ruRU") then
 
 
local playerhealth = math.ceil(player.health.percent)
local targethealth = math.ceil(target.health.percent)
local frame3 = HealthFrame or CreateFrame("ScrollingMessageFrame", "HealthFrame", UIParent)
frame3:SetPoint("CENTER", 30,540)
frame3:SetSize(900, 100)
frame3:SetTimeVisible(2.0);
frame3:SetMaxLines(1);
frame3:SetFontObject(ChatFontNormal);
frame3:SetIndentedWordWrap(true);
frame3:SetJustifyH("CENTER"); 				
frame3:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if target.alive and player.alive and UnitExists("target") then 
frame3:AddMessage(" |cff00fff2 Хп|r|cff5BFF33 цели:|r"..  targethealth .. " |cff00fff2 ост.|r")	
else
end	   

local focusdistance = focus.distance
local targetdistance = target.distance
local frame4 = DistanceFrame or CreateFrame("ScrollingMessageFrame", "DistanceFrame", UIParent)
frame4:SetPoint("CENTER", 30,510)
frame4:SetSize(900, 100)
frame4:SetTimeVisible(2.0);
frame4:SetMaxLines(1);
frame4:SetFontObject(ChatFontNormal);
frame4:SetIndentedWordWrap(true);
frame4:SetJustifyH("CENTER"); 				
frame4:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if target.alive and player.alive and UnitExists("target") then 
frame4:AddMessage(" |cff00fff2 Расст.|r|cffffdf52 до цели:|r"..  targetdistance.. "|cff00fff2 yd|r")	
else
end	



local frame5 = KickFrame or CreateFrame("ScrollingMessageFrame", "KickFrame", UIParent)
frame5:SetPoint("CENTER", -100,480)
frame5:SetSize(900, 100)
frame5:SetTimeVisible(1.0);
frame5:SetMaxLines(1);
frame5:SetFontObject(ChatFontNormal);
frame5:SetIndentedWordWrap(true);
frame5:SetJustifyH("CENTER"); 				
frame5:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if toggle("KickALL", false)  then 
frame5:AddMessage(" |cff00fff2 Pve кик |r|cff5BFF33 включен|r")	
else
end	

local frame6 = PvPKickFrame or CreateFrame("ScrollingMessageFrame", "PvPKickFrame", UIParent)
frame6:SetPoint("CENTER", 200,480)
frame6:SetSize(900, 100)
frame6:SetTimeVisible(1.0);
frame6:SetMaxLines(1);
frame6:SetFontObject(ChatFontNormal);
frame6:SetIndentedWordWrap(true);
frame6:SetJustifyH("CENTER"); 				
frame6:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if toggle("interrupts", false)  then 
frame6:AddMessage(" |cff00fff2 PvP кик|r|cff5BFF33 включен|r")	
else
end	

local frame7 = CoolDownsFrame or CreateFrame("ScrollingMessageFrame", "CoolDownsFrame", UIParent)
frame7:SetPoint("CENTER", 70,455)
frame7:SetSize(900, 100)
frame7:SetTimeVisible(1.0);
frame7:SetMaxLines(1);
frame7:SetFontObject(ChatFontNormal);
frame7:SetIndentedWordWrap(true);
frame7:SetJustifyH("CENTER"); 				
frame7:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if toggle("cooldowns", false)  then 
frame7:AddMessage(" |cff00fff2 Бурсты |r|cff5BFF33 включены|r")	
else
end	
	
	
	
	else
	
	
	
	
local playerhealth = math.ceil(player.health.percent)
local targethealth = math.ceil(target.health.percent)
local frame3 = HealthFrame or CreateFrame("ScrollingMessageFrame", "HealthFrame", UIParent)
frame3:SetPoint("CENTER", 30,540)
frame3:SetSize(900, 100)
frame3:SetTimeVisible(2.0);
frame3:SetMaxLines(1);
frame3:SetFontObject(ChatFontNormal);
frame3:SetIndentedWordWrap(true);
frame3:SetJustifyH("CENTER"); 				
frame3:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if target.alive and player.alive and UnitExists("target") then 
frame3:AddMessage(" |cff00fff2 Target|r|cff5BFF33 Health:|r"..  targethealth .. " |cff00fff2 left|r")	
else
end	   

local focusdistance = focus.distance
local targetdistance = target.distance
local frame4 = DistanceFrame or CreateFrame("ScrollingMessageFrame", "DistanceFrame", UIParent)
frame4:SetPoint("CENTER", 30,510)
frame4:SetSize(900, 100)
frame4:SetTimeVisible(2.0);
frame4:SetMaxLines(1);
frame4:SetFontObject(ChatFontNormal);
frame4:SetIndentedWordWrap(true);
frame4:SetJustifyH("CENTER"); 				
frame4:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if target.alive and player.alive and UnitExists("target") then 
frame4:AddMessage(" |cff00fff2 Target|r|cffffdf52 Distance:|r"..  targetdistance.. "|cff00fff2 yd|r")	
else
end	



local frame5 = KickFrame or CreateFrame("ScrollingMessageFrame", "KickFrame", UIParent)
frame5:SetPoint("CENTER", -100,480)
frame5:SetSize(900, 100)
frame5:SetTimeVisible(1.0);
frame5:SetMaxLines(1);
frame5:SetFontObject(ChatFontNormal);
frame5:SetIndentedWordWrap(true);
frame5:SetJustifyH("CENTER"); 				
frame5:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if toggle("KickALL", false)  then 
frame5:AddMessage(" |cff00fff2 Pve Kick |r|cff5BFF33enabled|r")	
else
end	

local frame6 = PvPKickFrame or CreateFrame("ScrollingMessageFrame", "PvPKickFrame", UIParent)
frame6:SetPoint("CENTER", 200,480)
frame6:SetSize(900, 100)
frame6:SetTimeVisible(1.0);
frame6:SetMaxLines(1);
frame6:SetFontObject(ChatFontNormal);
frame6:SetIndentedWordWrap(true);
frame6:SetJustifyH("CENTER"); 				
frame6:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if toggle("interrupts", false)  then 
frame6:AddMessage(" |cff00fff2 PvP Kick|r|cff5BFF33 enabled|r")	
else
end	

local frame7 = CoolDownsFrame or CreateFrame("ScrollingMessageFrame", "CoolDownsFrame", UIParent)
frame7:SetPoint("CENTER", 70,455)
frame7:SetSize(900, 100)
frame7:SetTimeVisible(1.0);
frame7:SetMaxLines(1);
frame7:SetFontObject(ChatFontNormal);
frame7:SetIndentedWordWrap(true);
frame7:SetJustifyH("CENTER"); 				
frame7:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if toggle("cooldowns", false)  then 
frame7:AddMessage(" |cff00fff2 CoolDowns |r|cff5BFF33 enabled|r")	
else
end	
 
	end
	end
	
	if toggle('beartest', false) and talent(3, 2) and not tank.alive then
if castable(SB.BearForm, 'player') and not -buff(SB.BearForm) then
return cast(SB.BearForm, 'player')
end
auto_attack()
if castable(SB.MoonFire, 'target') and target.distance <= 40 and  target.debuff(SB.Moonfire).down then
return cast(SB.MoonFire, 'target')
end
if castable(SB.Mangle) and target.distance <= 8 then
return cast(SB.Mangle, 'target')
end
if castable(SB.Thrash, 'target') and target.distance <= 8 then
return cast(SB.Thrash, 'target')
end
if castable(SB.Swipe, 'target') and not castable(SB.Mangle) and not castable(SB.Thrash) and target.distance <= 8 then
return cast(SB.Swipe, 'target')
end
if castable(SB.FrenziedRegeneration, 'player') and not -buff(SB.FrenziedRegeneration) and player.health.percent < 76 then
return cast(SB.FrenziedRegeneration, 'player')
end
if castable(SB.Ironfur, 'player') and not -buff(SB.Ironfur) and player.health.percent < 95 and player.power.energy.actual >= 40 then
return cast(SB.Ironfur, 'player')
end
if castable(SB.SurvivalInstincts, 'player') and not -buff(SB.SurvivalInstincts) and player.health.percent < 45 then
return cast(SB.SurvivalInstincts, 'player')
end
if castable(SB.Renewal, 'player') and not -buff(SB.Renewal) and player.health.percent < 43 then
return cast(SB.Renewal, 'player')
end
  local taunt_unit
  local isTanking
  local members = GetNumGroupMembers()
isTanking = UnitThreatSituation("player", "target")
if target.enemy and IsSpellInRange('Growl', 'target') and UnitAffectingCombat('target') and (isTanking == 0 or isTanking == nil) then
return cast(SB.Growl, target)
end
return
end

end




local function resting()
-- if not UIParent:IsShown() then
   -- RunMacroText("/reload")
-- end
if toggle("Information", false) then
	 
 if (GetLocale() == "ruRU") then
 
 
local playerhealth = math.ceil(player.health.percent)
local targethealth = math.ceil(target.health.percent)
local frame3 = HealthFrame or CreateFrame("ScrollingMessageFrame", "HealthFrame", UIParent)
frame3:SetPoint("CENTER", 30,540)
frame3:SetSize(900, 100)
frame3:SetTimeVisible(2.0);
frame3:SetMaxLines(1);
frame3:SetFontObject(ChatFontNormal);
frame3:SetIndentedWordWrap(true);
frame3:SetJustifyH("CENTER"); 				
frame3:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if target.alive and player.alive and UnitExists("target") then 
frame3:AddMessage(" |cff00fff2 Хп|r|cff5BFF33 цели:|r"..  targethealth .. " |cff00fff2 ост.|r")	
else
end	   

local focusdistance = focus.distance
local targetdistance = target.distance
local frame4 = DistanceFrame or CreateFrame("ScrollingMessageFrame", "DistanceFrame", UIParent)
frame4:SetPoint("CENTER", 30,510)
frame4:SetSize(900, 100)
frame4:SetTimeVisible(2.0);
frame4:SetMaxLines(1);
frame4:SetFontObject(ChatFontNormal);
frame4:SetIndentedWordWrap(true);
frame4:SetJustifyH("CENTER"); 				
frame4:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if target.alive and player.alive and UnitExists("target") then 
frame4:AddMessage(" |cff00fff2 Расст.|r|cffffdf52 до цели:|r"..  targetdistance.. "|cff00fff2 yd|r")	
else
end	



local frame5 = KickFrame or CreateFrame("ScrollingMessageFrame", "KickFrame", UIParent)
frame5:SetPoint("CENTER", -100,480)
frame5:SetSize(900, 100)
frame5:SetTimeVisible(1.0);
frame5:SetMaxLines(1);
frame5:SetFontObject(ChatFontNormal);
frame5:SetIndentedWordWrap(true);
frame5:SetJustifyH("CENTER"); 				
frame5:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if toggle("KickALL", false)  then 
frame5:AddMessage(" |cff00fff2 Pve кик |r|cff5BFF33 включен|r")	
else
end	

local frame6 = PvPKickFrame or CreateFrame("ScrollingMessageFrame", "PvPKickFrame", UIParent)
frame6:SetPoint("CENTER", 200,480)
frame6:SetSize(900, 100)
frame6:SetTimeVisible(1.0);
frame6:SetMaxLines(1);
frame6:SetFontObject(ChatFontNormal);
frame6:SetIndentedWordWrap(true);
frame6:SetJustifyH("CENTER"); 				
frame6:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if toggle("interrupts", false)  then 
frame6:AddMessage(" |cff00fff2 PvP кик|r|cff5BFF33 включен|r")	
else
end	

local frame7 = CoolDownsFrame or CreateFrame("ScrollingMessageFrame", "CoolDownsFrame", UIParent)
frame7:SetPoint("CENTER", 70,455)
frame7:SetSize(900, 100)
frame7:SetTimeVisible(1.0);
frame7:SetMaxLines(1);
frame7:SetFontObject(ChatFontNormal);
frame7:SetIndentedWordWrap(true);
frame7:SetJustifyH("CENTER"); 				
frame7:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if toggle("cooldowns", false)  then 
frame7:AddMessage(" |cff00fff2 Бурсты |r|cff5BFF33 включены|r")	
else
end	
	
	
	
	else
	
	
	
	
local playerhealth = math.ceil(player.health.percent)
local targethealth = math.ceil(target.health.percent)
local frame3 = HealthFrame or CreateFrame("ScrollingMessageFrame", "HealthFrame", UIParent)
frame3:SetPoint("CENTER", 30,540)
frame3:SetSize(900, 100)
frame3:SetTimeVisible(2.0);
frame3:SetMaxLines(1);
frame3:SetFontObject(ChatFontNormal);
frame3:SetIndentedWordWrap(true);
frame3:SetJustifyH("CENTER"); 				
frame3:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if target.alive and player.alive and UnitExists("target") then 
frame3:AddMessage(" |cff00fff2 Target|r|cff5BFF33 Health:|r"..  targethealth .. " |cff00fff2 left|r")	
else
end	   

local focusdistance = focus.distance
local targetdistance = target.distance
local frame4 = DistanceFrame or CreateFrame("ScrollingMessageFrame", "DistanceFrame", UIParent)
frame4:SetPoint("CENTER", 30,510)
frame4:SetSize(900, 100)
frame4:SetTimeVisible(2.0);
frame4:SetMaxLines(1);
frame4:SetFontObject(ChatFontNormal);
frame4:SetIndentedWordWrap(true);
frame4:SetJustifyH("CENTER"); 				
frame4:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if target.alive and player.alive and UnitExists("target") then 
frame4:AddMessage(" |cff00fff2 Target|r|cffffdf52 Distance:|r"..  targetdistance.. "|cff00fff2 yd|r")	
else
end	



local frame5 = KickFrame or CreateFrame("ScrollingMessageFrame", "KickFrame", UIParent)
frame5:SetPoint("CENTER", -100,480)
frame5:SetSize(900, 100)
frame5:SetTimeVisible(1.0);
frame5:SetMaxLines(1);
frame5:SetFontObject(ChatFontNormal);
frame5:SetIndentedWordWrap(true);
frame5:SetJustifyH("CENTER"); 				
frame5:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if toggle("KickALL", false)  then 
frame5:AddMessage(" |cff00fff2 Pve Kick |r|cff5BFF33enabled|r")	
else
end	

local frame6 = PvPKickFrame or CreateFrame("ScrollingMessageFrame", "PvPKickFrame", UIParent)
frame6:SetPoint("CENTER", 200,480)
frame6:SetSize(900, 100)
frame6:SetTimeVisible(1.0);
frame6:SetMaxLines(1);
frame6:SetFontObject(ChatFontNormal);
frame6:SetIndentedWordWrap(true);
frame6:SetJustifyH("CENTER"); 				
frame6:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if toggle("interrupts", false)  then 
frame6:AddMessage(" |cff00fff2 PvP Kick|r|cff5BFF33 enabled|r")	
else
end	

local frame7 = CoolDownsFrame or CreateFrame("ScrollingMessageFrame", "CoolDownsFrame", UIParent)
frame7:SetPoint("CENTER", 70,455)
frame7:SetSize(900, 100)
frame7:SetTimeVisible(1.0);
frame7:SetMaxLines(1);
frame7:SetFontObject(ChatFontNormal);
frame7:SetIndentedWordWrap(true);
frame7:SetJustifyH("CENTER"); 				
frame7:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 25, "OUTLINE, MONOCHROME")
if toggle("cooldowns", false)  then 
frame7:AddMessage(" |cff00fff2 CoolDowns |r|cff5BFF33 enabled|r")	
else
end	
 
	end
	end

  -- Проверка дистанции до цели
    local enemyCount = enemies.around(8)
    dark_addon.interface.status_extra('T#:' .. enemyCount .. ' D:' .. target.distance)

  -- Кот с формы оленя
    if castable(SB.CatForm) and not -buff(SB.CatForm) and not -buff(SB.TravelForm) then
  		return cast(SB.CatForm, 'player')
    end
  if target.enemy and target.alive and target.distance < 8 then
    auto_attack()
  end
  -- Авто инвиз
    if castable(SB.Prowl) and not -buff(SB.Prowl) and -buff(SB.CatForm) then
  		return cast(SB.Prowl, 'player')
      end
   
      if target.alive and target.enemy and player.alive and not player.channeling() then      
              -- Кидаем доты на цели вокруг (Глубокие раны.)
              if castable(SB.Rake, 'target') and -spell(SB.Rake) == 0 and not -target.debuff(SB.Rake) and target.distance < 8 then
                return cast(SB.Rake)
            end
        end      
				-- хилки
    if castable(SB.Regrowth) and -spell(SB.Regrowth) == 0 and -player.health <= 60 and player.buff(SB.Regrowth).down then
  		return cast(SB.Regrowth, player)
    end
    if castable(SB.Rejuvenation) and -spell(SB.Rejuvenation) == 0 and -player.health <= 35 and player.buff(SB.Rejuvenation).down then
        return cast(SB.Rejuvenation, player)
    end
    if castable(SB.Swiftmend) and -spell(SB.Swiftmend) == 0 and -player.health <= 30 then
        return cast(SB.Swiftmend, player)
    end   
			-- спиды
	local dash = dark_addon.settings.fetch("KiraFeral_settings_dash")
		
	if (dash == "shift" and modifier.shift) or (dash == "control" and modifier.control) or (dash == "alt" and modifier.alt) and -spell(SB.TigerDash) == 0 then
      return cast(SB.TigerDash, "ground")
    end
			-- рывок
	local charge = dark_addon.settings.fetch("KiraFeral_settings_charge")
		
	if (charge == "shift" and modifier.shift) or (charge == "control" and modifier.control) or (charge == "alt" and modifier.alt) and -spell(SB.WildCharge) == 0 then
      return cast(SB.WildCharge, "ground")
    end	

		-- спиды на бинд2
	local dash2 = dark_addon.settings.fetch("KiraFeral_settings_dash2")
		
	if (dash2 == "shift" and modifier.shift) or (dash2 == "control" and modifier.control) or (dash2 == "alt" and modifier.alt) and -spell(SB.Dash) == 0 then
      return cast(SB.Dash, "ground")
	end	


local cat = CreateFrame("MessageFrame",nil,UIParent)
cat:SetFrameStrata("BACKGROUND")
cat:SetWidth(64)
cat:SetHeight(64) 
local tac = cat:CreateTexture(nil,"BACKGROUND")
tac:SetTexture("Interface\\AddOns\\Feral\\Butwhy\\Core\\media\\FlexCat")
tac:SetAllPoints(cat)
cat.texture = tac
cat:SetPoint("BOTTOMRIGHT",1,1)
cat:Show()
end

local frame2 = TestMessage or CreateFrame("ScrollingMessageFrame", "TestMessage", UIParent)
local guid,name,_,class,color=UnitGUID("player"),UnitName("player")
if guid then
    _,class=GetPlayerInfoByGUID(guid)
end
 if class then
 color = RAID_CLASS_COLORS[class].colorStr
end
frame2:SetPoint("CENTER", 0,0)
frame2:SetSize(900, 100)
frame2:SetTimeVisible(12.0);
frame2:SetMaxLines(2);
frame2:SetFontObject(ChatFontNormal);
frame2:SetIndentedWordWrap(true);
frame2:SetJustifyH("CENTER"); 				
frame2:SetFont("Interface\\Addons\\Feral\\Butwhy\\core\\media\\19180.otf", 45, "OUTLINE, MONOCHROME")
 if (GetLocale() == "ruRU") then
frame2:AddMessage("Мяу сука \124TInterface\\AddOns\\Feral\\Butwhy\\Core\\media\\FlexCat:0\124t Злой:  "..((color and "\124C"..color or "")..(UnitName("Player"))..(color and "\124r" or "")).." Уже тут Блять.",1.0,2.0,1.0,53,3)	
else
frame2:AddMessage("Meow bitch! \124TInterface\\AddOns\\Feral\\Butwhy\\Core\\media\\FlexCat:0\124t Angry: "..((color and "\124C"..color or "")..(UnitName("Player"))..(color and "\124r" or "")).." HAS ARRIVED BLYAT",1.0,2.0,1.0,53,3)	
end
local function interface()

    if (GetLocale() == "ruRU") then
    local settings = {
        key = 'KiraFeral_settings',
        title = 'Всратый кот production',
        width = 350,
        height = 832,
	--	color = "3cff00",
		color = "00a2ff",
        resize = true,
        show = false,
        template = {
            { type = 'header', text = "            НАСТРОЙЕЧКИ" },
			        { type = 'rule' },
            { type = 'text', text = 'Пикай таланты: [1-2] - [Любой] - [1] - [1] - [1] - [2] - [2]' },
            { type = 'text', text = 'Любой другой билд = мусор. Проверено: RaidBots.com' },
            { type = 'text', text = 'Таланты поддерживаются все кроме:  [3-3] и [4-2] [4-3]' },
            { type = 'text', text = 'Талант: [6-1] Необходим, если вы хотите юзать медведя когда танк умер.' },
            { type = 'text', text = 'Бурст\Дпс азерит поддерживается весь кроме: Ряби и конфликта.' },
            { type = 'text', text = 'ALT = Рывок Тигра | Shift = Рывок | Ctrl = Порыв.' },
			{ type = 'text', text = 'Пвп кик каста цель\фокус, нужно настроить в панели! (!!Проверь включен-ли кик каста на панели!!).' },
			{ type = 'text', text = 'Пве кик каста, нужно включить кнопкой! (*Кикает всё что можно)' },
            { type = 'rule' },
            { type = 'header', text = '            КИК КАСТА' },
			{ type = 'text', text = '                ' },
            { key = 'intpercentlow', type = 'spinner', text = 'Минимум %', default = '50', desc = 'минимум % для кика', min = 5, max = 50, step = 1 },
            { key = 'intpercenthigh', type = 'spinner', text = 'Максимум %', default = '65', desc = 'максимум % для кика', min = 51, max = 100, step = 1 },
		    { type = 'rule' },
		    { type = 'header', text = "            ПОЛЕЗНАЯ ХУЙНЯ." },
			{ type = 'text', text = '                ' },
			{ key = 'Felroci', type = 'checkbox', text = 'Свирепый укустолько если есть 50 энергии', desc = 'или больше 50 энергии.', default = true },
			--{ key = 'Rake_AOE', type = 'checkbox', text = 'Глубокие раны АОЕ', desc = 'Юзать раны для АОЕ' },
			{ key = 'usetrinkets', type = 'checkbox', text = 'АВТО ТРИНЕЧКИ', desc = 'Если есть чо жать', default = true },
			{ key = 'flex', type = 'checkbox', text = 'Мелд = Баф Доты', desc = 'Только для ночных эльфов. Дать слится с тенью = дать усиленную доту', default = false },
			{ key = 'flex2', type = 'checkbox', text = 'Калечение', desc = 'Только для пвп, если на цели есть глубокие раны и есть 5кп дает в цель Калечение', default = false },		
			{ key = 'flex3', type = 'checkbox', text = 'Мощное оглушение', desc = 'Только для пвп, если до цели 8м  дает в цель Мощное оглушение', default = false },					
					    { type = 'rule' },
						{ type = 'header', text = "            СПАСИ СВОЙ ЗАД!" },
			{ type = 'text', text = '                ' },
			{ key = 'BearForm', type = 'spinner', text = 'АВТО ФОРМА МЕДВЕДЯ', desc = 'Авто форма на % хп', default = 7, min = 1, max = 100, step = 1 }, 
			{ key = 'Renewal', type = 'spinner', text = 'ОБНОВЛЕНИЕ', desc = 'Минимум % хп для каста', default = 30, min = 1, max = 100, step = 1 }, 
			{ key = "healthstone", type = "checkspin", text = "Огурцы лока", desc = "На сколько % хп кастовать", default_check = false, default_spin = 30, min = 5, max = 100, step = 1 },
			{ key = "Instincts", type = "spinner", text = "Интстинкты", desc = "На сколько % хп кастовать", default = 40, min = 1, max = 100, step = 1 },
			{ key = "potion", type = "checkspin", text = "Береговое зелье омоложения", desc = "На сколько % хп кастовать", default_check = false, default_spin = 30, min = 5, max = 100, step = 1 },  
		    { type = 'rule' },
			{ type = 'header', text = "            Двигай жопу." },
			{ type = 'text', text = '                ' },
			
			{ key = 'charge', type = 'dropdown', text = 'Рывок в цель.', desc = 'Если есть талант', default = 'shift',
				list = {
							{ key = 'control', text = 'CTRL' },
							{ key = 'alt', text = 'ALT' },
							{ key = 'shift', text = 'SHIFT' },
					    } },
			
			{ key = 'dash', type = 'dropdown', text = 'Рывок тигра.', desc = 'Если есть талант', default = 'alt',
				list = {
							{ key = 'control', text = 'CTRL' },
							{ key = 'alt', text = 'ALT' },
							{ key = 'shift', text = 'SHIFT' },
					    } },
			{ key = 'dash2', type = 'dropdown', text = 'Порыв.', desc = 'Дефолтный спринт.', default = 'control',
				list = {
							{ key = 'control', text = 'CTRL' },
							{ key = 'alt', text = 'ALT' },
							{ key = 'shift', text = 'SHIFT' },
					    } },
							
            { type = 'text', text = 'АТТЕНШЕН НЕЛЬЗЯ БИНДИТЬ 3 КНОПКИ НА 1 БИНД!!!!' },						
        }
    }
configWindow = dark_addon.interface.builder.buildGUI(settings)
	
    dark_addon.interface.buttons.add_toggle({
        name = 'settings',
        label = 'Основные настройки!',
        font = 'dark_addon_icon',
        on = {
            label = dark_addon.interface.icon('cog'),
            color = dark_addon.interface.color.green,
            color2 = dark_addon.interface.color.green
        },
        off = {
            label = dark_addon.interface.icon('cog'),
            color = dark_addon.interface.color.red,
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
	
	    local settings2 = {
        key = 'KiraFeral_settings2',
        title = 'Всратый кот production',
        width = 320,
        height = 794,
		color = "3cff00",
        resize = true,
        show = false,
        template = {
            { type = 'header', text = "            Укажи что кикать в цель!" },
			{ type = 'rule' },
			{ type = 'header', text = "            МАГ" },
			{ key = 'Kick0', type = 'checkbox', text = 'Овца', desc = '', default = false },
			{ key = 'Kick20', type = 'checkbox', text = 'Ледовый шип', desc = '', default = false },
			{ key = 'Kick10', type = 'checkbox', text = 'Морозный луч', desc = '', default = false },
			{ key = 'Kick8', type = 'checkbox', text = 'Аркан стрелы', desc = '', default = false },
			{ key = 'Kick17', type = 'checkbox', text = 'Руна мощи', desc = '', default = false },
			{ key = 'Kick18', type = 'checkbox', text = 'Круг льда (Лужа фроста)', desc = '', default = false },
			{ key = 'Kick19', type = 'checkbox', text = 'Усиленная огненная глыба', desc = '', default = false },
			{ key = 'Kick7', type = 'checkbox', text = 'Прилив сил', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "            ПРИСТ." },
			{ key = 'Kick3', type = 'checkbox', text = 'Исповедь', desc = '', default = false },
			{ key = 'Kick5', type = 'checkbox', text = 'Божественный гимн', desc = '', default = false },
			{ key = 'Kick16', type = 'checkbox', text = 'Контроль разума', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "            ДРУ." },
			{ key = 'Kick6', type = 'checkbox', text = 'Транквила', desc = '', default = false },
			{ key = 'Kick23', type = 'checkbox', text = 'Сон', desc = '', default = false },
			{ key = 'Kick14', type = 'checkbox', text = 'Ураган', desc = '', default = false },
			{ key = 'Kick24', type = 'checkbox', text = 'Корни', desc = '', default = false },
			--{ key = 'Kick26', type = 'checkbox', text = 'Восстановление', desc = '', default = false },
			--{ key = 'regrowhealth', type = 'spinner', text = 'Минимум % хп цели', default = '30', desc = 'Что бы кикнуть ей восстановление', min = 5, max = 30, step = 1 },
			{ type = 'rule' },
			{ type = 'header', text = "            МОНК." },
			{ key = 'Kick1', type = 'checkbox', text = 'Успокаивающий туман', desc = '', default = false},
			{ key = 'Kick9', type = 'checkbox', text = 'Купель сущности', desc = '', default = false },
			{ key = 'Kick25', type = 'checkbox', text = 'Оживить', desc = '', default = false },
			{ key = 'Kick22', type = 'checkbox', text = 'Излияние', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "            ЛОК." },
			{ key = 'Kick15', type = 'checkbox', text = 'Неистовство Тьмы', desc = '', default = false },			
			{ key = 'Kick4', type = 'checkbox', text = 'Страх', desc = '', default = false },			
			{ key = 'Kick12', type = 'checkbox', text = 'Хаос болт', desc = '', default = false },
			{ key = 'Kick21', type = 'checkbox', text = 'Катаклизм', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "            ШАМ." },
			{ key = 'Kick13', type = 'checkbox', text = 'Хекс|Лягушка', desc = '', default = false },
			{ key = 'Kick2', type = 'checkbox', text = 'Лассо молний', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "            ПАЛАДИН." },
			{ key = 'Kick26', type = 'checkbox', text = 'Свет небес', desc = '', default = false },
			{ key = 'Kick27', type = 'checkbox', text = 'Вспышка света', desc = '', default = false },
			{ key = 'Kick28', type = 'checkbox', text = 'Покаяние', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "            ДХ." },
			{ key = 'Kick11', type = 'checkbox', text = 'Пронзающий взгляд', desc = '', default = false },
			{ type = 'rule' },

        }
    }

	configWindow2 = dark_addon.interface.builder.buildGUI(settings2)
    dark_addon.interface.buttons.add_toggle({
        name = 'settings2',
        label = 'Пвп кик!',
        font = 'dark_addon_icon',
        on = {
            label = dark_addon.interface.icon('book-open'),
            color = dark_addon.interface.color.green,
            color2 = dark_addon.interface.color.green
        },
        off = {
            label = dark_addon.interface.icon('book'),
            color = dark_addon.interface.color.red,
            color2 = dark_addon.interface.color.dark_grey
        },
        callback = function(self)
            if configWindow2.parent:IsShown() then
                configWindow2.parent:Hide()
            else
                configWindow2.parent:Show()
            end
        end
    })
		    local settings3 = {
        key = 'KiraFeral_settings3',
        title = 'Всратый кот production',
        width = 320,
        height = 794,
		color = "3cff00",
        resize = true,
        show = false,
        template = {
            { type = 'header', text = "            Укажи что кикать в фокус!" },
			{ type = 'rule' },
			{ type = 'header', text = "            МАГ" },
			{ key = 'KickFocus0', type = 'checkbox', text = 'Овца', desc = '', default = false },
			{ key = 'KickFocus20', type = 'checkbox', text = 'Ледовый шип', desc = '', default = false },
			{ key = 'KickFocus10', type = 'checkbox', text = 'Морозный луч', desc = '', default = false },
			{ key = 'KickFocus8', type = 'checkbox', text = 'Аркан стрелы', desc = '', default = false },
			{ key = 'KickFocus17', type = 'checkbox', text = 'Руна мощи', desc = '', default = false },
			{ key = 'KickFocus18', type = 'checkbox', text = 'Круг льда (Лужа фроста)', desc = '', default = false },
			{ key = 'KickFocus19', type = 'checkbox', text = 'Усиленная огненная глыба', desc = '', default = false },
			{ key = 'KickFocus7', type = 'checkbox', text = 'Прилив сил', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "            ПРИСТ." },
			{ key = 'KickFocus3', type = 'checkbox', text = 'Исповедь', desc = '', default = false },
			{ key = 'KickFocus5', type = 'checkbox', text = 'Божественный гимн', desc = '', default = false },
			{ key = 'KickFocus16', type = 'checkbox', text = 'Контроль разума', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "            ДРУ." },
			{ key = 'KickFocus6', type = 'checkbox', text = 'Транквила', desc = '', default = false },
			{ key = 'KickFocus23', type = 'checkbox', text = 'Сон', desc = '', default = false },
			{ key = 'KickFocus14', type = 'checkbox', text = 'Ураган', desc = '', default = false },
			{ key = 'KickFocus24', type = 'checkbox', text = 'Корни', desc = '', default = false },
			--{ key = 'KickFocus26', type = 'checkbox', text = 'Восстановление', desc = '', default = false },
			--{ key = 'regrowhealth', type = 'spinner', text = 'Минимум % хп цели', default = '30', desc = 'Что бы кикнуть ей восстановление', min = 5, max = 30, step = 1 },
			{ type = 'rule' },
			{ type = 'header', text = "            МОНК." },
			{ key = 'KickFocus1', type = 'checkbox', text = 'Успокаивающий туман', desc = '', default = false},
			{ key = 'KickFocus9', type = 'checkbox', text = 'Купель сущности', desc = '', default = false },
			{ key = 'KickFocus25', type = 'checkbox', text = 'Оживить', desc = '', default = false },
			{ key = 'KickFocus22', type = 'checkbox', text = 'Излияние', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "            ЛОК." },
			{ key = 'KickFocus15', type = 'checkbox', text = 'Неистовство Тьмы', desc = '', default = false },			
			{ key = 'KickFocus4', type = 'checkbox', text = 'Страх', desc = '', default = false },			
			{ key = 'KickFocus12', type = 'checkbox', text = 'Хаос болт', desc = '', default = false },
			{ key = 'KickFocus21', type = 'checkbox', text = 'Катаклизм', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "            ШАМ." },
			{ key = 'KickFocus13', type = 'checkbox', text = 'Хекс|Лягушка', desc = '', default = false },
			{ key = 'KickFocus2', type = 'checkbox', text = 'Лассо молний', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "            ПАЛАДИН." },
			{ key = 'KickFocus26', type = 'checkbox', text = 'Свет небес', desc = '', default = false },
			{ key = 'KickFocus27', type = 'checkbox', text = 'Вспышка света', desc = '', default = false },
			{ key = 'KickFocus28', type = 'checkbox', text = 'Покаяние', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "            ДХ." },
			{ key = 'KickFocus11', type = 'checkbox', text = 'Пронзающий взгляд', desc = '', default = false },
			{ type = 'rule' },

        }
    }

	configWindow3 = dark_addon.interface.builder.buildGUI(settings3)
    dark_addon.interface.buttons.add_toggle({
        name = 'settings3',
        label = 'Пвп кик по фокусу!',
        font = 'dark_addon_icon',
        on = {
            label = dark_addon.interface.icon('book-open'),
            color = dark_addon.interface.color.green,
            color2 = dark_addon.interface.color.green
        },
        off = {
            label = dark_addon.interface.icon('book'),
            color = dark_addon.interface.color.red,
            color2 = dark_addon.interface.color.dark_grey
        },
        callback = function(self)
            if configWindow3.parent:IsShown() then
                configWindow3.parent:Hide()
            else
                configWindow3.parent:Show()
            end
        end
    })
					dark_addon.interface.buttons.add_toggle({
        name = 'FormIt',
        label = 'Снять руты формой. [вкл|выкл]',
        font = 'dark_addon_icon',
        on = {
            label = dark_addon.interface.icon('car'),
            color = dark_addon.interface.color.green,
            color2 = dark_addon.interface.color.green
        },
        off = {
            label = dark_addon.interface.icon('car'),
            color = dark_addon.interface.color.red,
            color2 = dark_addon.interface.color.dark_grey
        },
    })
	
		 dark_addon.interface.buttons.add_toggle({
        name = 'dispel',
        label = 'Диспелим цели. [вкл|выкл]',
        font = 'dark_addon_icon',
        on = {
            label = dark_addon.interface.icon('toggle-on'),
            color = dark_addon.interface.color.green,
            color2 = dark_addon.interface.color.green
        },
        off = {
            label = dark_addon.interface.icon('toggle-off'),
            color = dark_addon.interface.color.red,
            color2 = dark_addon.interface.color.dark_grey
        },
    })
			dark_addon.interface.buttons.add_toggle({
        name = 'Battleress',
        label = 'БР по фотографии (фокусу!) [вкл|выкл]',
        font = 'dark_addon_icon',
        on = {
            label = dark_addon.interface.icon('heart'),
            color = dark_addon.interface.color.green,
            color2 = dark_addon.interface.color.green
        },
        off = {
            label = dark_addon.interface.icon('heart-broken'),
            color = dark_addon.interface.color.red,
            color2 = dark_addon.interface.color.dark_grey
        },
    })
	
	    dark_addon.interface.buttons.add_toggle({
        name = 'KickALL',
        label = 'ПВЕ КИК. [вкл|выкл]',
        font = 'dark_addon_icon',
        on = {
            label = dark_addon.interface.icon('axe-battle'),
            color = dark_addon.interface.color.green,
            color2 = dark_addon.interface.color.green
        },
        off = {
            label = dark_addon.interface.icon('axe'),
            color = dark_addon.interface.color.red,
            color2 = dark_addon.interface.color.dark_grey
        },
    })
		    dark_addon.interface.buttons.add_toggle({
        name = 'beartest',
        label = 'Потанчить если танк умер. [вкл|выкл]',
        font = 'dark_addon_icon',
        on = {
            label = dark_addon.interface.icon('bone'),
            color = dark_addon.interface.color.green,
            color2 = dark_addon.interface.color.green
        },
        off = {
            label = dark_addon.interface.icon('bone-break'),
            color = dark_addon.interface.color.red,
            color2 = dark_addon.interface.color.dark_grey
        },
    })
			
			
			dark_addon.interface.buttons.add_toggle({
        name = 'Information',
        label = 'Информация! [вкл|выкл]',
        font = 'dark_addon_icon',
        on = {
            label = dark_addon.interface.icon('hand-point-up'),
            color = dark_addon.interface.color.green,
            color2 = dark_addon.interface.color.green
        },
        off = {
            label = dark_addon.interface.icon('hand-point-up'),
            color = dark_addon.interface.color.red,
            color2 = dark_addon.interface.color.dark_grey
        },
    })
	
else

local settings = {
        key = 'KiraFeral_settings',
        title = 'Retard cat production',
        width = 350,
        height = 832,
	--	color = "3cff00",
		color = "00a2ff",
        resize = true,
        show = false,
        template = {
            { type = 'header', text = "                                     Main Settings" },
			        { type = 'rule' },
            { type = 'text', text = 'Choose that build: [1-2] - [Any] - [1] - [1] - [1] - [2] - [2]' },
            { type = 'text', text = 'Any other build = shit. Tested by: RaidBots.com' },
            { type = 'text', text = 'Support all talents exept:  [3-3] and [4-2] [4-3]' },
            { type = 'text', text = 'Talent: [6-1] required, if u wanna tank while ur tank rip.' },
            { type = 'text', text = 'Support all dps Azerite Talents, exept: Ripple.' },
            { type = 'text', text = 'ALT = Tiger Dash | Shift = Charge | Ctrl = Dash.' },
			{ type = 'text', text = 'Configure PvP kick Target|Focus from settings. (!!Check interrupts enabled to work!!)' },
			{ type = 'text', text = 'Enable PVE kick from buttun! (*Kick everycast.)' },
            { type = 'rule' },
            { type = 'header', text = '                                     Kick' },
            { key = 'intpercentlow', type = 'spinner', text = 'intpercentlow %', default = '50', desc = '', min = 5, max = 50, step = 1 },
            { key = 'intpercenthigh', type = 'spinner', text = 'intpercenthigh %', default = '65', desc = '', min = 51, max = 100, step = 1 },
		    { type = 'rule' },
		    { type = 'header', text = "                                     Usefull stuff." },
			{ key = 'Felroci', type = 'checkbox', text = 'Ferocious Bite only if 50 or more energy', desc = '', default = true },
			--{ key = 'Rake_AOE', type = 'checkbox', text = 'Rake AOE', desc = 'Use Rake to AOE' },
			{ key = 'usetrinkets', type = 'checkbox', text = 'Auto Trinkets', desc = 'If u had ofc.', default = true },
			{ key = 'flex', type = 'checkbox', text = 'Meld = Do Rake', desc = 'ONLY NIGHT ELF. Do meld then rake.', default = false },
			{ key = 'flex2', type = 'checkbox', text = 'Maim', desc = 'Only for pvp, if target had Rake and player has 5KP do Maim', default = false },		
			{ key = 'flex3', type = 'checkbox', text = 'Mighty Bash', desc = 'Only for pvp, if the target in 5 meters do Mighty Bash', default = false },					
					    { type = 'rule' },
						{ type = 'header', text = "                                     Save Ur Ass!" },
			{ key = 'BearForm', type = 'spinner', text = 'Auto Bear Form', desc = 'On HP %', default = 7, min = 1, max = 100, step = 1 }, 
			{ key = 'Renewal', type = 'spinner', text = 'Renewal', desc = 'On HP %', default = 30, min = 1, max = 100, step = 1 }, 
			{ key = "healthstone", type = "checkspin", text = "Warlock food", desc = "On HP %", default_check = false, default_spin = 30, min = 5, max = 100, step = 1 },
			{ key = "Instincts", type = "spinner", text = "Instincts", desc = "On HP %", default = 40, min = 1, max = 100, step = 1 },
			{ key = "potion", type = "checkspin", text = "Coastal Rejuvenation Potion", desc = "On HP %", default_check = false, default_spin = 30, min = 5, max = 100, step = 1 },  
		    { type = 'rule' },
			{ type = 'header', text = "                                     Move Ur Ass." },
			
			{ key = 'charge', type = 'dropdown', text = 'Charge.', desc = 'If [2-3]', default = 'shift',
				list = {
							{ key = 'control', text = 'CTRL' },
							{ key = 'alt', text = 'ALT' },
							{ key = 'shift', text = 'SHIFT' },
					    } },
			
			{ key = 'dash', type = 'dropdown', text = 'Tiger Dash.', desc = 'If [2-1]', default = 'alt',
				list = {
							{ key = 'control', text = 'CTRL' },
							{ key = 'alt', text = 'ALT' },
							{ key = 'shift', text = 'SHIFT' },
					    } },
			{ key = 'dash2', type = 'dropdown', text = 'Dash.', desc = 'Def. sprint.', default = 'control',
				list = {
							{ key = 'control', text = 'CTRL' },
							{ key = 'alt', text = 'ALT' },
							{ key = 'shift', text = 'SHIFT' },
					    } },
							
            { type = 'text', text = 'Attention u cant bind 3 keys on same bind!!!!' },						
        }
    }
configWindow = dark_addon.interface.builder.buildGUI(settings)
	
    dark_addon.interface.buttons.add_toggle({
        name = 'settings',
        label = 'Main settings!',
        font = 'dark_addon_icon',
        on = {
            label = dark_addon.interface.icon('cog'),
            color = dark_addon.interface.color.green,
            color2 = dark_addon.interface.color.green
        },
        off = {
            label = dark_addon.interface.icon('cog'),
            color = dark_addon.interface.color.red,
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
	
	    local settings2 = {
        key = 'KiraFeral_settings2',
        title = 'Retard cat production',
        width = 320,
        height = 794,
		color = "3cff00",
        resize = true,
        show = false,
        template = {
            { type = 'header', text = "                         Configure target kick!" },
			{ type = 'rule' },
			{ type = 'header', text = "                                     Mage" },
			{ key = 'Kick0', type = 'checkbox', text = 'Sheep', desc = '', default = false },
			{ key = 'Kick20', type = 'checkbox', text = 'Glacial Spike', desc = '', default = false },
			{ key = 'Kick10', type = 'checkbox', text = 'Ray of Frost', desc = '', default = false },
			{ key = 'Kick8', type = 'checkbox', text = 'Arcane Missiles', desc = '', default = false },
			{ key = 'Kick17', type = 'checkbox', text = 'Rune of Power', desc = '', default = false },
			{ key = 'Kick18', type = 'checkbox', text = 'Ring of Frost', desc = '', default = false },
			{ key = 'Kick19', type = 'checkbox', text = 'Greater pyroblast', desc = '', default = false },
			{ key = 'Kick7', type = 'checkbox', text = 'Evocation', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "                                     Priest." },
			{ key = 'Kick3', type = 'checkbox', text = 'Penance', desc = '', default = false },
			{ key = 'Kick5', type = 'checkbox', text = 'Divine Hymn', desc = '', default = false },
			{ key = 'Kick16', type = 'checkbox', text = 'Mind control', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "                                     Druid." },
			{ key = 'Kick6', type = 'checkbox', text = 'Tranquility', desc = '', default = false },
			{ key = 'Kick23', type = 'checkbox', text = 'Hibernate', desc = '', default = false },
			{ key = 'Kick14', type = 'checkbox', text = 'Cyclone', desc = '', default = false },
			{ key = 'Kick24', type = 'checkbox', text = 'Entangling Roots', desc = '', default = false },
			--{ key = 'Kick26', type = 'checkbox', text = 'Восстановление', desc = '', default = false },
			--{ key = 'regrowhealth', type = 'spinner', text = 'Минимум % хп цели', default = '30', desc = 'Что бы кикнуть ей восстановление', min = 5, max = 30, step = 1 },
			{ type = 'rule' },
			{ type = 'header', text = "                                     Monk." },
			{ key = 'Kick1', type = 'checkbox', text = 'Soothing Mist', desc = '', default = false},
			{ key = 'Kick9', type = 'checkbox', text = 'Essence Font', desc = '', default = false },
			{ key = 'Kick25', type = 'checkbox', text = 'Vivify', desc = '', default = false },
			{ key = 'Kick22', type = 'checkbox', text = 'Effuse', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "                                     Warlock." },
			{ key = 'Kick15', type = 'checkbox', text = 'Shadowfury', desc = '', default = false },			
			{ key = 'Kick4', type = 'checkbox', text = 'Fear', desc = '', default = false },			
			{ key = 'Kick12', type = 'checkbox', text = 'Chaos Bolt', desc = '', default = false },
			{ key = 'Kick21', type = 'checkbox', text = 'Cataclysm', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "                                     Shaman." },
			{ key = 'Kick13', type = 'checkbox', text = 'Hex|Frog', desc = '', default = false },
			{ key = 'Kick2', type = 'checkbox', text = 'Lightning Lasso', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "                                     Paladin." },
			{ key = 'Kick26', type = 'checkbox', text = 'Holy Light', desc = '', default = false },
			{ key = 'Kick27', type = 'checkbox', text = 'Flash of Light', desc = '', default = false },
			{ key = 'Kick28', type = 'checkbox', text = 'Repentance', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "                                     DH." },
			{ key = 'Kick11', type = 'checkbox', text = 'Yes. Just yes. LoL. Kick Eyes.', desc = 'p.s not tested may not work.', default = false },
			{ type = 'rule' },

        }
    }

	configWindow2 = dark_addon.interface.builder.buildGUI(settings2)
    dark_addon.interface.buttons.add_toggle({
        name = 'settings2',
        label = 'PvP Kick Target!',
        font = 'dark_addon_icon',
        on = {
            label = dark_addon.interface.icon('book-open'),
            color = dark_addon.interface.color.green,
            color2 = dark_addon.interface.color.green
        },
        off = {
            label = dark_addon.interface.icon('book'),
            color = dark_addon.interface.color.red,
            color2 = dark_addon.interface.color.dark_grey
        },
        callback = function(self)
            if configWindow2.parent:IsShown() then
                configWindow2.parent:Hide()
            else
                configWindow2.parent:Show()
            end
        end
    })
		    local settings3 = {
        key = 'KiraFeral_settings3',
        title = 'Retard cat production',
        width = 320,
        height = 794,
		color = "3cff00",
        resize = true,
        show = false,
        template = {
            { type = 'header', text = "                         Configure focus kick!" },
			{ type = 'rule' },
			{ type = 'header', text = "                                     Mage" },
			{ key = 'KickFocus0', type = 'checkbox', text = 'Sheep', desc = '', default = false },
			{ key = 'KickFocus20', type = 'checkbox', text = 'Glacial Spike', desc = '', default = false },
			{ key = 'KickFocus10', type = 'checkbox', text = 'Ray of Frost', desc = '', default = false },
			{ key = 'KickFocus8', type = 'checkbox', text = 'Arcane Missiles', desc = '', default = false },
			{ key = 'KickFocus17', type = 'checkbox', text = 'Rune of Power', desc = '', default = false },
			{ key = 'KickFocus18', type = 'checkbox', text = 'Ring of Frost', desc = '', default = false },
			{ key = 'KickFocus19', type = 'checkbox', text = 'Greater pyroblast', desc = '', default = false },
			{ key = 'KickFocus7', type = 'checkbox', text = 'Evocation', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "                                     Priest." },
			{ key = 'KickFocus3', type = 'checkbox', text = 'Penance', desc = '', default = false },
			{ key = 'KickFocus5', type = 'checkbox', text = 'Divine Hymn', desc = '', default = false },
			{ key = 'KickFocus16', type = 'checkbox', text = 'Mind Control', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "                                     Druid." },
			{ key = 'KickFocus6', type = 'checkbox', text = 'Tranquility', desc = '', default = false },
			{ key = 'KickFocus23', type = 'checkbox', text = 'Hibernate', desc = '', default = false },
			{ key = 'KickFocus14', type = 'checkbox', text = 'Cyclone', desc = '', default = false },
			{ key = 'KickFocus24', type = 'checkbox', text = 'Entangling Roots', desc = '', default = false },
			--{ key = 'KickFocus26', type = 'checkbox', text = 'Восстановление', desc = '', default = false },
			--{ key = 'regrowhealth', type = 'spinner', text = 'Минимум % хп цели', default = '30', desc = 'Что бы кикнуть ей восстановление', min = 5, max = 30, step = 1 },
			{ type = 'rule' },
			{ type = 'header', text = "                                     Monk." },
			{ key = 'KickFocus1', type = 'checkbox', text = 'Soothing Mist', desc = '', default = false},
			{ key = 'KickFocus9', type = 'checkbox', text = 'Essence Font', desc = '', default = false },
			{ key = 'KickFocus25', type = 'checkbox', text = 'Vivify', desc = '', default = false },
			{ key = 'KickFocus22', type = 'checkbox', text = 'Effuse', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "                                     Warlock." },
			{ key = 'KickFocus15', type = 'checkbox', text = 'Shadowfury', desc = '', default = false },			
			{ key = 'KickFocus4', type = 'checkbox', text = 'Fear', desc = '', default = false },			
			{ key = 'KickFocus12', type = 'checkbox', text = 'Chaos bolt', desc = '', default = false },
			{ key = 'KickFocus21', type = 'checkbox', text = 'Cataclysm', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "                                     Shaman." },
			{ key = 'KickFocus13', type = 'checkbox', text = 'Hex|Frog', desc = '', default = false },
			{ key = 'KickFocus2', type = 'checkbox', text = 'Lightning Lasso', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "                                     Paladin." },
			{ key = 'KickFocus26', type = 'checkbox', text = 'Holy Light', desc = '', default = false },
			{ key = 'KickFocus27', type = 'checkbox', text = 'Flash of Light', desc = '', default = false },
			{ key = 'KickFocus28', type = 'checkbox', text = 'Repentance', desc = '', default = false },
			{ type = 'rule' },
			{ type = 'header', text = "                                     DH." },
			{ key = 'KickFocus11', type = 'checkbox', text = 'Yes. Just yes. LoL. Kick Eyes.', desc = 'p.s not tested may not work.', default = false },
			{ type = 'rule' },

        }
    }

	configWindow3 = dark_addon.interface.builder.buildGUI(settings3)
    dark_addon.interface.buttons.add_toggle({
        name = 'settings3',
        label = 'PvP Kick Focus!',
        font = 'dark_addon_icon',
        on = {
            label = dark_addon.interface.icon('book-open'),
            color = dark_addon.interface.color.green,
            color2 = dark_addon.interface.color.green
        },
        off = {
            label = dark_addon.interface.icon('book'),
            color = dark_addon.interface.color.red,
            color2 = dark_addon.interface.color.dark_grey
        },
        callback = function(self)
            if configWindow3.parent:IsShown() then
                configWindow3.parent:Hide()
            else
                configWindow3.parent:Show()
            end
        end
    })
					dark_addon.interface.buttons.add_toggle({
        name = 'FormIt',
        label = 'PvP no Roots. [On|Off] *testing',
        font = 'dark_addon_icon',
        on = {
            label = dark_addon.interface.icon('car'),
            color = dark_addon.interface.color.green,
            color2 = dark_addon.interface.color.green
        },
        off = {
            label = dark_addon.interface.icon('car'),
            color = dark_addon.interface.color.red,
            color2 = dark_addon.interface.color.dark_grey
        },
    })
	
		 dark_addon.interface.buttons.add_toggle({
        name = 'dispel',
        label = 'Dispel targets. [On|Off]',
        font = 'dark_addon_icon',
        on = {
            label = dark_addon.interface.icon('toggle-on'),
            color = dark_addon.interface.color.green,
            color2 = dark_addon.interface.color.green
        },
        off = {
            label = dark_addon.interface.icon('toggle-off'),
            color = dark_addon.interface.color.red,
            color2 = dark_addon.interface.color.dark_grey
        },
    })
			dark_addon.interface.buttons.add_toggle({
        name = 'Battleress',
        label = 'BattleRess (by Focus!) [On|Off]',
        font = 'dark_addon_icon',
        on = {
            label = dark_addon.interface.icon('heart'),
            color = dark_addon.interface.color.green,
            color2 = dark_addon.interface.color.green
        },
        off = {
            label = dark_addon.interface.icon('heart-broken'),
            color = dark_addon.interface.color.red,
            color2 = dark_addon.interface.color.dark_grey
        },
    })
	
	    dark_addon.interface.buttons.add_toggle({
        name = 'KickALL',
        label = 'PVE Kick everything. [On|Off]',
        font = 'dark_addon_icon',
        on = {
            label = dark_addon.interface.icon('axe-battle'),
            color = dark_addon.interface.color.green,
            color2 = dark_addon.interface.color.green
        },
        off = {
            label = dark_addon.interface.icon('axe'),
            color = dark_addon.interface.color.red,
            color2 = dark_addon.interface.color.dark_grey
        },
    })
		    dark_addon.interface.buttons.add_toggle({
        name = 'beartest',
        label = 'Tank if tank die. [On|Off]',
        font = 'dark_addon_icon',
        on = {
            label = dark_addon.interface.icon('bone'),
            color = dark_addon.interface.color.green,
            color2 = dark_addon.interface.color.green
        },
        off = {
            label = dark_addon.interface.icon('bone-break'),
            color = dark_addon.interface.color.red,
            color2 = dark_addon.interface.color.dark_grey
        },
    })
			
			
			dark_addon.interface.buttons.add_toggle({
        name = 'Information',
        label = 'Information! [On|Off]',
        font = 'dark_addon_icon',
        on = {
            label = dark_addon.interface.icon('hand-point-up'),
            color = dark_addon.interface.color.green,
            color2 = dark_addon.interface.color.green
        },
        off = {
            label = dark_addon.interface.icon('hand-point-up'),
            color = dark_addon.interface.color.red,
            color2 = dark_addon.interface.color.dark_grey
        },
    })
end

	

end



dark_addon.rotation.register({
  spec = dark_addon.rotation.classes.druid.feral,
  name = 'feral',
  label = 'kirasaka-hub.com',
  combat = combat,
  resting = resting,
  interface = interface
})

