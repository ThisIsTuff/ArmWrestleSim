local S_ReplicatedStorage_1 = game:GetService("ReplicatedStorage")
local L_ModuleScripts_2 = S_ReplicatedStorage_1:WaitForChild("ModuleScripts")
local v3 = require(L_ModuleScripts_2.DairebStore2.LocalDairebStore2)
local dataStore = v3.GetDairebStoreAsync("MainData")
local lastRaidTime = nil
for i,v in pairs(dataStore) do
    if i == "ServerData" then
        for a,aa in pairs(v) do
            for b,bb in pairs(aa) do
                if b == "LastRaidHosted" then
                    pcall(function()
                        print(bb - tick())
                    end)
                end
            end
        end
    end
end