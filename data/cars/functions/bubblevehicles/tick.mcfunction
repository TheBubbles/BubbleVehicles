# ::: Gravity
scoreboard players set #Floating bubblevehicles 0
execute if block ~ ~-1 ~ #bubblevehicles:not_motion_blocking run scoreboard players add #Floating bubblevehicles 1
execute if block ^-.7 ^-1 ^-1.4 #bubblevehicles:not_motion_blocking run scoreboard players add #Floating bubblevehicles 1
execute if block ^-.7 ^-1 ^1.4 #bubblevehicles:not_motion_blocking run scoreboard players add #Floating bubblevehicles 1
execute if block ^0.7 ^-1 ^-1.4 #bubblevehicles:not_motion_blocking run scoreboard players add #Floating bubblevehicles 1
execute if block ^0.7 ^-1 ^1.4 #bubblevehicles:not_motion_blocking run scoreboard players add #Floating bubblevehicles 1
execute if score #Floating bubblevehicles matches 5 align y run function cars:bubblevehicles/fall

# ::: Movement
execute at @a[distance=..4,tag=+bv.is_driving] if score @s bv.database = @p bv.database run function cars:bubblevehicles/read_inputs
execute unless score @s bv+rpm matches 0 run function cars:bubblevehicles/calculate_speed
execute unless score @s bv+speed matches 0 run function cars:bubblevehicles/while_moving
