{
    sector="";
    repeat(3) sector=sector+string(randomLetter());
    sector=sector+"-";
    repeat(3) sector=sector+string(irandom(10));
    
    draw_text(instance.x,instance.y,sector);
}
