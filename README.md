# FlexDruid
- Re-Writed\Writed Profiles:
1. Priest Shadow
3. Warrior Arms\Fury
4. Sub rogue
5. Fire Mage
6. Destro Warlock
- CopyPasted Profiles:
7. Restoration Dru
8. Balance Dru
9. Git Rotations

Status:

0. Git Rotations (Rex&PAL&Ferib&Rotations&Nikpool) - unknown, probably work, but a bit UD.
1. Priest Shadow - Greate
2. Feral Dru - Greate
3. Frost DK - R.I.P (mb later) (never, kek)
4. Warrior Arms - Fine
5. Warrior Fury - Fine
6. Balance - Fine
7. Restoration - Greate
8. SubR - Fine
9. Fire - Fine (?)
10. Destro - Unknw (test...)
11. Demon - Should be fine.

## Macros
- Some macro for Feral:

		PVP Kick: /fd toggle interrupts 
		PVE Kick: /fd toggle KickALL
		Cooldowns: /fd toggle cooldowns
		Dispel adds: /fd toggle dispel
		PvP no Roots.: /fd toggle FormIt
		BattleRess (by Focus!): /fd toggle Battleress
		Tank if tank dies: /fd toggle beartest
		Announce: /fd toggle Information

- Some macro for Shadow:

		PVP Kick: /fd toggle interrupts 
		PVE Kick: /fd toggle KickALL
		Cooldowns: /fd toggle cooldowns
		Text GUI: /fd toggle GUI
		Party Dispel: /fd toggle frienddispel
		Dispel adds: /fd toggle dispel
		Opener: /fd toggle Opener
		
		
		

- Some macro for OutLaw:

		Wip...
		
		
		
		
ToDo:
All other specs.


# Api stuff Down Below
#### [Environment](#Environment)
#### [Interface](#Interface)
#### [Buttons](#Buttons)
#### [Color](#Color)
#### [Interface](#Interface)
#### [Window](#Window)
#### [Rotations](#Rotations)
##### [Other](#Other)
##### [Examples](#Examples)
##### [Noname stuff](#Nonamestuff)
##### [Code snippets](#Codesnippets)
##### [Basic template](#Basictemplate)


# Environment

## Buff

## Example
        if player.buff("Ice BLock").down and player.health.percent <= 10 then
        return cast("Ice Block", "player")
        end
        
- exists()

        Check if a buff exists.
- down()

        Return true if a buff is down.
- up()

        Returns true if a buff is up.
- any()

        Return true if any buff is up.
- count

        Returns the amount of buffs that are active.
- remains

        Returns the remaning duration of the buff (in seconds).
- duration

        Returns the duration of the buff.
- stealable

        Returns true if the buff can be spellstealed.

## Cast
- Cast(spell, unit)
    
        spell:
                spell ID or name.
            
        unit:
                Unit (player, target, focus, party1, ..)
        
        example: 
                Cast(SB.Stealth);
                Cast(SB.ChaosBolt, "focus");
                Cast(SB.Conflagurate, "party1");

## Debuff
- exists()

        Check if a debuff exists.
- down()

        Return true if a debuff is down.
- up()

        Returns true if a debuff is up.
- any()

        Return true if any debuff is up.
- count

        Returns the amount of debuffs that are active.
- remains

        Returns the remaning duration of the debuff (in seconds).
- duration

        Returns the duration of the debuff.


## Enemies
- count(func)

        Returns the amount of nearby enemys.
- match(func)

        TODO
- around(distance)

        Returns the amount of nearby enemys in a given distance.

## Environment


## Group
- count(func)
- match(func)
- buffable(spell)
- removable(...)
- dispellable(spell)
- under(...)

## Health
- percent

        Returns the unit health in percentage. (0.00 ~ 100).
- actual

        Returns the actual unit health.
- effective
- incoming

        Returns the incomming (unfinished healing amount) health of the unit.
- missing

        Returns the missing health of the unit.
        
Example:

        player.acutal;      -- obtains actual player HP
        target.incoming;    -- obtains health from target player
        
