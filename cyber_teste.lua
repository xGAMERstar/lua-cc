local ffi = require("ffi")
local UnhsAEhFcg = 1839226496
local function pqhUziiLXh()
local NdkBMTqxLS = 4194228727
end
client.add_callback( "on_paint", pqhUziiLXh)
local function pqhUziiLXh()
end
client.add_callback( "on_paint", pqhUziiLXh)
local a=engine.get_screen_height()
local b=engine.get_screen_width()
local c=render.create_font("Verdana",12,400,true,true,false)
local cyber=render.create_font("Verdana",13,4,true,true,false)
local cpfont = render.create_font("Consolas Bold", 14.5, 4, false, true, false)
local sw, sh = engine.get_screen_width(), engine.get_screen_height()
local font = render.create_font( "Verdana", 25, 562, true, true, false )
local uebak = render.create_font("Verdana", 13, 4, true, true, false)

ffi.cdef[[
    typedef unsigned char BYTE;
    typedef void *PVOID;
    typedef PVOID HMODULE;
    typedef const char *LPCSTR;
    typedef int *FARPROC;
    
    HMODULE GetModuleHandleA(
        LPCSTR lpModuleName
    );
    
    FARPROC GetProcAddress(
        HMODULE hModule,
        LPCSTR  lpProcName
    );
    
    typedef struct{
        BYTE r, g, b, a;
    } Color;
    
    typedef void(__cdecl *ColorMsgFn)(Color&, const char*);
]]

local ConsolePrint = function(label, r, g, b, a)
    local ConColorMsg = ffi.cast("ColorMsgFn", ffi.C.GetProcAddress(ffi.C.GetModuleHandleA("tier0.dll"), "?ConColorMsg@@YAXABVColor@@PBDZZ"))
    
    local color = ffi.new("Color")
    color.r = r
    color.g = g
    color.b = b
    color.a = a

    ConColorMsg( color, label )
end

menu.add_combo_box("Anti-Aim Types:",{"None","Cyber-Lag","Cyber-Lag2","Cyber-sway","Anti-BruteForce","Anti-BruteForce-Sync"})

--menu.add_check_box("Indicators")
--menu.add_slider_int("Indicators Y-axis",0,a)
--menu.add_color_picker("indicator bar-color")
--menu.add_color_picker("indicator-color")

