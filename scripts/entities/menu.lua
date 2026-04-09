menu=entity:extend({
 menui=nil,
 selected=1,
 no_input=false,

 init=function(_ENV)
  entity.init(_ENV)
  menui=menui or {}
  selected=selected or 1
  x=x or 0
  y=y or 0
  change_selected(_ENV)
 end,

 update=function(_ENV)
  
  if(not btn(4) and not btn(5))do
   no_input=true
  end
  if(no_input)do
   if(btnp(5))do
    if(menui[selected])menui[selected]:callback()
   end
   if(btnp(2))do
    selected=max(1, selected-1)
    change_selected(_ENV)
   end
   if(btnp(3))do
    selected=min(#menui, selected+1)
    change_selected(_ENV)
   end
  end
 end,

 draw=function(_ENV)
  for item in all(menui)do
   if(item.index==selected)do
    spr(0,item.x-4,item.y)
   end
   item:draw()
  end
 end,

 change_selected=function(_ENV)
  for item in all(menui)do
   if(item.index==selected)do
    item.x=x+1
   else
    item.x=x
   end
   item.y=y+(item.index*8)-8
  end
 end
})