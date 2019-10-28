///scr_chooseblock(hightest chance, high chance, high chance, high chance, low chance, low chance, lower chance)
type=choose(
        choose(
            argument0,
            argument1,
            argument2,
            argument3,
            argument6,
            ),
            
        choose(
            argument0,
            argument1,
            argument2,
            argument3,
            argument4,
            argument5
            ),
            
        choose(
            argument0,
            argument1,
            argument2,
            argument3
        ),
        
        );
        
//Creation Rules for Fixed Blocks
if(type==argument6){
    for(var i=0; i<array_length_1d(block); i++){
        if((block[i]!=noone && block[i].type==argument6)){
            type=scr_chooseblock(
                argument2,
                argument1,
                argument2,
                argument3,
                argument4,
                argument5,
                argument1
            );
            break;
        }
    }
    if(ypos==2||xpos==1||xpos==global.wblock||ypos==2+200||xpos==1+200||xpos==global.wblock+200){
        type=scr_chooseblock(
            argument2,
            argument1,
            argument2,
            argument3,
            argument4,
            argument5,
            argument1
        );
    }
}
        
return type;
