#define scr_levelbuilder
///scr_levelbuilder(startx, starty, xsize, ysize);
randomize();

//First Block
var startx=argument0;
var starty=argument1;
var xx=startx;
var yy=starty;

//Map Size
var xsize=argument2;//Line Size in Blocks
var ysize=argument3;//Column Size in Blocks

var sprwidth=sprite_width;
var sprheight=sprite_height;   

//Build Level
builded=0;//Builded Blocks

//Build Blocks
i=0;i2=0;
for(i=0; i<ysize; i++){
    for(i2=0; i2<xsize; i2++){
        if(builded<global.mustdestroy || global.blocks<global.maxblocks){
            var block=instance_create(xx,yy,obj_block);
             if(instance_exists(block)){
                switch(block.type){
                    case _hp1:
                    case _hp2:
                    case _hp3:
                        builded++;
                        break;
                    default: break;
                }
                global.blocks++;
             }
        } else if(builded>=global.mustdestroy || global.blocks>=global.maxblocks){
            
        }
        xx+=2+sprwidth;
    }
    xx=startx;
    yy+=2+sprheight;
}

#define scr_mplevelbuilder
///scr_levelbuilder(startx, starty, xsize, ysize,array);
randomize();

//First Block
var startx=argument0;
var starty=argument1;
var xx=startx;
var yy=starty;

//Map Size
var xsize=argument2;//Line Size in Blocks
var ysize=argument3;//Column Size in Blocks

var sprwidth=sprite_width;
var sprheight=sprite_height;   

//Build Level
var builded=0;//Builded Blocks

//Build Blocks
i=0;i2=0;
for(i=0; i<ysize; i++){
    for(i2=0; i2<xsize; i2++){
        if(builded<global.mustdestroy[argument4] || global.blocks[argument4]<global.maxblocks[argument4]){
            var block=instance_create(xx,yy,obj_mpblock);
            if(instance_exists(block)){
                    switch(block.type){
                        case _hp1:
                        case _hp2:
                        case _hp3:
                            builded++;
                            break;
                        default: break;
                    }
                    global.blocks[argument4]++;
            }
        } else if(builded>=global.mustdestroy || global.blocks>=global.maxblocks){
            i=ysize;
            i2=xsize;
        }
        xx+=2+sprwidth;
    }
    xx=startx;
    yy+=2+sprheight;
}
