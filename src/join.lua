local function join(...)
	local argCount = select("#", ...)
	if argCount == 0 then
		return {}
	elseif argCount == 1 then
		local new = table.clone(... or {})
		setmetatable(new, nil) -- We don't want cloned metatables
		return new
	end

	local new
	local first = select(1, ...)
	if first ~= nil then
		new = table.clone(first)
		setmetatable(new, nil) -- We don't want cloned metatables
	else
		new = {}
	end

	for i = 2, argCount do
		local source = select(i, ...)

		if source ~= nil then
			for key, value in pairs(source) do
				new[key] = value
			end
		end
	end

	return new
end

return join