## Logical
'^player',
'^pet',
'^vehicle',
'^target',
'^focus',
'^mouseover',
'^none',
'^npc',
'^party[1-4]',
'^raid[1-4]?[0-9]',
'^boss[1-5]',
'^arena[1-5]'

## Modifier
- shift
- control
- alt
- lshift
- lcontrol
- lalt
- rshift
- rcontrol
- ralt

## Power
- base
- mana
- rage
- focus
- energy
- combopoints
- runes
- runicpower
- soulshards
- lunarpower
- astral
- holypower
- maelstrom
- chi
- insanity
- arcanecharges
- fury
- pain

## Powertype
- actual
- max
- deficit
- deficitpercent
- percent
- regen
- predict
- predictpercent
- regenpercent
- tomax

## Runes
- count

## Spell
- cooldown
- exists
- castingtime
- charges
- fractionalCharges
- recharge
- lastcast
- castable
- current

## Unit
- buff
- debuff
- health
- spell
- power
- enemies
- elive
- level
- dead
- enemy
- friend
- name
- exists
- guid
- distance
- channeling(spell)
- castingpercent
- moving
- has_stealable (spellsteal)
- combat
- interrupt(%, spell)
- unit_in_range(spell)
- totem(name)
- talent(a, b)
- castable
- removable
- dispellable


## Virtual

# Interface
## Buttons
- commands
/fd hide
/fd show
/fd move
/fd size button_size
/fd resize button_size

- button_toggle
-- master_toggle
-- cooldowns
-- interrupts
-- multitarget

## Color
- red
- dark_red
- pink
- dark_pink
- purple
- dark_purple
- indigo
- dark_indigo
- blue
- dark_blue
- cyan
- dark_cyan
- teal
- dark_teal
- green
- dark_green
- lime
- dark_lime
- yellow
- dark_yellow
- amber
- dark_amber
- orange
- dark_orange
- brown
- dark_brown
- grey
- dark_grey
- warrior_brown

## Interface
- icons (make list & tooltip name?)
{
 key = "dropdowntest",
 type = "dropdown",
desc = "",
default = "dropdown_test",
{key = "dropdown_test", text = "Test1"},
{key = "dropdown_test2", text = "Test2"},
{key = "dropdown_test3", text = "Test3"}
},


## Window



# Rotation


## Rotation
## Timer

# Other

## data.data - null
## data.removables - spell ID's that need to be removed in PvE?

# Examples
# Noname stuff 