menu.add_color_picker("cyber-color")
menu.add_color_picker("legitaa-color")
menu.add_color_picker("fakeduck-color")
menu.add_color_picker("dt-color")
menu.add_color_picker("hideshot-color")
menu.add_color_picker("dmg-color")
local scale = 60;
local d=0;local e=0;local f=0;local g=0;local h=0;local i=0;local j=0;
local function k()
	if menu.get_int("Anti-Aim Types:")==1 then 
		menu.set_int("anti_aim.pitch",1)
			menu.set_int("anti_aim.desync_type",1)
			menu.set_bool("anti_aim.enable_fake_lag",true)
			menu.set_int("anti_aim.fake_lag_type",2)
            if f>=150 then 
				f=0
				menu.set_int("anti_aim.yaw_offset",math.random(40,-40))
				menu.set_int("anti_aim.fake_lag_limit",math.random(8,16))
				menu.set_int("anti_aim.desync_range_inverted",math.random(0,40))
				menu.set_int("anti_aim.desync_range",math.random(0,40))
			else 
				f=f+1 
			end 
    elseif menu.get_int("Anti-Aim Types:")==2 then 
        menu.set_bool("anti_aim.enable_fake_lag",true)
        menu.set_int("anti_aim.pitch",1)
        menu.set_int("anti_aim.fake_lag_type",2)
        menu.set_int("anti_aim.desync_type",1)
        if g>=150 then 
            g=0
            menu.set_int("anti_aim.fake_lag_limit",math.random(8,16))
            menu.set_int("anti_aim.yaw_offset",math.random(40,-40))
            menu.set_int("anti_aim.desync_range_inverted",math.random(0,20))
            menu.set_int("anti_aim.desync_range",math.random(0,20))
        else 
            g=g+1 
        end 
	elseif 
        menu.get_int("Anti-Aim Types:")==3 then 
        menu.set_int("anti_aim.pitch",1)
        menu.set_bool("anti_aim.enable_fake_lag",true)
        menu.set_int("anti_aim.fake_lag_type",2)
        menu.set_int("anti_aim.desync_type",1)
        
        if math.random(0,50) > 25 then	 --ghetto	
            if scale >= 0 then
                scale = scale - 1
                else
                scale = 60
            end
        end
            menu.set_int("anti_aim.desync_range",scale)
            menu.set_int("anti_aim.desync_range_inverted",scale)
            menu.set_int("anti_aim.yaw_offset",math.random(-7,7))
	elseif 
        menu.get_int("Anti-Aim Types:")==4 then 
        menu.set_int("anti_aim.pitch",1)
        menu.set_int("anti_aim.desync_type",1)
        menu.set_bool("anti_aim.enable_fake_lag",false)
        if i>=150 then 
            menu.set_int("anti_aim.yaw_offset",math.random(20,-20))
            menu.set_int("anti_aim.desync_range_inverted",math.random(0,20))
            menu.set_int("anti_aim.desync_range",math.random(0,20))
            i=0 
        else 
            i=i+1 
        end 
		elseif 
            menu.get_int("Anti-Aim Types:")==5 then 
            menu.set_int("anti_aim.pitch",1)
            menu.set_bool("anti_aim.enable_fake_lag",true)
            menu.set_int("anti_aim.desync_type",1)
            menu.set_int("anti_aim.fake_lag_type",2)
            if i>=150 then 
                menu.set_int("anti_aim.yaw_offset",math.random(20,-20))
                menu.set_int("anti_aim.desync_range_inverted",math.random(0,20))
                menu.set_int("anti_aim.desync_range",math.random(0,20))
                menu.set_int("anti_aim.fake_lag_limit",math.random(8,16))
                i=0 
            else 
                i=i+1 
            end 
		end 
	end
			    client.add_callback("on_paint",k)
					local function l()
						local chilen=menu.get_color("cyber-color")
						local vagina=menu.get_color("dt-color")
						local pizda=menu.get_color("hideshot-color")
						local debil=menu.get_color("dmg-color")
                        local dick=menu.get_color("legitaa-color")
                        local gay=menu.get_color("fakeduck-color")
						ballchunks = 1
						if engine.is_connected() then
							render.draw_text(cyber, sw/2.028-render.get_text_width(cpfont, "cyber")/2, sh/2+28, chilen, "cyber") 
							render.draw_text(cyber, sw/1.963-render.get_text_width(cpfont, ".tech")/2, sh/2+28, color.new(255, 255, 255, 255), ".tech")
							render.draw_text(cyber, sw/2.03-render.get_text_width(cpfont, "____")/2, sh/2+32, color.new(255, 255, 255, 255), "____")
                            render.draw_text(cyber, sw/1.972-render.get_text_width(cpfont, "____")/2, sh/2+32, chilen, "____")
                            if menu.get_int("Anti-Aim Types:")==1 and menu.get_key_bind_state("anti_aim.manual_forward_key") then
                                render.draw_text(cyber, sw/2-render.get_text_width(cpfont, "LEGIT AA")/2, sh/2+32+(14*ballchunks), dick,"LEGIT AA")
                                ballchunks = ballchunks + 1
                            elseif menu.get_int("Anti-Aim Types:")==1 then
                                render.draw_text(cyber, sw/1.99-render.get_text_width(cpfont, "Default")/2, sh/2+32+(14*ballchunks), dick,"Default")
                                ballchunks = ballchunks + 1
                            elseif menu.get_int("Anti-Aim Types:")==2 and menu.get_key_bind_state("anti_aim.manual_forward_key") then
                                render.draw_text(cyber, sw/2-render.get_text_width(cpfont, "LEGIT AA")/2, sh/2+32+(14*ballchunks), dick,"LEGIT AA")
                                ballchunks = ballchunks + 1
                            elseif menu.get_int("Anti-Aim Types:")==2 then
                                render.draw_text(cyber, sw/2-render.get_text_width(cpfont, "Dynamic")/2, sh/2+32+(14*ballchunks), dick,"Dynamic")
                                ballchunks = ballchunks + 1
                            elseif menu.get_int("Anti-Aim Types:")==3 and menu.get_key_bind_state("anti_aim.manual_forward_key") then
                                render.draw_text(cyber, sw/2-render.get_text_width(cpfont, "LEGIT AA")/2, sh/2+32+(14*ballchunks), dick,"LEGIT AA")
                                ballchunks = ballchunks + 1
                            elseif menu.get_int("Anti-Aim Types:")==3 then
                                render.draw_text(cyber, sw/2-render.get_text_width(cpfont, "Sway")/2, sh/2+32+(14*ballchunks), dick,"Sway")
                                ballchunks = ballchunks + 1
                            elseif menu.get_int("Anti-Aim Types:")==4 and menu.get_key_bind_state("anti_aim.manual_forward_key") then
                                render.draw_text(cyber, sw/2-render.get_text_width(cpfont, "LEGIT AA")/2, sh/2+32+(14*ballchunks), dick,"LEGIT AA")
                                ballchunks = ballchunks + 1
                            elseif menu.get_int("Anti-Aim Types:")==4 then
                                render.draw_text(cyber, sw/1.99-render.get_text_width(cpfont, "Bruteforce")/2, sh/2+32+(14*ballchunks), dick,"Bruteforce")
                                ballchunks = ballchunks + 1
                            elseif menu.get_int("Anti-Aim Types:")==5 and menu.get_key_bind_state("anti_aim.manual_forward_key") then
                                render.draw_text(cyber, sw/2-render.get_text_width(cpfont, "LEGIT AA")/2, sh/2+32+(14*ballchunks), dick,"LEGIT AA")
                                ballchunks = ballchunks + 1
                            elseif menu.get_int("Anti-Aim Types:")==5 then
                                render.draw_text(cyber, sw/2-render.get_text_width(cpfont, "Sync")/2, sh/2+32+(14*ballchunks), dick,"Sync")
                                ballchunks = ballchunks + 1
                            end
							if menu.get_key_bind_state("rage.double_tap_key" ) and menu.get_key_bind_state("anti_aim.fake_duck_key") then
                                render.draw_text(cpfont, sw/2-render.get_text_width(cpfont, "DT")/2, sh/2+32+(14*ballchunks), color.new(242, 30, 15),"DT")
                                ballchunks = ballchunks + 1
                              elseif menu.get_key_bind_state("rage.double_tap_key" ) then 
                                render.draw_text(cpfont, sw/2-render.get_text_width(cpfont, "DT")/2, sh/2+32+(14*ballchunks), vagina,"DT")
								ballchunks = ballchunks + 1
                              elseif menu.get_key_bind_state("anti_aim.fake_duck_key") then
                                    render.draw_text(cpfont, sw/2-render.get_text_width(cpfont, "FD")/2, sh/2+32+(14*ballchunks), gay, "FD")
                                    ballchunks = ballchunks + 1
                                end
                                if menu.get_key_bind_state("rage.hide_shots_key") then
                                    render.draw_text(cpfont, sw/2-render.get_text_width(cpfont, "HS")/2, sh/2+32+(14*ballchunks), pizda, "HS")
                                    ballchunks = ballchunks + 1
                                end
                                if menu.get_key_bind_state("rage.force_damage_key") then
                                    render.draw_text(cpfont, sw/2-render.get_text_width(cpfont, "DMG")/2, sh/2+32+(14*ballchunks), debil, "DMG")
                                    ballchunks = ballchunks + 1
                                end
							end
						end
						--if menu.get_bool("Indicators")then 
								--local x=globals.get_ping()
								--local y=menu.get_int("Indicators Y-axis")
								--local z=menu.get_color("indicator bar-color")
								--local sex=menu.get_color("indicator-color")
								--render.draw_text(font,7,y+15,sex,"Yaw")
								--render.draw_text(font,8,y+35,sex,"Fake")
								--render.draw_text(font,8,y+55,sex,"Lag")
								--render.draw_text(font,8,y+75,sex,"Ping")
								--if menu.get_int("anti_aim.yaw_offset")>=150 then 
									--render.draw_rect_filled(69,y+27,152,7,color.new(0,0,0))
									--render.draw_rect_filled(70,y+28,150,5,z)
								--elseif menu.get_int("anti_aim.yaw_offset")<=0 then 
									--render.draw_rect_filled(69,y+27,3,7,color.new(0,0,0))
									--render.draw_rect_filled(70,y+28,3,5,z)
								--else 
									--render.draw_rect_filled(69,y+27,menu.get_int("anti_aim.yaw_offset")+2,7,color.new(0,0,0))
									--render.draw_rect_filled(70,y+28,menu.get_int("anti_aim.yaw_offset"),5,z)
									--end
									--if menu.get_int("anti_aim.desync_range")*3>=150 then 
									--	render.draw_rect_filled(69,y+46,152,7,color.new(0,0,0))
									--	render.draw_rect_filled(70,y+47,150,5,z)
								--	elseif menu.get_int("anti_aim.desync_range")<=1 then 
								--		render.draw_rect_filled(69,y+46,3,7,color.new(0,0,0))
								--		render.draw_rect_filled(70,y+47,3,5,z)
								--	else 
								--		render.draw_rect_filled(69,y+46,menu.get_int("anti_aim.desync_range")*3+2,7,color.new(0,0,0))
								--		render.draw_rect_filled(70,y+47,menu.get_int("anti_aim.desync_range")*3,5,z)
								--		end
								--		if menu.get_int("anti_aim.fake_lag_limit")*12>=150 then 
								--			render.draw_rect_filled(69,y+67,152,7,color.new(0,0,0))
								--			render.draw_rect_filled(70,y+68,150,5,z)
								--		elseif menu.get_int("anti_aim.fake_lag_limit")<=1 then 
								--			render.draw_rect_filled(69,y+67,3,7,color.new(0,0,0))
								--			render.draw_rect_filled(70,y+68,3,5,z)
								--		else 
								--			render.draw_rect_filled(69,y+67,menu.get_int("anti_aim.fake_lag_limit")*12+2,7,color.new(0,0,0))
								--			render.draw_rect_filled(70,y+68,menu.get_int("anti_aim.fake_lag_limit")*12,5,z)
								--			end
								--			if x>=150 then 
								--				render.draw_rect_filled(69,y+87,152,7,color.new(0,0,0))
								--				render.draw_rect_filled(70,y+88,150,5,z)
								--			elseif x<=1 then 
								--				render.draw_rect_filled(69,y+87,3,7,color.new(0,0,0))
								--				render.draw_rect_filled(70,y+88,3,5,z)
								--			else 
								--				render.draw_rect_filled(69,y+87,x+2,7,color.new(0,0,0))
								--				render.draw_rect_filled(70,y+88,x,5,z)
								--		end 
								--	 end 
									client.add_callback("on_paint",l)
									
									
								
								local function J()
									menu.set_bool("Indicators",false)
								end 
								client.add_callback("unload",J)
								
