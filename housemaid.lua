#!/usr/bin/env lua 

local home = os.getenv("HOME")

if home then
	package.path = string.format("%s;%s/.config/housemaid/?.lua", package.path, home)
	local files = require("config")

	for _, file in pairs(files) do
		os.execute("rm -rv " .. home .. "/" .. file)
	end
end

