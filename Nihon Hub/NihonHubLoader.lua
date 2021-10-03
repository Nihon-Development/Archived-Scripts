local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nihon-Development/Nihon-Scripts/main/Nihon%20Hub/Games/IrisBetterNotifications.lua"))()

function notify(title, desc)
    Notification.Notify(title, desc, "rbxassetid://7638932765", {
        Duration = 7,
        
        TitleSettings = {
            TextXAlignment = Enum.TextXAlignment.Center,
            Font = Enum.Font.SourceSansSemibold,
        },
    
        GradientSettings = {
            GradientEnabled = false,
            SolidColorEnabled = true,
            SolidColor = Color3.fromRGB(202, 51, 66),
            Retract = true
        }
    })
end

if getgenv().nihonHubLoader == true then
    notify("Nihon Hub", "Nihon Hub has already been loaded!")
else
    getgenv().nihonHubLoader = true;
    notify("Nihon Hub", "Detecting Game")
    wait(3)
    if game.PlaceId == 1962086868 then -- Normal ToH
        notify("Nihon Hub", "Tower of Hell detected, loading script.\nYour game might lag a bit.")
        wait(3)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Nihon-Development/Nihon-Scripts/main/Nihon%20Hub/Games/TowerOfHell.lua"))()
        notify("Nihon Hub", "Make sure to use an alt since you could get banned.")
    elseif game.PlaceId == 5253186791 then -- Appeal ToH
        notify("Nihon Hub", "Tower of Hell (appeal) detected, loading script.\nYour game might lag a bit.")
        wait(3)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Nihon-Development/Nihon-Scripts/main/Nihon%20Hub/Games/TowerOfHell.lua"))()
        notify("Nihon Hub", "Make sure to use an alt since you could get banned.")
    end
end