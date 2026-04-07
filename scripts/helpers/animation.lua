function async(func)
 add(routines,cocreate(func))
end

function wait(f)
 for i=1,f do
  yield()
 end
end

function animate(obj,k,v,f,e)
 local init=obj[k]
 f=f or 30
 e=e or linear
 async(function()
  for i=1,f do
   obj[k]=learp(init,v,e(i/f))
   yield()
  end
 end)
end

function linear(t)
 return t
end

function learp(a,b,t)
 return a+(b-a)*t
end