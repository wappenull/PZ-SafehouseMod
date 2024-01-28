
local function GetObjectDisplayName( object )
	local properties = object:getSprite():getProperties()
	local groupname	= properties:Is("GroupName") and properties:Val("GroupName") or nil;
	local name = (groupname and (groupname .. " ") or "") .. (properties:Is("CustomName") and properties:Val("CustomName") or "None");
	return name;
end

local function OnObjectAdded(object)
	-- Your code here
	local displayName = GetObjectDisplayName( object );
	print( "Placed " .. object.name .. " " .. displayName .. " by " .. "??" );
end



Events.OnObjectAdded.Add(OnObjectAdded)