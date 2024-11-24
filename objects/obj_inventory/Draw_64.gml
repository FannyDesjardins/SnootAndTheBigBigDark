
draw_sprite_stretched(
    spr_inventory_empty,
    0,
    x,
    y,
    0,
    0
)


for(var i=0; i<INVENTORY_SLOTS; i++) {
    if(inventory[i] == 0 || inventory[i] == 1) {
        var xx = x +(i*SINGLE_SPACING)+30;
        var yy = y+24;
        draw_sprite(spr_inventory_items_single,inventory[i], xx, yy);
    } else if (inventory[i] == 2) {
        if(i==0) {
            var xx = x +(i*DOUBLE_SPACING)+30;
            var yy = y+23;
        } else {
            var xx = x + (i*90) ;
            var yy = y+23;
        }
        draw_sprite(spr_inventory_items_double,inventory[i]-2, xx, yy);
        i++;
    } else if(inventory[i] == 3) {
        var xx = x +(i*TRIPLE_SPACING)+35;
        var yy = y+23;
        draw_sprite(spr_inventory_items_triple,inventory[i]-3, xx, yy);
        i+=2;
    } 
}