menu.add_check_box("DEAGLE")
menu.add_check_box("TEC")
menu.add_check_box("ELITE")
menu.add_check_box("AUTOSNIPER")
menu.add_check_box("AWP")
menu.add_check_box("SCOUT")
menu.add_check_box("Utilities")

local deagle = false
local tec = false
local elite = false
local auto = false
local awp = false
local scout = false
local utilities = false

client.add_callback("on_paint", function()
	deagle = menu.get_bool("DEAGLE")
	tec = menu.get_bool("TEC")
	dual = menu.get_bool("ELITE")
	auto = menu.get_bool("AUTOSNIPER")
	awp = menu.get_bool("AWP")
 	scout = menu.get_bool("SCOUT")
	utilities = menu.get_bool("Utilities")
end)
events.register_event("round_start", function() 
		if deagle then
		console.execute("buy deagle")
	end
		if tec then
		console.execute("buy tec9")
	end
		if dual then
		console.execute("buy elite")
	end
	if auto then
		console.execute("buy scar20")
	end
	if awp then
		console.execute("buy awp")
	end
	if scout then
		console.execute("buy ssg08")
	end
    if utilities then
		console.execute("buy vesthelm")
		console.execute("buy vest")
		console.execute("buy taser")
		console.execute("buy defuser")
		console.execute("buy hegrenade")
		console.execute("buy molotov")
		console.execute("buy smokegrenade")
	end
end)

