advancement revoke @s only endername:crafted_endername
execute store result score @s endername.crafted_count run clear @s ender_pearl[custom_data={endername.to_be_changed:true}]
execute if score @s endername.crafted_count matches 0 store result score @s endername.crafted_count run kill @e[type=item,nbt={Age:0s,Item:{components:{"minecraft:custom_data":{endername.to_be_changed:true}}}}]
execute at @s run function endername:owner with entity @s
tag @s remove endername.this
