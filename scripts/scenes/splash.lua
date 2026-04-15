splash_scene=scene:extend({
	crown=sprite({
		t=0,
		sprite_id=6,
		y=-15,
		x=56,
		h=9,
		w=18
	}),
	left_bracket=sprite({
		t=0,
		sprite_id=4,
		x=-12,
		y=49,
		h=30,
		w=12,
		flip_h=true
	}),
	right_bracket=sprite({
		t=0,
		sprite_id=4,
		x=128,
		y=49,
		h=30,
		w=12
	}),
	big_e=sprite({
		t=0,
		sprite_id=1,
		x=56,
		y=128,
		h=30,
		w=18
	}),

	init=function(_ENV)
		frame=0
		-- animate(crown,"y",40,40)
		-- animate(left_bracket,"x",42,40)
		-- animate(right_bracket,"x",76,40)
		-- animate(big_e,"y",49,40)
	end,

	update=function(_ENV)
		frame+=1
		if frame == 1 do
		 animate(big_e,"y",49,15)
		end
		if frame == 15 do
			animate(left_bracket,"x",42,10)
			animate(right_bracket,"x",76,10)
		end
		if frame == 25 do
			animate(crown,"y",40,40)
		end
		if frame >= 150 do
			scene:load(main_menu_scene)
		end
		if btnp(❎) then
			scene:load(main_menu_scene)
		end
	end,

	draw=function(_ENV)
		cls(1)
		rectfill(crown.x,crown.y+crown.h,crown.x+crown.w-1,crown.y+crown.h+2,2)
		entity:each("draw")
		if frame>65 do
		 prints("eARL OF eNUMS",40,80,7)
		end
	end
})