pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
-- toy train
-- by geopet (geoff petrie)

function _init()
  cls()
  switch_state=0
  train={{64,8},{72,8},{80,8}}
end

function move_segment(s,dir)
  spd=dir*2
  if (s[2]==8) then -- top side
    if (s[1]==112) then -- top right
      s[2]+=spd
    else
      s[1]+=spd
    end
  else
    if (s[1]==112) then -- right side
      if (s[2]==112) then -- bottom right
        s[1]-=spd
      else
        s[2]+=spd
      end
    else
      if (s[2]==112) then -- bottom side
        if (s[1]==8) then -- bottom side
          s[2]-=spd
        else
          s[1]-=spd
        end
      else
        if (s[1]==8) then -- left side
          if (s[2]==8) then -- top left
            s[1]+=spd
          else
            s[2]-=spd
          end
        end
      end
    end
  end
end

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
