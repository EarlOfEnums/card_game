menu=ui:extend({
 menui={},
 selected=1,
 no_input=false,


 new=function(_ENV,x,y,menu_items,selected)
  tbl=ui:new()
  tbl.menui={} or menu_items
  tbl.selected=1 or selected
  tbl.x=0 or x
  tbl.y=0 or y
  return tbl
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
   end
   if(btnp(3))do
    selected=min(#menui, selected+1)
   end
  end
 end,

 draw=function(_ENV)
  local y=0 or y
  table.sort(menui,function(a,b)return a.index<b.index end)
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