--legfucker


-- Menu
local menu_check_box = menu.add_check_box
local menu_get_bool = menu.get_bool
local menu_set_int = menu.set_int

-- Math
local math_random = math.random

-- Callback / Event
local events_register_event = events.register_event
local client_add_callback = client.add_callback

-- Entitylist
entitylist_get_local_player = entitylist.get_local_player

-- Our menu additions
menu_check_box("Leg breaker")

-- FFI
local ffi = require "ffi"

ffi.cdef[[
    typedef uintptr_t (__thiscall* GetClientEntity_4242425_t)(void*, int);
]]

local entity_list_ptr = ffi.cast("void***", utils.create_interface("client.dll", "VClientEntityList003"))
local get_client_entity_fn = ffi.cast("GetClientEntity_4242425_t", entity_list_ptr[0][3])

local ffi_helpers = {
    get_animstate_offset = function()
        return 14612
    end,

    get_entity_address = function(ent_index)
        local addr = get_client_entity_fn(entity_list_ptr, ent_index)
        return addr
    end
}

-- Lets break our legs!
client_add_callback("on_paint", function()
    if menu_get_bool("Leg breaker") then
        local localplayer = entitylist_get_local_player()
        if not localplayer then return end
        ffi.cast("float*", ffi_helpers.get_entity_address(localplayer:get_index()) + 10100)[0] = 0

        menu_set_int("misc.leg_movement", math_random(1, 2))
     end
end)

