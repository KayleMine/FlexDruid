local dark_addon = dark_interface
local SB = dark_addon.rotation.spellbooks.warrior
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

--SpellBook
SB.BattleShout = 6673
SB.Execute = 281000
SB.BerserkerRage = 18499
SB.Hamstring = 1715
SB.Bladestorm = 227847
SB.HeroicLeap = 6544
SB.Charge = 100
SB.HeroicThrow = 57755
SB.ColossusSmash = 167105
SB.IntimidatingShout = 5246
SB.DiebytheSword = 118038
SB.MortalStrike = 12294
SB.Overpower = 7384
SB.Pummel = 6552
SB.VictoryRush = 34428
SB.RallyingCry = 97462
SB.Whirlwind = 1680
SB.Slam = 1464
SB.SweepingStrikes = 260708
SB.Skullsplitter = 260643
SB.ImpendigVicroty = 202168
SB.StormBolt = 107570
SB.Rend = 772
SB.DefensiveStance = 197690
SB.Warbreaker = 262161
SB.Cleave = 845
SB.Avatar = 107574
SB.DeadlyCalm = 262228
SB.Ravager = 152277
SB.WarBanner = 236320
SB.SharpenBlade = 198817
SB.Duel = 236273
SB.SpellReflection = 216890
SB.Disarm = 236077
SB.ColossusSmashDebuff = 208086
SB.DeepWoundsDebuff = 262115
SB.SuddenDeath = 29725
SB.Kon = 127220
-- Define Counters

