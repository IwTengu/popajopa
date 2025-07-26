local Tengufield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local MainWindow = Tengufield:CreateWindow({
   Name = "Vizor | Hub",
   Icon = 118135779374221, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Loading..",
   LoadingSubtitle = "by FFan",
   ShowText = "Vizor", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = true,
   DisableBuildWarnings = true, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "99 night`s Hub"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "https://discord.gg/Q6HpyX8G", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Vizor | Hub",
      Subtitle = "Key System",
      Note = "Get key in discord!", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"KR95A"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})


local MainTab = MainWindow:CreateTab("Main", 103759943618940) -- Title, Image
local TeleportTab = MainWindow:CreateTab("Teleport", 125643204932717) -- Title, Image
local BringTab = MainWindow:CreateTab("Bring", 123547015717903) -- Title, Image

local Slider = MainTab:CreateSlider({
   Name = "Speed Hack",
   Range = {16, 250},
   Increment = 10,
   Suffix = "WalkSpeed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(v)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
   end,
})

local Toggle = MainTab:CreateToggle({
   Name = "FPS Counter",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if Value then
      local FPSCounter = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local BlowTorch702 = Instance.new("TextLabel")
 
--Properties:
 
FPSCounter.Name = "FPS Counter"
FPSCounter.Parent = game.CoreGui
FPSCounter.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
Frame.Parent = FPSCounter
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.47, 0, 0, 0)
Frame.Size = UDim2.new(0, 90, 0, 44)
 
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Position = UDim2.new(0.0380950011, 0, 0.0733478963, 0)
TextLabel.Size = UDim2.new(0, 82, 0, 36)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "Loading..."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000
 
 
-- Scripts:
 
local function UQHMBKG_fake_script() -- FPSCounter.Drag Script 
    local script = Instance.new('LocalScript', FPSCounter)
 
    Frame = script.Parent.Frame
    Frame.Draggable = true
    Frame.Active = true
    Frame.Selectable = true
end
coroutine.wrap(UQHMBKG_fake_script)()
local function RMEPRFA_fake_script() -- TextLabel.FPS Counter Script 
    local script = Instance.new('LocalScript', TextLabel)
 
    local RS = game:GetService("RunService")
    local FPS = 0
    
    function UpdateFPS()
        FPS = FPS + 1
    end
    
    RS.RenderStepped:Connect(UpdateFPS)
    while wait(1) do
        script.Parent.Text = FPS.." FPS"
        FPS = 0
    end
end
coroutine.wrap(RMEPRFA_fake_script)()
      Value = true
   elseif not Value then
      game:GetService("CoreGui")["FPS Counter"]:Destroy()
      Value = false
   end
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport to Camp",
   Callback = function()
   local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(5, 4, -0.5)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport to Trader",
   Callback = function()
   local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local peltrader = workspace.Characters["Pelt Trader"].Head
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = peltrader.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport to Fairy",
   Callback = function()
   local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local fairy = workspace.Map.Landmarks["Fairy House"].Fairy.Head
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = fairy.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport to Stronghold",
   Callback = function()
   local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local stronghold = game:GetService("Workspace").Map.Landmarks.Stronghold.Main
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = stronghold.CFrame
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Carrot",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Carrot" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Hitbox" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Coal",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Coal" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Coal" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Log",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Log" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Sheet Metal",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Sheet Metal" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Old Radio",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Old Radio" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Bolt",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Bolt" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Fan",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Broken Fan" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Broken Microwave",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Broken Microwave" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Cake",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Cake" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Handle" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Fuel Canister",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Fuel Canister" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Apple",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Apple" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Bandage",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Bandage" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Handle" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring MedKit",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "MedKit" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Handle" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Oil Barrel",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Oil Barrel" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Old Car Engine",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Old Car Engine" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Seed Box",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Seed Box" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Handle" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Tyre",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Tyre" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Washing Machine",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Washing Machine" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Good Sack",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Good Sack" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Sack" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Iron Body",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Iron Body" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Old Flashlight",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Old Flashlight" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Revolver",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Revolver" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Revolver Ammo",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Revolver Ammo" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Rifle",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Rifle" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Rifle Ammo",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Rifle Ammo" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Strong Axe",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Strong Axe" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Leather Body",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Leather Body" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Morsel",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Morsel" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Meat" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Cooked Morsel" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Meat" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Steak",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Steak" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Cooked Steak" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Bunny Foot",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Bunny Foot" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "RearLeftLeg" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Alpha/Wolf/Bear Pelt",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Wolf Pelt" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Alpha Wolf Pelt" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Bear Pelt" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Main" then
            v.CFrame = rootPart.CFrame wait()
         end
      end 
   end
end
   end,
})

local Button = BringTab:CreateButton({
   Name = "Bring Coins",
   Callback = function()
   local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Coin Stack" then
        for i,v in pairs(v:GetChildren()) do
         if v.Name == "Mossy Coin" then
             for i,v in pairs(v:GetChildren()) do
          if v.Name == "Main" then
          v.CFrame = rootPart.CFrame wait()
          end
         end
      end 
   end
end
end
   end,
})
