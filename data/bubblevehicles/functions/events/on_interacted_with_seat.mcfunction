advancement revoke @s only bubblevehicles:on_interacted_with_seat

execute anchored eyes positioned ^ ^ ^1.5 as @e[type=armor_stand,tag=+bv.seat,sort=nearest,distance=..1.5,limit=1] run function bubblevehicles:events/on_interacted_with_seat/sit
