// Create exit button.
instance_create_layer(x - 200, 1080 - 250, "Buttons", obj_button_menu_exit);
instance_create_layer(x - 400, 1080 - 750, "Buttons", obj_chunk_button);
instance_create_layer(x, 1080 - 750, "Buttons", obj_acid_button);
instance_create_layer(x + 400, 1080 - 750, "Buttons", obj_gas_button);

// Create resume button.
instance_create_layer(x + 200, 1080 - 250, "Buttons", obj_button_resume);

instance_create_layer(x + 180, 1080 - 100, "Buttons", obj_next_wave);