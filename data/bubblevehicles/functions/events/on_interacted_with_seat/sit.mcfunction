ride @p dismount
ride @p mount @s
tag @p remove +bv.is_driver
tag @p add +bv.is_seating

execute if entity @s[tag=bv.driver_seat] run tag @p add +bv.is_driver
scoreboard players operation @p bv.database = @s bv.database
