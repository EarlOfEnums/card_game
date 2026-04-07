splash_scene=scene:extend({
	init=function(_ENV)
		frame=0
		
	end,

	update=function(_ENV)
		entity:each("update")
	
		if btnp(❎) then
			scene:load(main_menu_scene)
		end
	end,

	draw=function()
		entity:each("draw")
	end,
})