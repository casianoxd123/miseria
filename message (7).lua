print("=")

--// Initialize
if not game:IsLoaded() then
    game.Loaded:Wait()
end

print("=")
  
  if (not LPH_OBFUSCATED) then
      LPH_NO_VIRTUALIZE = function(...) return (...) end;
      LPH_JIT_MAX = function(...) return (...) end;
      LPH_JIT_ULTRA = function(...) return (...) end;
  end

  print("CheckPoint 1")
  
  --// Custom Drawing
  -- loadstring((syn and syn.request or request)({Url = "https://rentry.co/7osf4/raw", Method = "Get"}).Body)(); -- J4VZ9cJh
  local MainColor = Color3.fromRGB(255, 102, 204)
  local CrosshairHandler = loadstring(game:HttpGet('https://rentry.co/gp986rdd/raw', true))() do
    getgenv().crosshair.enabled = false
    getgenv().crosshair.color = MainColor
  end
  local ESPHandler = loadstring(game:HttpGet('https://rentry.co/kn2pfu48/raw', true))() do
    getgenv().esp.Enabled = false
    getgenv().esp.SkeletonEnabled = false
    getgenv().esp.ChamsEnabled = false
  end

  local YunDrawingApi = loadstring(game:HttpGet('https://raw.githubusercontent.com/caIIed/Librarys/main/Yun%20Api.lua', true))()

  local TargetCircle = YunDrawingApi:New3DCircle() do
    TargetCircle.Visible = false
    TargetCircle.ZIndex = 1
    TargetCircle.Transparency = 1
    TargetCircle.Color = MainColor
    TargetCircle.Thickness = 1
    TargetCircle.Radius = 2
    TargetCircle.Rotation = Vector2.new(2, 0)
end
  
  --// Services
  local Workspace = game:GetService("Workspace")
  local Debris            = game:GetService('Debris');
  local Players = game:GetService("Players")
  local UserInputService = game:GetService('UserInputService')
  local TweenService = game:GetService('TweenService')
  local ContextAction = game:GetService('ContextActionService')
  local Lighting = game:GetService('Lighting')
  local MarketPlace = game:GetService('MarketplaceService')
  local RunService = game:GetService('RunService')
  local ReplicatedStorage = game:GetService('ReplicatedStorage')
  
  --// Variables

  print("CheckPoint 2")
  
  local Target = nil
  local Notification_Icon = "rbxassetid://57254792"
  
  
  local Notifications = {};
  local Utility = {};
  local TracerLine, nigganiggaXD , FakeHitboxPart, DotParent, newBillboard, newFrame, newUiCornor = Drawing.new("Line"), Instance.new("MeshPart"), Instance.new("Part",game.Workspace), Instance.new("Part",game.Workspace), Instance.new("BillboardGui", DotParent), Instance.new("Frame", newBillboard),  Instance.new("UICorner", newFrame)
  local sayMessage = function(msg) ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "ALL") end
  task.spawn(function ()
    newBillboard.Name = "endless"
    newBillboard.Adornee = DotParent
    newBillboard.Size = UDim2.new(1, 0, 1, 0)
    newBillboard.AlwaysOnTop = true
    newFrame.Size = UDim2.new(1, 0, 1, 0)
    newFrame.BackgroundTransparency = 0
    newUiCornor.CornerRadius = UDim.new(50, 50)
    DotParent.CanCollide = false
    DotParent.Anchored = true
    DotParent.CFrame = CFrame.new(0,2000,0)
    DotParent.Transparency = 1
    nigganiggaXD.MeshId = "rbxassetid://3726303797"  --3726303797
    nigganiggaXD.CanCollide = false
    nigganiggaXD.Anchored = true
    nigganiggaXD.Material = Enum.Material.Neon
    nigganiggaXD.Parent = game.Workspace
  end)
  
  local AntiAimViewer_Enabled = false
  local AntiAimViewer_HighLight = false
  local AntiAimViewer_HighLight_OutLineColor = Color3.fromRGB(255, 255, 255)
  local AntiAimViewer_HighLight_FillColor = MainColor
  
  local AntiAimViewer_Color = Color3.fromRGB(255, 102, 204)
  local AntiAimViewer_Target = nil
  local AntiAimViewer_Method = "MousePos"
  
  local Client = Players.LocalPlayer
  local ClientCharacter = Client and (Client.Character or Client.CharacterAdded:Wait())
  local enabled, TargetFalling, DetectAnti, AntiGroundValue, WhenAntiGroundActivate, Script = false, false, true, 0.5, -20, {
    Drawing = {},
    Connections = {},
    Locals = {
        NetworkShouldSleep = false,
        OriginalVelocity = {}
    },
    Functions = {}
}
  local Mouse, Camera = Client:GetMouse(), game:GetService("Workspace").CurrentCamera
  local PreviousPosition, PreviusVelocity = Vector3.new(0,0,0), Vector3.new(0,0,0)
  local req =  (syn and syn.request or request);
  local CFrameSpeedKeyBind
  local flyvariableshit = false
  local chatSpamTick = tick()
  local GuiService   = game:GetService('GuiService');
  local GetGuiInset = GuiService.GetGuiInset


  local EnabledTrashTalkF = true;
  getgenv().UsableTrashTalk = false
  
  
  local raycastParams = RaycastParams.new()
  raycastParams.FilterDescendantsInstances = {Workspace.CurrentCamera, ClientCharacter}
  raycastParams.FilterType = Enum.RaycastFilterType.Exclude
  raycastParams.IgnoreWater = true
  
  --// Tables
  local Notifications = {};
  local Utility = {};
  local FoVCircle = Drawing.new('Circle') do
    FoVCircle.Radius       = 1500
    FoVCircle.Color        = MainColor
    FoVCircle.Filled       = false
    FoVCircle.NumSides     = 120
    FoVCircle.Transparency = 1
    FoVCircle.Visible      = false
end

local TeleportService = game:GetService("TeleportService");
local Desync = {}

local Notifications = {};
local Utility = {};
local Games = {
    [2788229376] = {Name = "Da Hood",                  Argument = "UpdateMousePosI"},
    [16033173781] = {Name = "Da Hood Macro",                  Argument = "UpdateMousePosI"},
    [9825515356] = {Name = "Hood Customs",             Argument = "MousePosUpdate"},
    [5602055394] = {Name = "Hood Modded",              Argument = "MousePos"},
    [9183932460] = {Name = "Untitled Hood",            Argument = "UpdateMousePos"},
    [16709048641] = {Name = "Da Downhill",             Argument = "MOUSE"},
    [16357436647] = {Name = "Hood Bank",               Argument = "MOUSE"},
    [16357446356] = {Name = "Da Uphill",               Argument = "MOUSE"},
    [15186202290] = {Name = "Da Strike",               Argument = "MOUSE"},
    [15763167440] = {Name = "Da Hood Bot Aim Trainer", Argument = "MOUSE"},
    [11143225577] = {Name = "1v1 Hood Aim Trainer",    Argument = "UpdateMousePos"},
    [15763494605] = {Name = "Hood Aim",                Argument = "MOUSE"},
    [15166543806] = {Name = "Moon Hood",               Argument = "MoonUpdateMousePos"},
}

if Games[game.PlaceId] then
    local gameInfo = Games[game.PlaceId]
    MousePos = gameInfo.Argument
else
    MousePos = "UpdateMousePos"
end

local ItemTable = {
    ['Guns'] = {
        ['LMG'] = '[LMG] - $3978';
        ['AK-47'] = '[AK47] - $2387';
        ['Silencer AR'] = '[SilencerAR] - $1326';
        ['Silencer'] = '[Silencer] - $583';
        ['Revolver'] = '[Revolver] - $1379';
        ['AR'] = '[AR] - $1061';
        ['AUG'] = '[AUG] - $2069';
        ['Double-Barrel'] = '[Double-Barrel SG] - $1432';
        ['Drum Gun'] = '[DrumGun] - $3183';
        ['Flamethrower'] = '[Flamethrower] - $15914';
        ['Glock'] = '[Glock] - $318';
        ['P90'] = '[P90] - $1061';
        ['RPG'] = '[RPG] - $6365';
        ['Rifle'] = '[Rifle] - $1644';
        ['SMG'] = '[SMG] - $796';
        ['Shotgun'] = '[Shotgun] - $1326';
        ['Tactical Shotgun'] = '[TacticalShotgun] - $1857';
    };

    ['Ammo'] = {
        ['LMG'] = '200 [LMG Ammo] - $318';
        ['AK-47'] = '90 [AK47 Ammo] - $85';
        ['Silencer AR'] = '120 [SilencerAR Ammo] - $80';
        ['Silencer'] = '25 [Silencer Ammo] - $53';
        ['Revolver'] = '12 [Revolver Ammo] - $80';
        ['AR'] = '100 [AR Ammo] - $80';
        ['AUG'] = '90 [AUG Ammo] - $85';
        ['Double-Barrel'] = '18 [Double-Barrel SG Ammo] - $53';
        ['Drum Gun'] = '100 [DrumGun Ammo] - $212';
        ['Flamethrower'] = '140 [Flamethrower Ammo] - $1644';
        ['Glock'] = '25 [Glock Ammo] - $64';
        ['P90'] = '120 [P90 Ammo] - $64';
        ['RPG'] = '5 [RPG Ammo] - $1061';
        ['Rifle'] = '5 [Rifle Ammo] - $265';
        ['SMG'] = '80 [SMG Ammo] - $64';
        ['Shotgun'] = '20 [Shotgun Ammo] - $64';
        ['Tactical Shotgun'] = '20 [TacticalShotgun Ammo] - $64';
    };

    ['Armor'] = {
        ['High'] = '[High-Medium Armor] - $2440';
        ['Medium'] = '[Medium Armor] - $1061';
        ['Fire'] = '[Fire Armor] - $2493';
    };
};

  local AssetTable = {
      Sounds = {
          ['None']         = '',
          ['OSU']          = 'rbxassetid://7147454322',
          ['Neverlose']    = 'rbxassetid://7216848832',
          ['Bameware']     = 'rbxassetid://3124331820',
          ['Hitmarker']    = 'rbxassetid://160432334',
          ['skeet']        = 'rbxassetid://4817809188',
          ['Rust']         = 'rbxassetid://5043539486',
          ['Lazer Beam']   = 'rbxassetid://130791043',
          ['Bow Hit']      = 'rbxassetid://1053296915',
          ['Bow']          = 'rbxassetid://3442683707',
          ['TF2 Hitsound'] = 'rbxassetid://3455144981',
          ['TF2 Critical'] = 'rbxassetid://296102734',
      };
      Textures = {
          ['Normal'] = 'rbxassetid://7151778302',
          ['Fog'] = 'rbxassetid://9150635648',
      };
  };
  
  local ItemTableValues = {Sounds = {}, Guns = {}, Ammo = {}}; do 
  
      for i, v in pairs(AssetTable.Sounds) do
          table.insert(ItemTableValues.Sounds, i)
      end

      for i, v in pairs(ItemTable.Guns) do 
        table.insert(ItemTableValues.Guns, i)
    end 

    for i, v in pairs(ItemTable.Ammo) do 
        table.insert(ItemTableValues.Ammo, i)
    end 
  
  end 
  
  local Settings = {
    ['AntiAim'] = {
        ['InvisibleDesync'] = { ['Enabled'] = false;
            ['X'] = {['Start'] = -16000; ['End'] = 16000;};
            ['Y'] = {['Start'] = -16000; ['End'] = 16000;};
            ['Z'] = {['Start'] = -16000; ['End'] = 16000;};
        }
    },

    ['Destroy Cheaters'] = {
        Enabled = false,
        Keybind = Enum.KeyCode.G,
    };

    ['Combat'] = {
        ['TargetLock'] = {
            Enabled = false,
            Predict = true,
            KeyBind = Enum.KeyCode.T,
            Prediction = 0.135,
            HitParts = 'HumanoidRootPart',
            NearestPart = false,
            HitPartMode = 'Nearest Point',
            Notifications = false,
        },
        ['Stuff'] = {
            LookAt = false,
            Spectate = false,
            Notification = false,
            AutoPrediction = true,
        },
        ['Checks'] = {
            Resolver = true,
            ResolverMethod = 'Recaculate',
            AimviewerBypass = true,
            NoGroundShots = true,
            Knocked = true,
            Grabbed = false,
            Friend = false,
            Crew = false,
            AntiCurve = true,
            WallCheck = true,
        },
        ['Visuals'] = {
            ['Line'] = {
                Enabled = true,
                Circle = true,
                Visible = true,
                Color = MainColor,
                Transparency = 1,
                Thickness = 2,
            },
            ['HighLight'] = {
                Enabled = true,
                Transparency = 0,
                FillColor = MainColor,
                OutLineColor = Color3.fromRGB(255, 255, 255),
            },
            ['BackTrack'] = {
                Enabled = true,
                Material = 'ForceField',
                Color = MainColor,
                Delay = 0.1,
                Transparency = 0,
            },
        },
    };
  
    ['Visuals'] = {
        ['Weapon_Chams'] = {
            Enabled = false,
            Material = Enum.Material.SmoothPlastic,
            Color = MainColor,
        },
        ['Character_Chams'] = {
            Enabled = false,
            Material = Enum.Material.ForceField,
            Color = MainColor,

            Trail = false,
            Trail_Color = MainColor,
            Trail_Life = 3,
        },
        ['World_Customization'] = {
            Enabled = false,

            Bars = false,
            BarsColor = MainColor,
        },
        ['Bullet_Trails'] = {
            Enabled = false,
            Magnitude = 12,
            Width = 1.7,
            Brightness = 5,
            Segments = 10,
            LightEmission = 10,
            Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(240, 175, 235)), ColorSequenceKeypoint.new(1, Color3.fromRGB(240, 175, 235))}),
            Speed = 3,
            Texture = 'Normal', -- 12781803086
        },
        ['Hit_Detection'] = {
          Enabled = false,
  
          Notify = true,
          Clone = true,
          Pulse = false,
          Sound = true,
          HitSound = 'Rust',
        },
    };
  
    ['Misc'] = {
        ['Auto_Buy'] = {
            Gun = 'LMG',
        },
        ['Random'] = {
            AutoStomp = false,
            AntiBag = false,
            NoJumpCooldown = false,
            NoSlow = false,
            NoRecoil = false,
        },
        ['Cash'] = {
            AutoDrop = false,
            Amount = 8000,
            AutoPick = false,
        },
        ['NetworkAnti'] = {
            Enabled = false,
            Notification = true,
            Keybind = Enum.KeyCode.K
        },
        ['PredictionDisabler'] = {
            Enabled = false,
            KeyBind = Enum.KeyCode.X,
            Notifications = false,
            Errors = false,
            AutoWalkSpeed = false,
            AnimationSpeed = 21,
            WalkSpeed = 12,
        },
        ['TargetStrafe'] = {
            Enabled = false,
            Visualize_Circle = false,
            Color = Color3.fromRGB(255, 194, 254),
            Distance = 9,
            Speed = 1,
            Height = 0,
  
            Method = 'Strafe', -- Strafe, Randomize
            RandomizeMin = 2,
            RandomizeMax = 17,

            AutoFire = true,
            AutoReload = true,
        },
        ['Fly'] = {
            Enabled = false,
            Notification = false,
            KeyBind = Enum.KeyCode.X,
            Speed = 5 * 50,
        },
        ['WalkSpeed'] = {
            Enabled = false,
            Notifications = false,
            KeyBind = Enum.KeyCode.X,
            Speed = 1,
        },
        ['TrashTalk'] = {
            ['Use'] = {
                Enabled = false,
                Target = false,
                Notification = false,
                UsekeyBind = false,
                KeyBind = Enum.KeyCode.B,
                Method = "Misery",
            },
            ['Words'] = {
                Misery = {"do you have $$$$mmMMIIEERRY!!!", "MoveDirection isn't a resolver", "Skid🤣", "WHERE BRO AIMING AT!?", "Lost 2 Misery", "omg so bad", "imagine dying to me", "whats the point of playing with that aim🙏😂", "WOWZIES", "OH MY DAYS", "Misery'd", "1d luh bro", "WOW U SUCK", "Im right here😂", "couldnt be me", "just broke ur ankles", "UR ANKLES? GONE?", "destroyed", "LOL DESTROYED", "LOL"},
            },
        },
    };
  
    ['Configs'] = {
        Menu = {
            Keybind = Enum.KeyCode.P,
        },
    };
  };
  
  print("CheckPoint 3")
  
  
  getgenv().MethodBeingUsed = Settings.Misc.TrashTalk.Words.Misery
  
  -- // functions