--Disable blur
menu.add_check_box("Disable blur")

function PaintTraverse()
  if(menu.get_bool("Disable blur")) then
  console.set_int("@panorama_disable_blur", 1)
  else
  console.set_int("@panorama_disable_blur", 0)
  end
end
client.add_callback("on_paint", PaintTraverse)
-- Get good. Get legendware.


--fog-efect
menu.add_check_box("Enable Fog")
menu.next_line()
menu.add_color_picker("Fog Color")
menu.add_slider_int("Fog Distance", 0, 2500)
menu.add_slider_int("Fog Density", 0, 100)

client.add_callback("on_paint", function()
    if menu.get_bool("Enable Fog") then
        console.set_int("fog_override", 1)

        local fog_color = menu.get_color("Fog Color")
        console.set_string("fog_color", string.format("%i %i %i", fog_color:r(), fog_color:g(), fog_color:b()))

        local fog_end = menu.get_int("Fog Distance")
        console.set_int("fog_start", 0)
        console.set_int("fog_end", fog_end)

        local fog_maxdensity = menu.get_int("Fog Density")
        console.set_int("fog_maxdensity", fog_maxdensity)
    end
end)

client.add_callback("unload", function()
    console.set_int("fog_override", 0)
    console.set_int("fog_color", -1, -1, -1)
    console.set_int("fog_start", 0)
    console.set_int("fog_end", 0)
    console.set_int("fog_maxdensity", 0)
end)

-- force crosshair
menu.add_check_box("Force Crosshair")
local function force_crosshair()
    local localplayer = entitylist.get_local_player()
    
    if localplayer ~= nil then

    is_scoped = localplayer:is_scoped()
    end

	if(menu.get_bool("Force Crosshair")) then
    console.set_int("weapon_debug_spread_show", is_scoped and 0 or 3)
	else
	end
end
client.add_callback("on_paint", force_crosshair)

-- hitsound
events.register_event("player_hurt", function(event)
    local attacker = event:get_int("attacker")
    local attacker_to_player = engine.get_player_for_user_id(attacker)
    local local_index = engine.get_local_player_index()
 

    if attacker_to_player == local_index then
   
     local hitsoundcmd = "play neverlose.wav" 
           console.execute(hitsoundcmd);
    end

end)

--legit aa on key

local menu_get_bool = menu.get_bool
local menu_set_int = menu.set_int

local client_add_callback = client.add_callback

