clear @s ender_pearl[custom_data={endername.to_be_changed:true}] 1
$setblock ~ -64 ~ oak_sign{front_text:{messages:['{"text":"Target:","italic":false}','{"selector":"@a[nbt={UUID:$(UUID)}]"}','{"text":""}','{"text":""}']}}
$summon item ~ ~ ~ {PickupDelay:0,Owner:$(UUID),Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_name":'{"text":"Named Ender Pearl","italic":false}',"minecraft:custom_model_data":1001,"minecraft:custom_data":{endername.endername:true,endername.has_marker:false,endername.owner:$(UUID)},"minecraft:use_cooldown":{seconds:1,cooldown_group:"endername.endername"}}}}
$data modify entity @n[type=item,nbt={Owner:$(UUID)}] Item.components."minecraft:lore" set from block ~ -64 ~ front_text.messages
setblock ~ -64 ~ bedrock
