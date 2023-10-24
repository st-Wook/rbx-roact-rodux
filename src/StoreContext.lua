local nodeModules = script.Parent.Parent.Parent
local Roact = require(nodeModules.React.React)

local StoreContext = Roact.createContext()

return StoreContext