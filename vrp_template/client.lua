--##########    VRP Main    ##########--
-- init vRP client context
Tunnel = module("vrp", "lib/Tunnel")
Proxy = module("vrp", "lib/Proxy")

local cvRP = module("vrp", "client/vRP")
vRP = cvRP()

local pvRP = {}
-- load script in vRP context
pvRP.loadScript = module
Proxy.addInterface("vRP", pvRP)

local cfg = module("vrp_template", "cfg/cfg")            	-- Optiona, Change vrp_template to match folder name

local Template = class("Template", vRP.Extension)           -- Class Name, Can be changed to anything (match with server class name to make things easier

function Template:__construct()                            	-- Change Template to match Class Name
	vRP.Extension.__construct(self)
end

function Template:test()
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(0)
			-- task: Disable Controls
			if cfg.disable_controls then					-- checks cfg for value
				for k,v in pairs(cfg.disable_keys) do		-- goes through table in cfg
					if v then								-- checks if value is true 
						DisableControlAction(0, k)			-- disables the keys that are set to true
					end
				end
			end
		end
	end)
end

function Template:closeUI()
	local txt = "Closed the UI"
	self.remote._test(txt)									-- calls server side function and passes variable
end

function Template:openUI()
	local txt = "Opened the UI"
	
	self:test()												-- calls internal function
	self.remote._test(txt)									-- calls server side function and passes variable
end

Template.tunnel = {}										-- needed for tunnel

-- UI
Template.tunnel.closeUI 		= Template.closeUI			-- links tunnel to function
Template.tunnel.openUI 			= Template.openUI			-- links tunnel to function

vRP:registerExtension(Template)                            	-- Change Template to match Class Name