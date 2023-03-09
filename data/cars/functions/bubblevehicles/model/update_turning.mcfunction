scoreboard players operation #Variant bubblevehicles = @s bv.variant
execute if score @s bv+steering matches ..-1 run function cars:bubblevehicles/model/update_turning/left
execute if score @s bv+steering matches 0 store result entity @e[type=item_display,tag=bv.this_display,limit=1] item.tag.CustomModelData int 1 run scoreboard players get #Variant bubblevehicles
execute if score @s bv+steering matches 1.. run function cars:bubblevehicles/model/update_turning/right