local function combat()
  if target.alive and target.enemy and player.alive and not player.channeling() then
    -- Reading from settings
	local DefStance = 0
    local intpercentlow = dark_addon.settings.fetch("armswar_settings_intpercentlow", 50)
    local intpercenthigh = dark_addon.settings.fetch("armswar_settings_intpercenthigh", 65)
    local StormBoltInt = dark_addon.settings.fetch("armswar_settings_StormBoltInt", true)
    local DBTSHealth = dark_addon.settings.fetch("armswar_settings_DBTSHealth", 60)
    local GiftHealth = dark_addon.settings.fetch("armswar_settings_GiftHealth", 20)
    local Hstonecheck = dark_addon.settings.fetch("armswar_settings_healthstone.check", true)
    local Hstonepercent = dark_addon.settings.fetch("armswar_settings_healthstone.spin", 20)
    local race = UnitRace("player")
	-- healka
	local healkapercent = dark_addon.settings.fetch('armswar_settings_healka.spin', 60)
	  local healka = dark_addon.settings.fetch('armswar_settings_healka.check', true)
    -- Targets in range check
    local enemyCount = enemies.around(8)
    dark_addon.interface.status_extra("T#:" .. enemyCount .. " D:" .. target.distance)

    -- Use Racials
    if toggle("useracials", false) then
      if race == "Orc" and castable(SB.BloodFury) then
        return cast(SB.BloodFury)
      end
      if race == "Troll" and castabe(SB.Berserking) then
        return cast(SB.Berserking)
      end
      if race == "Mag'har Orc" and castable(SB.AncestralCall) then
        return cast(SB.AncestralCall)
      end
      if race == "LightforgedDraenei" and castable(SB.LightsJudgement) then
        return cast(SB.LightsJudgement)
      end
      if race == "Draenei" and -player.health <= GiftHealth then
        return cast(SB.GiftoftheNaaru)
      end
    end

    -- Auto Attack
    if target.enemy and target.alive and target.distance < 8 then
      auto_attack()
    end
	-- Charge IC
	if modifier.shift and castable (SB.Charge) then
		return cast(SB.Charge, 'target')
	end
    -- Heroic Leap IC
    if modifier.alt and castable(SB.HeroicLeap) then
      return cast(SB.HeroicLeap, "ground")
    end

    -- Interrupts
    -- Define random number for interrupt
    local intpercent = math.random(intpercentlow, intpercenthigh)

    -- Pummel
    if castable(SB.Pummel, "target") and target.interrupt(intpercent, false) then
      print("Pummel Interrupt @ " .. intpercent)
      return cast(SB.Pummel, "target")
    end

    -- Storm Bolt
    if
      castable(SB.StormBolt, "target") and target.interrupt(intpercent, false) and
        StormBoltInt and
        target.distance < 20 and
        talent(2, 3)
     then
      print("Storm Bolt Interrupt @ " .. intpercent)
      return cast(SB.StormBolt, "target")
    end

    -- Cooldowns
    if toggle("cooldowns", false) then
      -- Avatar on cooldown or for burst DPS
      if castable(SB.Avatar) and castable(SB.ColossusSmash) and talent(6, 2) then
        return cast(SB.Avatar)
      end
    end

    -- Defensive Spells
    -- Defensive Stance
    if castable(SB.DefensiveStance) and talent(4, 3) and toggle("defensivestance", false) and DefStance == 0 then
      print("Defensive Stance On")
      DefStance = 1
      return cast(SB.DefensiveStance)
    end

    if castable(SB.DefensiveStance) and talent(4, 3) and not toggle("defensivestance", false) and DefStance == 1 then
      print("Defensive Stance Off")
      DefStance = 0
      return cast(SB.DefensiveStance)
    end

    -- Die by the Sword
    if castable(SB.DiebytheSword) and -buff(SB.DiebytheSword) and -player.health <= DBTSHealth then
      print("Heal @ " .. -player.health)
      return cast(SB.DiebytheSword)
    end


	--healimsya zhivem

   if castable(SB.VictoryRush) and -buff(SB.VictoryRushBuff) and -player.health <= healkapercent and healka then
    return cast(SB.VictoryRush, 'target')
  end
  
   if castable(SB.ImpendigVicroty) and -player.health <= healkapercent and healka then
    return cast(SB.ImpendigVicroty, 'target')
  end


    -- Healthstone
    if Hstonecheck == true and -player.health < Hstonepercent and GetItemCount(5512) >= 1 and GetItemCooldown(5512) == 0 then
      macro("/use Healthstone")
    end

    if enemyCount == 1 then
      -- Single Target - non-Execute phase
      if -target.health >= 20 or (talent(3, 1) and -target.health >= 35) then
        print('ST non Execute phase')

        -- Cast Rend if less than 4 seconds remains, outside of Colossus Smash
        if
          castable(SB.Rend, "target") and target.debuff(SB.Rend).remains < 4 and
            not (-target.debuff(SB.ColossusSmashDebuff)) and
            -power.rage > 30 and
            talent(3, 3)
         then
          return cast(SB.Rend)
        end

        -- Cast Skullsplitter when less than 60 Rage, when Bladestorm is not about to be used.
        if
          castable(SB.Skullsplitter, "target") and -spell(SB.Bladestorm) > 12 and
            -power.rage < 50 and
            talent(1, 3)
         then
          return cast(SB.Skullsplitter)
        end

        --[[        -- Cast Avatar prior to Colossus Smash
        if castable(SB.Avatar, 'target') and -spell(SB.Avatar) == 0 and -spell(SB.ColossusSmash) == 0 and talent(6,2) then
          print'ST NE'
          return cast(SB.Avatar)
        end]]
        -- Cast Ravager immediately prior to Colossus Smash
        if castable(SB.Ravager, "target") and -spell(SB.ColossusSmash) == 0 and talent(7, 3) then
          return cast(SB.Ravager, "player")
        end

        -- Cast Colossus Smash
        if castable(SB.ColossusSmash, "target") then
          return cast(SB.ColossusSmash)
        end

        -- Cast Warbreaker
        if castable(SB.Warbreaker, "target") and talent(5, 2) then
          return cast(SB.Warbreaker)
        end

        -- Cast Deadly Calm
        if castable(SB.DeadlyCalm, "target") and talent(6, 3) then
          return cast(SB.DeadlyCalm)
        end

        -- Cast Execute with Sudden Death proc
        if castable(SB.Execute, "target") and -buff(SB.SuddenDeath) then
          return cast(SB.Execute)
        end

        -- Cast Overpower to buff Mortal Strike
        if castable(SB.Overpower, "target") then
          return cast(SB.Overpower)
        end

        -- Cast Mortal Strike to maintain Deep Wounds
        if castable(SB.MortalStrike, "target") and -power.rage >= 30 then
          return cast(SB.MortalStrike)
        end

        -- Cast Bladestorm during Colossus Smash or Test of Might (see below)
        if castable(SB.Bladestorm, "target") and -target.debuff(SB.ColossusSmashDebuff) then
          return cast(SB.Bladestorm)
        end

        -- Cast Slam
        if castable(SB.Slam, "target") and -power.rage >= 20 then
          return cast(SB.Slam)
        end
      end

      -- Single Target - Execute phase
      if -target.health < 20 or (talent(3, 1) and -target.health < 35) then
        print('ST Execute phase')

        -- Cast Skullsplitter when less than 60 Rage
        if castable(SB.Skullsplitter, "target") and -power.rage < 50 and talent(1, 3) then
          return cast(SB.Skullsplitter)
        end

        --[[        -- Cast Avatar prior to Colossus Smash
        if castable(SB.Avatar, 'target') and -spell(SB.Avatar) == 0 and -spell(SB.ColossusSmash) == 0 and talent(6,2) then
          print'ST Execute'
          return cast(SB.Avatar)
        end]]
        -- Cast Ravager immediately prior to Colossus Smash
        if castable(SB.Ravager, "target") and -spell(SB.ColossusSmash) == 0 and talent(7, 3) then
          return cast(SB.Ravager, "player")
        end

        -- Cast Colossus Smash
        if castable(SB.ColossusSmash, "target") then
          return cast(SB.ColossusSmash)
        end

        -- Cast Warbreaker
        if castable(SB.Warbreaker, "target") and talent(5, 2) then
          return cast(SB.Warbreaker)
        end

        -- Cast Bladestorm when under 30 Rage.
        if castable(SB.Bladestorm, "target") and -power.rage < 30 then
          return cast(SB.Bladestorm)
        end

        -- Cast Deadly Calm
        if castable(SB.DeadlyCalm, "target") and talent(6, 3) then
          return cast(SB.DeadlyCalm)
        end

        -- Cast Mortal Strike with 2 stacks of Overpower and Dreadnaught talented.
        if
          castable(SB.MortalStrike, "target") and buff(SB.Overpower).count == 2 and
            talent(7, 2) and
            -power.rage >= 30
         then
          return cast(SB.MortalStrike)
        end

        -- Cast Overpower
        if castable(SB.Overpower, "target") then
          return cast(SB.Overpower)
        end

        -- Cast Execute
        if castable(SB.Execute, "target") and -power.rage >= 20 then
          return cast(SB.Execute)
        end
      end
    end

    -- Multiple Target - 2 to 3
    if enemyCount == 2 or enemyCount == 3 then
      print('MultiTarget 2-3')

      -- Cast Sweeping Strikes if you are not about to use Bladestorm
      if castable(SB.SweepingStrikes, "target") and -spell(SB.Bladestorm) > 12 then
        return cast(SB.SweepingStrikes)
      end

      -- Cast Rend if less than 4 seconds remains, outside of Colossus Smash
      if
        castable(SB.Rend, "target") and target.debuff(SB.Rend).remains < 4 and
          not (-target.debuff(SB.ColossusSmashDebuff)) and
          -power.rage > 30 and
          talent(3, 3)
       then
        return cast(SB.Rend)
      end

      -- Cast Skullsplitter when less than 60 Rage, when Bladestorm is not about to be used.
      if
        castable(SB.Skullsplitter, "target") and -spell(SB.Bladestorm) > 12 and
          -power.rage < 50 and
          talent(1, 3)
       then
        return cast(SB.Skullsplitter)
      end

      --[[        -- Cast Avatar prior to Colossus Smash
        if castable(SB.Avatar, 'target') and -spell(SB.Avatar) == 0 and -spell(SB.ColossusSmash) == 0 and talent(6,2) then
          print'MT 2-3'
          return cast(SB.Avatar)
        end]]
      -- Cast Ravager immediately prior to Colossus Smash
      if castable(SB.Ravager, "target") and -spell(SB.ColossusSmash) == 0 and talent(7, 3) then
        return cast(SB.Ravager, "player")
      end

      -- Cast Colossus Smash
      if castable(SB.ColossusSmash, "target") then
        return cast(SB.ColossusSmash)
      end

      -- Cast Warbreaker
      if castable(SB.Warbreaker, "target") and talent(5, 2) then
        return cast(SB.Warbreaker)
      end

      -- Cast Bladestorm during the Colossus Smash debuff
      if castable(SB.Bladestorm, "target") and -target.debuff(SB.ColossusSmashDebuff) then
        return cast(SB.Bladestorm)
      end

      -- Cast Deadly Calm
      if castable(SB.DeadlyCalm, "target") and talent(6, 3) then
        return cast(SB.DeadlyCalm)
      end

      -- Cast Cleave to maintain Deep Wounds
      if castable(SB.Cleave, "target") and -power.rage >= 20 and talent(5, 3) then
        return cast(SB.Cleave)
      end

      -- Cast Mortal Strike with 2 stacks of Overpower and Dreadnaught talented
      if
        castable(SB.MortalStrike, "target") and buff(SB.Overpower).count == 2 and
          talent(7, 2) and
          -power.rage >= 30
       then
        return cast(SB.MortalStrike)
      end

      -- Cast Execute
      if castable(SB.Execute, "target") and -power.rage >= 20 then
        return cast(SB.Execute)
      end

      -- Cast Overpower
      if castable(SB.Overpower, "target") then
        return cast(SB.Overpower)
      end

      -- Cast Mortal Strike
      if castable(SB.MortalStrike, "target") and -power.rage >= 30 then
        return cast(SB.MortalStrike)
      end

      -- Cast Slam during Sweeping Strikes
      if castable(SB.Slam, "target") and -power.rage >= 20 and -buff(SB.SweepingStrikes) then
        return cast(SB.Slam)
      end

      -- Cast Whirlwind
      if castable(SB.Whirlwind, "target") and -power.rage >= 30 then
        return cast(SB.Whirlwind)
      end
    end

    -- Multiple Target - 4+
    if enemyCount >= 4 then
      print('MultiTarget 4+')

      -- Cast Sweeping Strikes if you are not about to use Bladestorm
      if castable(SB.SweepingStrikes, "target") and -spell(SB.Bladestorm) > 12 then
        return cast(SB.SweepingStrikes)
      end

      -- Cast Skullsplitter when less than 60 Rage, when Bladestorm is not about to be used.
      if
        castable(SB.Skullsplitter, "target") and -spell(SB.Bladestorm) > 12 and
          -power.rage < 50 and
          talent(1, 3)
       then
        return cast(SB.Skullsplitter)
      end

      --[[        -- Cast Avatar prior to Colossus Smash
        if castable(SB.Avatar, 'target') and -spell(SB.Avatar) == 0 and -spell(SB.ColossusSmash) == 0 and talent(6,2) then
          print'MT 4+'
          return cast(SB.Avatar)
        end]]
      -- Cast Ravager immediately prior to Colossus Smash
      if castable(SB.Ravager, "target") and -spell(SB.ColossusSmash) == 0 and talent(7, 3) then
        return cast(SB.Ravager, "player")
      end

      -- Cast Colossus Smash
      if castable(SB.ColossusSmash, "target") then
        return cast(SB.ColossusSmash)
      end

      -- Cast Warbreaker
      if castable(SB.Warbreaker, "target") and talent(5, 2) then
        return cast(SB.Warbreaker)
      end

      -- Cast Bladestorm during the Colossus Smash debuff
      if castable(SB.Bladestorm, "target") and -target.debuff(SB.ColossusSmashDebuff) then
        return cast(SB.Bladestorm)
      end

      -- Cast Deadly Calm
      if castable(SB.DeadlyCalm, "target") and talent(6, 3) then
        return cast(SB.DeadlyCalm)
      end

      -- Cast Cleave to maintain Deep Wounds
      if castable(SB.Cleave, "target") and -power.rage >= 20 and talent(5, 3) then
        return cast(SB.Cleave)
      end

      -- Cast Execute during Sweeping Strikes
      if castable(SB.Execute, "target") and -power.rage >= 20 and -buff(SB.SweepingStrikes) then
        return cast(SB.Execute)
      end

      -- Cast Mortal Strike during Sweeping Strikes
      if
        castable(SB.MortalStrike, "target") and -power.rage >= 30 and
          -buff(SB.SweepingStrikes)
       then
        return cast(SB.MortalStrike)
      end

      -- Cast Whirlwind during Colossus Smash
      if
        castable(SB.Whirlwind, "target") and -power.rage >= 30 and
          -target.debuff(SB.ColossusSmashDebuff)
       then
        return cast(SB.Whirlwind)
      end

      -- Cast Overpower
      if castable(SB.Overpower, "target") then
        return cast(SB.Overpower)
      end

      -- Cast Whirlwind
      if castable(SB.Whirlwind, "target") and -power.rage >= 30 then
        return cast(SB.Whirlwind)
      end
    end
  end
