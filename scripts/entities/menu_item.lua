menu_item=entity:extend({
 index=1,
 label="",
 callback=noop,
 color=7,

 init=function(_ENV)
  entity:init(_ENV)
  index=index or 1
  label=label or ""
  callback=callback or noop
  clr=clr or 7
 end,

 draw=function(_ENV)
  print(label,x,y,clr)
 end
})