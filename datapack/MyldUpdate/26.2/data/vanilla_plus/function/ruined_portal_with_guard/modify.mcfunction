loot replace entity @s weapon.mainhand loot vanilla_plus:equipment/guarded_ruined_portal/portal_guard

execute unless data entity @s AngryAt run data modify entity @s AngryAt set from entity @p UUID
tag @s add vpPiglinGuardModified