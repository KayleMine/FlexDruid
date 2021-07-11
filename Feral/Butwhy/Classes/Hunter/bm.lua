  local addon, dark_addon = ...
local SB = dark_addon.rotation.spellbooks.GIThunter
  local AZ = dark_addon.rotation.spellbooks.azerite

  -- Used In Rotation
    SB.PreciseShots = 260242 
    SB.DoubleTap = 260402 
    SB.RapidFire = 257044 
    SB.LethalShots = 260395 
    SB.SteadyShots = 56641 
    SB.ArcaneShot = 185358 
    SB.AimedShot = 19434 
    SB.AutoShot = 75 
    SB.AutoAttack = 6603 
    SB.WW =  546 
    SB.AMurderOfCrowsMM = 131894 
    SB.PrimaleRage = 264667 
    SB.PredThirst = 264663 
    SB.MobileBanking = 83958 
    SB.GlobalCooldown = 61304 
    SB.ChainSkullblasters = 144333 
    -- RACIALS
    SB.ArcaneTorrent = 80483  -- Hunter
    SB.Berserking = 26297 
    SB.BeastialWrath = 19574 
    SB.BloodFury = 20572  -- Hunter
    SB.Cannibalize = 20577 
    SB.Darkflight = 68992 
    SB.EscapeArtist = 20589 
    SB.EveryManForHimself = 59752 
    SB.GiftOfTheNaaru = 59543  -- Hunter
    SB.PackHobgoblin = 69046 
    SB.QuakingPalm = 107079 
    SB.RocketBarrage = 69041 
    SB.RocketJump = 69070 
    SB.RunningWild = 87840 
    SB.Shadowmeld = 58984 
    SB.Stoneform = 20594 
    SB.TwoForms = 68996 
    SB.WarStomp = 20549 
    SB.WillOfTheForsaken = 7744 
    -- HUNTER PET SPELLS
    SB.Growl = 2649 
    SB.HeartOfThePhoenix = 55709 
    SB.Claw = 16827 
    SB.Dash = 61684 
    -- HUNTER TALENTS
    -- AMurderOfCrows = 206505 
    SB.AMurderOfCrows = 131894 
    SB.Barrage = 120360 
    SB.BindingShot = 109248 
    SB.ChimaeraShot = 53209 
    SB.BarbedShot = 217200 
    SB.Intimidation = 19577 
    SB.Stampede = 201430 
    SB.Volley = 194386 
    SB.WyvernSting = 19386 
    -- HUNTER SPELLS
    SB.AspectOfTheCheetah = 186257 
    SB.AspectOfTheTurtle = 186265 
    SB.CallPet1 = 883 
    SB.CallPet2 = 83242 
    SB.CallPet3 = 83243 
    SB.CallPet4 = 83244 
    SB.CallPet5 = 83245 
    SB.ConcussiveShot = 5116 
    SB.CounterShot = 147362 
    SB.Disengage = 781 
    SB.EagleEye = 6197 
    SB.Exhilaration = 109304 
    SB.FeignDeath = 5384 
    SB.Flare = 1543 
    SB.Misdirection = 34477 
    SB.MultiShot = 257620 
    SB.BeastLore = 1462 
    SB.DismissPet = 2641 
    SB.FeedPet = 6991 
    SB.MendPet = 136 
    SB.RevivePet = 982 
    SB.TameBeast = 1515 
    -- BEAST MASTERY
    SB.AspectOfTheWild = 193530 
    SB.BestialWrath = 19574 
    SB.CobraShot = 193455 
    SB.DireBeast = 120679 
    SB.DireBeastBuff = 120694 
    SB.KillCommand = 34026 
    SB.TitansThunder = 207068 
    SB.BeastCleave = 118455 
    -- MARKSMANSHIP
    SB.BurstingShot = 186387 
    SB.MarkedShot = 185901 
    SB.Trueshot = 193526 
    SB.MarkingTargets = 223138 
    SB.HuntersMark = 185987 
    SB.HuntersMarkMM = 257284 
    SB.HuntersMarkDebuff = 185365 
    SB.Vulnerable = 187131 
    SB.PiercingShot = 198670 
    SB.ExplosiveShot = 212431 
    SB.ExplosiveShotDetonate = 212679 
    SB.Sidewinders = 214579 
    SB.LockAndLoad = 194594 
    SB.CriticalAimed = 242243 
    SB.BlackArrow = 194599 
    SB.Bullseye = 204090 
    SB.Windburst = 204147 
    SB.SteadyFocus = 193533 
    SB.Sentinel = 206817 
    SB.SentinelsSight = 208913 
    -- SURVIVAL
    SB.AspectOfTheEagle = 186289 
    SB.Butchery = 212436 
    SB.Carve = 187708 
    SB.DragonsfireGrenade = 194855 
    SB.FlankingStrike = 202800 
    SB.FuryOfTheEagle = 203415 
    SB.Harpoon = 190925 
    SB.HatchetToss = 193265 
    SB.Lacerate = 185855 
    SB.MongooseBite = 190928 
    SB.Muzzle = 187707 
    SB.RaptorStrike = 186270 
    SB.FreezingTrap = 187650 
    SB.ExplosiveTrap = 191433 
    SB.TarTrap = 187698 
    SB.MokNathalTactics = 201081 
    SB.SteelTrap = 162488 
    SB.ThrowingAxes = 200163 
    SB.SpittingCobra = 194407 
    SB.MoknathalTactics = 201081 
    SB.WayoftheMoknathal = 201081 
    SB.SerpentSting = 87935 
    SB.SnakeHunter = 201078 
    SB.WingClip = 195645 
    SB.MongooseFury = 190931 
    SB.RangersNet = 200108 
    SB.StickyBomb = 191241 
    SB.Caltrops = 194277 
	
	
	SB.BarbedBuff = 217200
	
  local function combat()
  
