execute in endername:endername_forceload run forceload add 0 0
$execute in endername:endername_forceload run setblock 0 0 0 oak_sign{front_text:{messages:['{"text":"Target:","italic":false}','{"selector":"@a[nbt={UUID:$(UUID)}]"}','{"text":""}','{"text":""}']}}
$summon item ~ ~ ~ {PickupDelay:0,Owner:$(UUID),Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_name":'{"text":"Named Ender Pearl","italic":false}',"minecraft:item_model":"endername:endername","minecraft:custom_data":{endername.endername:true,endername.has_marker:false,endername.owner:$(UUID)},"minecraft:use_cooldown":{seconds:1,cooldown_group:"endername.endername"}}}}
$execute as @n[type=item,nbt={Owner:$(UUID)}] in endername:endername_forceload run data modify entity @s Item.components."minecraft:lore" set from block 0 0 0 front_text.messages
$data remove entity @n[type=item,nbt={Owner:$(UUID)}] Item.components."minecraft:lore"[3]
$execute store result entity @n[type=item,nbt={Owner:$(UUID)}] Item.count byte 1 run scoreboard players get @s endername.crafted_count
execute in endername:endername_forceload run setblock 0 0 0 air
execute in endername:endername_forceload run forceload remove 0 0
