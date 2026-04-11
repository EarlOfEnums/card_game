global=_ENV
noop=function()end
poke(0X5F2E,1)
pal({[0]=0,129,140},1)

function _init()
 logging=true
 if(logging)printh("new log","log",true)
 routines={}
	scene:load(splash_scene)
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
