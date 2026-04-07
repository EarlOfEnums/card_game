global=_ENV
noop=function()end

function _init()
 routines={}
 scene:load(main_menu_scene)
end

function _update()
 for r in all(routines)do
  if(costatus(r)=="dead")do
   del(routines,r)
  else
   assert(coresume(r))
  end
 end
 scene.current:update()
end

function _draw()
 cls()
 scene.current:draw()
end
