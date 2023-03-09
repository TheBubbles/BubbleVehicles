# ::: Climbing
execute if score @s bv+speed matches 1.. run function cars:bubblevehicles/try_climbing
execute if score @s bv+speed matches ..-1 rotated ~180 ~ run function cars:bubblevehicles/try_climbing
