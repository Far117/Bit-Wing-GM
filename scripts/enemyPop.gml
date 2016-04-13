{
    
    draw_set_color(c_red);
    draw_set_halign(fa_center);
    draw_text_transformed(x,y,string(tmpEnemies)+" remaining in sector",1,1,0);
    
    draw_set_color(c_green);
    draw_set_halign(fa_center);
    draw_text_transformed(x,y+20, "$"+string(tmpMoney),1,1,0);
    
    draw_set_color(c_yellow);
    draw_set_halign(fa_center);
    draw_text_transformed(x,y+40, string(tmpScore)+" points" ,1,1,0);
    
}
