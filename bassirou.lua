debugX = true

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Rayfield Example Window",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

-- Onglet Aimbot
local aimbotTab = Window:CreateTab("Aimbot", 4483362458)
aimbotTab:CreateSection("Aimbot Features")
aimbotTab:CreateButton({
   Name = "Button Example",
   Callback = function()
      -- The function that takes place when the button is pressed
   end,
})
aimbotTab:CreateButton({
   Name = "Nouveau Bouton",
   Callback = function()
      print("Tu as cliqué le nouveau bouton !")
   end,
})

-- Onglet ESP
local espTab = Window:CreateTab("ESP", 4483362458)
espTab:CreateSection("Visuals")

-- Toggle usernames
local usernamesEnabled = false
local usernameBillboards = {}

local function clearUsernames()
    for _, gui in pairs(usernameBillboards) do
        if gui and gui.Parent then
            gui:Destroy()
        end
    end
    usernameBillboards = {}
end

local function updateUsernamesESP(active)
    clearUsernames()
    if not active then return end
    local Players = game:GetService('Players')
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= Players.LocalPlayer then
            local char = plr.Character
            if char and char:FindFirstChild("Head") then
                local billboard = Instance.new("BillboardGui")
                billboard.Name = "ESP_Username"
                billboard.Adornee = char.Head
                billboard.Size = UDim2.new(0, 150, 0, 30)
                billboard.StudsOffset = Vector3.new(0, 2, 0)
                billboard.AlwaysOnTop = true
                billboard.Parent = char.Head

                local label = Instance.new("TextLabel")
                label.Size = UDim2.new(1, 0, 1, 0)
                label.BackgroundTransparency = 1
                label.Text = plr.Name
                label.TextColor3 = Color3.fromRGB(255,255,255)
                label.Font = Enum.Font.SourceSansBold
                label.TextStrokeTransparency = 0.5
                label.TextScaled = true
                label.Parent = billboard

                usernameBillboards[#usernameBillboards+1] = billboard
            end
        end
    end
end

espTab:CreateToggle({
    Name = "Usernames",
    CurrentValue = false,
    Flag = "ESPUsernames",
    Callback = function(Value)
        usernamesEnabled = Value
        updateUsernamesESP(Value)
    end,
})

local espEnabled = false
local espDropdown = nil

local function setEspDropdownVisible(visible)
    if espDropdown and espDropdown.SetVisible then
        espDropdown:SetVisible(visible)
    elseif espDropdown and espDropdown.Instance then
        espDropdown.Instance.Visible = visible
    end
end

-- Toggle unique pour activer ESP
local espToggle = espTab:CreateToggle({
    Name = "Activer ESP",
    CurrentValue = false,
    Flag = "ESPToggle",
    Callback = function(Value)
        espEnabled = Value
        setRoleDropdownVisible(Value)
        print("ESP activé:", Value)
        -- Ajoute ici l'activation/désactivation réelle de l'ESP
    end,
})

-- Dropdown multi-sélection pour voir les rôles (affiché seulement si ESP activé)
local roleDropdown = nil

local function setRoleDropdownVisible(visible)
    if roleDropdown and roleDropdown.SetVisible then
        roleDropdown:SetVisible(visible)
    elseif roleDropdown and roleDropdown.Instance then
        roleDropdown.Instance.Visible = visible
    end
end

-- Gestion ESP des innocents, sherrifs et murders
local innocentHighlights = {}
local sheriffHighlights = {}
local murderHighlights = {}

local function clearInnocentESP()
    for _, hl in pairs(innocentHighlights) do
        if hl and hl.Parent then
            hl:Destroy()
        end
    end
    innocentHighlights = {}
end

local function clearSheriffESP()
    for _, hl in pairs(sheriffHighlights) do
        if hl and hl.Parent then
            hl:Destroy()
        end
    end
    sheriffHighlights = {}
end

local function updateInnocentESP(active)
    clearInnocentESP()
    if not active then return end
    local Players = game:GetService('Players')
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= Players.LocalPlayer then
            local backpack = plr:FindFirstChild('Backpack')
            if backpack and backpack:FindFirstChild('AAAAA') then
                local char = plr.Character
                if char then
                    local hl = Instance.new('Highlight')
                    hl.FillColor = Color3.new(1,1,1)
                    hl.OutlineColor = Color3.new(1,1,1)
                    hl.FillTransparency = 0.2
                    hl.OutlineTransparency = 0
                    hl.Parent = char
                    innocentHighlights[#innocentHighlights+1] = hl
                end
                -- Ajoute un listener sur CharacterAdded pour refresh le glow
                if not plr:FindFirstChild("_InnocentESPListener") then
                    local tag = Instance.new("BoolValue")
                    tag.Name = "_InnocentESPListener"
                    tag.Parent = plr
                    plr.CharacterAdded:Connect(function()
                        local Options = roleDropdown.CurrentOption or {}
                        local showInnocents = false
                        for _, v in ipairs(Options) do
                            if v == "Innocents" then showInnocents = true end
                        end
                        if espEnabled and showInnocents then
                            updateInnocentESP(true)
                        end
                    end)
                end
            end
        end
    end
end

local function clearMurderESP()
    for _, hl in pairs(murderHighlights) do
        if hl and hl.Parent then
            hl:Destroy()
        end
    end
    murderHighlights = {}
end

local runMurderESPRefresh = false
local function updateMurderESP(active)
    clearMurderESP()
    if not active then return end
    local Players = game:GetService('Players')
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= Players.LocalPlayer then
            local backpack = plr:FindFirstChild('Backpack')
            local char = plr.Character
            local hasKnife = false
            if backpack and backpack:FindFirstChild('Knife') then
                hasKnife = true
            end
            if char and char:FindFirstChild('Knife') then
                hasKnife = true
            end
            if hasKnife and char then
                local hl = Instance.new('Highlight')
                hl.FillColor = Color3.fromRGB(255, 0, 0)
                hl.OutlineColor = Color3.fromRGB(255, 0, 0)
                hl.FillTransparency = 0.2
                hl.OutlineTransparency = 0
                hl.Parent = char
                murderHighlights[#murderHighlights+1] = hl
                -- Ajoute un listener sur CharacterAdded pour refresh le glow
                if not plr:FindFirstChild("_MurderESPListener") then
                    local tag = Instance.new("BoolValue")
                    tag.Name = "_MurderESPListener"
                    tag.Parent = plr
                    plr.CharacterAdded:Connect(function()
                        local Options = roleDropdown.CurrentOption or {}
                        local showMurder = false
                        for _, v in ipairs(Options) do
                            if v == "Murders" then showMurder = true end
                        end
                        if espEnabled and showMurder then
                            updateMurderESP(true)
                        end
                    end)
                end
            end
        end
    end
end

-- Boucle de refresh auto pour l'ESP Murder
spawn(function()
    while true do
        wait(2)
        if runMurderESPRefresh then
            updateMurderESP(true)
        end
    end
end)

local runSheriffESPRefresh = false
local function updateSheriffESP(active)
    clearSheriffESP()
    if not active then return end
    local Players = game:GetService('Players')
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= Players.LocalPlayer then
            local backpack = plr:FindFirstChild('Backpack')
            local char = plr.Character
            local hasGun = false
            if backpack and backpack:FindFirstChild('Gun') then
                hasGun = true
            end
            if char and char:FindFirstChild('Gun') then
                hasGun = true
            end
            if hasGun and char then
                local hl = Instance.new('Highlight')
                hl.FillColor = Color3.fromRGB(0, 170, 255)
                hl.OutlineColor = Color3.fromRGB(0, 170, 255)
                hl.FillTransparency = 0.2
                hl.OutlineTransparency = 0
                hl.Parent = char
                sheriffHighlights[#sheriffHighlights+1] = hl
                -- Ajoute un listener sur CharacterAdded pour refresh le glow
                if not plr:FindFirstChild("_SheriffESPListener") then
                    local tag = Instance.new("BoolValue")
                    tag.Name = "_SheriffESPListener"
                    tag.Parent = plr
                    plr.CharacterAdded:Connect(function()
                        local Options = roleDropdown.CurrentOption or {}
                        local showSheriff = false
                        for _, v in ipairs(Options) do
                            if v == "Sheriff" then showSheriff = true end
                        end
                        if espEnabled and showSheriff then
                            updateSheriffESP(true)
                        end
                    end)
                end
            end
        end
    end
end

-- Boucle de refresh auto pour l'ESP Sheriff
spawn(function()
    while true do
        wait(2)
        if runSheriffESPRefresh then
            updateSheriffESP(true)
        end
    end
end)


roleDropdown = espTab:CreateDropdown({
    Name = "Voir :",
    Options = {"Murders", "Sheriff", "Innocents"},
    CurrentOption = {},
    MultipleOptions = true,
    Flag = "ESPVisibleRoles",
    Callback = function(Options)
        print("ESP rôles visibles:", table.concat(Options, ", "))
        -- ESP Innocents, Sheriff & Murders
        local showInnocents, showSheriff, showMurder = false, false, false
        for _, v in ipairs(Options) do
            if v == "Innocents" then showInnocents = true end
            if v == "Sheriff" then showSheriff = true end
            if v == "Murders" then showMurder = true end
        end
        if espEnabled and showInnocents then
            updateInnocentESP(true)
        else
            updateInnocentESP(false)
        end
        if espEnabled and showSheriff then
            runSheriffESPRefresh = true
            updateSheriffESP(true)
        else
            runSheriffESPRefresh = false
            updateSheriffESP(false)
        end
        if espEnabled and showMurder then
            runMurderESPRefresh = true
            updateMurderESP(true)
        else
            runMurderESPRefresh = false
            updateMurderESP(false)
        end
    end,
})
setRoleDropdownVisible(false)

-- Mettre à jour l'ESP aussi quand on active/désactive l'ESP principal
local oldEspToggleCallback = espToggle.Callback
espToggle.Callback = function(Value)
    espEnabled = Value
    setRoleDropdownVisible(Value)
    print("ESP activé:", Value)
    -- Met à jour l'ESP innocent si sélectionné
    local Options = roleDropdown.CurrentOption or {}
    local showInnocents = false
    for _, v in ipairs(Options) do
        if v == "Innocents" then showInnocents = true end
    end
    if espEnabled and showInnocents then
        updateInnocentESP(true)
    else
        updateInnocentESP(false)
    end
end


-- Onglet Item
local itemTab = Window:CreateTab("Item", 4483362458)
itemTab:CreateSection("Items")
-- Ajoute ici tes boutons/dropdowns item

-- Onglet Miscellaneous
local miscTab = Window:CreateTab("Miscellaneous", 4483362458)
miscTab:CreateSection("Divers")
-- Ajoute ici tes boutons divers

Rayfield:LoadConfiguration()
