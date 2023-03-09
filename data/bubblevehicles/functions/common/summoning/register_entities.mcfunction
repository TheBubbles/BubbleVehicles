#? Used in summon:bubblevehicles/* functions to register all new summoned entities.

execute store result score #Value bubblevehicles run scoreboard players add #Pointer bv.database 1
execute as @e[tag=+bv.on_summon] run function bubblevehicles:common/summoning/register_entities/register