function Script.Functions.Connection(event, func)
    return event:Connect(func)
end

local function DestroyCheaters()
    Settings['Destroy Cheaters'].Enabled = not Settings['Destroy Cheaters'].Enabled;

    if Settings['Destroy Cheaters'].Enabled then
        local Character = Client and Client.Character
        if Character then
            local RootPart = Character and Character:FindFirstChild('HumanoidRootPart')
            local Position = RootPart and RootPart.CFrame
    
            task.wait()

            while task.wait(2) do
                Desync.cframe = (RootPart.CFrame * CFrame.new(9e9, 0/0, 9e9))
        
                task.wait(1)
    
                Desync.cframe = Position
                task.wait()
                Desync.cframe = nil
            end

        end

    end
end

Script.Functions.Update_Desync = function(bool)
    Settings.AntiAim.InvisibleDesync.Enabled = bool 

    if (not bool) then 
        if (Script.Connections['Invisible Desync']) then 
            Script.Connections['Invisible Desync']:Disconnect()
            Script.Connections['Invisible Desync'] = nil 
        end

        setfflag('S2PhysicsSenderRate', 15)
        setfflag('PhysicsSenderMaxBandwidthBps', 38760)
        sethiddenproperty(Client.Character.HumanoidRootPart, "NetworkIsSleeping", false)
    end
end

Script.Functions.InvisibleDesync = function()   
    local NetworkShouldSleep = false
    if not Script.Connections["Invisible Desync"] then
        Script.Connections["Invisible Desync"] = Script.Functions.Connection(RunService.Heartbeat, function()
            if (not Settings.AntiAim.InvisibleDesync.Enabled) then return end 

            Script.Locals.NetworkShouldSleep = not Script.Locals.NetworkShouldSleep
            setfflag("S2PhysicsSenderRate", tostring(2)) 
            setfflag("PhysicsSenderMaxBandwidthBps", tostring(math.pi/3))

            sethiddenproperty(Client.Character.HumanoidRootPart, "NetworkIsSleeping", Script.Locals.NetworkShouldSleep)
            Script.Locals.OriginalVelocity[1] = Client.Character.HumanoidRootPart.Velocity
            Script.Locals.OriginalVelocity[2] = Client.Character.HumanoidRootPart.AssemblyLinearVelocity

            Client.Character.HumanoidRootPart.Velocity = Client.Character.HumanoidRootPart.Velocity + Vector3.new(math.random(Settings.AntiAim.InvisibleDesync.X['Start'], Settings.AntiAim.InvisibleDesync.X['End']), math.random(Settings.AntiAim.InvisibleDesync.Y['Start'], Settings.AntiAim.InvisibleDesync.Y['End']), math.random(Settings.AntiAim.InvisibleDesync.Z['Start'], Settings.AntiAim.InvisibleDesync.Z['End']))
            Client.Character.HumanoidRootPart.AssemblyLinearVelocity = Client.Character.HumanoidRootPart.AssemblyLinearVelocity + Vector3.new(math.random(Settings.AntiAim.InvisibleDesync.X['Start'], Settings.AntiAim.InvisibleDesync.X['End']), math.random(Settings.AntiAim.InvisibleDesync.Y['Start'], Settings.AntiAim.InvisibleDesync.Y['End']), math.random(Settings.AntiAim.InvisibleDesync.Z['Start'], Settings.AntiAim.InvisibleDesync.Z['End']))

            RunService.RenderStepped:Wait()

            Client.Character.HumanoidRootPart.Velocity = Script.Locals.OriginalVelocity[1]
            Client.Character.HumanoidRootPart.AssemblyLinearVelocity = Script.Locals.OriginalVelocity[2]
            setfflag("S2PhysicsSenderRate", tostring(1))
            NetworkShouldSleep = not NetworkShouldSleep
        end)
    end
    RunService.RenderStepped:Wait()
    sethiddenproperty(Client.Character.HumanoidRootPart, "NetworkIsSleeping", NetworkShouldSleep)
    setfflag("S2PhysicsSenderRate", tostring(15))
end

Script.Functions.InvisibleDesync()

local function ToggleTrail(Bool)
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("BasePart") then
            if Bool then
                local BlaBla = Instance.new("Trail", v)
                BlaBla.Texture = "rbxassetid://1390780157"
                BlaBla.Parent = v
                local Pointer1 = Instance.new("Attachment", v)
                Pointer1.Name = "Pointer1"
                local Pointer2 = Instance.new("Attachment", game.Players.LocalPlayer.Character.HumanoidRootPart)
                Pointer2.Name = "Pointer2"
                BlaBla.Attachment0 = Pointer1
                BlaBla.Attachment1 = Pointer2
                BlaBla.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Settings.Visuals.Character_Chams.Trail_Color), ColorSequenceKeypoint.new(1, Settings.Visuals.Character_Chams.Trail_Color)});
                BlaBla.Lifetime = Settings.Visuals.Character_Chams.Trail_Life
                BlaBla.Name = "BlaBla" -- Set the name
            else
                for _, child in ipairs(v:GetChildren()) do
                    if child:IsA("Trail") and child.Name == 'BlaBla' then -- Corrected the condition
                        child:Destroy()
                    end
                end
            end
        end
    end
end

local function AutoBuy(Obj, Ammo, Amount)
    local Character = Client and (Client.Character or Client.CharacterAdded:Wait())
    local RootPart  = Character and Character.HumanoidRootPart
    local RootPos   = RootPart.CFrame

    local ObjectPath = Workspace.Ignored.Shop[Obj]
    local ClickDet   = ObjectPath.ClickDetector

    if Character and Ammo then
        for i = 1, Amount do
            RootPart.CFrame = ObjectPath.Head.CFrame
            task.wait(0.3)
            fireclickdetector(ClickDet)
            task.wait(0.15)
        end

        RootPart.CFrame = RootPos
    else
        RootPart.CFrame = ObjectPath.Head.CFrame
        task.wait(0.15)
        fireclickdetector(ClickDet)
        task.wait(0.15)
        RootPart.CFrame = RootPos
    end
end


  function Alive(Player)
    if Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") ~= nil and Player.Character:FindFirstChild("Humanoid") ~= nil and Player.Character:FindFirstChild("Head") ~= nil then
        return true
    end
    return false
  end
  
  local function GetTool()
    local Character = Client.Character 
    local Tool = nil 

    if (not Character) then 
        return Tool
    end

    for _, v in pairs(Character:GetChildren()) do 
        if (not v:IsA('Tool')) then continue end 

        if (v:FindFirstChild('Ammo') and v:FindFirstChild('MaxAmmo')) then 
            Tool = v 
        end
    end

    return Tool
end
  
  function findPlayerByUsername(username)
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Name == username then
            return player
        end
    end
    return nil  -- Player not found
  end

  local function FindPlayer(Player)
    for i, v in pairs(Players:GetPlayers()) do
        if (v.Name:lower():find(Player:lower())) then
            if v.Name == Client.name then continue end
            return v
        end
    end
