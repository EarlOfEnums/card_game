main_menu_scene=scene:extend({
	init=function(_ENV)
		frame=0
		menu=menu({
			x=20,
			y=64,
			menui={
				menu_item({index=1,label="play",callback=function()scene:load(game_scene)end}),
				menu_item({index=2,label="options",callback=function()scene:load(options_scene)end}),
				menu_item({index=3,label="collection",callback=function()scene:load(collection_scene)end})
			}
		})
		log_table(pool)
		log_table(menu)
	end,

	update=function(_ENV)
		menu:each("update")
 end,

	draw=function(_ENV)
		menu:each("draw")
	end
})