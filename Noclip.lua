noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game:service'Players'.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game:service'Players'.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)

if key == "e" then
noclip = not noclip
game:service'Players'.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
print('Loaded')
print('Press "E" To Noclip')
