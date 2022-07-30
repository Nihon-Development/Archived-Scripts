	-- /* Loader Screen */ -- 
	repeat wait() until game:IsLoaded()
	-- Instances: 6 | Scripts: 1 | Modules: 0
	local G2L = {};
	
	-- StarterGui.NihonLoading
	G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
	G2L["1"]["DisplayOrder"] = 1999999999;
	G2L["1"]["Name"] = [[NihonLoading]];
	G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
	
	-- StarterGui.NihonLoading.Main
	G2L["2"] = Instance.new("Frame", G2L["1"]);
	G2L["2"]["BackgroundColor3"] = Color3.fromRGB(47, 49, 58);
	G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["2"]["ClipsDescendants"] = true;
	G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	G2L["2"]["Name"] = [[Main]];
	
	-- StarterGui.NihonLoading.Main.UICorner
	G2L["3"] = Instance.new("UICorner", G2L["2"]);
	G2L["3"]["CornerRadius"] = UDim.new(1, 0);
	
	-- StarterGui.NihonLoading.Main.UIStroke
	G2L["4"] = Instance.new("UIStroke", G2L["2"]);
	G2L["4"]["Color"] = Color3.fromRGB(206, 51, 86);
	G2L["4"]["Thickness"] = 2;
	
	-- StarterGui.NihonLoading.Main.Image
	G2L["5"] = Instance.new("ImageLabel", G2L["2"]);
	G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["5"]["ImageTransparency"] = 1;
	G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["5"]["Image"] = [[rbxassetid://10205561706]];
	G2L["5"]["Size"] = UDim2.new(0.800000011920929, 0, 0.800000011920929, 0);
	G2L["5"]["Name"] = [[Image]];
	G2L["5"]["BackgroundTransparency"] = 1;
	G2L["5"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	
	-- StarterGui.NihonLoading.Main.LocalScript
	local function C_LocalScript_6()
		
		local function Tween(Object, Properties, Value, Time, Style, Direction)
			Time = Time or 0.5
			Style = Style or Enum.EasingStyle.Exponential
			Direction = Direction or Enum.EasingDirection.InOut
			
			local propertyGoals = {}
			local Table = ((type(Value) == "table" and true) or false)
			
			for i,Property in pairs(Properties) do 
				propertyGoals[Property] = Table and Value[i] or Value 
			end
			
			game:GetService("TweenService"):Create(Object,TweenInfo.new(Time, Style, Direction), propertyGoals):Play()
		end
		
		
		Tween(G2L["2"], {"Size"}, UDim2.fromOffset(125, 125), .6)
		task.wait(.4)
		Tween(G2L["5"], {"ImageTransparency"}, 0, .6)
		
		
		task.wait(2.1)
		
		Tween(G2L["5"], {"ImageTransparency"}, 1, .6)
		task.wait(.8)
		Tween(G2L["2"], {"Size"}, UDim2.fromOffset(0, 0), 1)
		Tween(G2L["4"], {"Transparency"}, 1, 1)
		task.wait(1)
		G2L["1"]:Destroy()
	end;
	task.spawn(C_LocalScript_6);
