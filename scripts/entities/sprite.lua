sprite=entity:extend({
 t=nil,
 sprite_id=0,
 x=0,
 y=0,
 h=8,
 w=8,
 flip_h=false,
 flip_v=false,
 draw=function(_ENV)
  if t do
   palt(t,true)
  end
  spr(sprite_id,x,y,w/8,h/8,flip_h,flip_v)
 end
})