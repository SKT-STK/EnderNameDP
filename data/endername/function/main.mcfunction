data modify entity @s Item.components."minecraft:custom_data"."endername.has_marker" set value true
summon marker ~ ~ ~ {Tags:["endername.target"],data:{owner_uuid:[I;]}}
data modify entity @n[tag=endername.target] data.owner_uuid set from entity @s Item.components."minecraft:custom_data"."endername.owner"
