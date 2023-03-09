tag @s add bv.this_vehicle
# :::
execute if entity @s[tag=+bv.is_car] run function cars:bubblevehicles/tick
# :::
tag @s remove bv.this_vehicle
