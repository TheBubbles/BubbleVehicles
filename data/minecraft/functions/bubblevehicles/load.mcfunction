# ::: Global
scoreboard objectives add bubblevehicles dummy
scoreboard objectives add bv.database dummy
scoreboard objectives add bv.library dummy

# ::: Vehicle statistics
scoreboard objectives add bv.horse_power dummy
scoreboard objectives add bv.variant dummy

# ::: Vehicle state
scoreboard objectives add bv+headlights dummy
scoreboard objectives add bv+breaks dummy
scoreboard objectives add bv+reverse dummy
scoreboard objectives add bv+blinkers dummy
scoreboard objectives add bv+rpm dummy
scoreboard objectives add bv+current_gear dummy
scoreboard objectives add bv+steering dummy
scoreboard objectives add bv+speed dummy
scoreboard objectives add bv_input+gas dummy
scoreboard objectives add bv_input+turn dummy

# ::: Constants (Used for math)
scoreboard players set -46496 bv.database -46496
scoreboard players set -1 bv.database -1
scoreboard players set 5 bv.database 5
scoreboard players set 15 bv.database 15
scoreboard players set 95 bv.database 95
scoreboard players set 98 bv.database 98
scoreboard players set 100 bv.database 100
scoreboard players set 360 bv.database 360
scoreboard players set 1000 bv.database 1000
scoreboard players set 10000 bv.database 10000
scoreboard players set 57295 bv.database 57295
scoreboard players set 100000 bv.database 100000
scoreboard players set 1000000 bv.database 1000000

# :::
function minecraft:bubblevehicles/schedule_load
function minecraft:bubblevehicles/thread/garbage_collector
