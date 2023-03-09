tag @s add bv.this_runner
execute as @e[type=item_display,tag=bv.direct_passenger] if score @s bv.database = @e[type=armor_stand,tag=bv.this_runner,limit=1] bv.database run tp @s ~ ~ ~ ~ ~
execute as @e[type=armor_stand,tag=bv.driver_seat] if score @s bv.database = @e[type=armor_stand,tag=bv.this_runner,limit=1] bv.database run tp @s ^0.5 ^0.25 ^0.375 ~ ~
execute as @e[type=armor_stand,tag=bv.passenger_seat] if score @s bv.database = @e[type=armor_stand,tag=bv.this_runner,limit=1] bv.database run tp @s ^-0.5 ^0.25 ^0.375 ~ ~
execute as @e[type=armor_stand,tag=bv.passenger_seat_left] if score @s bv.database = @e[type=armor_stand,tag=bv.this_runner,limit=1] bv.database run tp @s ^0.5 ^0.25 ^-1 ~ ~
execute as @e[type=armor_stand,tag=bv.passenger_seat_right] if score @s bv.database = @e[type=armor_stand,tag=bv.this_runner,limit=1] bv.database run tp @s ^-0.5 ^0.25 ^-1 ~ ~
tag @s remove bv.this_runner
