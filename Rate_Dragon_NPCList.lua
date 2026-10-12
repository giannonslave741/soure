-- https://lua.expert/
game:GetService("RunService"):IsServer()
game:GetService("RunService"):IsClient()
require(game.ReplicatedStorage.NPCManager.Types)

local Config = require(game.ReplicatedStorage.NPCManager.NPC.Config)
local Flags = require(game.ReplicatedStorage.Modules.Flags)
local t = {}

local function registerNPC(p1, p2) --[[ registerNPC | Line: 7 | Upvalues: t (copy), Config (copy) ]]
	t[p1] = p2
	p2._name = p1
	Config.NPCInfoRegistered:Fire(p2)
end

local function legacyRegisterNPC(p1, p2, p3, p4) --[[ legacyRegisterNPC | Line: 14 | Upvalues: Config (copy), t (copy) ]]
	local v1 = nil

	for v2, v3 in Config.QuestInfo do
		if v3.Type == p3 then
			v1 = v3

			break
		end
	end

	if not v1 then
		warn((("Invalid quest info type %* for NPC %*"):format(p3, p1)))
	end

	local t2 = {
		QuestInfo = v1,
		DialogueCallback = p2,
		IdleAnimationId = p4
	}

	t[p1] = t2
	t2._name = p1
	Config.NPCInfoRegistered:Fire(t2)
end

