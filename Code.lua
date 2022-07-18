KrimzinCore.require(KrimzinCore.MOD_PATH .. "lua/core/Debug.lua")

local function write_engine_class_members(path_format)
	local classes = debug.getregistry()[5]

	for k, v in pairs(classes) do
		local file = io.open(path_format:format(v.type_name), "w+")
		file:write(KrimzinCore.Debug.format_member_names(v))
		file:close()
	end
end

write_engine_class_members("C:/example/%s.txt")