end

  
  
  --\\ Ui
  local Menu = loadstring(req({Url = "https://pastebin.com/raw/55iKqxgB", Method = "Get"}).Body)(); -- WYVJcRAt

    local function MenuNameUpdate()
        while (task.wait()) do
            local Name, PlaceHolder = 'Misery', ''
            for i = 1, #Name do --try
                local Character = string.sub(Name, i, i)
                PlaceHolder = PlaceHolder .. Character
                Menu:SetTitle(PlaceHolder .. '<font color="#' .. tostring(Menu.Accent:ToHex()) .. '">.cc</font>')
                task.wait(.25)
            end
        end
    end
  
    --// functions
    local function MenuToggle(Action_Name: string, State: EnumItem, Input: InputObject)
        if not State or State == Enum.UserInputState.Begin then
            Menu:SetVisible(not Menu.IsVisible)
        end
    end
  
    task.spawn(MenuNameUpdate)
  
    Menu.Accent = MainColor

    Menu.Keybinds = Menu.Keybinds() do
        Menu.Keybinds.Add('Fly', Settings.Misc.Fly.Enabled and 'On' or 'Off')
        Menu.Keybinds.Add('CFrame', Settings.Misc.WalkSpeed.Enabled and 'On' or 'Off')
        Menu.Keybinds.Add('Prediction Breaker', Settings.Misc.PredictionDisabler.Enabled and 'On' or 'Off')
    end

    Menu.Indicators = Menu.Indicators() do
        Menu.Indicators.Add('Target', 'Text', 'nil')
        Menu.Indicators.Add('Target Health', 'Bar', 50, 0, 100) -- Value, Min, Max
        Menu.Indicators.Add('Target Armor', 'Bar', 100, 0, 200) -- Value, Min, Max

        Menu.Indicators.Add('Knocked Out', 'Text', 'True')
        Menu.Indicators.Add('Anti Aiming', 'Text', 'True')
        Menu.Indicators.Add('Target Ammo', 'Bar', 50, 0, 200) -- Value, Min, Max
        --Menu.Indicators:SetPosition(UDim2.new(0, 39, 0, 281))
    end
    Menu.Watermark()
    Menu.Watermark:Update('Misery<font color="#' .. tostring(Menu.Accent:ToHex()) .. '">.cc</font>') -- please fix this and we can add a variable for a color.
  
    local Window = Menu:SetTitle('Misery') do
  
        local CombatTab = Menu.Tab("Main") do
  
            local TargetAimSection = Menu.Container("Main", "Target Aim", "Left") do
                Menu.CheckBox("Main", "Target Aim", "Enabled", false, function(a)
                    Settings.Combat.TargetLock.Enabled = a
                end)
                Menu.Hotkey("Main", "Target Aim", "Keybind", Enum.KeyCode.T, function(a)
                    Settings.Combat.TargetLock.KeyBind = a
                end)
                Menu.CheckBox("Main", "Target Aim", "Look At", false, function(a)
                    Settings.Combat.Stuff.LookAt = a
                end)
                Menu.CheckBox("Main", "Target Aim", "Spectate", false, function(a)
                    Settings.Combat.Stuff.Spectate = a
                end)
                Menu.CheckBox("Main", "Target Aim", "Notification", false, function(a)
                    Settings.Combat.Stuff.Notification = a
                end)
            end
  
            local HitPartSection = Menu.Container("Main", "HitPart", "Left") do
                Menu.CheckBox("Main", "HitPart", "NearestPart", false, function(a)
                    Settings.Combat.TargetLock.NearestPart = a
                end)
                Menu.ComboBox("Main", "HitPart", "NearestPart Mode", "Nearest Part", {"Nearest Point", "Nearest Part"}, function(a)
                    Settings.Combat.TargetLock.HitPartMode = a
                end)
                Menu.ComboBox("Main", "HitPart", "HitPart", "HumanoidRootPart", {"Head", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg", "UpperTorso", "HumanoidRootPart", "LeftUpperLeg", "RightLowerLeg", "RightFoot", "LowerTorso"}, function(a)
                    Settings.Combat.TargetLock.HitParts = a
                end)
            end
  
            local PredictionSection = Menu.Container("Main", "Prediction", "Left") do
                Menu.CheckBox("Main", "Prediction", "Enabled", true, function(a)
                    Settings.Combat.TargetLock.Predict = a
                end)
                Menu.CheckBox("Main", "Prediction", "Auto Prediction", true, function(a)
                    Settings.Combat.Stuff.AutoPrediction = a
                end)
                Menu.TextBox("Main", "Prediction", "Prediction", '0.135', function(a)
                    Settings.Combat.TargetLock.Prediction = a
                end)
            end
  
            local ChecksSection = Menu.Container("Main", "Checks", "Left") do
                Menu.CheckBox("Main", "Checks", "No Ground Shots", true, function(a)
                    Settings.Combat.Checks.NoGroundShots = a
                end)
                Menu.CheckBox("Main", "Checks", "Anti Curve", true, function(a)
                    Settings.Combat.Checks.AntiCurve = a
                end)
                Menu.CheckBox("Main", "Checks", "Knocked Check", true, function(a)
                    Settings.Combat.Checks.Knocked = a
                end)
                Menu.CheckBox("Main", "Checks", "Grabbed Check", false, function(a)
                    Settings.Combat.Checks.Grabbed = a
                end)
                Menu.CheckBox("Main", "Checks", "Crew Check", false, function(a)
                    Settings.Combat.Checks.Crew = a
                end)
                Menu.CheckBox("Main", "Checks", "Aim Viewer Bypass", true, function(a)
                    print(a)
                end)
                Menu.CheckBox("Main", "Checks", "Resolver", true, function(a)
                    print(a)
                end)
                Menu.CheckBox("Main", "Checks", "Friend Check", false, function(a)
                    Settings.Combat.Checks.Friend = a
                end)
                Menu.CheckBox("Main", "Checks", "Wall Check", true, function(a)
                    Settings.Combat.Checks.WallCheck = a
                end)
            end
  
            local TSSection = Menu.Container("Main", "Target Strafe", "Right") do
                Menu.CheckBox("Main", "Target Strafe", "Enabled", false, function(a)
                    Settings.Misc.TargetStrafe.Enabled = a
                end)
                Menu.ComboBox("Main", "Target Strafe", "Method", "Strafe", {"Strafe", "Randomize"}, function(a)
                  Settings.Misc.TargetStrafe.Method = a
              end)
                Menu.CheckBox("Main", "Target Strafe", "Visualize", false, function(a)
                    Settings.Misc.TargetStrafe.Visualize_Circle = a
                end)
                Menu.CheckBox("Main", "Target Strafe", "Auto Fire", true, function(a)
                    Settings.Misc.TargetStrafe.AutoFire = a
                end)
                Menu.CheckBox("Main", "Target Strafe", "Auto Reload", true, function(a)
                    Settings.Misc.TargetStrafe.AutoReload = a
                end)
                Menu.ColorPicker("Main", "Target Strafe", "Color", MainColor, 0, function(a)
                    Settings.Misc.TargetStrafe.Color = a
                end)
                Menu.Slider("Main", "Target Strafe", "Distance", 0, 50, 9, '', 1, function(a)
                    Settings.Misc.TargetStrafe.Distance = a
                end)
                Menu.Slider("Main", "Target Strafe", "Speed", 0, 15, 1, '', 1, function(a)
                    Settings.Misc.TargetStrafe.Speed = a
                end)
                Menu.Slider("Main", "Target Strafe", "Height", 0, 15, 0, '', 1, function(a)
                    Settings.Misc.TargetStrafe.Height = a
                end)
                Menu.Slider('Main', 'Target Strafe', 'Teleport Min', 1, 20, 2, '', 1, function(Value)
                  Settings.Misc.TargetStrafe.RandomizeMin = Value
              end)
              Menu.Slider('Main', 'Target Strafe', 'Teleport Max', 2, 40, 17, '', 1, function(Value)
                  Settings.Misc.TargetStrafe.RandomizeMax = Value
              end)
  
            end
  
            local HitDetectionSection = Menu.Container("Main", "Hit Detection", "Right") do
              Menu.CheckBox("Main", "Hit Detection", "Enabled", false, function(a)
                  Settings.Visuals.Hit_Detection.Enabled = a
              end)
              Menu.CheckBox("Main", "Hit Detection", "Hit Sound", false, function(a)
                  Settings.Visuals.Hit_Detection.Sound = a
              end)
              Menu.CheckBox("Main", "Hit Detection", "Notify", false, function(a)
                  Settings.Visuals.Hit_Detection.Notify = a
              end)
              Menu.ComboBox('Main', 'Hit Detection', 'Sounds', 'Rust', ItemTableValues.Sounds, function(self)
                  Settings.Visuals.Hit_Detection.HitSound = self
              end)
              Menu.MultiSelect('Main', 'Hit Detection', 'Hit Effects', {
                  ['Clone'] = Settings.Visuals.Hit_Detection.Clone,
                  ['Pulse'] = Settings.Visuals.Hit_Detection.Pulse,
              }, function(Selection)
                  Settings.Visuals.Hit_Detection.Clone = Selection['Clone']
                  Settings.Visuals.Hit_Detection.Pulse = Selection['Pulse']
              end)
  
            end
  
  
        end
  
        local MiscTab = Menu.Tab("Misc") do
  
            local MTSection1 = Menu.Container("Misc", "Prediction Breaker", "Left") do
                Menu.CheckBox("Misc", "Prediction Breaker", "Enabled", false, function(a)
                    Settings.Misc.PredictionDisabler.Enabled = a
                end)
                Menu.Hotkey("Misc", "Prediction Breaker", "Keybind", Enum.KeyCode.X, function(a)
                    Settings.Misc.PredictionDisabler.KeyBind = a
                end)
                Menu.CheckBox("Misc", "Prediction Breaker", "Notifications", false, function(a)
                    Settings.Misc.PredictionDisabler.Notifications = a
                end)
                Menu.CheckBox("Misc", "Prediction Breaker", "Errors", false, function(a)
                    Settings.Misc.PredictionDisabler.Errors = a
                end)
                Menu.CheckBox("Misc", "Prediction Breaker", "Auto Settings", false, function(a)
                    Settings.Misc.PredictionDisabler.AutoWalkSpeed = a
                end)
                Menu.Slider("Misc", "Prediction Breaker", "Animation Speed", 0, 50, 21, '%', 1, function(a)
                    Settings.Misc.PredictionDisabler.AnimationSpeed = a
                end)
                Menu.Slider("Misc", "Prediction Breaker", "Walk Speed", 0, 50, 12, '%', 1, function(a)
                    Settings.Misc.PredictionDisabler.WalkSpeed = a
                end)
            end
  
            local MTSection2 = Menu.Container("Misc", "CFrame Speed", "Right") do
                Menu.CheckBox("Misc", "CFrame Speed", "Enabled", false, function(a)
                    Settings.Misc.WalkSpeed.Enabled = a
                end)
                Menu.Hotkey("Misc", "CFrame Speed", "Keybind", Enum.KeyCode.X, function(a)
                    Settings.Misc.WalkSpeed.KeyBind = a
                end)
                Menu.CheckBox("Misc", "CFrame Speed", "Notification", false, function(a)
                    Settings.Misc.WalkSpeed.Notifications = a
                end)
                Menu.Slider("Misc", "CFrame Speed", "Speed", 0, 10, 3, '%', 1, function(a)
                    Settings.Misc.WalkSpeed.Speed = a
                end)
            end
  
            local MTSection3 = Menu.Container("Misc", "Fly", "Right") do
                Menu.CheckBox("Misc", "Fly", "Enabled", false, function(a)
                    Settings.Misc.Fly.Enabled = a
                end)
                Menu.Hotkey("Misc", "Fly", "Keybind", Enum.KeyCode.X, function(a)
                    Settings.Misc.Fly.KeyBind = a
                end)
                Menu.CheckBox("Misc", "Fly", "Notification", false, function(a)
                    Settings.Misc.Fly.Notification = a
                end)
                Menu.Slider("Misc", "Fly", "Speed", 0, 30, 5, '%', 1, function(a)
                    Settings.Misc.Fly.Speed = a * 50
                end)
            end
  
            local MTSection4 = Menu.Container("Misc", "Trash Talk", "Left") do
                Menu.CheckBox("Misc", "Trash Talk", "Enabled", false, function(a)
                    Settings.Misc.TrashTalk.Use.Enabled = a
                end)
                Menu.CheckBox("Misc", "Trash Talk", "Target", false, function(a)
                    Settings.Misc.TrashTalk.Use.Target = a
                end)
                Menu.CheckBox("Misc", "Trash Talk", "Notification", false, function(a)
                    Settings.Misc.TrashTalk.Use.Notification = a
                end)
                Menu.CheckBox("Misc", "Trash Talk", "Use Keybind", false, function(a)
                    Settings.Misc.TrashTalk.Use.UsekeyBind = a
                end)
                Menu.Hotkey("Misc", "Trash Talk", "Keybind", Enum.KeyCode.B, function(a)
                    Settings.Misc.TrashTalk.Use.KeyBind = a
                end)
            end
  
            local MTSection4 = Menu.Container("Misc", "Network Anti", "Left") do
                Menu.CheckBox("Misc", "Network Anti", "Enabled", false, function(a)
                    Settings.Misc.NetworkAnti.Enabled = a
                end)
                Menu.Hotkey("Misc", "Network Anti", "Keybind", Enum.KeyCode.K, function(a)
                    Settings.Misc.NetworkAnti.KeyBind = a
                end)
                Menu.CheckBox("Misc", "Network Anti", "Notification", false, function(a)
                    Settings.Misc.NetworkAnti.Notification = a
                end)
            end
  
            local MTSection5 = Menu.Container("Misc", "Teleport", "Right") do
                Menu.ComboBox("Misc", "Teleport", "Place :", "Choose", {"Admin Base","Military","Revolver","High Medium Armor","Food","Gas Station","School","Ufo","Bank","Gym Top","Casino","Uphill","PlayGround","Flank"}, function(State)
                    local CFrameValues = {
                        ["Admin Base"] = CFrame.new(-874.903992, -32.6492004, -525.215698),
                        ["High Medium Armor"] = CFrame.new(-934.73651123047, -28.492471694946, 565.99884033203),
                        ["Food"] = CFrame.new(-788.39318847656, -39.649200439453, -935.27795410156),
                        ["Gas Station"] = CFrame.new(608.599426, 65.3087997, -267.643066, -0.414288431, -1.04483455e-09, -0.91014564, -1.30518893e-08, 1, 4.79309215e-09, 0.91014564, 1.38648408e-08, -0.41428),
                        ["School"] = CFrame.new(-581.790283, 68.4947281, 331.046448, 0.220051467, -7.56681329e-05, 0.975498199, -3.96428077e-05, 0.999999583, 8.65130132e-05, -0.975498199, -5.77078645e-05, 0.22005),
                        ["Military"] = CFrame.new(92.643799, 122.749977, -860.128784, 0.986730993, 5.09704545e-09, 0.162363499, -9.24942123e-10, 1, -2.57716568e-08, -0.162363499, 2.52795154e-08, 0.986730993),
                        ["Ufo"] = CFrame.new(65.1504517, 138.999954, -691.819031, -0.935115993, -5.9791418e-08, -0.354341775, -3.10840989e-08, 1, -8.67077574e-08, 0.354341775, -7.0067415e-08, -0.935115993),
                        ["Bank"] = CFrame.new(-374.538391, 102.052887, -440.20871, 0.958144963, 9.24065989e-06, -0.286283433, -9.98981818e-07, 1, 2.89345699e-05, 0.286283433, -2.74375216e-05, 0.958144963),
                        ["Gym Top"] = CFrame.new(-76.178093, 56.6998138, -629.940979, -0.9998914, -1.09370752e-07, 0.0147391548, -1.0945012e-07, 1, -4.57786342e-09, -0.0147391548, -6.1905685e-09, -0.9998914),
                        ["Casino"] = CFrame.new(-1048.95093, 110.254997, -154.554016, 0.198458344, 0.0412604436, -0.979240835, -4.06676299e-05, 0.999113858, 0.0420895219, 0.98010987, -0.00831318926, 0.198284075),
                        ["Uphill"] = CFrame.new(485.651947, 112.5, -644.316833, -0.998899043, 1.33881997e-06, 0.0469136797, 8.00526664e-07, 1, -1.14929126e-05, -0.0469136797, -1.14426994e-05, -0.998899043),
                        ["Revolver"] = CFrame.new(-659.053162, 110.748001, -158.224365, 0.146754071, -2.38941595e-08, -0.989172995, -1.60316838e-09, 1, -2.43935396e-08, 0.989172995, 5.16566212e-09, 0.146754071),
                        ["Flank"] = CFrame.new(376.730621, 130.748001, -245.620468, 0.996583343, 5.90310174e-06, -0.0825867951, -1.72590728e-06, 1, 5.06508768e-05, 0.0825867951, -5.03353003e-05, 0.996583343),
                        ["PlayGround"] = CFrame.new(-260.836182, 126.424866, -877.783875, -0.977067351, -1.56508904e-05, -0.212922528, 9.92513264e-07, 1, -7.80593255e-05, 0.212922528, -7.64806027e-05, -0.977067351),
                    }
  
                if CFrameValues[State] then
                    Client.Character.HumanoidRootPart.CFrame = CFrameValues[State]
                end
                end)
            end

            local AutoBuySection = Menu.Container('Misc', 'Buy', 'Right') do

                Menu.ComboBox('Misc', 'Buy', 'Gun', 'LMG', ItemTableValues.Guns, function(self)
                    Settings.Misc.Auto_Buy.Gun = self
                end)
                Menu.Button('Misc', 'Buy', 'Buy Gun', function()
                    AutoBuy(ItemTable.Guns[Settings.Misc.Auto_Buy.Gun], false, 2)
                end)

                Menu.Button('Misc', 'Buy', 'Buy Ammo', function()
                    AutoBuy(ItemTable.Ammo[Settings.Misc.Auto_Buy.Gun], true, 1)
                end)

            end
  
            local MTSection6 = Menu.Container("Misc", "Stuff", "Left") do
                Menu.CheckBox("Misc", "Stuff", "Auto Grab Cash", false, function(a)
                    Settings.Misc.Cash.AutoPick = a
                end)
                Menu.CheckBox("Misc", "Stuff", "Auto Drop Cash", false, function(a)
                    Settings.Misc.Cash.AutoDrop = a
                end)
                Menu.Slider("Misc", "Stuff", "Auto Drop Amount", 0, 10, 6, '%', 1, function(a)
                    Settings.Misc.Cash.Amount = a * 1000
                end)
                Menu.CheckBox("Misc", "Stuff", "Auto Stomp", false, function(a)
                    Settings.Misc.Random.AutoStomp = a
                end)
                
                Menu.CheckBox("Misc", "Stuff", "No Recoil", false, function(a)
                  Settings.Misc.Random.NoRecoil = a
              end)
  
              Menu.CheckBox("Misc", "Stuff", "No Slow", false, function(a)
                  Settings.Misc.Random.NoSlow = a
              end)
  
                Menu.CheckBox("Misc", "Stuff", "No Jump cooldown", false, function(a)
                    if a then
                        local IsA = game.IsA
                        local newindex = nil
  
                        newindex = hookmetamethod(game, "__newindex", function(self, Index, Value)
                            if not checkcaller() and IsA(self, "Humanoid") and Index == "JumpPower" then
                                return
                            end
                            return newindex(self, Index, Value)
                        end)
                    end
                end)
                Menu.CheckBox("Misc", "Stuff", "Anti Bag", false, function(a)
                    Settings.Misc.Random.AntiBag = a
                end)
                Menu.CheckBox("Misc", "Stuff", "Bunny Hop", false, function(a)
                    getgenv().Bhop = a
                    while getgenv().Bhop do
                        task.wait()
                        if Client.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall then
                            Client.Character.Humanoid:ChangeState("Jumping")
                        end
                    end
                end)
            end

            local MTSection9 = Menu.Container("Misc", "Desync", "Left") do
                Menu.CheckBox("Misc", "Desync", "Invisible Desync", false, function(a)

                    for i = 1, 2 do 
                        Script.Functions.Update_Desync(a)
                        task.wait(.1)
                    end

                end)

                Menu.CheckBox("Misc", "Desync", "CFrame Desync", false, function(a)
                    Settings['Destroy Cheaters'].Enabled = a
                    DestroyCheaters()
                end)

                Menu.Hotkey("Misc", "Desync", "Keybind", Settings['Destroy Cheaters'].Keybind, function(a)
                    Settings['Destroy Cheaters'].Keybind = a
                    DestroyCheaters()
                end)

            end
        end
  
        local VisualsTab = Menu.Tab("Visuals") do
  
            local TLHightlightSection = Menu.Container("Visuals", "ESP", "Left") do
                Menu.CheckBox("Visuals", "ESP", "Enabled", false, function(a)
                    getgenv().esp.Enabled = a
                end)
                Menu.CheckBox("Visuals", "ESP", "Box", true, function(a)
                    getgenv().esp.BoxEnabled = a
                end)
                Menu.ColorPicker("Visuals", "ESP", "Box Color", Color3.fromRGB(255, 255, 255), 0, function(a)
                    getgenv().esp.BoxColor = a
                end)
                Menu.ColorPicker("Visuals", "ESP", "Text Color", Color3.fromRGB(255, 255, 255), 0, function(a)
                    getgenv().esp.TextColor = a
                end)
                Menu.CheckBox("Visuals", "ESP", "Name", true, function(a)
                    getgenv().esp.TextLayout.name.enabled = a
                end)
                
                Menu.CheckBox("Visuals", "ESP", "Health", true, function(a)
                    getgenv().esp.TextLayout.health.enabled = a
                end)
                Menu.CheckBox("Visuals", "ESP", "HealthBar", true, function(a)
                    getgenv().esp.BarLayout.health.enabled = a
                end)
                Menu.ColorPicker("Visuals", "ESP", "LowerHealthColor", Color3.fromRGB(255, 255, 255), 0, function(a)
                    getgenv().esp.BarLayout.health.color_empty = a
                end)
                Menu.ColorPicker("Visuals", "ESP", "HigherHealthColor", Color3.fromRGB(255, 102, 204), 0, function(a)
                    getgenv().esp.BarLayout.health.color_full = a
                end)
                Menu.CheckBox("Visuals", "ESP", "Armor", true, function(a)
                    getgenv().esp.TextLayout.armor.enabled = a
                end)
                Menu.CheckBox("Visuals", "ESP", "ArmorBar", true, function(a)
                    getgenv().esp.BarLayout.armor.enabled = a
                end)
                Menu.ColorPicker("Visuals", "ESP", "LowerArmorColor", Color3.fromRGB(255, 102, 204), 0, function(a)
                    getgenv().esp.BarLayout.armor.color_empty = a
                end)
                Menu.ColorPicker("Visuals", "ESP", "HigherArmorColor", Color3.fromRGB(255, 102, 204), 0, function(a)
                    getgenv().esp.BarLayout.armor.color_full = a
                end)
                Menu.CheckBox("Visuals", "ESP", "Distance", true, function(a)
                    getgenv().esp.TextLayout.distance.enabled = a
                end)
                Menu.CheckBox("Visuals", "ESP", "Tool", true, function(a)
                    getgenv().esp.TextLayout.tool.enabled = a
                end)
                Menu.CheckBox("Visuals", "ESP", "Skeletons", false, function(a)
                    getgenv().esp.SkeletonEnabled = a
                end)

                Menu.CheckBox("Visuals", "ESP", "Chams", false, function(a)
                    getgenv().esp.ChamsEnabled = a
                end)
                Menu.ColorPicker("Visuals", "ESP", "ChamsInnerColor", Color3.fromRGB(255, 102, 204), 0, function(a)
                    getgenv().esp.ChamsInnerColor = a
                end)
                Menu.ColorPicker("Visuals", "ESP", "ChamsOuterColor", Color3.fromRGB(255, 255, 255), 0, function(a)
                    getgenv().esp.ChamsOuterColor = a
                end)
            end
  
            local Section6 = Menu.Container("Visuals", "World Customization", "Left") do
                Menu.CheckBox("Visuals", "World Customization", "Enabled", false, function(self)
                    Settings.Visuals.World_Customization.Enabled = self
                end)
                Menu.ColorPicker("Visuals", "World Customization", "World Customization", MainColor, 0, function(self)
                    task.spawn(function()
                        while task.wait() do
                            if Settings.Visuals.World_Customization.Enabled then
                                Lighting.ColorCorrection.TintColor = self
                            else
                                Lighting.ColorCorrection.TintColor = Color3.fromRGB(255, 255, 255)
                            end
                        end
                    end)
                end)

                Menu.CheckBox("Visuals", "World Customization", "UI", false, function(self)
                    Settings.Visuals.World_Customization.Bars = self
                end)
                Menu.ColorPicker("Visuals", "World Customization", "World Customization", MainColor, 0, function(self)
                    Settings.Visuals.World_Customization.BarsColor = self
                end)
            end
  
            local Section7 = Menu.Container("Visuals", "Crosshair", "Right") do
              Menu.CheckBox("Visuals", "Crosshair", "Enabled", false, function(a)
                  getgenv().crosshair.enabled = a
              end)
              Menu.ColorPicker("Visuals", "Crosshair", "Color", MainColor, 0, function(a)
                  getgenv().crosshair.color = a
              end)
              Menu.ComboBox("Visuals", "Crosshair", "Position", "mouse", {"mouse", "center"}, function(a)
                  getgenv().crosshair.mode = a
              end)
  
              Menu.Slider('Visuals', 'Crosshair', 'Width', 1, 5, 2.5, '', 1, function(self)
                  getgenv().crosshair.width = self
              end)
              Menu.Slider('Visuals', 'Crosshair', 'Length', 1, 50, 10, '', 0, function(self)
                  getgenv().crosshair.length = self
              end)
              Menu.Slider('Visuals', 'Crosshair', 'Radius', 0, 20, 11, '', 1, function(self)
                  getgenv().crosshair.radius = self
              end)
  
              Menu.CheckBox('Visuals', 'Crosshair', 'Spin', getgenv().crosshair.spin, function(self)
                  getgenv().crosshair.spin = self
              end)
              Menu.Slider('Visuals', 'Crosshair', 'Spin Speed', 1, 340, 150, '', 0, function(self)
                  getgenv().crosshair.spin_speed = self
              end)
  
              Menu.CheckBox('Visuals', 'Crosshair', 'Resize', getgenv().crosshair.resize, function(self)
                  getgenv().crosshair.resize = self
              end)
              Menu.Slider('Visuals', 'Crosshair', 'Resize Speed', 1, 22, 5, '', 0, function(self)
                  getgenv().crosshair.resize_speed = self
              end)
          end
  
            local TLHightlightSection = Menu.Container("Visuals", "HighLight", "Right") do
                Menu.CheckBox("Visuals", "HighLight", "Enabled", true, function(a)
                    Settings.Combat.Visuals.HighLight.Enabled = a
                end)
                Menu.ColorPicker("Visuals", "HighLight", "Fill Color", MainColor, 0, function(a)
                    Settings.Combat.Visuals.HighLight.FillColor = a
                end)
                Menu.ColorPicker("Visuals", "HighLight", "OutLine Color", Color3.fromRGB(255, 255, 255), 0, function(a)
                    Settings.Combat.Visuals.HighLight.OutLineColor = a
                end)
            end
  
            local TLBackTrackSection = Menu.Container("Visuals", "BackTrack", "Right") do
                Menu.CheckBox("Visuals", "BackTrack", "Enabled", true, function(a)
                    Settings.Combat.Visuals.BackTrack.Enabled = a
                end)
                Menu.Slider("Visuals", "BackTrack", "Transparency", 0, 1, 0, '', 1, function(a)
                    Settings.Combat.Visuals.BackTrack.Transparency = a
                end)
                Menu.Slider("Visuals", "BackTrack", "Delay", 0, 5, 0.1, '', 1, function(a)
                    Settings.Combat.Visuals.BackTrack.Delay = a
                end)
                Menu.ColorPicker("Visuals", "BackTrack", "Color", MainColor, 0, function(a)
                    Settings.Combat.Visuals.BackTrack.Color = a
                end)
                Menu.ComboBox("Visuals", "BackTrack", "Material", "ForceField", {"ForceField", "Neon", "Plastic"}, function(a)
                    Settings.Combat.Visuals.BackTrack.Material = a
                end)
            end
  
            local TLLineSection = Menu.Container("Visuals", "Line", "Right") do
                Menu.CheckBox("Visuals", "Line", "Enabled", true, function(a)
                    Settings.Combat.Visuals.Line.Visible = a
                end)
                Menu.CheckBox("Visuals", "Line", "Circle", true, function(a)
                    Settings.Combat.Visuals.Line.Circle = a
                end)
                Menu.Slider("Visuals", "Line", "Transparency", 0, 1, 0, '', 1, function(a)
                    Settings.Combat.Visuals.Line.Transparency = a
                end)
                Menu.Slider("Visuals", "Line", "Thickness", 0, 5, 0.5, '', 1, function(a)
                    Settings.Combat.Visuals.Line.Thickness = a
                end)
                Menu.ColorPicker("Visuals", "Line", "Color", MainColor, 0, function(a)
                    Settings.Combat.Visuals.Line.Color = a
                end)
            end
  
            local Section8 = Menu.Container("Visuals", "Bullet Tracers", "Right") do
                Menu.CheckBox("Visuals", "Bullet Tracers", "Enabled", false, function(self)
                    Settings.Visuals.Bullet_Trails.Enabled = self
                end)
  
                Menu.ComboBox("Visuals", "Bullet Tracers", "Texture", "Normal", {"Normal", "Fog"}, function(self)
                    Settings.Visuals.Bullet_Trails.Texture = self
                end)
  
                Menu.ColorPicker("Visuals", "Bullet Tracers", "Color", MainColor, 0, function(self)
                    Settings.Visuals.Bullet_Trails.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, self), ColorSequenceKeypoint.new(1, self)})
                end)
            end
  
            local Section8 = Menu.Container("Visuals", "Aim Viewer", "Right") do
              Menu.CheckBox("Visuals", "Aim Viewer", "Enabled", false, function(self)
                AntiAimViewer_Enabled = self
              end)
  
              Menu.ColorPicker("Visuals", "Aim Viewer", "Color", MainColor, 0, function(self)
                AntiAimViewer_Color = self
              end)
  
              Menu.TextBox("Visuals", "Aim Viewer", "Target", 'Username', function(self)
                AntiAimViewer_Target = findPlayerByUsername(self)
              end)
  
              Menu.CheckBox("Visuals", "Aim Viewer", "HighLight", false, function(self)
                AntiAimViewer_HighLight = self
              end)
  
              Menu.ColorPicker("Visuals", "Aim Viewer", "Color", Color3.fromRGB(255, 255, 255), 0, function(self)
                AntiAimViewer_HighLight_OutLineColor = self
              end)
  
              Menu.ColorPicker("Visuals", "Aim Viewer", "Color", MainColor, 0, function(self)
                AntiAimViewer_HighLight_FillColor = self
              end)
          end
  
          local Section7 = Menu.Container("Visuals", "Client Chams", "Left") do
            Menu.CheckBox("Visuals", "Client Chams", "Weapon Enabled", false, function(self)
                Settings.Visuals.Weapon_Chams.Enabled = self
            end)
            Menu.ColorPicker("Visuals", "Client Chams", "Weapon Color", MainColor, 0, function(self)
                Settings.Visuals.Weapon_Chams.Color = self
            end)
            Menu.ComboBox("Visuals", "Client Chams", "Weapon Cham Type", "Plastic", {"Plastic", "Neon"}, function(self)
                if self == 'Plastic' then
                    Settings.Visuals.Weapon_Chams.Material = Enum.Material.SmoothPlastic
                elseif self == 'Neon' then
                    Settings.Visuals.Weapon_Chams.Material = Enum.Material.Neon
                end
            end)

            Menu.CheckBox("Visuals", "Client Chams", "Client Enabled", false, function(self)
                Settings.Visuals.Character_Chams.Enabled = self
            end)
            Menu.ColorPicker("Visuals", "Client Chams", "Client Color", MainColor, 0, function(self)
                Settings.Visuals.Character_Chams.Color = self
            end)
            Menu.ComboBox("Visuals", "Client Chams", "Client Cham Type", "Force Field", {"Force Field", "Neon"}, function(self)
                if self == 'Force Field' then
                    Settings.Visuals.Character_Chams.Material = Enum.Material.ForceField
                elseif self == 'Neon' then
                    Settings.Visuals.Character_Chams.Material = Enum.Material.Neon
                end
            end)

            Menu.CheckBox("Visuals", "Client Chams", "Trail Enabled", false, function(self)
                ToggleTrail(self)
            end)
            Menu.ColorPicker("Visuals", "Client Chams", "Trail Color", MainColor, 0, function(self)
                Settings.Visuals.Character_Chams.Trail_Color = self
            end)
            Menu.Slider("Visuals", "Client Chams", "Trail Life", 1, 10, 3, '', 0, function(a)
                Settings.Combat.Visuals.Line.Trail_Life = a
            end)
        end
  
        end
  
        local ConfigsTab = Menu.Tab("Configuration") do
  
            local MenuSection = Menu.Container("Configuration", "Menu", "Left") do
                Menu.Hotkey('Configuration', 'Menu', 'Menu key', Settings.Configs.Menu.Keybind, function(a)
                    Settings.Configs.Menu.Keybind = a
                    ContextAction:BindAction('menuToggle', MenuToggle, true, a)
                end)

                Menu.ColorPicker("Configuration", "Menu", "Color", MainColor, 0, function(self)
                    MainColor = self
                    Menu.Accent = self
                end)
        
                Menu.CheckBox('Configuration', 'Menu', 'Indicators', false, function(Boolean)
                    Menu.Indicators:SetVisible(Boolean)
                end)
        
                Menu.CheckBox('Configuration', 'Menu', 'Keybinds', false, function(Boolean)
                    Menu.Keybinds:SetVisible(Boolean)
                end)
        
                Menu.Button('Configuration', 'Menu', 'Rejoin', function()
                    TeleportPlace(game.PlaceId, game.JobId)
                end)

            end

            local ConfigSection = Menu.Container('Configuration', 'Configs', 'Right') do
                Menu.TextBox('Configuration', 'Configs', 'Config Name', '')

                Menu.ListBox('Configuration', 'Configs', 'Config List', false, {}, function()

                end)

                Menu.Button('Configuration', 'Configs', 'Create', function()
                    
                end)

                Menu.Button('Configuration', 'Configs', 'Save', function()
                    
                end)

                Menu.Button('Configuration', 'Configs', 'Load', function()
                    
                end)
            end
            
        end
    end

  local function UpdateIndicators()

    --Menu.Keybinds.List['Enabled']:Update(Settings['Main']['Enabled'] and "On" or "Off")

    if enabled and Target then
        Menu.Indicators.List['Target']:Update(Target.Name)

        Menu.Indicators.List['Target Health']:SetVisible(true)
        Menu.Indicators.List['Target Armor']:SetVisible(true)

        Menu.Indicators.List['Knocked Out']:SetVisible(true)
        Menu.Indicators.List['Anti Aiming']:SetVisible(true)
    else
        Menu.Indicators.List['Target']:Update('nil')
        Menu.Indicators.List['Target Health']:SetVisible(false)
        Menu.Indicators.List['Target Armor']:SetVisible(false)

        Menu.Indicators.List['Knocked Out']:SetVisible(false)
        Menu.Indicators.List['Anti Aiming']:SetVisible(false)

        Menu.Indicators.List['Target Ammo']:SetVisible(false)
    end

    if enabled and Target then
        local Character = Target.Character

        if Character then
            local RootPart = Character and Character:FindFirstChild('HumanoidRootPart')
            local Humanoid = Character and Character:FindFirstChild('Humanoid')

            local BodyEffects = Character and Character:FindFirstChild('BodyEffects')
            local Armor = BodyEffects and BodyEffects:FindFirstChild('Armor')
            local KnockedOut = BodyEffects and BodyEffects:FindFirstChild('K.O')

            Menu.Indicators.List['Target Health']:Update(math.floor(Humanoid.Health), 0, 100)
            Menu.Indicators.List['Target Armor']:Update(Armor.Value, 0, 200)

            if KnockedOut and KnockedOut.Value then
                Menu.Indicators.List['Knocked Out']:Update('[True]')
            else
                Menu.Indicators.List['Knocked Out']:Update('[False]')
            end

            if RootPart and (RootPart.AssemblyLinearVelocity.X > 40 or RootPart.AssemblyLinearVelocity.Y > 40 or RootPart.AssemblyLinearVelocity.Z > 40 or RootPart.AssemblyLinearVelocity.X < -40 or RootPart.AssemblyLinearVelocity.Y < -40 or RootPart.AssemblyLinearVelocity.Z < -40) then
                Menu.Indicators.List['Anti Aiming']:Update('[True]')
            else
                Menu.Indicators.List['Anti Aiming']:Update('[False]')
            end

            for i, v in pairs(Character:GetChildren()) do
                if v:IsA('Tool') and (v:FindFirstChild('Ammo') and v:FindFirstChild('MaxAmmo')) then
                    Menu.Indicators.List['Target Ammo']:SetVisible(true)

                    local Ammo = v.Ammo.Value
                    local MaxAmmo = v.MaxAmmo.Value

                    task.wait()
                    Menu.Indicators.List['Target Ammo']:Update(Ammo, 0, MaxAmmo)
                else
                    Menu.Indicators.List['Target Ammo']:SetVisible(false)
                end
            end

        end

    end
