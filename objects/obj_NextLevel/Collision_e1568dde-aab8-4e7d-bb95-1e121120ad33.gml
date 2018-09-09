instance_create_layer(x, sprite_get_height(0) - 41, "Player", obj_CutsceneLevelCompleteP2)
with (obj_Camera) instance_deactivate_object(obj_Camera);
with (obj_player2Land) instance_destroy()
with (obj_GunLandP2) instance_destroy()
with (obj_SpearP2) instance_destroy()
with (obj_controllerPointer) instance_destroy()
instance_destroy()