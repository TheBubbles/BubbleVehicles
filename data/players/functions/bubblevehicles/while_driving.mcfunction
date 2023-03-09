# ::: WASD Detection
execute store result score ^B bv.library store result score #Motion bv_input+gas run data get entity @s Motion[0] 1000.0
execute store result score ^A bv.library store result score #Motion bv_input+turn run data get entity @s Motion[2] 1000.0
scoreboard players set @s bv_input+gas 0
scoreboard players set @s bv_input+turn 0
scoreboard players set #Direction bubblevehicles 0

execute if score #Motion bv_input+gas matches 0 if score #Motion bv_input+turn matches 0 run scoreboard players set #Direction bubblevehicles -999
execute unless score #Direction bubblevehicles matches -999 run function players:bubblevehicles/while_driving/detect_wasd
