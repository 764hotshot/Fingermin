instance_create_layer(x, y + 24, "Player", obj_CutsceneLevelCompleteP1)
with (obj_Camera) instance_deactivate_object(obj_Camera)
with (obj_player1Land) instance_destroy()
with (obj_GunLandP1) instance_destroy()
with (obj_SpearP1) instance_destroy()
with (obj_ShurikanHolderP1) instance_destroy()
instance_destroy()