end
  
  
  ---------------------------------------------------------------------------------- scripts
  
  do --// notification library
    do --// Notifications 
        local NotificationContainer = Instance.new("ScreenGui", gethui());
        do  --// Functions
            function Notifications:UpdateNotifications()
                local i = 0
                for v in next, Notifications do
                    if v.Holder then
                        local tween = Utility:Tween(v.Holder, TweenInfo.new(0.8, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0, 20, 0, 75 + (i * 25))})
                        i = i + 1
                    end
                end
            end;
  
            function Notifications:UpdateNotifications2(Item)
                for i,v in pairs(Item) do
                    if typeof(v) == "Instance" then
                        task.spawn(function()
                            local tween = Utility:Tween(v, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundTransparency = 1});
  
                            tween.Completed:Connect(function()
                                if v.Name == "Holder" then
                                    v:Destroy();
                                end
                            end)
                        end);
                        if v.ClassName == "TextLabel" then
                            local tween = Utility:Tween(v, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {TextTransparency = 1})
                        end
                    end
                end
            end
  
            function Notifications:New(Text, Time, Color)
                Time = Time or 2;
                Color = Color or Color3.fromRGB(100, 95, 192);
                Text = Text or "No text provided? retard? "..tostring(math.random());
  
                local Notification = {};
  
                local Holder = Instance.new("Frame")
                Holder.Position = UDim2.new(0, -30, 0, 75);
                Holder.Size = UDim2.new(0, 0, 0, 23);
                Holder.BackgroundTransparency = 0;
                Holder.Parent = NotificationContainer;
                Holder.BackgroundColor3 = Color3.fromRGB(37, 37, 37);
                Holder.BorderSizePixel = 1
                Holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Notification.Holder = Holder;
  
                local Background = Instance.new("Frame");
                Background.Parent = Holder;
                Background.Size = UDim2.new(1, -4, 1, -4);
                Background.BackgroundColor3 = Color3.fromRGB(17, 17, 17);
                Background.Position = UDim2.new(0, 2, 0, 2);
                Background.BorderSizePixel = 1
                Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Notification.Background = Background;
  
                local AccentBar = Instance.new("Frame");
                AccentBar.Size = UDim2.new(0, 1, 1, 0);
                AccentBar.Parent = Background;
                AccentBar.BackgroundColor3 = Color;
                AccentBar.Position = UDim2.new(0, 0, 0, 0);
                AccentBar.BorderSizePixel = 0
                Notification.AccentBar = AccentBar;
  
                local AccentBar2 = Instance.new("Frame");
                AccentBar2.Size = UDim2.new(0, 0, 0, 1);
                AccentBar2.Position = UDim2.new(0, 0, 0, 15);
                AccentBar2.Parent = Background;
                AccentBar2.BackgroundColor3 = Color;
                AccentBar2.BorderSizePixel = 0
  
                Notification.AccentBar2 = AccentBar2
                local NotifText = Instance.new("TextLabel");
                NotifText.TextXAlignment = Enum.TextXAlignment.Left;
                NotifText.Position = UDim2.new(0, 3, 0, 0);
                NotifText.Size = UDim2.new(1, 0, 1, 0)
                NotifText.Parent = Background;
                NotifText.Font = Enum.Font.Ubuntu;
                NotifText.TextColor3 = Color3.new(1,1,1);
                NotifText.BackgroundTransparency = 1;
                NotifText.TextSize = 12.00;
                NotifText.Text = Text;
  
                Notification.NotifText = NotifText;
                Notification.Holder.Size = UDim2.new(0, NotifText.TextBounds.X + 10, 0, 19);
  
                AccentBar2.Size = UDim2.new(0, 1, 0, 1)
  
                Notifications[Notification] = true
  
                local Connection
                function Notification:Remove()
                    Notifications[Notification] = nil
                    Notifications:UpdateNotifications();
                end;
                task.spawn(function()
                    Notification.Holder.Size = UDim2.new(0, NotifText.TextBounds.X + 10, 0, 19);
                    Notifications:UpdateNotifications()
                    Notification.AccentBar2:TweenSize(UDim2.new(0, Background.AbsoluteSize.X - 1, 0, 1), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, Time, false);
                    task.wait(Time)
  
                    Notifications:UpdateNotifications2(Notification)
                    task.wait(1.2)
                    Notification:Remove()
                end);
            end;
        end;
    end;
  
    do
        function Utility:Tween(...)
            local NewTween = game:GetService("TweenService"):Create(...)
            NewTween:Play();
            return NewTween;
        end;
    end
  end
  
