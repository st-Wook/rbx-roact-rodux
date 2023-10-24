local nodeModules = script.Parent.Parent.Parent
local Roact = require(nodeModules.RoactCompat)

local StoreContext = Roact.createContext()

return StoreContext