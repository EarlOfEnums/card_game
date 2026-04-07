card=entity:extend({
 front=1,
 back=3,
 face_down=true
})

function card:new(_ENV,tbl)
 tbl=entity:new(_ENV,tbl)
 return tbl
end

function card:update(_ENV)
 entity:each("update")
 x+=spdx
 y+=spdy
end

function card:draw(_ENV)
 entity:each("draw")
 if(face_down)do
  spr(back,x,y,2,3,false,false)
 else
  spr(front,x,y,2,3,false,false)
 end
end