--// Functions
local function GetCalculatedVelocity(Player)
    local Char = Player.Character
    local Root = Char and Char:FindFirstChild('HumanoidRootPart')
    local Velocity = Vector3.new()

    if (Char and Root) then
        local CurrentPos = Root.Position
        local CurrentTime = tick()

        task.wait(0.00350)

        local NewPos = Root.Position
        local NewTime = tick()

        local FinalTime = NewTime - CurrentTime
        Velocity = (NewPos - CurrentPos) / FinalTime
        CurrentPos = NewPos
        CurrentTime = NewPos
    end

    return Velocity
end

local function UpdateBuiltVelocity()
    if Target then
        BuiltVelocity = GetCalculatedVelocity(Target)
    end
end


local VisibleCheck = function (Part, PartDescendant)
    local Character = Client.Character or Client.CharacterAdded.Wait(Client.CharacterAdded)
    local Origin = Camera.CFrame.Position
    local _, OnScreen = Camera.WorldToViewportPoint(Camera, Part.Position)

    if (OnScreen) then
        local raycastParams = RaycastParams.new()
        raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
        raycastParams.FilterDescendantsInstances = {Character, Camera}

        local Result = Workspace.Raycast(Workspace, Origin, Part.Position - Origin, raycastParams)

        if (Result) then
            local PartHit = Result.Instance
            local Visible = (not PartHit or Instance.new("Part").IsDescendantOf(PartHit, PartDescendant))

            return Visible
        end
    end
    return false
end

local function GetClosestPlayerFOV()
    local Player = nil
    local Distance = FoVCircle.Radius

    for i, v in pairs(Players:GetPlayers()) do
        if (v == Client) then continue end

        local Character = v.Character
        local RootPart  = Character and Character:FindFirstChild('HumanoidRootPart')


        if Settings.Combat.Checks.WallCheck then
            if Camera:WorldToScreenPoint(v.Character[Settings.Combat.TargetLock.HitParts].Position) and VisibleCheck(v.Character[Settings.Combat.TargetLock.HitParts], v.Character) then
                if (Character and RootPart) then
                    local Pos = Workspace.CurrentCamera:WorldToViewportPoint(RootPart.Position)
                    local Mag = (Vector2.new(Pos.x, Pos.y) - UserInputService:GetMouseLocation()).magnitude

                    if (Mag < Distance) then
                        Distance = Mag
                        Player = v
                    end
                end
            end
        else
            if (Character and RootPart) then
                local Pos = Workspace.CurrentCamera:WorldToViewportPoint(RootPart.Position)
                local Mag = (Vector2.new(Pos.x, Pos.y) - UserInputService:GetMouseLocation()).magnitude

                if (Mag < Distance) then
                    Distance = Mag
                    Player = v
                end
            end
        end
    end

    return Player
end

