local library = loadstring(game:HttpGet('https://zypher.wtf/Libraries/DH-UI-Lib.lua'))()
main = library:CreateMain()
local m = main:CreateWindow('AutoFarm',false, -25)

Client = {
    Hair = false,
    Burger = false
}
StationFunctions = {}
BurgerFunctions = {}
m:Toggle('Hair shit',function(state)
    for i,v in pairs(getgc(true)) do
        if type(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobManager.StylezHairdresser then
            local con = getconstants(v)
            if table.find(con,"CanUseWorkstation") and table.find(con,"Done") and table.find(con,'Style') then
                table.insert(StationFunctions,v)
            end
        end
    end
    Client.Hair = state
end)
m:Toggle('Burger shit',function(state)
    for i,v in pairs(getgc(true)) do
        if type(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobManager.BloxyBurgersCashier then
            local con = getconstants(v)
            if table.find(con,"CanUseWorkstation") and table.find(con,"Done") then
                table.insert(BurgerFunctions,v)
            end
        end
    end
    Client.Burger = state
end)



for i,v in pairs(getgc(true)) do
    if type(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobManager.StylezHairdresser then
        local con = getconstants(v)
        if table.find(con,"CanUseWorkstation") and table.find(con,"Done") and table.find(con,'Style') then
            table.insert(StationFunctions,v)
        end
    end
end
wait()
for i,v in pairs(getgc(true)) do
    if type(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobManager.BloxyBurgersCashier then
        local con = getconstants(v)
        if table.find(con,"CanUseWorkstation") and table.find(con,"Done") then
            table.insert(BurgerFunctions,v)
        end
    end
end
wait()
--Hair shit
local l__HairAssets__3 = game.ReplicatedStorage:WaitForChild("GameObjects"):WaitForChild("HairAssets");
Styles = {}
for i,v in pairs(l__HairAssets__3.Styles:GetChildren()) do
    table.insert(Styles,v)
end
Colors = {}
for i,v in pairs(l__HairAssets__3.Colors:GetChildren()) do
    table.insert(Colors,v)
end
function fireButton1(button)
	for i,signal in next, getconnections(button.MouseButton1Click) do
		signal:Fire()
	end
	for i,signal in next, getconnections(button.MouseButton1Down) do
		signal:Fire()
	end
	for i,signal in next, getconnections(button.Activated) do
		signal:Fire()
	end
end

function DoHair()
for i,v in pairs(StationFunctions) do
            if debug.getupvalues(v)[2]:FindFirstChild('InUse').Value == game.Players.LocalPlayer then
                CurrentStationFunction = v
                if debug.getupvalues(CurrentStationFunction)[2]:FindFirstChild('Occupied').Value ~= nil then
                    wait()
                    for i,v in pairs(Colors) do
                        if tostring(v) == debug.getupvalues(CurrentStationFunction)[2]:FindFirstChild('Occupied').Value.Order.Color.Value then
                            value = debug.getupvalues(CurrentStationFunction)[4][2]
                            goingto = i
                            SolvedNum = goingto - value
                            if string.match(tostring(SolvedNum),'-') then
                                SplitValue = string.split(tostring(SolvedNum),'')
                                for i = 0,SplitValue[2] + 1 do
                                    CurrentStationFunction('Color_Back')
                                    wait()
                                end
                            else
                            for i = 0,SolvedNum - 1 do
                                CurrentStationFunction('Color_Next')
                                wait()
                                end
                            end
                            wait(0.3)
                        end
                    end
                    for i,v in pairs(Styles) do
                        if tostring(v) == debug.getupvalues(CurrentStationFunction)[2]:FindFirstChild('Occupied').Value.Order.Style.Value then
                                wait()
                                    value = debug.getupvalues(CurrentStationFunction)[4][1]
                                    goingto = i
                                    SolvedNum = goingto-value
                                    if string.match(tostring(SolvedNum),'-') then
                                        SplitValue = string.split(tostring(SolvedNum),'')
                                        for i = 0,SplitValue[2] + 1 do
                                            CurrentStationFunction('Style_Back')
                                            wait()
                                        end
                                    else
                                    for i = 0,SolvedNum + -1 do
                                        uwu = i
                                        CurrentStationFunction('Style_Next')
                                        wait()
                                    end
                                end
                            end
                        end
                        wait()
                        wait(1)
                        CurrentStationFunction('Done')
                    break
                end
            end
        end
end

--Burger Shit

function DoBurger()
for i,v in pairs(BurgerFunctions) do
            if debug.getupvalues(v)[2].Occupied.Value ~= nil then
                func = v
                OrderBurger = debug.getupvalues(v)[2].Occupied.Value.Order
                    if OrderBurger:FindFirstChild('Burger') then
                        func(OrderBurger.Burger.Value)
                    end
                    if OrderBurger:FindFirstChild('Cola') and OrderBurger.Cola.Value == true then
                        func('Cola')
                    end
                    if OrderBurger:FindFirstChild('Fries') and OrderBurger.Fries.Value == true then
                        func('Fries')
                    end
                    wait()
                wait(1)
                v('Done')
            end
        end
end


spawn(function()
    while true do
        wait()
        if Client.Hair == true then
            DoHair()
            wait(math.random(3,4))
        end
        if Client.Burger == true then
            DoBurger()
            wait(math.random(3,4))
        end
    end
end)
