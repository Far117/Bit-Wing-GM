{
    if(tmpLives<0){
        str="";
    } else if(tmpLives==1){
        str="1 ship remaining";
    } else{
        str=string(tmpLives)+" ships remaining";
    }
    draw_set_color(c_yellow);
    draw_set_halign(fa_center);
    draw_text_transformed(x,y,str,1,1,0);
}