client.add_callback("create_move", function()


if menu.get_key_bind_state("anti_aim.manual_forward_key")
    then menu.set_int("anti_aim.pitch", 0)
elseif
    menu.set_int("anti_aim.pitch", 1) then
    end
end)

--hit logs
local gpinf = engine.get_player_info

local function hitlog(shot_info)

local results       = shot_info.result
local target        = shot_info.target_index
local targetname    = gpinf(target).name
local serverdamage  = shot_info.server_damage
local clientdamage  = shot_info.client_damage
local serverhitbox  = shot_info.server_hitbox
local clienthitbox  = shot_info.client_hitbox
local hitchance     = shot_info.hitchance
local backtrack     = shot_info.backtrack_ticks
local safe          = tostring(shot_info.safe)
local health_final  = entitylist.entity_to_player(entitylist.get_player_by_index(target)):get_health()

if results == "Hit" then
    -- client.log("\n serverdamage " .. serverdamage .. "client damage" .. clientdamage .."")
--   if serverdamage < clientdamage then
    client.log( "\n[HIT] shot at " .. targetname .. " did " .. serverdamage .. " damage in " .. serverhitbox .. " | backtrack: " .. backtrack .. "tick ( " .. health_final .. " health remaining )"  )
--   end
elseif results == "Spread" then
  client.log( "\n[MISS] missed shot to " .. targetname .. " due to spread ( hitchance: " .. hitchance .. " | damage: " .. clientdamage .. "hp | hitbox: " .. clienthitbox .. " | backtrack: " .. backtrack .. "tick )" )
elseif results == "Occlusion" then
  client.log( "\n[MISS] missed shot to " .. targetname .. " due to occlusion ( hitchance: " .. hitchance .. " | damage: " .. clientdamage .. "hp | hitbox: " .. clienthitbox .. " | backtrack: " .. backtrack .. "tick )" )
elseif results == "Resolver" then
  client.log( "\n[MISS] missed shot to " .. targetname .. " due to resolver ( hitchance: " .. hitchance .. " | damage: " .. clientdamage .. "hp | hitbox: " .. clienthitbox .. " | backtrack: " .. backtrack .. "tick )" )
else
  client.log( "\n[MISS] missed shot to " .. targetname .. " due to ? ( hitchance: " .. hitchance .. " | damage: " .. clientdamage .. "hp | hitbox: " .. clienthitbox .. " | backtrack: " .. backtrack .. " | safe: " .. safe .. " )" )
end

end

client.add_callback("on_shot", hitlog)

--harmed logs
local hitgroups = { "body", "head", "chest", "stomach", "left arm", "right arm", "left leg", "right leg", "neck", "?", "gear" }

events.register_event("player_hurt", function(event)
  local localplayer = entitylist.get_local_player()
  if not localplayer then return end

  local attacker = engine.get_player_for_user_id(event:get_int("attacker"))
  if not attacker then return end
  local victim = engine.get_player_for_user_id(event:get_int("userid"))
  if not victim then return end
  local damage = event:get_int("dmg_health")
  local hitgroup = event:get_int("hitgroup")
  if victim == localplayer:get_index() then

    local info = engine.get_player_info( attacker )
    client.log("\n[HARMED] by "..info.name .. " in " .. hitgroups[hitgroup+1] .. " for " .. damage .. " damage ")
  end
end)

--optimization

local optimization = true
local function coolopt()
   if optimization == true then
    console.set_int( "r_3dsky", 0 )
    console.set_int( "r_shadows", 0 )
    console.set_int( "cl_csm_static_prop_shadows", 0 )
    console.set_int( "cl_csm_shadows", 0 )
    console.set_int( "cl_csm_world_shadows", 0 )
    console.set_int( "cl_foot_contact_shadows", 0 )
    console.set_int( "cl_csm_viewmodel_shadows", 0 )
    console.set_int( "cl_csm_rope_shadows", 0 )
    console.set_int( "cl_csm_sprite_shadows", 0 )
    console.set_int( "cl_disablefreezecam", 0 )
    console.set_int( "cl_freezecampanel_position_dynamic", 0 )
    console.set_int( "cl_freezecameffects_showholiday", 0 )
    console.set_int( "cl_showhelp", 0 )
    console.set_int( "cl_autohelp", 0 )
    console.set_int( "cl_disablehtmlmotd", 0 )
    console.set_int( "mat_postprocess_enable", 0 )
    console.set_int( "fog_enable_water_fog", 0 )
    console.set_int( "gameinstructor_enable", 0 )
    console.set_int( "cl_csm_world_shadows_in_viewmodelcascade", 0 )
    console.set_int( "cl_disable_ragdolls", 0 )
    client.log("::  RusWare has appeared! It just increased your RAM therefore your FPS!")
    optimization = false
    end