if not GetCVar("Stage1") then
return RegisterCVar("Stage1", 2)
end

if not GetCVar("Stage2") then
return RegisterCVar("Stage2", 2)
end
  
    local enemyCount = enemies.around(8)
    if enemyCount == 0 then
      enemyCount = 1
    end
  if GetCVar("nameplateShowEnemies") == '0' then
    SetCVar("nameplateShowEnemies", 1)
  end
  --print(enemyCount)
  macro('/cqs')



 if player.alive and target.alive and target.enemy and not player.channeling() then

   if target.enemy and target.alive and target.distance < 45 then
      auto_attack()
    end  


if castable(SB.BestialWrath) then return cast(SB.BestialWrath) end

if toggle('cooldowns', false) then

if castable(SB.AspectOfTheWild) then return cast(SB.AspectOfTheWild) end

end


if target.buff(SB.BarbedBuff).down and castable(SB.BarbedShot) then
SetCVar("Stage1", 1)
else
SetCVar("Stage1", 3)
end

if target.debuff(SB.BarbedBuff).remains < 2 and castable(SB.BarbedShot) then
SetCVar("Stage1", 0)
else
SetCVar("Stage1", 3)
end


if GetCVar("Stage1")  == '1' then
return cast(SB.BarbedShot, 'target')
end

if GetCVar("Stage1")  == '0' then
return cast(SB.BarbedShot, 'target')
end




if not castable(SB.KillCommand) then
if castable(SB.CobraShot) then
return cast(SB.CobraShot, 'target')
end
end

if castable(SB.KillCommand) then
return cast(SB.KillCommand, 'target')
end














-- if GetCVar("Stage1")  == '0' then
--  SetCVar("Stage1", 1)




  end
  
  
  end

  local function resting()
if not GetCVar("Stage1") then
return RegisterCVar("Stage1", 2)
end
if not GetCVar("Stage2") then
return RegisterCVar("Stage2", 2)
end
  
  end

  dark_addon.rotation.register({
    spec = dark_addon.rotation.classes.hunter.beastmastery,
    name = 'BMload',
    label = 'BMload',
    combat = combat,
    resting = resting,
    interface = interface
    --trink = trink
})
