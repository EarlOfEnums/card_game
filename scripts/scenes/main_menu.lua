main_menu_scene=scene:extend({
	init=function(_ENV)
		frame=0
		menu=menu:new(20,64)
		add(menu.menui,menui:new(1,"play",function()scene.load(game_scene)end))
		add(menu.menui,menui:new(2,"options",function()scene.load(options_scene)end))
		add(menu.menui,menui:new(3,"collection",function()scene.load(collection_scene)end))
	end,

	update=function(_ENV)
		entity:each("update")
 end,

	draw=function()
		entity:each("draw")
		for e in all(entity)do
		 print(e)
	 end
	end
})