end

local function resting()
 

  local enemyCount = enemies.around(8)
  dark_addon.interface.status_extra("T#:" .. enemyCount .. " D:" .. target.distance)

  --Charge OOC
	if modifier.shift and castable (SB.Charge) then
		return cast(SB.Charge, 'target')
	end
  -- Heroic Leap OOC
	if modifier.alt and castable(SB.HeroicLeap) then
		return cast(SB.HeroicLeap, "ground")
	end
	end
local function interface()
  local settings = {
    key = "armswar_settings",
    title = "Arms Warrior",
    width = 300,
    height = 500,
    resize = true,
    show = false,
    template = {
      {type = "header", text = "                Arms Warrior Settings"},
      {type = "text", text = "Everything on the screen is LIVE.  As you make changes, they are being fed to the engine"},
      {type = "text", text = "Suggested Talents - 3 1 1 1 1 1 1"},
      {type = "text", text = "If you want automatic AOE then please remember to turn on EnemyNamePlates in WoW (V key)"},
      {type = "text", text = "Alt Modifier used for Heroic Leap"},
      {
        type = "text",
        text = "Avatar is controlled by the Cooldowns toggle on the interface (and waits for Colossus Smash to come off Cooldown before casting)"
      },
      {type = "text", text = "If you use Defensive Stance Talent use the Toggle On/Off on the interface"},
      {type = "rule"},
	  
	 {type = "text", text = " SPASI i OTSOSI "},
	             { key = 'healka', type = 'checkspin', text = 'VictoryRush | ImpendigVicroty', desc = 'Health % to cast at', default_check = false, default_spin = 60, min = 5, max = 100, step = 1 },
				 			{ type = 'rule' },
							
      {type = "text", text = "Interrupt Settings"},
	  
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
      {key = "StormBoltInt", type = "checkbox", text = "Storm Bolt as an interrupt", desc = "", default = true},
	  			{ type = 'rule' },
      {type = "text", text = "Defensive Settings"},
      {
        key = "DBTSHealth",
        type = "spinner",
        text = "Die by the Sword at Health %",
        default = "60",
        desc = "cast Die by the Sword at",
        min = 0,
        max = 100,
        step = 1
      },

      {
        key = "healthstone",
        type = "checkspin",
        default = "20",
        text = "Healthstone",
        desc = "use Healthstone at health %",
        min = 1,
        max = 100,
        step = 1
      },
      {
        key = "GiftHealth",
        type = "spinner",
        text = "Gift of the Naaru at Health %",
        default = "20",
        desc = "cast Gift of the Naaru at",
        min = 0,
        max = 100,
        step = 1
      },
    
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
        color = dark_addon.interface.color.warrior_brown,
        color2 = dark_addon.interface.color.warrior_brown
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
      name = "useracials",
      label = "Use Racials",
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
  dark_addon.interface.buttons.add_toggle(
    {
      name = "defensivestance",
      label = "Defensive Stance",
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
dark_addon.rotation.register(
  {
    spec = dark_addon.rotation.classes.warrior.arms,
    name = "Arms",
    label = "Arms Warrior",
    combat = combat,
    resting = resting,
    interface = interface
  }
)
