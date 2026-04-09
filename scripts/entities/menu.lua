menu=entity:extend({
 menui=nil,
 selected=1,
 no_input=false,

 init=function(_ENV)
  entity:init(_ENV)
  menui=menui or {}
  selected=selected or 1
  x=x or 0
  y=y or 0
 end,

 update=function(_ENV)
  table.sort(menui,function(a,b)return a.index<b.index end)
  for i=1,#menui do
   menui[i].x=x
   menui[i].y=y+(i*8)-8
  end
  if(not btn(4) and not btn(5))do
   no_input=true
  end
  if(no_input)do
   if(btnp(5))do
    if(menui[selected])menui[selected]:callback()
   end
   if(btnp(2))do
    selected=max(1, selected-1)
   end
   if(btnp(3))do
    selected=min(#menui, selected+1)
   end
  end
 end,

 draw=function(_ENV)
  for item in all(menui)do
   if(item.index==selected)do
    spr(0,x-4,y)
    item:draw(x+1,y)
   else
    item:draw(x,y)
   end
   y+=8
  end
 end
})