end
local function unload()
    console.set_int( "r_3dsky", 1 )
    console.set_int( "r_shadows", 1 )
    console.set_int( "cl_csm_static_prop_shadows", 1 )
    console.set_int( "cl_csm_shadows", 1 )
    console.set_int( "cl_csm_world_shadows", 1 )
    console.set_int( "cl_foot_contact_shadows", 1 )
    console.set_int( "cl_csm_viewmodel_shadows", 1 )
    console.set_int( "cl_csm_rope_shadows", 1 )
    console.set_int( "cl_csm_sprite_shadows", 1 )
    console.set_int( "cl_disablefreezecam", 1 )
    console.set_int( "cl_freezecampanel_position_dynamic", 1 )
    console.set_int( "cl_freezecameffects_showholiday", 1 )
    console.set_int( "cl_showhelp", 1 )
    console.set_int( "cl_autohelp", 1 )
    console.set_int( "cl_disablehtmlmotd", 1 )
    console.set_int( "mat_postprocess_enable", 1 )
    console.set_int( "fog_enable_water_fog", 1 )
    console.set_int( "gameinstructor_enable", 1 )
    console.set_int( "cl_csm_world_shadows_in_viewmodelcascade", 1 )
    console.set_int( "cl_disable_ragdolls", 1 )   
end
client.add_callback("unload", unload)
client.add_callback("on_paint", coolopt)

--thirdperson distance

menu.add_slider_int("Third Person Distance", 0, 150)
local function draw()
    menu.set_int("misc.third_person_distance", menu.get_int("Third Person Distance"))
end
client.add_callback("on_paint", draw)

--static legs in air

local ffi = require  ("ffi")

ffi.cdef[[
    typedef uintptr_t (__thiscall* GetClientEntity_4242425_t)(void*, int);

    typedef struct
    {
        float x;
        float y;
        float z;
    } Vector_t;

    typedef struct
    {
        char        pad0[0x60]; // 0x00
        void*       pEntity; // 0x60
        void*       pActiveWeapon; // 0x64
        void*       pLastActiveWeapon; // 0x68
        float        flLastUpdateTime; // 0x6C
        int            iLastUpdateFrame; // 0x70
        float        flLastUpdateIncrement; // 0x74
        float        flEyeYaw; // 0x78
        float        flEyePitch; // 0x7C
        float        flGoalFeetYaw; // 0x80
        float        flLastFeetYaw; // 0x84
        float        flMoveYaw; // 0x88
        float        flLastMoveYaw; // 0x8C // changes when moving/jumping/hitting ground
        float        flLeanAmount; // 0x90
        char        pad1[0x4]; // 0x94
        float        flFeetCycle; // 0x98 0 to 1
        float        flMoveWeight; // 0x9C 0 to 1
        float        flMoveWeightSmoothed; // 0xA0
        float        flDuckAmount; // 0xA4
        float        flHitGroundCycle; // 0xA8
        float        flRecrouchWeight; // 0xAC
        Vector_t    vecOrigin; // 0xB0
        Vector_t    vecLastOrigin;// 0xBC
        Vector_t    vecVelocity; // 0xC8
        Vector_t    vecVelocityNormalized; // 0xD4
        Vector_t    vecVelocityNormalizedNonZero; // 0xE0
        float        flVelocityLenght2D; // 0xEC
        float        flJumpFallVelocity; // 0xF0
        float        flSpeedNormalized; // 0xF4 // clamped velocity from 0 to 1
        float        flRunningSpeed; // 0xF8
        float        flDuckingSpeed; // 0xFC
        float        flDurationMoving; // 0x100
        float        flDurationStill; // 0x104
        bool        bOnGround; // 0x108
        bool        bHitGroundAnimation; // 0x109
        char        pad2[0x2]; // 0x10A
        float        flNextLowerBodyYawUpdateTime; // 0x10C
        float        flDurationInAir; // 0x110
        float        flLeftGroundHeight; // 0x114
        float        flHitGroundWeight; // 0x118 // from 0 to 1, is 1 when standing
        float        flWalkToRunTransition; // 0x11C // from 0 to 1, doesnt change when walking or crouching, only running
        char        pad3[0x4]; // 0x120
        float        flAffectedFraction; // 0x124 // affected while jumping and running, or when just jumping, 0 to 1
        char        pad4[0x208]; // 0x128
        float        flMinBodyYaw; // 0x330
        float        flMaxBodyYaw; // 0x334
        float        flMinPitch; //0x338
        float        flMaxPitch; // 0x33C
        int            iAnimsetVersion; // 0x340
    } CCSGOPlayerAnimationState_534535_t;
]]

