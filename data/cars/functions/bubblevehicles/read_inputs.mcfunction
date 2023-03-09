# ::: Gas
execute if score @p bv_input+gas matches 1 run function cars:bubblevehicles/read_inputs/forward
execute if score @p bv_input+gas matches -1 run function cars:bubblevehicles/read_inputs/backwards

# ::: Turning (using lerp)
# bv+steering = ( #Angle - bv+steering ) / 5
scoreboard players operation #Buffer bubblevehicles = @s bv+steering
scoreboard players set #Angle bubblevehicles 45
scoreboard players operation #Angle bubblevehicles *= @p bv_input+turn

scoreboard players operation #Angle bubblevehicles -= @s bv+steering
scoreboard players operation #Angle bubblevehicles /= 5 bv.database
scoreboard players operation @s bv+steering += #Angle bubblevehicles

scoreboard players set @s[scores={bv+steering=-4..4}] bv+steering 0
scoreboard players set @s[scores={bv+steering=..-41}] bv+steering -45
scoreboard players set @s[scores={bv+steering=41..}] bv+steering 45
execute unless score #Buffer bubblevehicles = @s bv+steering run function cars:bubblevehicles/model/__update_turning
