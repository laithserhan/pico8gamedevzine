pico-8 cartridge // http://www.pico-8.com
version 27
__lua__
-- game loop example / gamedev with pico-8 #1 
function _init()
    make_player()
end

function _update()
    move_player()
end

function _draw()
    cls(3)
    draw_player()
end

function make_player()
    px = 64
    py = 64
    psprite = 1
    pwidth = 8
end

function move_player()
    if (btn(0)) px -= 1 -- left
    if (btn(1)) px += 1 -- right
    if (btn(2)) py -= 1  -- up
    if (btn(3)) py += 1 -- down
    -- limits, bounce back
    if (px < 0) then
     px = 1
     sfx(0)
    end
    if (py < 0) then
      py = 1
      sfx(0)
    end
    if (px + pwidth > 127) then
      px -= 2
      sfx(0)
    end
    if (py + pwidth > 127) then
    	py -= 2
    	sfx(0)
    end
end

function draw_player()
    spr(psprite,px,py)
end

__gfx__
00000000005555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000005500c500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700055000500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000005a08800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000005a55000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
007007000550a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000500a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000005005500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
00040000110500d050120500b03007010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000