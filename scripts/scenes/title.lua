title_scene=scene:extend({
	init=function(_ENV)
		frame=0
  title_heart=heart({
			x=15,
			y=30
		})
	end,

	update=function(_ENV)
		entity:each("update")
	
		if btnp(❎) then
			scene:load(game_scene)
		end
	end,

	draw=function()
		-- draw entities
		entity:each("draw")
		
		-- title
		printc("heartseeker",32,7)
		
		-- instructions
		printc("collect all the hearts",60,6)
		printc("before time runs out!",68,6)
		
		-- prompt
		printc("❎ start game",96,7)
	end,
})

heart=entity:extend({
	w=5,
	h=5,
	pool={},

	draw=function(_ENV)
		print("♥",x,y,8)
	end,

	create_spark=function(_ENV)
		
	end
})

