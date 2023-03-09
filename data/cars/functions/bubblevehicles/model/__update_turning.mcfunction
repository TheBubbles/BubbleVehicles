execute as @e[type=item_display,tag=+bv.display] if score @s bv.database = @e[type=armor_stand,tag=bv.this_vehicle,limit=1] bv.database run tag @s add bv.this_display
function cars:bubblevehicles/model/update_turning
tag @e remove bv.this_display
