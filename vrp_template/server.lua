local Template = class("Template", vRP.Extension)                    				-- Class Name, Can be changed to anything
local lang = vRP.lang

function Template:__construct()                                    					-- Change Template to match Class Name
	vRP.Extension.__construct(self)
	
	self.cfg = module("vrp_template", "cfg/cfg")									-- links cfg file
end

Template.event = {}
Template.tunnel = {}

function Template.event:playerSpawn(user, first_spawn)
	if first_spawn then
	
		-- creating blimps/ markers 
		for k,v in pairs(self.cfg.pos) do							
			local name,gtype,x,y,z = table.unpack(v)
			
			local function enter(user)
				self.remote._openUI(source)											-- triggers client side function
			end
			
			local function leave(user)
				self.remote._closeUI(source)										-- triggers client side function
			end
			
			local ment = clone(self.cfg.marker.Test)								-- gets specific marker information in cfg
			ment[2].title = "Test"													-- can be set in cfg or lang file
			ment[2].pos = {x,y,z-1}													-- gets x,y,z from above
			
			vRP.EXT.Map.remote._addEntity(user.source, ment[1], ment[2])			-- permanently placed and has marker
			vRP.EXT.Map.remote._setEntity(user.source, ment[1], ment[1], ment[2])	-- can be removed but doesnt show marker

			user:setArea("Test"..k,x,y,z,1,1.5,enter,leave)
		end
	end
end

function Template.event:test(txt)													-- event function that need called
	local user = vRP.users_by_source[source]
	
	vRP.EXT.Base.remote._notify(user.source, "Tunnell has worked, "..txt..".")		-- send string notification with inbedded variables
end

function Template.tunnel:test(txt)													-- Function for client side to call
	vRP:triggerEvent("test", txt)													-- calls server event and passes variable
end

vRP:registerExtension(Template)                                    					-- Change Template to match Class Name