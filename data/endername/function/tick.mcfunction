execute as @e[type=snowball, nbt={Item:{components:{"minecraft:custom_data":{endername.endername:true,endername.has_marker:false}}}}] at @s run function endername:main

execute as @e[type=snowball, nbt={Item:{components:{"minecraft:custom_data":{endername.endername:true,endername.has_marker:true}}}}] at @s run tp @n[tag=endername.target] @s
execute as @e[tag=endername.target] at @s unless entity @e[type=snowball, nbt={Item:{components:{"minecraft:custom_data":{endername.endername:true,endername.has_marker:true}}}},distance=..1] run function endername:kill