local function KeybindHandler(Index, Texting)

    if not Texting and Index.KeyCode == Settings['Destroy Cheaters'].Keybind then
        DestroyCheaters()
        Notifications:New('CFrame Desync: ' .. tostring(Settings['Destroy Cheaters'].Enabled), 1.5, MainColor)
    end

    if not Texting and Index.KeyCode == Settings.Combat.TargetLock.KeyBind and Settings.Combat.TargetLock.Enabled then
        if Keybind and enabled then
            Keybind = false
            enabled = false
            if Target ~= nil then
                Target = nil
                ENABLEDHIGHTLIGHTCHECK = false
                if Settings.Visuals.Notifications then
                    Notifications:New('Unlocked... haha!', 1.5, MainColor)
                end
                if Settings.Combat.Stuff.Spectate then
                    game.Workspace.CurrentCamera.CameraSubject = Client.Character
                end
            end
        else
            Keybind = true
            enabled = true
            Target  = GetClosestPlayerFOV();
            if Settings.Visuals.Notifications then
                Notifications:New('Target : ' .. tostring(Target), 1.5, MainColor)
            end
            ENABLEDHIGHTLIGHTCHECK = true
            if Settings.Combat.Stuff.Spectate and Target then
                game.Workspace.CurrentCamera.CameraSubject = Target.Character
            end
            task.spawn(function ()
                while enabled do
                    wait()
                    BacktrackPlayer(Target)
                end
            end)
        end
    end
end

local function ChattedAdmin(Chat)
    if Client and Client.Character then
        local PrefixFound = Chat:sub(1, 1) == "$"

        if (PrefixFound) then
            local SplitChat = Chat:split(' ')
            if (SplitChat[1]:lower():find('target')) then 
                enabled = true
                Target = FindPlayer(SplitChat[2])

                if Settings.Visuals.Notifications then
                    Notifications:New('Target : ' .. tostring(Target), 1.5, MainColor)
                end

                ENABLEDHIGHTLIGHTCHECK = true

                if Settings.Combat.Stuff.Spectate and Target then
                    game.Workspace.CurrentCamera.CameraSubject = Target.Character
                end

                task.spawn(function ()
                    while enabled do
                        wait()
                        BacktrackPlayer(Target)
                    end
                end)
                
            elseif (SplitChat[1]:lower():find('goto')) then
                local GotoPlayer = FindPlayer(SplitChat[2])
    
                if (GotoPlayer) then
                    Client.Character.HumanoidRootPart.CFrame = GotoPlayer.Character.HumanoidRootPart.CFrame
                end
            end
        end
    end
end

local function PostSimulation(Delta)
    if Settings['Destroy Cheaters'].Enabled then
        local LocalCharacter = Client.Character
        local LocalRootPart = Client and LocalCharacter:FindFirstChild("HumanoidRootPart")

        if not LocalRootPart then return end

        Desync.ClientLocation = LocalRootPart.CFrame

        if (Desync.cframe) then 
            LocalRootPart.CFrame = Desync.cframe
        end

        RunService.PreRender:Wait()

        LocalRootPart.CFrame = Desync.ClientLocation
        Desync.ClientLocation = nil
    end
end

RunService.PostSimulation:Connect(PostSimulation);

Client.Chatted:Connect(ChattedAdmin)

function UpdateFov() -- connect to heartbeat loop
    FoVCircle.Position = Vector2.new(Mouse.X, Mouse.Y + GetGuiInset(GuiService).Y)
    FoVCircle.Visible = false
end


--// Loops
task.spawn(function() while task.wait() do UpdateBuiltVelocity() end end)


--// Hooking Aimbot --// CREDITS FOR THE HOOK TO CALLS
local AimMetaTable = getrawmetatable(game); makewriteable(AimMetaTable)
local OldMetaTable = AimMetaTable.__namecall; AimMetaTable.__namecall = newcclosure(function(...)
    local Arguments = {...};
    if Settings.Combat.TargetLock.Enabled and getnamecallmethod() == 'FireServer' and Arguments[2] == MousePos and Target and Target.Character then
        local TargetCharacter = Target.Character
        if (Settings.Combat.Checks.Resolver) then
            Arguments[3] = TargetCharacter[Settings.Combat.TargetLock.HitParts].Position + (BuiltVelocity * Vector3.new(Settings.Combat.TargetLock.Prediction, Settings.Combat.TargetLock.Prediction, Settings.Combat.TargetLock.Prediction))
        else
            Arguments[3] = TargetCharacter[Settings.Combat.TargetLock.HitParts].Position + (TargetCharacter[Settings.Combat.TargetLock.HitParts].Velocity * Vector3.new(Settings.Combat.TargetLock.Prediction, Settings.Combat.TargetLock.Prediction, Settings.Combat.TargetLock.Prediction))
        end

        return OldMetaTable(unpack(Arguments))
    end
    return OldMetaTable(...)
end)

local index; index = hookmetamethod(game, '__index', function(Obj, Prop)

    if Prop == 'CFrame' and index(Obj, 'Name') == 'HumanoidRootPart' and index(Obj, 'Parent') == index(Client, 'Character') and Desync.ClientLocation then
        return Desync.ClientLocation
    end

    return index(Obj, Prop)
end)

 
  
        -- FIRE VISUALS 🔥🔥🔥🔥
  
        Script.Drawing.Line = Drawing.new("Line")
        Script.Drawing.Line.From = Vector2.new(0, 0)
        Script.Drawing.Line.To = Vector2.new(0, 0)
        Script.Drawing.Line.Visible = Settings.Combat.Visuals.Line.Visible
        Script.Drawing.Line.Thickness = Settings.Combat.Visuals.Line.Thickness
        Script.Drawing.Line.Color = Settings.Combat.Visuals.Line.Color
        Script.Drawing.Line.Transparency = Settings.Combat.Visuals.Line.Transparency
  
  
  
  
        -- backtrack
        function BacktrackPlayer(player)
            if Settings.Combat.Visuals.BackTrack.Enabled and Settings.Combat.TargetLock.Enabled == true and enabled and Target and Target.Character and Target.Character:FindFirstChild("HumanoidRootPart") then
                player.Character.Archivable = true
                local Cloned = player.Character:Clone()
                Cloned.Name = "Player Clone"
                for _, v in ipairs(Cloned:GetChildren()) do
                    if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
                        v.CanCollide = false
                        v.Anchored = true
                        v.Material = Settings.Combat.Visuals.BackTrack.Material
                        v.Color = Settings.Combat.Visuals.BackTrack.Color
                        v.Transparency = Settings.Combat.Visuals.BackTrack.Transparency
                    else
                        v:Destroy()
                    end
                end
                if Cloned:FindFirstChild("Head") and Cloned:FindFirstChild("Head"):FindFirstChild("face") then
                    Cloned.Head.face:Destroy()
                end
                Cloned.Parent = game.Workspace
                wait(Settings.Combat.Visuals.BackTrack.Delay)
                Cloned:Destroy()
            end
        end
  
  
        -- look at
  
  
  
    do -- prediction breaker
  
        if getgenv().OldKeyConnection then
            getgenv().OldKeyConnection:Disconnect()
            getgenv().OldKeyConnection = nil
        end
        getgenv().OldKeyConnection =
        UserInputService.InputBegan:Connect(
            function(input, isTyping)
                if input.KeyCode == Settings.Misc.PredictionDisabler.KeyBind and isTyping == false and Settings.Misc.PredictionDisabler.Enabled == true then
                    if Antilockhahga == false then
                        Antilockhahga = true
                        Menu.Keybinds.List['Prediction Breaker']:Update(true and "On" or "Off")
                        if  Settings.Misc.PredictionDisabler.Notifications == true then
                            Notifications:New('Prediction Breaker : TRUE.', 1.5, MainColor)
                        end
                    else
                        Antilockhahga = false
                        Menu.Keybinds.List['Prediction Breaker']:Update(false and "On" or "Off")
                        if  Settings.Misc.PredictionDisabler.Notifications == true then
                            Notifications:New('Prediction Breaker : FALSE.', 1.5, MainColor)
                        end
                    end
                end
            end
        )
        if getgenv().OldStepConnection then
            getgenv().OldStepConnection:Disconnect()
            getgenv().OldStepConnection = nil
        end
        getgenv().OldStepConnection = RunService.Stepped:Connect(function(_, Delta)
                local success, err = pcall(function()
                        if Settings.Misc.PredictionDisabler.Enabled ~= true then
                        else
                        local char = game.Players.LocalPlayer.Character
                        if char and char:FindFirstChildOfClass("Humanoid") and char:FindFirstChildOfClass("Humanoid").RootPart and Antilockhahga == true then
                            local hum = char:FindFirstChildOfClass("Humanoid")
                            if Settings.Misc.PredictionDisabler.AutoWalkSpeed then
                                Settings.Misc.PredictionDisabler.WalkSpeed = hum.WalkSpeed
                            end
                            local root = hum.RootPart
                            root.Velocity = Vector3.new(hum.MoveDirection.x, root.Velocity.y, hum.MoveDirection.z)
                            root.CFrame = root.CFrame + ((hum.MoveDirection * Delta) * (Settings.Misc.PredictionDisabler.WalkSpeed * 0.9))
                            for _, Anim in next, hum:GetPlayingAnimationTracks() do
                                local Anim3 = nil
                                local Anim2 = Anim
                                if Anim and Anim.Animation and Anim.Animation.Parent then
                                    Anim3 = Anim.Animation.Parent
                                end
                                if
                                    Anim3 and Anim3.Parent and Anim3.Parent.Name == "Animate" and
                                        (string.find(Anim2.Animation.Name:lower(), "run") or
                                            string.find(Anim2.Animation.Name:lower(), "walk"))
                                then
                                    Anim2:AdjustSpeed(Settings.Misc.PredictionDisabler.WalkSpeed / Settings.Misc.PredictionDisabler.AnimationSpeed)
                                end
                            end
                        end
                    end
                    end
                )
                if err and Settings.Misc.PredictionDisabler.Errors and Settings.Misc.PredictionDisabler.Notifications then
  
                    Notifications:New('Current AntiLock Speed: <b>' .. tostring(Settings.Misc.PredictionDisabler.WalkSpeed) .. '</b>', 1.5, MainColor)
  
                    Antilockhahga = false
  
  
                    if getgenv().OldStepConnection then
                        getgenv().OldStepConnection:Disconnect()
                        getgenv().OldStepConnection = nil
                    end
  
                    if getgenv().OldKeyConnection then
                        getgenv().OldKeyConnection:Disconnect()
                        getgenv().OldKeyConnection = nil
                    end
                end
            end
        )
  
    end
  
    local function GetRandomCFrame(Boolean, Min, Max)
      if Boolean then
          return CFrame.new(math.random(Min, Max), math.random(0, 5), math.random(Min, Max))
      else
          return CFrame.new(-math.random(Min, Max), math.random(0, 5), -math.random(Min, Max))
      end
  end

  function Utility:GetPlayers()
    return Players:GetPlayers()
  end

  function TeleportPlace(PlaceId, JobId)
    if JobId == game.JobId and #Utility:GetPlayers() <= 1 then
        Client:Kick("Misery: Current Server has 0 players, Rejoining.")
        --
        Wait()
        --
        TeleportService:Teleport(PlaceId, Client)
    else
        TeleportService:TeleportToPlaceInstance(PlaceId, JobId, Client)
    end
end
  
  local function VisualzeMovement()
      local Character = Client and (Client.Character or Client.CharacterAdded:Wait())
      local RootPart = Character and Character.HumanoidRootPart
  
      local Ball = Instance.new('Part') do
          Ball.Anchored = true
          Ball.Size = Vector3.new(0.5, 0.5, 0.5)
          Ball.Shape = Enum.PartType.Ball
          Ball.Color = MainColor
          Ball.Material = Enum.Material.ForceField
          Ball.Parent = Workspace
          Ball.CFrame = RootPart.CFrame
          Ball.CanCollide = false
      end;
  
      Debris:AddItem(Ball, 2)
  end
  
  do-- // Target Strafe
      angle_Y = 0
      
      RunService.Stepped:Connect(function (param,FPS)
          local Random = math.random(1, 6)
          local Gun = GetTool()
  
          if enabled and Gun and Target and Target.Character and Settings.Misc.TargetStrafe.Enabled == true and Settings.Misc.TargetStrafe.Method == 'Strafe' then
              if Settings.Misc.TargetStrafe.Visualize_Circle then
                  nigganiggaXD.CFrame = Target.Character.HumanoidRootPart.CFrame
  
                  spawn(function()
                      nigganiggaXD.Size = Vector3.new(Settings.Misc.TargetStrafe.Distance * 0.7, 0.01, Settings.Misc.TargetStrafe.Distance * 0.7)
                      nigganiggaXD.Color = Settings.Misc.TargetStrafe.Color
                  end)
                  
                  spawn(function ()
                      if Settings.Misc.TargetStrafe.Visualize_Circle == false or Settings.Misc.TargetStrafe.Enabled == false then
                          nigganiggaXD.CFrame = CFrame.new(0,9999,0)
                      end
                  end)
  
              end
          else
              nigganiggaXD.CFrame = CFrame.new(0,9999,0)
          end
  
          if Gun and Settings.Misc.TargetStrafe.Enabled and Settings.Misc.TargetStrafe.Method == 'Strafe' then
            if (Target.Character.HumanoidRootPart.CFrame.x > 5000 or Target.Character.HumanoidRootPart.CFrame.y > 5000 or Target.Character.HumanoidRootPart.CFrame.z > 5000 or Target.Character.HumanoidRootPart.CFrame.x < -5000 or Target.Character.HumanoidRootPart.CFrame.y < -5000 or Target.Character.HumanoidRootPart.CFrame.z < -5000) then return end 

              if enabled then
                  if Settings.Combat.Stuff.LookAt == true then
                      Settings.Combat.Stuff.LookAt = false
                      wait()
                      Settings.Combat.Stuff.LookAt = true
                  end
  
                  angle_Y = angle_Y + FPS / Settings.Misc.TargetStrafe.Speed % 1
                  Client.Character.HumanoidRootPart.CFrame = CFrame.new(Target.Character.HumanoidRootPart.Position) * CFrame.Angles(0, 2 * math.pi * angle_Y, 0) * CFrame.new(0, Settings.Misc.TargetStrafe.Height, Settings.Misc.TargetStrafe.Distance)
              end
          elseif Gun and Settings.Misc.TargetStrafe.Enabled and Settings.Misc.TargetStrafe.Method == 'Randomize' and enabled then
            if (Target.Character.HumanoidRootPart.CFrame.x > 5000 or Target.Character.HumanoidRootPart.CFrame.y > 5000 or Target.Character.HumanoidRootPart.CFrame.z > 5000 or Target.Character.HumanoidRootPart.CFrame.x < -5000 or Target.Character.HumanoidRootPart.CFrame.y < -5000 or Target.Character.HumanoidRootPart.CFrame.z < -5000) then return end 

              if Random <= 3 then
                  Client.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * GetRandomCFrame(true, Settings.Misc.TargetStrafe.RandomizeMin, Settings.Misc.TargetStrafe.RandomizeMax)
                  if Settings.Misc.TargetStrafe.Visualize_Circle then
                      VisualzeMovement()
                  end
              elseif Random > 3 then
                  Client.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * GetRandomCFrame(false, Settings.Misc.TargetStrafe.RandomizeMin, Settings.Misc.TargetStrafe.RandomizeMax)
                  if Settings.Misc.TargetStrafe.Visualize_Circle then
                      VisualzeMovement()
                  end
              end
  
          end
      end)
  end

  local function Reload(Object)
    local KOValue = Client.Character:WaitForChild('BodyEffects')['K.O'].Value

    if Object and KOValue ~= true then
        ReplicatedStorage:FindFirstChild('MainEvent'):FireServer('Reload', Object)
    end