local entity_list_ptr = ffi.cast("void***", utils.create_interface("client.dll", "VClientEntityList003"))
local get_client_entity_fn = ffi.cast("GetClientEntity_4242425_t", entity_list_ptr[0][3])

local ffi_helpers = {
    get_entity_address = function(ent_index)
        local addr = get_client_entity_fn(entity_list_ptr, ent_index)
        return addr
    end
}

local shared_onground

client.add_callback("on_paint", function()
    local localplayer = entitylist.get_local_player()
    if not localplayer then return end
    local bOnGround = bit.band(math.floor(localplayer:get_prop_float("CBasePlayer", "m_fFlags")), bit.lshift(1,0)) ~= 0
    if not bOnGround then
        ffi.cast("CCSGOPlayerAnimationState_534535_t**", ffi_helpers.get_entity_address(localplayer:get_index()) + 14612)[0].flDurationInAir = 99
        ffi.cast("CCSGOPlayerAnimationState_534535_t**", ffi_helpers.get_entity_address(localplayer:get_index()) + 14612)[0].flHitGroundCycle = 0
        ffi.cast("CCSGOPlayerAnimationState_534535_t**", ffi_helpers.get_entity_address(localplayer:get_index()) + 14612)[0].bHitGroundAnimation = false
    end

    shared_onground = bOnGround
end)

client.add_callback("on_paint", function()
    local localplayer = entitylist.get_local_player()
    if not localplayer then return end
    local bOnGround = bit.band(math.floor(localplayer:get_prop_float("CBasePlayer", "m_fFlags")), bit.lshift(1,0)) ~= 0
    if bOnGround and not shared_onground then ffi.cast("CCSGOPlayerAnimationState_534535_t**", ffi_helpers.get_entity_address(localplayer:get_index()) + 14612)[0].flDurationInAir = 0.5 end -- ACT_CSGO_LAND_LIGHT
end)


--watermark

client.add_callback("on_paint", function()
        local screen_width = engine.get_screen_width()
        local username = globals.get_username()
        local ping = tostring(globals.get_ping())
        local tickrate = math.floor(1.0 / globals.get_intervalpertick())
		local get_time = os.date("%X", os.time())
        local server = globals.get_server_address()
        --
        local text
        if engine.is_connected() then
            text = tostring(" cyber.tech | " .. username .. " | " ..server.. " | delay: " .. ping .. "ms | " .. tickrate .. "tick | "..get_time.. " ")
        else
            text = tostring(" cyber.tech | " .. username .. " | " ..get_time.. " ")
        end
        --
        local width = render.get_text_width(c, text)
        --
        local line_color = menu.get_color("cyber-color")
        local text_color = color.new(255, 255, 255)
        --
        local x = screen_width - 10 - width - 4
        local y = 10
        local w = width + 5
        --
        render.draw_rect_filled(x, y - 1, w, 2, line_color)
        render.draw_text(c, x + 2, y + 4, text_color, text)
    end)
