$tp @a[nbt={UUID:$(owner_uuid)}] ~ ~ ~
$damage @p[nbt={UUID:$(owner_uuid)}] 5 minecraft:ender_pearl
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1.0
