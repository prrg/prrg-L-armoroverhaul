 -- Value order: Suit, LBV, <not actually needed>, <not actually needed>, Flak Jacket, CTV and ICTV.
 -- The -100 values go for the Ballistic Vest and the Heavy Ballistic Vest. They're bugged/hidden from the view, because they're USELESS.
 -- Code by lekousin.
init_pd2 = UpgradesTweakData._init_pd2_values
player_def = UpgradesTweakData._player_definitions

function UpgradesTweakData:_init_pd2_values()
	init_pd2(self)
	self.values.player.body_armor.armor = {
		-2,
		1,
		-100,
		-100,
		10,
		20,
		20.5
    }
 -- Armor won't go negative, negative values are actually read as 0. Values here are trial and error until you get what you want, really.
	self.values.player.body_armor.movement = {
		1.323,
		1,
		-100,
		-100,
		1.1,
		0.5,
		0.7
	}
 -- Again, trial and error; It's hard to tell by numbers. So keep playing with the speed until you find what's good for you/balanced.
	self.values.player.body_armor.concealment = {
		30,
		27,
		-100,
		-100,
		20,
		0,
		9
	}
 -- Only value that is the same as in-game.
	self.values.player.body_armor.dodge = {
		0.155,
		-0.05,
		-100,
		-100,
		-1,
		-1,
		-1
	}
 -- 0.1 = 10 dodge. Each .1 will add 10 dodge. Which means 1 means 10x10=100 dodge. Negative values work the same way.
	self.values.player.body_armor.damage_shake = {
		2,
		1,
		-100,
		-100,
		0.1,
		0.8,
		0.6
	}
 -- Damage Shake != Steadiness. Damage Shake is the opposite of Steadiness, which means, if you Damage Shake is high, your Steadiness will be lower.
	self.values.player.body_armor.stamina = {
		1.23,
		0.975,
		-100,
		-100,
		0.1,
		0.4,
		0.6
	}
 -- Trial and error, again.
	end
