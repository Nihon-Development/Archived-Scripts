local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Arsenal Gui Fucker") -- Creates the window

local b = w:CreateFolder("Open Options") -- Creates the folder(U will put here your buttons,etc)

b:Label("Main",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

b:Button("Esp",function()
	loadstring(game:HttpGet("https://pastebin.com/raw/uVH1Z6Pa", true))()
end)


 
b:Button("Silent aim wall bang",function()
loadstring(game:HttpGet("https://pastebin.com/raw/haVaKgXs", true))()
end)


b:Button("Infinite ammo ",function()
loadstring(game:HttpGet("https://pastebin.com/raw/AghcRUBJ", true))()
end)

b:Button("Speed (k)",function()
loadstring(game:HttpGet("https://pastebin.com/raw/QRSgQiQh", true))()
end)

b:Button("kill hackula (R)",function()
loadstring(game:HttpGet("https://pastebin.com/raw/k0DsMhBq", true))()
end)


b:Button("Kill all E",function()
loadstring(game:HttpGet("https://pastebin.com/raw/jJ4BUrjL", true))()
end)

b:Button("CC aimbot",function()
loadstring(game:HttpGet("https://pastebin.com/raw/Ld3rvbyw", true))()	
end)

b:Button("Wallbang for CC aimbot",function()
loadstring(game:HttpGet("https://pastebin.com/raw/tCsqmrZp", true))()
end)

b:Button("shoot kill all",function()
loadstring(game:HttpGet("https://pastebin.com/raw/h7n8fuRd", true))()
end)

b:Button("Esp 2",function()
loadstring(game:HttpGet("https://pastebin.com/raw/gwN6fn2v", true))()
end)


----- NOTIFICATION
local function LLVB_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)
 
	wait(0.3)
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Arsenal Gui 2 Fucker Loaded !";
		Text = "Load infinite ammo when you're in the game! ";
 
	})
	wait(0.3)
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Arsenal Gui Reminder!";
		Text = "toggle key ctrl";
	})
end
coroutine.wrap(LLVB_fake_script)()
 



 local function callback(Text)
 if Text == "Button1 text" then
  print ("Answer")
elseif Text == ("Button2 text") then
 print ("Answer2")
 end
end

local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
 Title = "Arsenal gui";
 Text = "New UI!";
 Icon = "";
 Duration = 5;
 Button1 = "Nice";
 Button2 = "its shit";
 Callback = NotificationBindable;
})
