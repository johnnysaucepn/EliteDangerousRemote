local kb = libs.keyboard;


-- Documentation
-- http://www.unifiedremote.com/api

-- Keyboard Library
-- http://www.unifiedremote.com/api/libs/keyboard

longstroke = function(...)
	--for k,v in pairs(key_table) do
		--print(v)
		kb.down(...);
		os.sleep(60);
		kb.up(...);
	--end
end	

key = function(k)
	split_key = {}
	for key_item in string.gmatch(k, "%a+") do
		--print(key_item)
		table.insert(split_key, key_item)
	end
	return split_key
end

local threattarget = key(settings.threattarget)
local previoustarget = key(settings.previoustarget)
local nexttarget = key(settings.nexttarget)
local destination = key(settings.destination)
local previoussubsystem = key(settings.previoussubsystem)
local nextsubsystem = key(settings.nextsubsystem)
local jump = key(settings.jump)
local heatsink = key(settings.heatsink)
local chaff = key(settings.chaff)
local shieldcell = key(settings.shieldcell)
local cargo = key(settings.cargo)
local lights = key(settings.lights)
local landing = key(settings.landing)
local silent = key(settings.silent)
local hardpoints = key(settings.hardpoints)
local sys = key(settings.sys)
local eng = key(settings.eng)
local wep = key(settings.wep)
local balance = key(settings.balance)

actions.threattarget = function ()
	longstroke(unpack(threattarget))
end
actions.previoustarget = function ()
	longstroke(unpack(previoustarget))
end
actions.nexttarget = function ()
	longstroke(unpack(nexttarget))
end
actions.destination = function ()
	longstroke(unpack(destination))
end
actions.previoussubsystem = function ()
	longstroke(unpack(previoussubsystem))
end
actions.nextsubsystem = function ()
	longstroke(unpack(nextsubsystem));
end


actions.jump = function ()
	longstroke(unpack(jump));
end

actions.heatsink = function ()
	longstroke(unpack(heatsink));
end
actions.chaff = function ()
	longstroke(unpack(chaff));
end
actions.shieldcell = function ()
	longstroke(unpack(shieldcell));
end


actions.cargo = function ()
	longstroke(unpack(cargo));
end
actions.lights = function ()
	longstroke(unpack(lights));
end
actions.landing = function ()
	longstroke(unpack(landing));
end
actions.silent = function ()
	longstroke(unpack(silent));
end
actions.hardpoints = function ()
	longstroke(unpack(hardpoints));
end

actions.sys = function ()
	longstroke(unpack(sys));
end
actions.eng = function ()
	longstroke(unpack(eng));
end
actions.wep = function ()
	longstroke(unpack(wep));
end
actions.balance = function ()
	longstroke(unpack(balance));
end