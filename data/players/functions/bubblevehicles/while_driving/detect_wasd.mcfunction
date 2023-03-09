# ::: Debouncing rotation
scoreboard players operation #RY bubblevehicles = @s bubblevehicles
execute store result score @s bubblevehicles run data get entity @s Rotation[0] 1.0

# ::: #Direction = atan2(Motion[0], Motion[2]) + Rotation[0]
function library:bubblevehicles/math/atan2
scoreboard players operation Out bv.library += #RY bubblevehicles

# ::: Map angle to the range 0..360
scoreboard players operation Out bv.library %= 360 bv.database

# ::: WASD based on dir angle ranges
execute if score Out bv.library matches 23..157 run scoreboard players set @s bv_input+turn -1
execute if score Out bv.library matches 112..248 run scoreboard players set @s bv_input+gas -1
execute if score Out bv.library matches 203..337 run scoreboard players set @s bv_input+turn 1
execute if score Out bv.library matches 293..360 run scoreboard players set @s bv_input+gas 1
execute if score Out bv.library matches 0..67 run scoreboard players set @s bv_input+gas 1
