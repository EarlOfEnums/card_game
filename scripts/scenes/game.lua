game_scene=scene:extend({
	init=function(_𝘦𝘯𝘷)
		global.score=0
		global.timer=time_limit*30

		-- spawn player
		player=person()

		-- spawn hearts
		while #heart.pool<heart_count do
			local obj=heart({
				x=8+rnd(107),
				y=16+rnd(99)
			})
			
			-- destroy if colliding
			obj:detect(player,function()
				obj:destroy()
			end)
		end
	end,

	update=function(_𝘦𝘯𝘷)
		entity:each("update")

		-- detect heart pickup
		heart:each("detect",player,function(obj)
			sfx(0)
			obj:destroy()
			global.score+=1

			for i=1,3 do
				obj:create_spark()
			end
		end)

		-- check win state
		if #heart.pool==0 then
			scene:load(win_scene)
		end

		-- check game over state
		if timer==0 then
			scene:load(lose_scene)
		end

		global.timer=max(0,timer-1)
	end,

	draw=function(_𝘦𝘯𝘷)
		add(entity.pool,del(entity.pool,player))
		entity:each("draw")
	end,
})