task.spawn(function() --[[ Line: 34 | Upvalues: legacyRegisterNPC (copy), Flags (copy) ]]
	local DialoguesList = require(game.ReplicatedStorage.DialoguesList)

	legacyRegisterNPC("Blox Fruit Dealer", function(p1) --[[ Line: 36 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.FruitShop
	end, 2)
	legacyRegisterNPC("Advanced Fruit Dealer", function(p1) --[[ Line: 39 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.FruitShop2
	end, 2)
	legacyRegisterNPC("Weapon Dealer", function(p1) --[[ Line: 42 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.WeaponDealer
	end, 2)
	legacyRegisterNPC("Advanced Weapon Dealer", function(p1) --[[ Line: 45 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.AdvancedWeaponDealer
	end, 2)
	legacyRegisterNPC("Party Shop", function(p1) --[[ Line: 48 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.PartyShop
	end, 2)
	legacyRegisterNPC("Valentine Shop", function(p1) --[[ Line: 51 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.PartyShop
	end, 2)
	legacyRegisterNPC("Sword Dealer", function(p1) --[[ Line: 54 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SwordDealer1
	end, 2)
	legacyRegisterNPC("Easter Shop", function(p1) --[[ Line: 57 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.PartyShop
	end, 2)
	legacyRegisterNPC("Sword Dealer of the West", function(p1) --[[ Line: 60 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SwordDealer2
	end, 2)
	legacyRegisterNPC("Sword Dealer of the East", function(p1) --[[ Line: 63 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SwordDealer3
	end, 2)
	legacyRegisterNPC("Master Sword Dealer", function(p1) --[[ Line: 66 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SwordDealer4
	end, 2)
	legacyRegisterNPC("Living Skeleton", function(p1) --[[ Line: 69 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SwordDealer5
	end, 2)
	legacyRegisterNPC("Boat Dealer", function(p1) --[[ Line: 72 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.BoatDealer
	end, 2)
	legacyRegisterNPC("Marines Boat Dealer", function(p1) --[[ Line: 75 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.BoatDealerMarines
	end, 2)
	legacyRegisterNPC("Advanced Marines Boat Dealer", function(p1) --[[ Line: 78 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.BoatDealerMarines2
	end, 2)
	legacyRegisterNPC("Luxury Boat Dealer", function(p1) --[[ Line: 81 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.LuxuryBoatDealer
	end, 2)
	legacyRegisterNPC("Dark Step Teacher", function(p1) --[[ Line: 85 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.BlackLegTeacher
	end, 2)
	legacyRegisterNPC("Ability Teacher", function(p1) --[[ Line: 88 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.HakiTeacher
	end, 2)
	legacyRegisterNPC("Mad Scientist", function(p1) --[[ Line: 91 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.ElectroTeacher
	end, 2)
	legacyRegisterNPC("Instinct Teacher", function(p1) --[[ Line: 94 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.KenTeacher
	end, 2)
	legacyRegisterNPC("Water Kung-fu Teacher", function(p1) --[[ Line: 97 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.FishmanKarateTeacher
	end, 2)
	legacyRegisterNPC("Cupid Valentine Quest Giver", function(p1) --[[ Line: 112 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Cupid_ValentineDailyQuests
	end, 1)
	legacyRegisterNPC("Pirate Recruiter", function(p1) --[[ Line: 116 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.JoinPirates
	end, 4)
	legacyRegisterNPC("Marine Recruiter", function(p1) --[[ Line: 119 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.JoinMarines
	end, 4)
	legacyRegisterNPC("Set Home Point", function(p1) --[[ Line: 123 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SpawnPoint
	end, 4)
	legacyRegisterNPC("Indra", function(p1) --[[ Line: 127 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Indra
	end, 4)
	legacyRegisterNPC("Sick Man", function(p1) --[[ Line: 130 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SickMan
	end, 4)
	legacyRegisterNPC("Rich Man", function(p1) --[[ Line: 133 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.RichMan
	end, 4)
	legacyRegisterNPC("Yoshi", function(p1) --[[ Line: 137 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Yoshi
	end, 2)
	legacyRegisterNPC("Parlus", function(p1) --[[ Line: 140 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Parlus
	end, 2)
	legacyRegisterNPC("Hasan", function(p1) --[[ Line: 143 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Hasan
	end, 2)
	legacyRegisterNPC("Remove Blox Fruit", function(p1) --[[ Line: 147 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.FruitRemover
	end, 2)
	legacyRegisterNPC("Robotmega", function(p1) --[[ Line: 151 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Robotmega
	end, 4)
	legacyRegisterNPC("Love Letter 1", function(p1) --[[ Line: 154 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.LoveLetter1
	end, 4)
	legacyRegisterNPC("Love Letter 2", function(p1) --[[ Line: 157 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.LoveLetter2
	end, 4)
	legacyRegisterNPC("Love Letter 3", function(p1) --[[ Line: 160 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.LoveLetter3
	end, 4)
	legacyRegisterNPC("Military Detective", function(p1) --[[ Line: 164 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Detective
	end, 4)
	legacyRegisterNPC("Experienced Captain", function(p1) --[[ Line: 167 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.TravelDressrosa
	end, 4)
	legacyRegisterNPC("Sea Captain", function(p1) --[[ Line: 170 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.TravelMain
	end, 4)
	legacyRegisterNPC("Pirate Adventurer", function(p1) --[[ Line: 174 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.BuggyQuest1
	end, 1)
	legacyRegisterNPC("Bandit Quest Giver", function(p1) --[[ Line: 177 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.BanditQuest1
	end, 1)
	legacyRegisterNPC("Adventurer", function(p1) --[[ Line: 180 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.JungleQuest
	end, 1)
	legacyRegisterNPC("Desert Adventurer", function(p1) --[[ Line: 183 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.DesertQuest
	end, 1)
	legacyRegisterNPC("Villager", function(p1) --[[ Line: 186 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SnowQuest
	end, 1)
	legacyRegisterNPC("Marine Leader", function(p1) --[[ Line: 189 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.MarineQuest
	end, 1)
	legacyRegisterNPC("Sky Adventurer", function(p1) --[[ Line: 192 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SkyQuest
	end, 1)
	legacyRegisterNPC("Marine", function(p1) --[[ Line: 195 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.MarineQuest2
	end, 1)
	legacyRegisterNPC("Colosseum Quest Giver", function(p1) --[[ Line: 198 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.ColosseumQuest
	end, 1)
	legacyRegisterNPC("Jail Keeper", function(p1) --[[ Line: 201 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.PrisonerQuest
	end, 1)
	legacyRegisterNPC("Head Jailer", function(p1) --[[ Line: 204 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.ImpelQuest
	end, 1)
	legacyRegisterNPC("The Mayor", function(p1) --[[ Line: 208 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.MagmaQuest
	end, 1)
	legacyRegisterNPC("King Neptune", function(p1) --[[ Line: 211 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.FishmanQuest
	end, 1)
	legacyRegisterNPC("Mole", function(p1) --[[ Line: 214 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SkyExp1Quest
	end, 1)
	legacyRegisterNPC("Sky Quest Giver 2", function(p1) --[[ Line: 217 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SkyExp2Quest
	end, 1)
	legacyRegisterNPC("Freezeburg Quest Giver", function(p1) --[[ Line: 220 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.FountainQuest
	end, 1)
	legacyRegisterNPC("Bartilo", function(p1) --[[ Line: 224 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Bartilo
	end, 1)
	legacyRegisterNPC("Bounty/Honor Expert", function(p1) --[[ Line: 227 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.BountyHonorExpert
	end, 4)
	legacyRegisterNPC("Manager", function(p1) --[[ Line: 230 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Manager
	end, 4)
	legacyRegisterNPC("Customer", function(p1) --[[ Line: 233 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Customer
	end, 4)
	legacyRegisterNPC("Nerd", function(p1) --[[ Line: 236 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Nerd
	end, 4)
	legacyRegisterNPC("Alchemist", function(p1) --[[ Line: 239 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Alchemist
	end, 4)
	legacyRegisterNPC("Legendary Sword Dealer", function(p1) --[[ Line: 242 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.LegendarySwordDealer
	end, 2)
	legacyRegisterNPC("arowe", function(p1) --[[ Line: 245 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Wenlocktoad
	end, 4)
	legacyRegisterNPC("The Strongest God", function(p1) --[[ Line: 248 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Usoapp
	end, 2)
	legacyRegisterNPC("Sabi", function(p1) --[[ Line: 251 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Sabi
	end, 4)
	legacyRegisterNPC("Cyborg", function(p1) --[[ Line: 254 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Cyborg
	end, 4)
	legacyRegisterNPC("tort", function(p1) --[[ Line: 257 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.tort
	end, 2)
	legacyRegisterNPC("Plokster", function(p1) --[[ Line: 260 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Plokster
	end, 2)
	legacyRegisterNPC("Trevor", function(p1) --[[ Line: 263 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Trevor
	end, 4)
	legacyRegisterNPC("Mysterious Man", function(p1) --[[ Line: 266 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.MysteriousMan
	end, 4)
	legacyRegisterNPC("Martial Arts Master", function(p1) --[[ Line: 269 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.MartialArtsMaster
	end, 4)
	legacyRegisterNPC("Phoeyu, the Reformed", function(p1) --[[ Line: 272 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.DeathStepTeacher
	end, 4)
	legacyRegisterNPC("Mysterious Scientist", function(p1) --[[ Line: 275 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.MysteriousScientist
	end, 4)
	legacyRegisterNPC("arlthmetic", function(p1) --[[ Line: 278 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.junior
	end, 4)
	legacyRegisterNPC("Mysterious Entity", function(p1) --[[ Line: 281 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.MysteriousEntity
	end, 4)
	legacyRegisterNPC("Crew Captain", function(p1) --[[ Line: 284 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.FamousPirate
	end, 4)
	legacyRegisterNPC("Awakenings Expert", function(p1) --[[ Line: 287 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.AwakeningsExpert
	end, 4)
	legacyRegisterNPC("Doghouse", function(p1) --[[ Line: 290 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.DoghouseSpike
	end, 4)
	legacyRegisterNPC("Aura Editor", function(p1) --[[ Line: 293 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.EnhancementEditor
	end, 4)
	legacyRegisterNPC("Guashiem", function(p1) --[[ Line: 296 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.EctoplasmChecker
	end, 4)
	legacyRegisterNPC("El Rodolfo", function(p1) --[[ Line: 299 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Ectoplasm1
	end, 4)
	legacyRegisterNPC("El Perro", function(p1) --[[ Line: 302 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Ectoplasm2
	end, 4)
	legacyRegisterNPC("El Admin", function(p1) --[[ Line: 305 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Ectoplasm3
	end, 4)
	legacyRegisterNPC("Experimic", function(p1) --[[ Line: 308 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.GhoulGiver
	end, 4)
	legacyRegisterNPC("Titles Specialist", function(p1) --[[ Line: 311 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.TitlesSpecialist
	end, 4)
	legacyRegisterNPC("rip_indra", function(p1) --[[ Line: 317 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.rip_indra
	end, 4)
	legacyRegisterNPC("Blox Fruit Gacha", function(p1) --[[ Line: 320 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.RandomFruitSeller
	end, 2)
	legacyRegisterNPC("Shady Zioles", nil, 5)
	legacyRegisterNPC("Party Gacha", function(p1) --[[ Line: 324 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.CelebrationGacha
	end, 2)
	legacyRegisterNPC("Sharkman Teacher", function(p1) --[[ Line: 327 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SharkmanTeacher
	end, 4)
	legacyRegisterNPC("Barista Cousin", function(p1) --[[ Line: 330 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.MasterOfEnhancement
	end, 2)
	legacyRegisterNPC("Thunder God", function(p1) --[[ Line: 333 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.ThunderGod
	end, 2)
	legacyRegisterNPC(" ", function(p1) --[[ Line: 336 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.CyborgTrainer
	end, 4)
	legacyRegisterNPC("King Red Head", function(p1) --[[ Line: 339 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.RedHead
	end, 4)
	legacyRegisterNPC("Mr. Captain", function(p1) --[[ Line: 342 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.TravelZou
	end, 4)
	legacyRegisterNPC("Elite Hunter", function(p1) --[[ Line: 345 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.EliteHunter
	end, 4)
	legacyRegisterNPC("Player Hunter", function(p1) --[[ Line: 348 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.PlayerHunter
	end, 4)
	legacyRegisterNPC("Butler", function(p1) --[[ Line: 351 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Butler
	end, 4)
	legacyRegisterNPC("Hungry Man", function(p1) --[[ Line: 354 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.ObservationV2
	end, 4)
	legacyRegisterNPC("Lunoven", function(p1) --[[ Line: 357 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Lunoven
	end, 4)
	legacyRegisterNPC("Tacomura", function(p1) --[[ Line: 360 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Tacomura
	end, 4)
	legacyRegisterNPC("erin", function(p1) --[[ Line: 363 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Flashback
	end, 4)
	legacyRegisterNPC("layandikit12", function(p1) --[[ Line: 366 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.layandikit12
	end, 4)
	legacyRegisterNPC("Citizen", function(p1) --[[ Line: 372 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Citizen
	end, 1)
	legacyRegisterNPC("Previous Hero", function(p1) --[[ Line: 375 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.PreviousHero
	end, 4)
	legacyRegisterNPC("Horned Man", function(p1) --[[ Line: 378 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.HornedMan
	end, 1)
	legacyRegisterNPC("Arena Trainer", function(p1) --[[ Line: 381 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.ArenaTrainer
	end, 1)
	legacyRegisterNPC("Magic Elf", function(p1) --[[ Line: 385 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Xmas1
	end, 2)
	legacyRegisterNPC("Greedy Elf", function(p1) --[[ Line: 388 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Xmas2
	end, 2)
	legacyRegisterNPC("Santa Claws", function(p1) --[[ Line: 391 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Xmas3
	end, 2)
	legacyRegisterNPC("Death King", function(p1) --[[ Line: 399 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Halloween1
	end, 4)
	legacyRegisterNPC("Mysterious Force", function(p1) --[[ Line: 402 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.TempleTeleport
	end, 4)
	legacyRegisterNPC("Valentines Delivery", function(p1) --[[ Line: 405 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.StartValentinesDelivery
	end, 1)
	legacyRegisterNPC("Mysterious Force3", function(p1) --[[ Line: 408 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.TempleTeleportBack
	end, 4)
	legacyRegisterNPC("Blacksmith", function(p1) --[[ Line: 411 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Blacksmith
	end, 4)
	legacyRegisterNPC("Crypt Master", function(p1) --[[ Line: 414 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.CryptMaster
	end, 4)
	legacyRegisterNPC("Ancient One", function(p1) --[[ Line: 417 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.RaceV4Upgrader
	end, 4)
	legacyRegisterNPC("Dragon Talon Sage", function(p1) --[[ Line: 420 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Scroll
	end, 2)
	legacyRegisterNPC("Uzoth", function(p1) --[[ Line: 423 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.TalonTeacher
	end, 4)
	legacyRegisterNPC("Dragon Hunter", function(p1) --[[ Line: 426 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.DragonHunter
	end, 4)
	legacyRegisterNPC("Dojo Trainer", function(p1) --[[ Line: 429 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.DojoTrainer
	end, 4)
	legacyRegisterNPC("Dragon Tamer", function(p1) --[[ Line: 432 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.DragonTamer
	end, 2)
	legacyRegisterNPC("Sealed King", function(p1) --[[ Line: 435 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SealedKing
	end, 4)
	legacyRegisterNPC("Gravestone", function(p1) --[[ Line: 438 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Gravestone
	end, 4)
	legacyRegisterNPC("drip_mama", function(p1) --[[ Line: 441 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.CakeSpawner
	end, 4)
	legacyRegisterNPC("Sweet Crafter", function(p1) --[[ Line: 444 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SweetChalice
	end, 4)
	legacyRegisterNPC("Cake Scientist", function(p1) --[[ Line: 447 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.CakeScientist
	end, 4)
	legacyRegisterNPC("Sick Scientist", function(p1) --[[ Line: 450 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SickScientist
	end, 4)
	legacyRegisterNPC("Ghost", function(p1) --[[ Line: 453 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.GhostPuzzle
	end, 4)
	legacyRegisterNPC("Skeleton Machine", function(p1) --[[ Line: 456 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SkeletonMachine
	end, 4)
	legacyRegisterNPC("Ancient Monk", function(p1) --[[ Line: 459 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.GodhumanTeacher
	end, 4)
	legacyRegisterNPC("Shafi", function(p1) --[[ Line: 462 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SanguineTeacher
	end, 4)
	legacyRegisterNPC("Spy", function(p1) --[[ Line: 465 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Spy
	end, 4)
	legacyRegisterNPC("Shark Hunter", function(p1) --[[ Line: 468 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SharkHunter
	end, 2)
	legacyRegisterNPC("Beast Hunter", function(p1) --[[ Line: 471 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.BeastHunter
	end, 2)
	legacyRegisterNPC("Fossil Expert", function(p1) --[[ Line: 474 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.FossilExpert
	end, 2)
	legacyRegisterNPC("Area 1 Quest Giver", function(p1) --[[ Line: 478 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Area1Quest
	end, 1)
	legacyRegisterNPC("Area 2 Quest Giver", function(p1) --[[ Line: 481 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Area2Quest
	end, 1)
	legacyRegisterNPC("Marine Quest Giver", function(p1) --[[ Line: 484 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.MarineQuest3
	end, 1)
	legacyRegisterNPC("Graveyard Quest Giver", function(p1) --[[ Line: 487 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.ZombieQuest
	end, 1)
	legacyRegisterNPC("Snow Quest Giver", function(p1) --[[ Line: 490 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SnowMountainQuest
	end, 1)
	legacyRegisterNPC("Ice Quest Giver", function(p1) --[[ Line: 493 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.IceSideQuest
	end, 1)
	legacyRegisterNPC("Fire Quest Giver", function(p1) --[[ Line: 496 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.FireSideQuest
	end, 1)
	legacyRegisterNPC("Rear Crew Quest Giver", function(p1) --[[ Line: 499 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.ShipQuest1
	end, 1)
	legacyRegisterNPC("Front Crew Quest Giver", function(p1) --[[ Line: 502 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.ShipQuest2
	end, 1)
	legacyRegisterNPC("Frost Quest Giver", function(p1) --[[ Line: 505 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.FrostQuest
	end, 1)
	legacyRegisterNPC("Forgotten Quest Giver", function(p1) --[[ Line: 508 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.ForgottenQuest
	end, 1)
	legacyRegisterNPC("Pirate Port Quest Giver", function(p1) --[[ Line: 512 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.PiratePortQuest
	end, 1)
	legacyRegisterNPC("Dragon Crew Quest Giver", function(p1) --[[ Line: 515 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.DragonCrewQuest
	end, 1)
	legacyRegisterNPC("Hydra Town Quest Giver", function(p1) --[[ Line: 518 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.VenomCrewQuest
	end, 1)
	legacyRegisterNPC("Marine Tree Quest Giver", function(p1) --[[ Line: 521 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.MarineTreeIsland
	end, 1)
	legacyRegisterNPC("Deep Forest Quest Giver", function(p1) --[[ Line: 524 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.DeepForestIsland
	end, 1)
	legacyRegisterNPC("Deep Forest Area 2 Quest Giver", function(p1) --[[ Line: 527 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.DeepForestIsland2
	end, 1)
	legacyRegisterNPC("Turtle Adventure Quest Giver", function(p1) --[[ Line: 530 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.DeepForestIsland3
	end, 1)
	legacyRegisterNPC("Haunted Castle Quest Giver 1", function(p1) --[[ Line: 533 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.HauntedQuest1
	end, 1)
	legacyRegisterNPC("Haunted Castle Quest Giver 2", function(p1) --[[ Line: 536 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.HauntedQuest2
	end, 1)
	legacyRegisterNPC("Peanut Quest Giver", function(p1) --[[ Line: 539 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.NutsIslandQuest
	end, 1)
	legacyRegisterNPC("Ice Cream Quest Giver", function(p1) --[[ Line: 542 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.IceCreamIslandQuest
	end, 1)
	legacyRegisterNPC("Cake Quest Giver 1", function(p1) --[[ Line: 545 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.CakeQuest1
	end, 1)
	legacyRegisterNPC("Cake Quest Giver 2", function(p1) --[[ Line: 548 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.CakeQuest2
	end, 1)
	legacyRegisterNPC("Chocolate Quest Giver 1", function(p1) --[[ Line: 551 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.ChocQuest1
	end, 1)
	legacyRegisterNPC("Chocolate Quest Giver 2", function(p1) --[[ Line: 554 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.ChocQuest2
	end, 1)
	legacyRegisterNPC("Candy Cane Quest Giver", function(p1) --[[ Line: 557 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.CandyQuest1
	end, 1)
	legacyRegisterNPC("Tiki Quest Giver 1", function(p1) --[[ Line: 560 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.TikiQuest1
	end, 1)
	legacyRegisterNPC("Tiki Quest Giver 2", function(p1) --[[ Line: 563 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.TikiQuest2
	end, 1)
	legacyRegisterNPC("Tiki Quest Giver 3", function(p1) --[[ Line: 566 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.TikiQuest3
	end, 1)
	legacyRegisterNPC("Submerged Quest Giver 1", function(p1) --[[ Line: 569 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SubmergedQuest1
	end, 1)
	legacyRegisterNPC("Submerged Quest Giver 2", function(p1) --[[ Line: 572 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SubmergedQuest2
	end, 1)
	legacyRegisterNPC("Submerged Quest Giver 3", function(p1) --[[ Line: 575 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SubmergedQuest3
	end, 1)
	legacyRegisterNPC("Frozen Watcher", function(p1) --[[ Line: 578 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.LeviathanGate
	end, 1)
	legacyRegisterNPC("Draco Statue", function(p1) --[[ Line: 584 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.DracoStatue
	end, 4)
	legacyRegisterNPC("Divine", function(p1) --[[ Line: 587 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Divine
	end, 4)
	legacyRegisterNPC("Barista", function(p1) --[[ Line: 590 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.Barista
	end, 2)
	legacyRegisterNPC("Tournament Master", function(p1) --[[ Line: 593 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.FishTournamentNpc
	end, 1)
	legacyRegisterNPC("Rip Family Recruiter", function(p1) --[[ Line: 596 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.RipRecruiter
	end, 4)
	legacyRegisterNPC("Red Army Recruiter", function(p1) --[[ Line: 599 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.RedRecruiter
	end, 1)

	if Flags.SUBCLASSES_ENABLED == true then
		if Flags.SUBCLASSES.Shipwright then
			legacyRegisterNPC("Shipwright Teacher", function(p1) --[[ Line: 605 | Upvalues: DialoguesList (copy) ]]
				return DialoguesList.ShipwrightNPC
			end, 4)
		end

		if Flags.SUBCLASSES.Helmsman then
			legacyRegisterNPC("Helmsman Teacher", function(p1) --[[ Line: 610 | Upvalues: DialoguesList (copy) ]]
				return DialoguesList.HelmsmanNPC
			end, 4)
		end
	end

	legacyRegisterNPC("Trinket Expert", function(p1) --[[ Line: 616 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.MergeNPC
	end, 4)
	legacyRegisterNPC("Trinket Refiner", function(p1) --[[ Line: 620 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.ReforgeNPC
	end, 4)
	legacyRegisterNPC("Dragon Wizard", function(p1) --[[ Line: 624 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.DragonWizard
	end, 4, 2)
	legacyRegisterNPC("DojoHiddenRoom", function(p1) --[[ Line: 628 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.DojoHiddenRoom
	end, 4)
	legacyRegisterNPC("Secret Santa", function(p1) --[[ Line: 632 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.SecretSanta
	end, 1)
	legacyRegisterNPC("Witch", function(p1) --[[ Line: 635 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.HalloweenWitch
	end, 4)
	legacyRegisterNPC("Halloween Gacha Dealer", function(p1) --[[ Line: 639 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.HalloweenGachaDealer
	end, 2)
	legacyRegisterNPC("Valentines Gacha Dealer", function(p1) --[[ Line: 643 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.ValentinesGachaDealer
	end, 2)
	legacyRegisterNPC("Luckymaxer", function(p1) --[[ Line: 647 | Upvalues: DialoguesList (copy) ]]
		return DialoguesList.AprilFoolsLuckmax
	end, 5)
end)

local t2 = {
	new = legacyRegisterNPC
}

require(game.ReplicatedStorage.NPCTable).connect(t2)
task.spawn(function() --[[ Line: 660 | Upvalues: t2 (copy) ]]
	local ReplicatedStorage = game:WaitForChild("ReplicatedStorage", 999)

	task.spawn(function() --[[ Line: 662 | Upvalues: t2 (ref) ]]
		local SubmarineTransportationController = require(game.ReplicatedStorage.Controllers.SubmarineTransportationController)

		if not SubmarineTransportationController.Enabled then
			return
		end

		SubmarineTransportationController.InitializeNPC(t2)
	end)
	task.spawn(function() --[[ Line: 669 | Upvalues: t2 (ref) ]]
		local OniTempleController = require(game.ReplicatedStorage.Controllers.MapServices.OniTempleController)

		if not OniTempleController.Enabled then
			return
		end

		OniTempleController.InitializeNPC(t2)
	end)
	task.spawn(function() --[[ Line: 675 | Upvalues: ReplicatedStorage (copy), t2 (ref) ]]
		local v1 = ReplicatedStorage and ReplicatedStorage:WaitForChild("FishReplicated", 999)
		local v2 = if v1 then v1:WaitForChild("NPCFishClient", 999) else v1

		if not v2 then
			return
		end

		require(v2).InitializeNPC(t2)
	end)
	task.spawn(function() --[[ Line: 682 | Upvalues: t2 (ref) ]]
		require(game.ReplicatedStorage.NPCTable).connect(t2)
	end)
end)

return {
	List = t,
	new = registerNPC,
	legacy = legacyRegisterNPC
}