execute if score @s bv+steering matches 1..30 store result entity @e[type=item_display,tag=bv.this_display,limit=1] item.tag.CustomModelData int 1 run scoreboard players add #Variant bubblevehicles 1
execute if score @s bv+steering matches 31.. store result entity @e[type=item_display,tag=bv.this_display,limit=1] item.tag.CustomModelData int 1 run scoreboard players add #Variant bubblevehicles 2