end


  task.spawn(function()
    while task.wait(0.07) do

        if (enabled and Target and Target.Character and Settings.Misc.TargetStrafe.Enabled and Settings.Misc.TargetStrafe.AutoFire) then 

            local Gun = GetTool()
            if (Gun and Target) then 
                Gun:Activate()
            end
        end

        if (enabled and Target and Target.Character and Settings.Misc.TargetStrafe.Enabled and Settings.Misc.TargetStrafe.AutoReload) then

            local Gun = GetTool()
            if (Gun and Gun.Ammo.Value == 0) then
                Reload(Gun)
            end
        end
        
    end
  end)
  
    do -- walkspeed Cframe
        UserInputService.InputBegan:Connect(function(input, isTyping)
            if not isTyping and input.KeyCode == Settings.Misc.WalkSpeed.KeyBind and Settings.Misc.WalkSpeed.Enabled == true then
                if CFrameSpeedKeyBind then
                    CFrameSpeedKeyBind = false
                    Menu.Keybinds.List['CFrame']:Update(false and "On" or "Off")
                    if  Settings.Misc.WalkSpeed.Notifications == true then
                        Notifications:New('WalkSpeed disabled', 1.5, MainColor)
                    end
                else
                    Menu.Keybinds.List['CFrame']:Update(true and "On" or "Off")
                    CFrameSpeedKeyBind = true
                    if  Settings.Misc.WalkSpeed.Notifications == true then
                        Notifications:New('WalkSpeed enabled', 1.5, MainColor)
                    end
                end
            end
        end)
    end
  
    do -- fly
        UserInputService.InputBegan:Connect(function(input, isTyping)
            if not isTyping and input.KeyCode == Settings.Misc.Fly.KeyBind and Settings.Misc.Fly.Enabled then
                if flyvariableshit then
                    flyvariableshit = false
                    Menu.Keybinds.List['Fly']:Update(false and "On" or "Off")
                    if  Settings.Misc.Fly.Notification == true then
                        Notifications:New('fly disabled', 1.5, MainColor)
                    end
                else
                    flyvariableshit = true
                    Menu.Keybinds.List['Fly']:Update(true and "On" or "Off")
                    if  Settings.Misc.Fly.Notification == true then
                        Notifications:New('fly enabled', 1.5, MainColor)
                    end
                end
            end
        end)
    end
  
    do -- trash talk
        local function toggle_script(input, t)
            if not t and input.KeyCode == Settings.Misc.TrashTalk.Use.KeyBind and Settings.Misc.TrashTalk.Use.UsekeyBind then
                if Settings.Misc.TrashTalk.Use.Notification then
                    if not Settings.Misc.TrashTalk.Use.Enabled then
                        Notifications:New('trash talking', 1.5, MainColor)
                        if tick() >= chatSpamTick + 1 then
                            sayMessage(getgenv().MethodBeingUsed[math.random(1, #getgenv().MethodBeingUsed)])
                            chatSpamTick = tick()
                        end
                    else
                        Notifications:New('disabled "enabled" if you want to use', 1.5, MainColor)
                    end
                end
            end;
        end;
  
        UserInputService.InputBegan:Connect(toggle_script);
    end
  
    do -- // Anti Aim
        getgenv().xd = 0
  
        local function toggleScript()
        print("working")
        Settings.Misc.NetworkAnti.Enabled = not Settings.Misc.NetworkAnti.Enabled
            if Settings.Misc.NetworkAnti.Enabled then
                if Settings.Misc.NetworkAnti.Notification then
                    Notifications:New('Network enabled', 1.5, MainColor)
                end
            else
                if Settings.Misc.NetworkAnti.Notification then
                    Notifications:New('Network disabled', 1.5, MainColor)
                end
            end
        end
  
        UserInputService.InputBegan:Connect(function(input, t)
            if not t and input.KeyCode == Settings.Misc.NetworkAnti.Keybind then
                toggleScript()
            end
        end)
  
    task.spawn(function()
        while true do
            task.wait()
            if Settings.Misc.NetworkAnti.Enabled then
                local loop = RunService.Heartbeat:Connect(function()
                    sethiddenproperty(Client.Character.HumanoidRootPart, "NetworkIsSleeping", true)
                    task.wait()
                    sethiddenproperty(Client.Character.HumanoidRootPart, "NetworkIsSleeping", false)
                end)
                task.wait(getgenv().xd)
                if loop then
                    loop:Disconnect()
                end
            end
        end
    end)
  
    end

  
  local EtherealParts = Instance.new('Folder', workspace)
  EtherealParts.Name  = 'EtherealParts'
  
  local function HitEffect(Player, Type)
      local Character = Player.Character
      local RootPart  = Character and Character:FindFirstChild('HumanoidRootPart')
  
      if Character and RootPart then

        if Type == 'Pulse' then
			local Attachment = Instance.new('Attachment', RootPart)
			local Particle1  = Instance.new('ParticleEmitter', Attachment) do
				Particle1.Name          = 'Particle1'
				Particle1.LightEmission = 3
				Particle1.Transparency  = NumberSequence.new(0)
                Particle1.Color         = ColorSequence.new(MainColor)
				Particle1.Size          = NumberSequence.new{NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 6, 1.2)}
				Particle1.Rotation      = NumberRange.new(0)
				Particle1.RotSpeed      = NumberRange.new(0)
				Particle1.Enabled       = false
				Particle1.Rate          = 2
				Particle1.Lifetime      = NumberRange.new(0.25)
				Particle1.Speed         = NumberRange.new(0.1)
				Particle1.Squash        = NumberSequence.new(0)
				Particle1.ZOffset       = 1
				Particle1.Texture       = 'rbxassetid://2916153928'
				Particle1.Orientation   = 'VelocityPerpendicular'
				Particle1.Shape         = 'Box'
				Particle1.ShapeInOut    = 'Outward'
				Particle1.ShapeStyle    = 'Volume'
			end
			local Particle2  = Instance.new('ParticleEmitter', Attachment) do
				Particle2.Name          = 'Particle1'
				Particle2.LightEmission = 3
				Particle2.Transparency  = NumberSequence.new(0)
                Particle2.Color         = ColorSequence.new(MainColor)
				Particle2.Size          = NumberSequence.new{NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 6, 1.2)}
				Particle2.Rotation      = NumberRange.new(0)
				Particle2.RotSpeed      = NumberRange.new(0)
				Particle2.Enabled       = false
				Particle2.Rate          = 2
				Particle2.Lifetime      = NumberRange.new(0.25)
				Particle2.Speed         = NumberRange.new(0.1)
				Particle2.Squash        = NumberSequence.new(0)
				Particle2.ZOffset       = 1
				Particle2.Texture       = 'rbxassetid://2916153928'
				Particle2.Orientation   = 'FacingCamera'
				Particle2.Shape         = 'Box'
				Particle2.ShapeInOut    = 'Outward'
				Particle2.ShapeStyle    = 'Volume'
			end

			Particle1:Emit(1);
			Particle2:Emit(1);

			Debris:AddItem(Attachment, 1)
        elseif Type == 'Clone' then
  
              Character.Archivable  = true
  
              local Clone = Character:Clone()
              Clone.Parent = EtherealParts
              Clone.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
  
              for _, v in pairs(Clone:GetDescendants()) do
                  if (v:IsA('BasePart')) then
                      v.Material = Enum.Material.ForceField
                      v.Color = MainColor
                      v.CanCollide = false
                      v.Anchored = true
                      v.CanQuery = false
                      v.CanTouch = false
                  end
  
                  if (v:IsA('Accessory') or v:IsA('Tool')) then
                      v:Destroy()
                  end
              end
  
              for i,v in pairs(Character:GetDescendants()) do
                  if (v:IsA('BasePart')) then
                      local ClonePart = Clone:FindFirstChild(v.Name)
  
                      if (ClonePart) then
                          ClonePart.CFrame = v.CFrame
                      end
                  end
              end
  
              Clone:PivotTo(Character.PrimaryPart.CFrame + Vector3.new(Client.Character.HumanoidRootPart.CFrame.lookVector.x * 1.5, 0, Client.Character.HumanoidRootPart.CFrame.lookVector.z * 1.5))
  
              CharacterArchivable = false
              Debris:AddItem(Clone, 2)
  
          end
      end
  end
  
  local function FindTargetOnPart(Part)
      local Target = nil;
      local HitPart = nil;
      local Distance = 2;
  
      for _, Player in pairs(Players:GetPlayers()) do
          if (Player == Client) then continue end
  
          local Char = Player.Character
          local Root = Char and Char:FindFirstChild('HumanoidRootPart')
  
          for _, Obj in pairs(Char:GetChildren()) do
              if (not Obj:IsA('BasePart')) then continue end
  
              local Mag = (Obj.Position - Part.Position).magnitude
              if (Mag < Distance) then
                  Distance = Mag
                  Target = Player
                  HitPart = Obj
              end
          end
      end
  
      return Target, HitPart
  end
  
  local function SirenAdded(Obj)
      local Character = Client.Character
      local RootPart  = Character and Character:FindFirstChild('HumanoidRootPart')
  
      local function VerifyBullet(obj)
          return (obj.Name == 'BULLET_RAYS' or obj.Name:lower():find('bullet') or obj:WaitForChild('Attachment', 1) or obj:WaitForChild('GunBeam', 1)) and obj
      end 
  
      local PlayerChecks = {
          PlayerGun = false
      }
  
      local BulletRay = VerifyBullet(Obj)
      if (BulletRay and RootPart) then
          local Mag = (RootPart.Position - BulletRay.Position).magnitude
          local MagCheck = nil;
          if (Settings.Visuals.Hit_Detection.Enabled) then
              MagCheck = 13
          else
              MagCheck = 13
          end
  
          if (Mag <= MagCheck) then
              PlayerChecks.PlayerGun = true
          end
  
          if (PlayerChecks.PlayerGun) then -- Shot from client
              local GunBeam = BulletRay:WaitForChild('GunBeam', 1)
              local Attachment0 = GunBeam.Attachment0 -- closest to player
              local Attachment1 = GunBeam.Attachment1 -- mousepos 
  
              if Settings.Visuals.Bullet_Trails.Enabled then
                  task.wait()
                  GunBeam.Texture        = AssetTable.Textures[Settings.Visuals.Bullet_Trails.Texture]
                  GunBeam.LightEmission  = 5
                  GunBeam.Segments       = 10
                  GunBeam.LightInfluence = 0
                  GunBeam.TextureSpeed   = Settings.Visuals.Bullet_Trails.Speed
                  GunBeam.Brightness     = Settings.Visuals.Bullet_Trails.Brightness
                  GunBeam.Color          = Settings.Visuals.Bullet_Trails.Color
                  GunBeam.Width0         = Settings.Visuals.Bullet_Trails.Width
                  GunBeam.Width1         = Settings.Visuals.Bullet_Trails.Width
                  GunBeam.Transparency   = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 0)})
              end
  
              if Settings.Visuals.Hit_Detection.Enabled then
                  local Part = Instance.new('Part', Workspace); do
                      Part.Anchored = true
                      Part.Size = Vector3.new(0.25, 0.25, 0.25)
                      Part.Position = Attachment1.WorldCFrame.Position
                      Part.Material = Enum.Material.Neon
                      Part.Color = MainColor
                      Part.CanCollide = false
                      Part.Transparency = 1
                  end
  
                  Debris:AddItem(Part, 2)
  
                  local Target, HitPart = FindTargetOnPart(Part)
                  if (Target ~= nil) then
  
                      if Settings.Visuals.Hit_Detection.Notify then
                          Menu.Notify('Misery<font color="#' .. tostring(MainColor:ToHex()) .. '">.cc</font>  >  ' .. '+1 Hit | ' .. tostring(HitPart) .. ' | Target : ' .. Target.DisplayName .. '', 1.5)
                      end
  
                      if Settings.Visuals.Hit_Detection.Clone then
                          HitEffect(Target, 'Clone')
                      end

                      if Settings.Visuals.Hit_Detection.Pulse then
                        HitEffect(Target, 'Pulse')
                    end
  
                      if Settings.Visuals.Hit_Detection.Sound then
                          local Sound = Instance.new('Sound', Obj); do
                              Sound.SoundId = AssetTable.Sounds[Settings.Visuals.Hit_Detection.HitSound]
                              Sound.Volume = 1
                              Sound:Play()
                          end
                      end
  
                  end
              end
  
          end
      end
  
  end
  
  -- aim viewer
  do
    AntiAimViewer_Target = Client
    print(AntiAimViewer_Target)
  
  
      function getgun()
        for i, v in pairs(AntiAimViewer_Target.Character:GetChildren()) do
            if v and (v:FindFirstChild("Default") or v:FindFirstChild("Handle")) then
                return v
            end
        end
      end
  
      local a = Instance.new("Beam")
      a.Segments = 1
      a.Width0 = 0.2
      a.Width1 = 0.2
      a.Color = ColorSequence.new(AntiAimViewer_Color)
      a.FaceCamera = true
      local b = Instance.new("Attachment")
      local c = Instance.new("Attachment")
      a.Attachment0 = b
      a.Attachment1 = c
      a.Parent = workspace.Terrain
      b.Parent = workspace.Terrain
      c.Parent = workspace.Terrain
  
      task.spawn(
        function()
            RunService.RenderStepped:Connect(
                function()
                    local character = Client.Character
                    if not character then
                        a.Enabled = false
                        return
                    end
  
                    if
                        AntiAimViewer_Enabled and getgun() and
                            AntiAimViewer_Target.Character:FindFirstChild("BodyEffects") and
                            AntiAimViewer_Target.Character:FindFirstChild("Head") and
                            AntiAimViewer_Target.Character:FindFirstChildWhichIsA("Tool")
                    then
                        a.Enabled = true
                        b.Position = AntiAimViewer_Target.Character:FindFirstChild("Head").Position
                        c.Position = AntiAimViewer_Target.Character.BodyEffects[AntiAimViewer_Method].Value
                        a.Color = ColorSequence.new(AntiAimViewer_Color)
                    else
                        a.Enabled = false
                    end
                end
            )
        end
      )
  
  end
  
  
  
  local HightLightT = Instance.new("Highlight")
  local AimViewerHighLight = Instance.new("Highlight")
  local Framework = Client.PlayerGui:FindFirstChild('Framework')
  
  local newindex; newindex = hookmetamethod(game, '__newindex', LPH_NO_VIRTUALIZE(function(self, key, value)
      local calling_script = getcallingscript()
  
      if (Framework and calling_script == Framework and self:IsA('Camera') and key == 'CFrame' and Settings.Misc.Random.NoRecoil) then 
          return 
      end
  
      if (key == 'WalkSpeed' and value < 16 and Settings.Misc.Random.NoSlow) then 
          value = 16
      end
  
      return newindex(self, key, value)
  end))
  
  local function Heartbeat()

    UpdateFov()

    if Settings.Misc.Random.AntiBag then
        Client.Character["Christmas_Sock"]:Destroy()
    end
    if Settings.Misc.Random.AutoStomp then
        game.ReplicatedStorage.MainEvent:FireServer("Stomp")
    end
    if Settings.Misc.Cash.AutoDrop == true then
        game.ReplicatedStorage.MainEvent:FireServer("DropMoney", Settings.Misc.Cash.Amount)
    end
    if Settings.Misc.Cash.AutoPick == true then
        pcall(
            function()
                for _, v in pairs(Workspace.Ignored.Drop:GetChildren()) do
                    if v.Name == "MoneyDrop" then
                        local MoneyMagnitude =
                            (v.Position - Client.Character.HumanoidRootPart.Position).magnitude
                        if MoneyMagnitude < 25 then
                            fireclickdetector(v.ClickDetector)
                        end
                    end
                end
            end
        )
    end
  
    if ENABLEDHIGHTLIGHTCHECK == true and Settings.Combat.Visuals.HighLight.Enabled == true and Settings.Combat.TargetLock.Enabled == true and Target then
        HightLightT.Parent = Target.Character
        HightLightT.FillColor = Settings.Combat.Visuals.HighLight.FillColor
        HightLightT.OutlineColor = Settings.Combat.Visuals.HighLight.OutLineColor
    else
        HightLightT.Parent = game.CoreGui
    end
  
    if AntiAimViewer_Enabled and AntiAimViewer_HighLight and AntiAimViewer_Target and AntiAimViewer_Target.Character and AntiAimViewer_Target.Character:FindFirstChild("HumanoidRootPart") then
        AimViewerHighLight.Parent = AntiAimViewer_Target.Character
        AimViewerHighLight.FillColor = AntiAimViewer_HighLight_FillColor
        AimViewerHighLight.OutlineColor = AntiAimViewer_HighLight_OutLineColor
    else
        AimViewerHighLight.Parent = game.CoreGui
    end
  
    if Settings.Combat.Visuals.Line.Enabled == true and Settings.Combat.TargetLock.Enabled == true and enabled and Target and Target.Character and Target.Character:FindFirstChild("HumanoidRootPart") then
        local mousePos = game:GetService("UserInputService"):GetMouseLocation()
        local ClosestPoint = Players[tostring(Target)].Character[Settings.Combat.TargetLock.HitParts]
        local ClosestPoint2D = Camera:WorldToViewportPoint(ClosestPoint.Position)
        Script.Drawing.Line.From = Vector2.new(ClosestPoint2D.X, ClosestPoint2D.Y)
        Script.Drawing.Line.To = Vector2.new(mousePos.X, mousePos.Y)
        Script.Drawing.Line.Visible = Settings.Combat.Visuals.Line.Visible
        Script.Drawing.Line.Thickness = Settings.Combat.Visuals.Line.Thickness
        Script.Drawing.Line.Color = Settings.Combat.Visuals.Line.Color
        Script.Drawing.Line.Transparency = Settings.Combat.Visuals.Line.Transparency
    else
        Script.Drawing.Line.To = Vector2.new(9999, 9999)
        Script.Drawing.Line.From = Vector2.new(9999, 9999)
        Script.Drawing.Line.Visible = Settings.Combat.Visuals.Line.Visible
        Script.Drawing.Line.Thickness = Settings.Combat.Visuals.Line.Thickness
        Script.Drawing.Line.Color = Settings.Combat.Visuals.Line.Color
        Script.Drawing.Line.Transparency = Settings.Combat.Visuals.Line.Transparency
    end
  
  
  
  
    if enabled and Target and Target.Character and Target.Character:FindFirstChild("LowerTorso") and Settings.Combat.Stuff.LookAt then
        Client.Character.HumanoidRootPart.CFrame = CFrame.new(Client.Character.HumanoidRootPart.CFrame.Position, Vector3.new(Target.Character.HumanoidRootPart.CFrame.X, Client.Character.HumanoidRootPart.CFrame.Position.Y, Target.Character.HumanoidRootPart.CFrame.Z))
    end
    if enabled and Target and Target.Character and Target.Character:FindFirstChild("LowerTorso") and Settings.Combat.Checks.Knocked == true then
        local KOd = Target.Character:WaitForChild("BodyEffects")["K.O"].Value
        local Grabbed = Target.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
        if KOd or Grabbed then
            print("knocked")
            ENABLEDHIGHTLIGHTCHECK = false
            enabled = false
            Target = nil
        end
    end
  
    if Settings.Combat.Stuff.AutoPrediction == true then
        pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        split = string.split(pingvalue,'(')
        ping = tonumber(split[1])
       if ping < 130 then
            Settings.Combat.TargetLock.Prediction = 0.151
       elseif ping < 125 then
            Settings.Combat.TargetLock.Prediction = 0.149
       elseif ping < 110 then
            Settings.Combat.TargetLock.Prediction = 0.146
       elseif ping < 105 then
            Settings.Combat.TargetLock.Prediction = 0.138
       elseif ping < 90 then
            Settings.Combat.TargetLock.Prediction = 0.136
       elseif ping < 80 then
            Settings.Combat.TargetLock.Prediction = 0.134
       elseif ping < 70 then
            Settings.Combat.TargetLock.Prediction = 0.131
       elseif ping < 60 then
            Settings.Combat.TargetLock.Prediction = 0.1229
       elseif ping < 50 then
            Settings.Combat.TargetLock.Prediction = 0.1225
       elseif ping < 40 then
            Settings.Combat.TargetLock.Prediction = 0.1256
       end
   end
  
   if CFrameSpeedKeyBind and Settings.Misc.WalkSpeed.Enabled then
        if Client.Character.Humanoid.MoveDirection.Magnitude > 0 then
            for i = 1, Settings.Misc.WalkSpeed.Speed do
                Client.Character:TranslateBy(Client.Character.Humanoid.MoveDirection)
            end
        end
    end
  
    if Settings.Misc.Fly.Enabled and flyvariableshit then
        spawn(function()
            pcall(function()
                local speed = Settings.Misc.Fly.Speed
                local velocity = Vector3.new(0, 1, 0)
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    velocity = velocity + (workspace.CurrentCamera.CoordinateFrame.lookVector * speed)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    velocity = velocity + (workspace.CurrentCamera.CoordinateFrame.rightVector * -speed)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    velocity = velocity + (workspace.CurrentCamera.CoordinateFrame.lookVector * -speed)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    velocity = velocity + (workspace.CurrentCamera.CoordinateFrame.rightVector * speed)
                end
  
                Client.Character.HumanoidRootPart.Velocity = velocity
                Client.Character.Humanoid:ChangeState("Freefall")
            end)
        end)
    else
        Client.Character.Humanoid:ChangeState("Landing")
    end
  
    if Settings.Misc.TrashTalk.Use.Enabled == true then
        if tick() >= chatSpamTick + 1 then
            sayMessage(getgenv().MethodBeingUsed[math.random(1, #getgenv().MethodBeingUsed)])
            chatSpamTick = tick()
        end
    end
  
  end
  
  
  --\\ Initialize Function
  local function Initialize()
    Menu.Watermark:SetVisible(true)
    Menu:SetTab("Main")
    Menu:SetVisible(true)
    Menu:Init()
    UserInputService.InputBegan:Connect(KeybindHandler)
    RunService.Heartbeat:Connect(Heartbeat)
    Workspace.Ignored.Siren.DescendantAdded:Connect(SirenAdded)
    ContextAction:BindAction('menuToggle', MenuToggle, false, Settings.Configs.Menu.Keybind)
  end
  do Initialize() end
  
  game:GetService("RunService").RenderStepped:Connect(function()

    local Character = Client and (Client.Character or Client.CharacterAdded:Wait())
    local Gun = GetTool(Gun)

    if Settings.Combat.Visuals.Line.Circle and Target and Target.Character then
        TargetCircle.Visible  = true
        TargetCircle.Position = Target.Character.UpperTorso and Target.Character.UpperTorso.Position
        TargetCircle.Color    = MainColor
        TargetCircle.Radius   = 2
        TargetCircle.Sides    = 2
    else
        TargetCircle.Visible  = false
    end
    
    if Settings.Visuals.Character_Chams.Enabled and Character then
        for i, v in pairs(Character:GetDescendants()) do
            if (v.Parent:IsA('Tool') and (v:IsA('MeshPart') or v:IsA('BasePart'))) then continue end 

            if v:IsA('MeshPart') then
                v.Material = Settings.Visuals.Character_Chams.Material
                v.Color = Settings.Visuals.Character_Chams.Color
                v.TextureID = ''
            end

            if v:IsA('BasePart') then
                v.Material = Settings.Visuals.Character_Chams.Material
                v.Color = Settings.Visuals.Character_Chams.Color
            end
        end
    end

    if Settings.Visuals.Weapon_Chams.Enabled and Character and Gun then
        for i, v in pairs(Gun:GetChildren()) do

            if v:IsA('MeshPart') then
                v.Material = Settings.Visuals.Weapon_Chams.Material
                v.Color = Settings.Visuals.Weapon_Chams.Color
                v.TextureID = ''
            end

            if v:IsA('BasePart') then
                v.Material = Settings.Visuals.Weapon_Chams.Material
                v.Color = Settings.Visuals.Weapon_Chams.Color
            end

        end
    end

    local Bars = Client.PlayerGui:FindFirstChild('MainScreenGui') and Client.PlayerGui.MainScreenGui:FindFirstChild('Bar')

    if (Bars) then 
        if Settings.Visuals.World_Customization.Bars then
            Bars.Energy.bar.BackgroundColor3 = Settings.Visuals.World_Customization.BarsColor
            Bars.Armor.bar.BackgroundColor3 = Settings.Visuals.World_Customization.BarsColor
            Bars.HP.bar.BackgroundColor3 = Settings.Visuals.World_Customization.BarsColor
            Bars.Armor.firebar.BackgroundColor3 = Settings.Visuals.World_Customization.BarsColor
        elseif not Settings.Visuals.World_Customization.Bars then
            Bars.Energy.bar.BackgroundColor3 = Color3.fromRGB(182, 182, 9)
            Bars.Armor.bar.BackgroundColor3 = Color3.fromRGB(0, 136, 194)
            Bars.HP.bar.BackgroundColor3 = Color3.fromRGB(36, 182, 3)
            Bars.Armor.firebar.BackgroundColor3 = Color3.fromRGB(253, 121, 33)
        end
    end

    UpdateIndicators()

    cam = workspace.CurrentCamera
end)

for i, v in next, (Players:GetChildren()) do
    if (v == Client) then continue end 
    
    local player = getgenv().esp.NewPlayer(v)
end

Players.PlayerAdded:Connect(function(v)
    local player = getgenv().esp.NewPlayer(v)
end)
