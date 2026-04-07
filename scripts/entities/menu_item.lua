menui=ui:extend({
 index=1,
 label="",
 callback=noop,
 color=7,

 new=function(_ENV,index,label,callback,color)
  tbl=ui:new()
  tbl.index=0 or index
  tbl.label="" or label
  tbl.callback=noop or callback
  tbl.clr=7 or color
  return tbl
 end,

 draw=function(_ENV,x,y)
  print(label,x,y,clr)
 end
})