function onUpdateDatabase()
	print("> Updating database to version 29 (Fix item high values)")
	db.query("ALTER TABLE `player_items` CHANGE `itemtype` INT(11) NOT NULL DEFAULT '0';")
	db.query("ALTER TABLE `player_depotitems` CHANGE `itemtype` INT(11) NOT NULL DEFAULT '0';")
	db.query("ALTER TABLE `player_inboxitems` CHANGE `itemtype` INT(11) NOT NULL DEFAULT '0';")
  db.query("ALTER TABLE `player_rewards` CHANGE `itemtype` INT(11) NOT NULL DEFAULT '0';")
	return true
end