-  can an ability be made to execute if the target is a boss? (https://wow.gamepedia.com/UnitId)

		local ValidClassification = {
  		['worldboss'] = true,
  		['rareelite'] = true,
  		['elite'] = true,
  		['rare'] = true,
  		['normal'] = false,
  		['trivial'] = false,
  		['minus'] = false
					     }

		local function ValidCDTarget(unit)
		if type(unit) == 'table' then unit = unit.unitID end
		 return ValidClassification[UnitClassification(unit)] and UnitLevel(unit) > UnitLevel('player')
		end






- is there a way for DR to know if a cooldown is about to become avaible to use? 

		if -spell("SPELL NAME") > 0 and -spell("Spell Name") < 3 then
		print ("Spell name SPELL NAME is about to be off CD!"
		end




- Take target?


	    local function taketarget()
	    if target.exists and target.alive then return false end
	    local validenemies = enemies.count(function (unit)
	      return unit.exists and unit.distance <= 30 and unit.combat and UnitExists(unit.unitID .. 'target')
	    end)
	    if validenemies > 0 then
	      macro('/targetenemy')
	      return true
	    end
	    return true
	    end
	    setfenv(taketarget,dark_addon.environment.env)

	    local function combat()

	    if not player.alive or player.buff('Food').exists or player.buff('Drink').exists or player.buff('Bandage').exists or player.channeling() or
	    UnitIsAFK('player') or target.debuff('Polymorph').any then return end

	    if toggle('autotarget') and taketarget() then return end

	    auto_attack() --checks if auto-attacking anyway
	    --other code





- Check Time_To_Die (if more than 15s cast stuff)

	    if castable(SB.Apocalypse) and -spell(SB.Apocalypse) == 0 and target.debuff(SB.FesteringWound).count >= 4  and not modifier.shift and Target.Time_To_Die > 15 then
	      return cast(SB.Apocalypse, 'target')
	    end
    
    
    
    
    
- Targets in range check 

	    local enemyCount = enemies.around(8)
	    if enemyCount == 0 then enemyCount = 1 end 



    
    
- applyDotAoe

	    local function applyDotAoe()
	      if not castable('Shadow Word: Pain') then return false end

	    local dotcount = 3

	    local countpain = enemies.count(function (unit) return unit.exists and unit.combat and unit.debuff("Shadow Word: Pain").up end)
	    local validenemies = enemies.count(function (unit) return unit.exists and unit.combat and unit.in_range end)
	    if validenemies < dotcount then
		dotcount = validenemies
	    end

	    local initialTarget = nil
	    if target.exists then initialTarget = target.guid end

	    local flag = false

	    if countpain < dotcount then
		local newTarget = enemies.match(function(unit) return unit.exists and unit.combat and unit.in_range and unit.debuff("Shadow Word: Pain").down end)
		if not newTarget then return false end
		while not UnitIsUnit('target', newTarget.unitID) do
		    macro('/targetenemy')
		end
		cast('Shadow Word: Pain')
		flag = true
	    end
	    while initialTarget and target.guid ~= initialTarget do
		macro('/targetenemy')
	    end

	    return flag
	    end
	    setfenv(applyDotAoe, dark_addon.environment.env)

	    local function combat()
	    -- other code
	    if applyDotAoe() then return end
	    -- other code
	    end

Or just:

		local userakeaoe = dark_addon.settings.fetch('KiraFeral_settings_Rake_AOE', true)
		  if userakeaoe and target.alive and target.enemy and player.alive and target.distance < 8 then
				   local userake = true 
				   local index = 0
				   local NotMain = true
				   local MainTarget = UnitGUID("target")
				   TargetNearestEnemy()
				   while(NotMain)
				   do
					  local RakeDur
					  for i = 1, 40 do
						 name, a, b, c, d, dur = UnitDebuff("target", i, "PLAYER")
						 if (name == "Rake") then
							RakeDur = dur   
						 end
					  end
					  if userake and (RakeDur == nil or RakeDur-5 < GetTime()) and target.alive then
						CastSpellByName("Rake")
					  end
					  TargetNearestEnemy()
					  if(MainTarget == UnitGUID("target") or index == 30) then
						 NotMain = false
					  end
					  index = index + 1
				   end
		end
In settings tab add: 
{ key = 'Rake_AOE', type = 'checkbox', text = 'Rake AOE', desc = 'Use Rake to AOE' },

- Idk kick?


	    if toggle('interrupts', false) and arena1.interrupt(intpercent, false) and arenahackson == true and arena1.distance <= 40 and -spell(SB.Counterspell) == 0 then
	     print 'Arena one counterspell'
	      return cast(SB.Counterspell, "arena1")
	    end

	    if toggle('interrupts', false) and arena2.interrupt(intpercent, false) and arenahackson == true and arena2.distance <= 40 and -spell(SB.Counterspell) == 0 then
	     print 'Arena two counterspell'
	      return cast(SB.Counterspell, "arena2")
	    end


    
    

- Another Kick

	  if KickArenaOne0 == true then
	        if target.castable(SB.Blind) then
   		     for i = 1, 40 do
	        local name, _, _, _, endTime, _, _, _, spell_id  = UnitCastingInfo("target", i)
     	       if name and p[spell_id] then
     	        print("Kicked " .. name .. " Bye!")
                return cast(SB.Blind, target)
            end
          end
        end
      end
    
    
    
    
- Delay?

 The condition won't return true unless 1.4 seconds have passed 

	local delay = 0
	local function blabla()
	if delay < GetTime() then
	  dostuff
 	 delay = GetTime() + 1.4
	end

- Not.blabla idk why i add this here but:

		not lastcast(SB.spellname)
		not player.spell(SB.spellname).lastcast



- For some math visit http://lua-users.org/wiki/MathLibraryTutorial

# Code snippets 
- Code snippets 
Introduction to Dark Rotations lua syntax by Rex 23rd Feb 2019.

- Basic debugging guidance

We strongly recommend you install the addons "BugGrabber" and "BugSack" as these capture lua errors neatly
Always check to see if the spell you are trying to cast is actually in the spellbook and that it is spelt correctly
Dark Rotations IS CASE SENSITIVE
For example "CobraShot" is not the same as "Cobrashot"

- Casting a basic spell

This code checks to see if you can cast the spell on your target and that the spell is not on cooldown

	if castable(SB.spell) and -spell(SB.spell) == 0 then
		return cast(SB.spell, 'target')
	end

- Example

Cast Flame Shock when not on cooldown

	if castable(SB.FlameShock) and -spell(SB.FlameShock) == 0 then
		return cast(SB.FlameShock, 'target')
	end


Checking something is greater than or less than

	--is x bigger than y:
	if x > y then

	--is x less than y:
	if x < y then

	--is x greater than or equal to y:
	if x >= y then

	--is x less than or equal to y:
	if x <= y then

Use of "or" and "not"
Sometimes you need to check a condition in two different ways:
	
	if player.buff(SB.spell1).up or player.buff(SB.Spell2).up then
		return cast(SB.spell, 'target')
	end

	--Sometimes you need to check if something doesn't exist first before casting
	if not x.exists then
		return cast(SB.spell)
	end	


- Managing Buffs and Debuffs

	Please be careful with these as errors here don't always create lua errors but your rotation just "doesn't work"

- Buff on player

This code checks to see if the player has a certain buff before casting a spell

	if player.buff(SB.spell).up then
		return cast(SB.spell, 'target')
	end

This code checks to see if the player is missing a buff before casting a spell

	if player.buff(SB.spell).down then
		return cast(SB.spell, 'target')
	end

This code checks to see if the player's buff has "x" seconds before it expires

	if player.buff(SB.spell).remains <= x then
		return cast(SB.spell, 'target')
	end

This code checks to see if the player's buff has "x" number of stacks casting

	if player.buff(SB.spell).count >= x then
		return cast(SB.spell, 'target')
	end

This code checks to see if a player's buff is ABOUT TO REACH "x" number of charges (ie it is a fraction of where it needs to be)

    if player.buff(SB.spell).fractionalcharges >= x then
    	return cast(SB.spell, 'target')
    end

- Debuff on target

This code checks to see if the target has a certain debuff before casting a spell

	if target.debuff(SB.spell).up then
		return cast(SB.spell, 'target')
	end

This code checks to see if the target is missing a debuff before casting a spell

	if player.buff(SB.spell).down then
		return cast(SB.spell, 'target')
	end

This code checks to see if the target's debuff has "x" seconds before it expires

	if player.buff(SB.spell).remains <= x then
		return cast(SB.spell, 'target')
	end

This code checks to see if the target's debuff has "x" number of stacks casting

	if player.buff(SB.spell).count >= x then
		return cast(SB.spell, 'target')
	end

- Examples

Cast Moonfire to keep the debuff on the target

	if target.debuff(SB.Moonfire).down then
		return cast(SB.Moonfire, 'target')
	end

Use Thrash if your target does not have 3 stacks of the bleed yet

	if target.debuff(SB.Thrash).count < 3 then
		return cast(SB.Thrash, 'target')
	end

Apply Flame Shock if it will expire in 6 seconds or less

	if target.debuff(SB.FlameShock).remains <= 6 then
		return cast(SB.FlameShock, 'target')
	end

Cast Scourge Strike while standing in Death and Decay

	if castable(SB.ScourgeStrike) and -spell(SB.ScourgeStrike) == 0 and player.buff(SB.DeathandDecay).up then
		return cast(SB.ScourgeStrike, 'target')
	end

Cast Crash Lightning if the buff has less than 2 seconds remaining (or is inactive).

	if (player.buff(SB.CrashLightning).down or player.buff(SB.CrashLightning).remains <= 2) then
		return cast(SB.CrashLightning, 'target')
	end

Cast Rockbiter if below about to reach 2 charges.

    if castable(SB.Rockbiter) and spell(SB.Rockbiter).fractionalcharges >= 1.7 then
    	return cast(SB.Rockbiter, 'target')
    end

- Resource Management (including health)

	Power "types" - the following is a non-exhaustive list (ie I may have missed some):
	arcanecharges, astral, chi, combopoints, energy, focus, fury, health, holypower, insanity, lunarpower, maelstrom, mana, pain, rage, runes, runicpower, soulshards
	There are lots of ways of managing your "power" (eg checking how much you have) but these are the two most common:

- Actual

This code checks the "type" (eg mana, energy etc) is greater than or equal to "x" before casting

	if player.power.type.actual >= x then
		return cast(SB.spell, 'target')
	end

- Percent

This code checks the "type" (eg mana, energy etc) is greater than or equal to "x as a percentage" before casting

	if player.power.type.percent >= x then
		return cast(SB.spell, 'target')
	end

- Count
Deathknight Specific - this code checks a Deathknights runes count is greater than or equal to "x" before casting

		if player.power.runes.count >= x then
			return cast(SB.spell, 'target')
		end

- Examples

   Cast Earth Shock if you have 90 or more Maelstrom
   
	    if castable(SB.EarthShock) and player.power.maelstrom.actual >= 90 then
		return cast(SB.EarthShock, 'target')
	    end  

   Cast Soul Reaper if you have fewer than 2 Runes
   
	    if castable(SB.SoulReaper) and player.power.runes.count < 2 then
	      return cast(SB.SoulReaper, 'target')
	    end

   Cast Healing Surge if player health is less than 30%

	    if castable(SB.HealingSurge) and player.health.percent <= 30 then
			return cast(SB.HealingSurge, 'player')
		end

- Miscellaneous Checks

	Distance to target
	This code checks if the target is within "x" yards of the player:
	
		if castable(SB.spell) and target.distance <= x then
			return cast(SB.spell, 'target')
		end

- Example

Use Swipe if target is within melee range

	if castable(SB.Swipe) and target.distance <= 5 then
		return cast(SB.Swipe, 'target')
	end

- Talent Checks

Talents are read using the x,y co-ordinates of the talent "grid" eg

	--1,1   1,2   1,3
	--2,1   2,2   2,3
	--3,1   3,2   3,3
	--4,1   4,2   4,3
	--5,1   5,2   5,3
	--6,1   6,2   6,3
	--7,1   7,2   7,3
	
	if talent(1,1) then
		return cast(SB.spell)
	end

- Example

Use Pulverize if talented

	if castable(SB.Pulverize) and talent(7,3) then
		return cast(SB.Pulverize, 'target')
	end

- Pet Management (including Hunter, Mage, Shaman, Warlock)

	The principals outlined above can be used for your summoned pets, as these examples show:

Summoning pet
Pet Summon
This code checks to see if you have a pet already summoned before trying to summon a new one

	if castable(SB.CallPet1) and not pet.exists then
		return cast(SB.CallPet1)
	end  

Pet Healing
This code uses similar syntax to player healing to heal your pet

	if castable(SB.MendPet) and pet.health.percent <= 70  then
		return cast(SB.MendPet, 'pet')
	end

Pet Attacks
Once your pet is summoned you can get them to attack using their spells too! Your pet spells must be in the spellbook along with your own
Unholy Deathknight make your Ghoul Claw Attack

    if pet.exists and castable(SB.Claw) and -spell(SB.Claw) == 0 then
    	return cast(SB.Claw, 'target')
    end

 Beastmastery Hunter make your Cat Growl to taunt
 
    if pet.exists and castable(SB.Growl) and -spell(SB.Growl) == 0 then
    	return cast(SB.Growl, 'target')
    end   

- Complex Examples

	Now we can add multiple checks to form complex code for spells:

Use Pulverize (if talented) and its not on cooldown, at 3 stacks of Thrash and within melee range

	if castable(SB.Pulverize) and talent(7,3) and -spell(SB.Pulverize) == 0 and target.debuff(SB.Thrash).count == 3  and target.distance <= 5 then
		return cast(SB.Pulverize, 'target')
	end

Cast Death Coil if its not on cooldown to avoid capping Runic Power (80+ Runic Power) OR if you have a proc of Sudden Doom

	if castable(SB.DeathCoil) and -spell(SB.DeathCoil) == 0 and (player.power.runicpower.actual >= 80 or player.buff(SB.SuddenDoom).up) then
		return cast(SB.DeathCoil, 'target')
	end

Apply Flame Shock if its not on cooldown and it is either absent OR it will expire in 6 seconds or less

	if castable(SB.FlameShock) and -spell(SB.FlameShock) == 0 and (target.debuff(SB.FlameShock).down or target.debuff(SB.FlameShock).remains <= 6) then
		return cast(SB.FlameShock, 'target')
	end

Cast Earth Shock if its not on cooldown and Maelstrom is 60 or greater and Lava Surge buff is not on player

	if castable(SB.EarthShock) and -spell(SB.EarthShock) == 0 and player.power.maelstrom.actual >= 60 and player.buff(SB.LavaSurge).down then
		return cast(SB.EarthShock, 'target')
	end

Cast Lightning Bolt if not on cooldown and with Overcharge talent and if above 40 Maelstrom (or 50 with Fury of Air)

    if castable(SB.LightningBolt) and -spell(SB.LightningBolt) == 0 and talent(4,3) and (player.power.maelstrom.actual > 40 or (player.power.maelstrom.actual > 50 and talent(6,2))) then
    	return cast(SB.LightningBolt, 'target')
    end

- Cooldowns

	Sometimes you want to keep your "big" spells until the boss fights - there is a "cooldown" toggle on the Dark Addon interface for this reason
	Spells with the "cooldown" check will not cast unless you have it toggled on
	Maybe counter-intuitive but the code used is "false" for toggled on and "true" for toggled off, as in the following examples:
	    
Enhancement Shaman - cast Ascendance (with Ascendance talent) to boost DPS
	
	if toggle('cooldowns', false) and castable(SB.Ascendance) and -spell(SB.Ascendance) == 0 and talent(7,3) then
		return cast(SB.Ascendance, 'target')
	end

Deathknight - cast Army of the Dead to boost DPS

	if toggle('cooldowns', false) and castable(SB.ArmyOfTheDead) and -spell(SB.ArmyOfTheDead) == 0 then
		return cast(SB.ArmyOfTheDead, 'target')
	end


- Interrupts

	If you are a class that has interrupts then you can use the "interrupts" toggle on the Dark Addon interface
	Spells with the "interrupt" check will not cast unless you have it toggled on
	As with Cooldowns, interrupt code is "false" for toggled on and "true" for toggled off, as in the following examples:
	"x" represents the percentage at which the target's spell will be interrupted

Mage - cast Counterspell to interrupt - "x" represents percentage

	if toggle('interrupts', false) and castable(SB.Counterspell) and target.interrupt(x, false) then
		return cast(SB.Counterspell, 'target')
	end

Shaman - cast Wind Shear to interrupt - in this example we have chosen to use 70% as the interrupt percentage

    if toggle('interrupts', false) and castable(SB.WindShear) and target.interrupt(70, false) and target.distance < 30 then
    	return cast(SB.WindShear, 'target')
    end

- Modifiers

	There will be times when you want to "manually" cast a spell (eg mobility spells) and don't want them automatically cast by the rotation code
	The three basic modifiers are ALT, CTRL and SHIFT, and can be used as in the following examples:

Shaman - cast Feral Lunge to leap to your target by holding down SHIFT:

	if modifier.shift and castable(SB.FeralLunge) and talent(5,2) and target.distance < 25 then
		return cast(SB.FeralLunge, 'target')
	end

Warrior - cast Heroic Leap by holding down CTRL - note the full spelling of CONTROL though:

	if modifier.control and castable(SB.HeroicLeap) then
		return cast(SB.HeroicLeap, 'ground')
	end

- Counting Enemies

You can create a variable that is assigned the value of the number of mobs/targets around you - this allows you to differentiate between Single-Target and Multi-Target code
	NOTE - you must have "Enemy Nameplates" enabled in-game - this is toggled on and off with the "v" key
	There are two methods to count targets, dependent on if you are melee or ranged, as follows:

Melee
		The first line of code creates a variable "enemymeleeCount" and counts up the number of targets in 8 yards of the player
		The second line of code displays the number of targets and the distance to them on the Dark Addon interface bar:
		
		local enemymeleeCount = enemies.around(8)
		dark_addon.interface.status_extra('T#:' .. enemymeleeCount .. ' D:' .. target.distance)

Ranged
	The first three lines of code creates a variable "enemyrangedCount" and counts up the number of targets around your target at range
	The fourth line of code displays this in the Dark Addon interface bar as per the previous example:
	
		local enemyrangedCount = enemies.count(function (unit)
			return unit.alive and unit.combat and unit.distance == target.distance 
		end)
		dark_addon.interface.status_extra('T#:' .. enemyrangedCount .. ' D:' .. target.distance)

- Usage

Once you have your targets counted, you can then either insert the check into single spells, or segment your code to manage multiple spells:

Single spell melee example
Feral Druid - Cast Swipe when multiple targets are nearby

	if enemymeleeCount >= 2 and castable(SB.Swipe) and -spell(SB.Swipe) == 0 then
		return cast(SB.Swipe, 'target')
	end

Single spell ranged example
Elemental Shaman - Cast Chain Lightning when multiple targets are at range

	if enemyrangedCount >= 3 and castable(SB.ChainLightning) and -spell(SB.ChainLightning) == 0 then
		return cast(SB.ChainLightning, 'target')
	end  

- Segment your code example

Fury Warrior - cast Whirlwind to apply the buff, and then Bladestorm

	if enemymeleeCount >= 2 then
		if castable(SB.Whirlwind) and -spell(SB.Whirlwind) == 0 and player.buff(SB.Whirlwind).down then
			return cast(SB.Whirlwind, 'target')
		end

		if castable(SB.Bladestorm) and -spell(SB.Bladestorm) == 0 then
	    	return cast(SB.Bladestorm, 'target')
	    end
	end

# Basic template

- This is a basic template to get you started.

	Replace "class" with the actual name of the class you are coding for: eg deathknight, demonhunter, druid, hunter, mage, monk, paladin, priest, rogue, shaman, warlock, warrior.

		local addon, dark_addon = ...
		local SB = dark_addon.rotation.spellbooks.class

		local function combat()
		if player.alive and target.alive and target.enemy and not player.channeling() then

		Auto Attack to initiate combat
		Replace "x" with the range you would like to attack from: eg 8 if you are melee or 40 if you are ranged.

		 if target.enemy and target.alive and target.distance < x then
		    auto_attack()
		  end  

		Insert "in-combat" rotation code here
		This section of the code will only work when you are in combat/have aggro.

		end
		end

		local function resting()

		Insert "out-of-combat" code here
		This section of code will only work when you are out of combat, and could be used for: eg spells to pull from range, healing, summoning pets, stealthing.

		end

		Replace "class" with the actual name of the class you are coding for: eg deathknight, demonhunter, druid, hunter, mage, monk, paladin, priest, rogue, shaman, warlock, warrior.
		Replace "spec" with the name of the spec you are coding for: eg frost, havoc, feral, holy, elemental, windwalker etc.

		Replace "xxxxxx" with a short but obvious name forr your routine as you will have to type this in to load it into the addon
		Replace "xxxxxx" with something longer and more descriptive, and maybe add your name!

		dark_addon.rotation.register({
		  spec = dark_addon.rotation.classes.class.spec,
		 name = 'xxxxxx',
		  label = 'xxxxxx',
		  combat = combat,
		 resting = resting,
		})



  
