# ::: Remez Algorithm (https://en.wikipedia.org/wiki/Remez_algorithm)
# a := min (|x|, |y|) / max (|x|, |y|)
# s := a * a
# r := ((-0.0464964749 * s + 0.15931422) * s - 0.327622764) * s * a + a
# if |y| > |x| then r := 1.57079637 - r
# if x < 0 then r := 3.14159274 - r
# if y < 0 then r := -r

# ::: Calculate "a" variable
scoreboard players operation #temp bv.library = ^A bv.library
scoreboard players operation #temp1 bv.library = ^B bv.library
execute if score #temp bv.library matches ..-1 run scoreboard players operation #temp bv.library *= -1 bv.database
execute if score #temp1 bv.library matches ..-1 run scoreboard players operation #temp1 bv.library *= -1 bv.database
scoreboard players operation #temp2 bv.library = #temp bv.library
scoreboard players operation #temp2 bv.library < #temp1 bv.library
scoreboard players operation #temp3 bv.library = #temp bv.library
scoreboard players operation #temp3 bv.library > #temp1 bv.library
scoreboard players operation #temp2 bv.library *= 1000 bv.database
scoreboard players operation #temp2 bv.library /= #temp3 bv.library

# ::: Calculate "s" variable
scoreboard players operation #temp3 bv.library = #temp2 bv.library
scoreboard players operation #temp3 bv.library *= #temp3 bv.library
scoreboard players operation #temp3 bv.library /= 1000 bv.database

# ::: Calculate "r" variable
scoreboard players operation Out bv.library = #temp3 bv.library
scoreboard players operation Out bv.library *= -46496 bv.database
scoreboard players operation Out bv.library /= 100000 bv.database
scoreboard players add Out bv.library 1593
scoreboard players operation Out bv.library *= #temp3 bv.library
scoreboard players operation Out bv.library /= 1000 bv.database
scoreboard players remove Out bv.library 3276
scoreboard players operation Out bv.library *= #temp3 bv.library
scoreboard players operation Out bv.library /= 1000 bv.database
scoreboard players operation Out bv.library *= #temp2 bv.library
scoreboard players operation Out bv.library /= 10000 bv.database
scoreboard players operation Out bv.library += #temp2 bv.library
execute if score #temp1 bv.library > #temp bv.library run scoreboard players remove Out bv.library 1570
execute if score #temp1 bv.library > #temp bv.library run scoreboard players operation Out bv.library *= -1 bv.database
execute if score ^A bv.library matches ..-1 run scoreboard players remove Out bv.library 3141
execute if score ^A bv.library matches ..-1 run scoreboard players operation Out bv.library *= -1 bv.database
execute if score ^B bv.library matches ..-1 run scoreboard players operation Out bv.library *= -1 bv.database

# ::: Convert radians to degrees
scoreboard players operation Out bv.library *= 57295 bv.database
scoreboard players operation Out bv.library /= 1000000 bv.database
