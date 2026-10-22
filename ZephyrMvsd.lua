-- THIS SCRIPT IS OWNED BY VEXAL SCRIPTS
-- JOIN OUR DISCORD -> https://dsc.gg/vexal
-- THIS SCRIPT WAS DEVELOPED BY ZEPHYR MVSD
-- FEEL FREE TO DO WHATEVER YOU WANT THIS THIS
-- SOME STUFF MIGHT NOT WORK SO MEHH

if type(getgenv().VexalUnifiedUnload) == "function" then
    pcall(getgenv().VexalUnifiedUnload)
end

local t1 = {}
local t2 = {}
local t3, v16, v17, v18, v19, v20, v21, v22, v23, v24
local Players, RunService, UserInputService, Workspace, ReplicatedStorage, CollectionService, TweenService, Debris, Lighting, LocalPlayer2
local CurrentCamera, v36, v37, v38, t4, v40, Fluent, SaveManager, InterfaceManager, v44
local v45, t5, Options, v48, t6, t7, v51, v52, v53, v54
local v55, v56, v57, v58, v59, v60, v61, v62, v63

do
    local t8 = {}

    do
        local t9 = {}

        t3 = {}
        v16 = function(p1)
            if p1 then
                table.insert(t1, p1)
            end

            return p1
        end
        v17 = function(p2)
            if p2 then
                table.insert(t2, p2)
            end

            return p2
        end
        v18 = function(p3)
            if p3 then
                table.insert(t8, p3)
            end

            return p3
        end
        v19 = function(p4)
            if type(p4) == "function" then
                table.insert(t9, p4)
            end

            return p4
        end
        v20 = function(p5)
            if p5 then
                pcall(function()
                    p5:Remove()
                end)
            end
        end
        v21 = function(p6)
            if p6 then
                pcall(function()
                    p6:Destroy()
                end)
            end
        end
        v22 = function(p7, p8)
            table.insert(t3, tostring(p7) .. ": " .. tostring(p8))
        end

        local VexalRuntimeErrors = {}
        local unpack_ = table.unpack or unpack

        getgenv().VexalRuntimeErrors = VexalRuntimeErrors

        local function v68(p9, p10)
            local v69 = tostring(p9 or "runtime")
            local v70 = VexalRuntimeErrors[v69]

            if not v70 then
                v70 = {
                    count = 0,
                    last = 0,
                    message = ""
                }
                VexalRuntimeErrors[v69] = v70
            end

            v70.count += 1
            v70.last = tick()
            v70.message = tostring(p10 or "")
        end

        v23 = function(p11, p12, ...)
            local t10 = { ... }
            local value = select("#", ...)
            local ok, result = xpcall(function()
                return p12(unpack_(t10, 1, value))
            end, function(p13)
                return tostring(p13)
            end)

            if ok then
                return result
            end

            v68(p11, result)

            return nil
        end
        v24 = function(p14, p15, p16)
            if p14 then
                local function v75(...)
                    v23(p15, p16, ...)
                end

                return v16(p14:Connect(v75))
            end

            return nil
        end
        getgenv().VexalUnifiedUnload = function()
            for i = #t9, 1, -1 do
                pcall(t9[i])
            end

            for _, v in ipairs(t1) do
                pcall(function()
                    if v then
                        if v.Connected then
                            v:Disconnect()
                        end
                    end
                end)
            end

            for _, v in ipairs(t2) do
                v20(v)
            end

            for _, v in ipairs(t8) do
                v21(v)
            end

            table.clear(t1)
            table.clear(t2)
            table.clear(t8)
            table.clear(t9)
            getgenv().VexalUnifiedLoaded = nil
        end
    end

    getgenv().VexalUnifiedLoaded = true
    Players = game:GetService("Players")
    RunService = game:GetService("RunService")
    UserInputService = game:GetService("UserInputService")
    Workspace = game:GetService("Workspace")
    ReplicatedStorage = game:GetService("ReplicatedStorage")
    CollectionService = game:GetService("CollectionService")
    TweenService = game:GetService("TweenService")
    Debris = game:GetService("Debris")
    Lighting = game:GetService("Lighting")

    local GuiService = game:GetService("GuiService")

    LocalPlayer2 = Players.LocalPlayer

    local mouse = LocalPlayer2:GetMouse()

    CurrentCamera = Workspace.CurrentCamera

    local function v85()
        local ok, result = pcall(function()
            return GuiService:GetGuiInset()
        end)
        local vector2 = ok and result or Vector2.zero

        return vector2
    end
    local function v89(p17)
        if typeof(p17) == "Vector2" then
            return p17
        end

        return Vector2.new(p17.X, p17.Y)
    end
    local function v90(p18)
        local v91 = v89(p18)
        local v92 = v85()

        return Vector2.new(v91.X - v92.X, v91.Y - v92.Y)
    end
    local function v93(p19)
        local v94 = v89(p19)
        local v95 = v85()

        return Vector2.new(v94.X + v95.X, v94.Y + v95.Y)
    end

    do
        local function v96(p20)
            return v93(p20)
        end
    end

    local function v97()
        return v90(UserInputService:GetMouseLocation())
    end
    local function v98()
        return v89(UserInputService:GetMouseLocation())
    end

    local obj = setmetatable({}, {
        __mode = "k"
    })
    local n1 = 0

    v36 = function()
        n1 = tick()

        local Character = LocalPlayer2.Character
        local Tool = Character and Character:FindFirstChildOfClass("Tool")

        if Tool then
            local ok, result = pcall(function()
                return Tool.Enabled
            end)

            if ok and result then
                pcall(function()
                    Tool.Enabled = false
                end)
                task.delay(0.18, function()
                    if Tool and Tool.Parent then
                        pcall(function()
                            Tool.Enabled = true
                        end)
                    end
                end)
            end
        end
    end
    v37 = function(p21)
        if p21 then
            obj[p21] = true
        end

        return p21
    end

    local function v105(p22, p23)
        if p22 then
            if p22.Parent and p23 then
                local AbsolutePosition = p22.AbsolutePosition
                local AbsoluteSize = p22.AbsoluteSize

                return p23.X >= AbsolutePosition.X and p23.X <= AbsolutePosition.X + AbsoluteSize.X and
                p23.Y >= AbsolutePosition.Y and p23.Y <= AbsolutePosition.Y + AbsoluteSize.Y
            end
        end

        return false
    end
    local function v108(p24)
        if tick() - n1 <= 0.35 then
            return true
        end

        if not p24 then
            return false
        end

        local v109 = v89(p24)
        local v110 = v93(v109)

        for k in pairs(obj) do
            if not k or not k.Parent then
                obj[k] = nil

                continue
            end

            if v105(k, v109) or v105(k, v110) then
                return true
            end
        end

        return false
    end

    v38 = function(p25)
        if typeof(p25) == "EnumItem" then
            return p25
        end

        local v112 = tostring(p25):gsub("Enum%.KeyCode%.", ""):gsub("Enum%.UserInputType%.", "")
        local ok, result = pcall(function()
            return Enum.KeyCode[v112]
        end)

        if ok and result then
            return result
        end

        local ok2, result2 = pcall(function()
            return Enum.UserInputType[v112]
        end)

        if not ok2 or not result2 then
            return p25
        end

        return result2
    end

    local function v117(p26, p27)
        local v118 = v38(p27)

        return p26.KeyCode == v118 or p26.UserInputType == v118
    end
    local function v119()
        if type(getfenv) == "function" then
            local ok, result = pcall(getfenv)

            if ok then
                if type(result) == "table" then
                    return result
                end
            end
        end

        return _G
    end
    local function v122(p28)
        return type(v119()[p28]) == "function" or type(_G[p28]) == "function" or type(getgenv()[p28]) == "function"
    end
    local function v123(p29)
        local v124 = v119()

        if type(v124[p29]) == "function" then
            return v124[p29]
        end

        if type(_G[p29]) == "function" then
            return _G[p29]
        end

        if type(getgenv()[p29]) == "function" then
            return getgenv()[p29]
        end

        return nil
    end

    t4 = {
        IsMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled,
        HasTouch = UserInputService.TouchEnabled
    }
    t4.HasMouseMove = v122("mousemoverel")
    t4.HasMouseButtons = v122("mouse1press") and v122("mouse1release")
    t4.HasMouseClick = v122("mouse1click") or v122("mouse1press") and v122("mouse1release")
    t4.HasHook = v122("hookmetamethod") and v122("newcclosure") and v122("getnamecallmethod")
    t4.HasNilInstances = v122("getnilinstances")
    t4.HasFiles = v122("writefile") and v122("readfile") and v122("isfile")
    t4.HasRegistry = type(v123("getregistry")) == "function" or
    type(debug) == "table" and type(debug.getregistry) == "function"

    do
        local ok, result = pcall(function()
            if type(Drawing) == "table" then
                return Drawing.new("Circle")
            end

            return nil
        end)

        t4.HasDrawing = ok and result ~= nil

        if result then
            pcall(function()
                result:Remove()
            end)
        end
    end

    t4.HasExecutorHooks = t4.HasHook and t4.HasNilInstances and t4.HasRegistry

    local v127, v128

    do
        local function v129(p30)
            local v130 = tostring(p30 or ""):lower()

            if v130 == "mobile" or v130 == "android" or v130 == "ios" or v130 == "phone" or v130 == "tablet" then
                return "Mobile"
            end

            if v130 == "pc" or v130 == "desktop" or v130 == "windows" or v130 == "computer" then
                return "PC"
            end

            return nil
        end
        local function v131()
            local v132 = v129(getgenv().VexalDeviceMode)

            if v132 then
                return v132, "session"
            end

            if t4.HasFiles then
                local v133 = v123("isfile")
                local v134 = v123("readfile")

                if v133 then
                    if v134 then
                        local ok, result = pcall(v133, "VexalMVSD_DeviceMode.txt")

                        if ok and result then
                            local ok2, result2 = pcall(v134, "VexalMVSD_DeviceMode.txt")
                            local v139 = ok2 and v129(result2)

                            if v139 then
                                getgenv().VexalDeviceMode = v139

                                return v139, "saved"
                            end
                        end
                    end
                end
            end

            return nil, nil
        end
        local function v140(p31)
            local v141 = v129(p31)

            if not v141 then
                return
            end

            getgenv().VexalDeviceMode = v141

            if t4.HasFiles then
                local v142 = v123("writefile")

                if v142 then
                    pcall(v142, "VexalMVSD_DeviceMode.txt", v141)
                end
            end
        end

        v40 = function()
            getgenv().VexalDeviceMode = nil

            if t4.HasFiles then
                local v143 = v123("writefile")

                if v143 then
                    pcall(v143, "VexalMVSD_DeviceMode.txt", "ask")
                end
            end
        end
        v127 = function()
            if t4.HasFiles then
                local v144 = v123("isfile")
                local v145 = v123("readfile")

                if v144 and v145 then
                    local ok, result = pcall(v144, "VexalMVSD_MenuToggleVisible.txt")

                    if ok and result then
                        local ok2, result2 = pcall(v145, "VexalMVSD_MenuToggleVisible.txt")

                        if ok2 then
                            local v150 = tostring(result2 or ""):lower()

                            return v150 == "hidden" or v150 == "hide" or v150 == "false" or v150 == "0"
                        end
                    end
                end
            end

            return getgenv().VexalMVSDMenuToggleHidden == true
        end
        v128 = function(p32)
            local VexalMVSDMenuToggleHidden = p32 == true

            getgenv().VexalMVSDMenuToggleHidden = VexalMVSDMenuToggleHidden

            if t4.HasFiles then
                local v152 = v123("writefile")

                if v152 then
                    pcall(v152, "VexalMVSD_MenuToggleVisible.txt", VexalMVSDMenuToggleHidden and "hidden" or "visible")
                end
            end
        end

        local function v153()
            local v154, v155 = v131()

            if v154 then
                return v154, v155
            end

            local PlayerGui = LocalPlayer2:FindFirstChildOfClass("PlayerGui") or LocalPlayer2:WaitForChild("PlayerGui")
            local v157 = v18(Instance.new("ScreenGui"))

            v157.Name = "VexalDevicePrompt"
            v157.IgnoreGuiInset = true
            v157.ResetOnSpawn = false
            v157.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            v157.DisplayOrder = 1000002
            v157.Parent = PlayerGui

            local Frame = Instance.new("Frame")

            Frame.Size = UDim2.fromScale(1, 1)
            Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Frame.BackgroundTransparency = 0.35
            Frame.BorderSizePixel = 0
            Frame.Parent = v157

            local Frame2 = Instance.new("Frame")

            Frame2.AnchorPoint = Vector2.new(0.5, 0.5)
            Frame2.Position = UDim2.fromScale(0.5, 0.5)
            Frame2.Size = UDim2.fromOffset(330, 190)
            Frame2.BackgroundColor3 = Color3.fromRGB(15, 17, 26)
            Frame2.BorderSizePixel = 0
            Frame2.Parent = Frame

            local UICorner = Instance.new("UICorner")

            UICorner.CornerRadius = UDim.new(0, 16)
            UICorner.Parent = Frame2

            local UIStroke = Instance.new("UIStroke")

            UIStroke.Color = Color3.fromRGB(120, 145, 255)
            UIStroke.Thickness = 1.4
            UIStroke.Transparency = 0.15
            UIStroke.Parent = Frame2

            local TextLabel = Instance.new("TextLabel")

            TextLabel.BackgroundTransparency = 1
            TextLabel.Position = UDim2.fromOffset(18, 16)
            TextLabel.Size = UDim2.new(1, -36, 0, 26)
            TextLabel.Font = Enum.Font.GothamBlack
            TextLabel.Text = "Choose Device"
            TextLabel.TextColor3 = Color3.fromRGB(245, 247, 255)
            TextLabel.TextSize = 20
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            TextLabel.Parent = Frame2

            local TextLabel2 = Instance.new("TextLabel")

            TextLabel2.BackgroundTransparency = 1
            TextLabel2.Position = UDim2.fromOffset(18, 49)
            TextLabel2.Size = UDim2.new(1, -36, 0, 50)
            TextLabel2.Font = Enum.Font.Gotham
            TextLabel2.Text = "This overrides Roblox device spoofing and will be remembered on this executor."
            TextLabel2.TextColor3 = Color3.fromRGB(165, 175, 205)
            TextLabel2.TextSize = 13
            TextLabel2.TextWrapped = true
            TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
            TextLabel2.TextYAlignment = Enum.TextYAlignment.Top
            TextLabel2.Parent = Frame2

            local u164

            local function v165(p33, p34, p35, p36)
                local TextButton = Instance.new("TextButton")

                TextButton.Position = UDim2.fromOffset(p34, 120)
                TextButton.Size = UDim2.fromOffset(138, 42)
                TextButton.BackgroundColor3 = p35
                TextButton.BorderSizePixel = 0
                TextButton.AutoButtonColor = true
                TextButton.Text = p33
                TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton.Font = Enum.Font.GothamBold
                TextButton.TextSize = 14
                TextButton.Parent = Frame2

                local UICorner2 = Instance.new("UICorner")

                UICorner2.CornerRadius = UDim.new(0, 10)
                UICorner2.Parent = TextButton
                TextButton.MouseButton1Click:Connect(function()
                    u164 = p36
                    v140(p36)
                    pcall(function()
                        v157:Destroy()
                    end)
                end)
            end

            v165("Android / Mobile", 18, Color3.fromRGB(88, 101, 242), "Mobile")
            v165("PC", 174, Color3.fromRGB(38, 43, 60), "PC")

            while not u164 do
                task.wait()
            end

            return u164, "prompt"
        end

        local v168, v169 = v153()

        t4.DeviceMode = v168
        t4.DeviceModeSource = v169 or "auto"
        t4.IsMobile = v168 == "Mobile"
    end

    t4.HasTouch = t4.HasTouch or t4.IsMobile

    do
        local function v170(p37, p38, p39)
            local ok, result = pcall(function()
                return game:HttpGet(p38)
            end)

            if not ok or type(result) ~= "string" then
                if p39 then
                    error(p37 .. " failed to download")
                end

                v22(p37, "download failed")

                return nil
            end

            local chunk, v174 = loadstring(result)

            if not chunk then
                if p39 then
                    error(p37 .. " failed to compile: " .. tostring(v174))
                end

                v22(p37, "compile failed")

                return nil
            end

            local ok2, result2 = pcall(chunk)

            if ok2 then
                return result2
            end

            if p39 then
                error(p37 .. " failed to run: " .. tostring(result2))
            end

            v22(p37, "runtime failed")

            return nil
        end

        task.spawn(function()
            if getgenv().VexalMVSDMiscLoaded or getgenv().VexalMVSDMiscLaunchStarted then
                return
            end

            getgenv().VexalMVSDMiscLaunchStarted = true
            -- v170("Misc", "https://raw.githubusercontent.com/TheRealAvrwm/Wasteland/refs/heads/main/DumpZL9a.lua", false)
            getgenv().VexalMVSDMiscLoaded = true
        end)
        Fluent = v170("Fluent", "https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua", true)
        SaveManager = v170("SaveManager",
            "https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua", false)
        InterfaceManager = v170("InterfaceManager",
            "https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua", false)
    end

    do
        local ViewportSize = CurrentCamera and CurrentCamera.ViewportSize or Vector2.new(800, 600)
        local v178 = math.floor(math.clamp(ViewportSize.X * 0.48, 360, 460))
        local v179 = math.floor(math.clamp(ViewportSize.Y * 0.68, 300, 380))

        v44 = Fluent:CreateWindow({
            Title = "Vexal",
            SubTitle = t4.IsMobile and "Mobile | dsc.gg/vexal" or "dsc.gg/vexal",
            TabWidth = t4.IsMobile and 96 or 150,
            Size = t4.IsMobile and UDim2.fromOffset(v178, v179) or UDim2.fromOffset(640, 480),
            Acrylic = false,
            Theme = "Dark",
            MinimizeKey = Enum.KeyCode.LeftControl
        })
    end

    do
        if t4.IsMobile then
            task.defer(function()
                local Root = v44.Root
                local CurrentCamera2 = Workspace.CurrentCamera

                if Root and Root:IsA("GuiObject") and CurrentCamera2 then
                    local ViewportSize = CurrentCamera2.ViewportSize

                    Root.Position = UDim2.fromOffset(math.floor(ViewportSize.X * 0.3), math.floor(ViewportSize.Y * 0.5))
                end
            end)
        end
    end

    v45 = function(p40, p41)
        local v183 = tonumber(p40) or 0.78
        local v184 = tonumber(p41) or 1
        local ViewportSize = CurrentCamera and CurrentCamera.ViewportSize or Vector2.new(800, 600)

        return math.clamp(math.min(ViewportSize.X, ViewportSize.Y) / (t4.IsMobile and 430 or 720), v183, v184)
    end

    do
        local function v186(p42, p43, p44)
            return math.floor((tonumber(p42) or 0) * v45(p43, p44) + 0.5)
        end
        local function v187()
            if not t4.IsMobile then
                return
            end

            local PlayerGui = LocalPlayer2:FindFirstChildOfClass("PlayerGui") or LocalPlayer2:WaitForChild("PlayerGui")

            for _, v in ipairs({
                "VexalMobileMenuToggle",
                "VexalMiscMobileToggle"
            }) do
                local v191 = PlayerGui:FindFirstChild(v)

                if v191 then
                    v191:Destroy()
                end
            end

            local VexalSharedMenuToggle = PlayerGui:FindFirstChild("VexalSharedMenuToggle")

            if VexalSharedMenuToggle then
                local v193 = v127()

                pcall(function()
                    VexalSharedMenuToggle.Enabled = not v193
                end)

                if v193 then
                    pcall(function()
                        local Root = v44.Root
                        local ScreenGui = Root and Root:FindFirstAncestorWhichIsA("ScreenGui")

                        if ScreenGui then
                            ScreenGui.Enabled = false
                        end
                    end)
                end

                return
            end

            local v196 = v18(Instance.new("ScreenGui"))

            v196.Name = "VexalSharedMenuToggle"
            v196.ResetOnSpawn = false
            v196.IgnoreGuiInset = true
            v196.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            v196.DisplayOrder = 1000000
            v196.Parent = PlayerGui

            local v197 = v186(42, 0.78, 1)
            local v198 = v186(16, 0.78, 1)
            local v199 = v186(19, 0.84, 1)
            local v200 = v186(8, 0.78, 1)
            local v201 = v186(7, 0.78, 1)
            local v202 = v18(Instance.new("TextButton"))

            v202.Name = "ToggleButton"
            v202.Size = UDim2.fromOffset(v197, v197)
            v202.Position = UDim2.new(1, -(v197 + v198), 0.5, -(v197 / 2))
            v202.AnchorPoint = Vector2.new(0, 0)
            v202.BackgroundColor3 = Color3.fromRGB(16, 18, 26)
            v202.BorderSizePixel = 0
            v202.AutoButtonColor = false
            v202.Text = ""
            v202.TextColor3 = Color3.fromRGB(245, 248, 255)
            v202.TextSize = v186(22, 0.84, 1)
            v202.Font = Enum.Font.GothamBlack
            v202.ZIndex = 50
            v202.ClipsDescendants = false
            v202.Parent = v196

            local UICorner = Instance.new("UICorner")

            UICorner.CornerRadius = UDim.new(1, 0)
            UICorner.Parent = v202

            local UIStroke = Instance.new("UIStroke")

            UIStroke.Color = Color3.fromRGB(150, 170, 255)
            UIStroke.Thickness = 1.5
            UIStroke.Transparency = 0.15
            UIStroke.Parent = v202

            local UIGradient = Instance.new("UIGradient")

            UIGradient.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.fromRGB(44, 50, 78)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(14, 16, 24))
            })
            UIGradient.Rotation = 135
            UIGradient.Parent = v202

            local Frame = Instance.new("Frame")

            Frame.Name = "GlassHighlight"
            Frame.Size = UDim2.new(1, -v186(12, 0.78, 1), 0, v186(18, 0.78, 1))
            Frame.Position = UDim2.fromOffset(v186(6, 0.78, 1), v186(5, 0.78, 1))
            Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Frame.BackgroundTransparency = 1
            Frame.BorderSizePixel = 0
            Frame.ZIndex = 51
            Frame.Parent = v202

            local UICorner2 = Instance.new("UICorner")

            UICorner2.CornerRadius = UDim.new(0, 11)
            UICorner2.Parent = Frame

            local TextLabel = Instance.new("TextLabel")

            TextLabel.Name = "Glyph"
            TextLabel.Size = UDim2.fromScale(1, 1)
            TextLabel.BackgroundTransparency = 1
            TextLabel.Text = "Z"
            TextLabel.TextColor3 = Color3.fromRGB(250, 252, 255)
            TextLabel.TextSize = v199
            TextLabel.Font = Enum.Font.GothamBlack
            TextLabel.ZIndex = 52
            TextLabel.Parent = v202

            local UIScale = Instance.new("UIScale")

            UIScale.Scale = 1
            UIScale.Parent = v202

            local v210 = v18(Instance.new("Frame"))

            v210.Name = "Glow"
            v210.Size = UDim2.new(1, v200 * 2, 1, v200 * 2)
            v210.Position = UDim2.fromOffset(-v200, -v200)
            v210.BackgroundColor3 = Color3.fromRGB(75, 115, 255)
            v210.BackgroundTransparency = 1
            v210.BorderSizePixel = 0
            v210.ZIndex = 49
            v210.Parent = v202

            local UICorner3 = Instance.new("UICorner")

            UICorner3.CornerRadius = UDim.new(1, 0)
            UICorner3.Parent = v210

            local Frame2 = Instance.new("Frame")

            Frame2.Name = "StatusDot"
            Frame2.Size = UDim2.fromOffset(v201, v201)
            Frame2.Position = UDim2.new(1, -v186(10, 0.78, 1), 0, v186(7, 0.78, 1))
            Frame2.BackgroundColor3 = Color3.fromRGB(80, 255, 165)
            Frame2.BorderSizePixel = 0
            Frame2.ZIndex = 53
            Frame2.Parent = v202

            local UICorner4 = Instance.new("UICorner")

            UICorner4.CornerRadius = UDim.new(1, 0)
            UICorner4.Parent = Frame2

            local u214
            local u215 = true
            local u216 = v127()

            v196.Enabled = not u216

            local t11 = {
                Vexal = true,
                ["Vexals Rage Cheats"] = true
            }

            local function v218(p45)
                local ok, result = pcall(game.GetService, game, p45)

                if ok then
                    return result
                end

                return nil
            end
            local function v221(p46)
                for _, descendant in ipairs(p46:GetDescendants()) do
                    if not descendant:IsA("TextLabel") then
                        if not (descendant:IsA("TextButton") or descendant:IsA("TextBox")) then
                            continue
                        end
                    end

                    if t11[tostring(descendant.Text or "")] then
                        return true
                    end
                end

                return false
            end
            local function v224()
                local t12 = {}
                local t13 = {}
                local t14 = { PlayerGui }
                local CoreGui = v218("CoreGui")

                if CoreGui then
                    table.insert(t14, CoreGui)
                end

                local v229 = v123("gethui")

                if v229 then
                    local ok, result = pcall(v229)

                    if ok and result then
                        table.insert(t14, result)
                    end
                end

                for _, v in ipairs(t14) do
                    for _, child in ipairs(v:GetChildren()) do
                        if child:IsA("ScreenGui") and child ~= v196 and child.Name ~= "VexalSharedMenuToggle" and not t13[child] then
                            if v221(child) then
                                t13[child] = true
                                u214 = child
                                table.insert(t12, child)
                            end
                        end
                    end
                end

                return t12
            end
            local function v236(p47)
                u215 = p47
                Frame2.BackgroundColor3 = p47 and Color3.fromRGB(80, 255, 165) or Color3.fromRGB(255, 190, 85)
                UIStroke.Color = p47 and Color3.fromRGB(135, 165, 255) or Color3.fromRGB(255, 205, 120)
                TextLabel.Text = p47 and "Z" or "+"
            end
            local function v237(p48)
                local v238 = v224()

                if #v238 > 0 then
                    for _, v in ipairs(v238) do
                        pcall(function()
                            v.Enabled = p48
                        end)
                    end

                    v236(p48)
                else
                    v236(true)
                    Fluent:Notify({
                        Title = "Vexal",
                        Content = "Menu UI not found yet",
                        Duration = 2
                    })
                end
            end
            local function v241(p49)
                local v242 = v224()

                for _, v in ipairs(v242) do
                    pcall(function()
                        v.Enabled = p49
                    end)
                end

                v236(p49)

                return #v242 > 0
            end
            local function v245()
                local v246 = v224()

                if #v246 == 0 then
                    return
                end

                local u247 = false

                for _, v in ipairs(v246) do
                    pcall(function()
                        if v.Enabled then
                            u247 = true
                        end
                    end)
                end

                v236(u247)
            end

            local u250 = false
            local u251 = false
            local u252
            local u253

            local function v254(p50)
                local guiInset = GuiService:GetGuiInset()

                return Vector2.new(p50.Position.X + guiInset.X, p50.Position.Y + guiInset.Y)
            end
            local function v256(p51)
                local ViewportSize = CurrentCamera.ViewportSize
                local AbsoluteSize = v202.AbsoluteSize
                local v259 = math.clamp(p51.X - AbsoluteSize.X / 2, 8, ViewportSize.X - AbsoluteSize.X - 8)
                local v260 = math.clamp(p51.Y - AbsoluteSize.Y / 2, 8, ViewportSize.Y - AbsoluteSize.Y - 8)

                v202.Position = UDim2.fromOffset(v259, v260)
            end

            v202.InputBegan:Connect(function(input)
                if input.UserInputType ~= Enum.UserInputType.Touch then
                    if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
                        return
                    end
                end

                u250 = true
                u251 = false
                u253 = input
                u252 = v254(input)
                TweenService:Create(UIScale, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Scale = 0.92
                }):Play()

                local connection

                connection = input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        u250 = false
                        u252 = nil
                        u253 = nil
                        TweenService:Create(UIScale, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                            {
                                Scale = 1
                            }):Play()

                        if connection then
                            connection:Disconnect()
                        end
                    end
                end)
                v16(connection)
            end)
            v16(UserInputService.InputChanged:Connect(function(input)
                if not u250 or not u252 then
                    return
                end

                if u253 and u253.UserInputType == Enum.UserInputType.Touch and input ~= u253 then
                    return
                end

                if u253 and u253.UserInputType ~= Enum.UserInputType.Touch and input.UserInputType ~= Enum.UserInputType.MouseMovement then
                    return
                end

                local v262 = v254(input)

                if (v262 - u252).Magnitude > 14 then
                    u251 = true
                end

                if u251 then
                    v256(v262)

                    return
                end
            end))
            v202.MouseButton1Click:Connect(function()
                if u251 or u216 then
                    return
                end

                v237(not u215)
            end)

            local function v263(message)
                local match = tostring(message or ""):lower():match("^%s*(.-)%s*$")

                if match == "/e hide" then
                    u216 = true
                    v128(true)
                    v241(false)
                    v196.Enabled = false
                elseif match == "/e unhide" then
                    u216 = false
                    v128(false)
                    v196.Enabled = true
                    task.defer(function()
                        v241(true)
                    end)
                end
            end

            v16(LocalPlayer2.Chatted:Connect(v263))
            pcall(function()
                v16(game:GetService("TextChatService").MessageReceived:Connect(function(p52)
                    local TextSource = p52.TextSource

                    if TextSource then
                        if TextSource.UserId == LocalPlayer2.UserId then
                            v263(p52.Text)
                        end
                    end
                end))
            end)
            task.defer(function()
                if u216 then
                    v241(false)
                    v196.Enabled = false
                else
                    v245()
                end
            end)
        end

        v187()
    end

    t5 = {}

    if not t4.IsMobile and t4.HasMouseMove then
        t5.Aim = v44:AddTab({
            Title = "Aim",
            Icon = "crosshair"
        })
    end

    t5.Shots = v44:AddTab({
        Title = "Shots",
        Icon = "target"
    })
    t5.Trigger = v44:AddTab({
        Title = "Trigger",
        Icon = "crosshair"
    })
    t5.Hitbox = v44:AddTab({
        Title = "Hitbox",
        Icon = "box"
    })
    t5.Visuals = v44:AddTab({
        Title = "Visuals",
        Icon = "eye"
    })
    t5.Abilities = v44:AddTab({
        Title = "Abilities",
        Icon = "gem"
    })
    t5.Player = v44:AddTab({
        Title = "Player",
        Icon = "user"
    })
    t5.Settings = v44:AddTab({
        Title = "Settings",
        Icon = "settings"
    })
    t5.Main = t5.Aim or t5.Shots
    Options = Fluent.Options

    local function v266(p53)
        local v267 = p53 or {}

        for _, v in ipairs(v267) do
            if t4[v] then
                continue
            end

            return false, v
        end

        return true
    end

    v48 = function(p54, p55, p56, p57)
        if p56 == "Mobile" and not t4.IsMobile then
            v22(p54, "mobile only")

            return
        end

        if p56 == "PC" and t4.IsMobile then
            v22(p54, "PC only")

            return
        end

        local v270, v271 = v266(p55)

        if not v270 then
            v22(p54, "missing " .. tostring(v271))

            return
        end

        local ok, result = pcall(p57)

        if not ok then
            v22(p54, result)
        end
    end
    t6 = {
        AutoShootScanRate = t4.IsMobile and 0.041666666666666664 or 0.013333333333333334,
        TriggerbotRate = 0.022222222222222223,
        HBEInterval = t4.IsMobile and 0.65 or 0.45,
        ESPUpdateRate = t4.IsMobile and 0.022222222222222223 or 0.016666666666666666,
        ESPHeavyRate = t4.IsMobile and 0.041666666666666664 or 0.033333333333333333,
        ESPMaxTargets = math.huge,
        ESPMaxDistance = math.huge,
        AdornmentRefreshRate = 0.9,
        HiddenRefreshRate = 1.5
    }

    do
        local HiddenMaps = ReplicatedStorage:FindFirstChild("HiddenMaps")
        local HiddenCharacters = ReplicatedStorage:FindFirstChild("HiddenCharacters")
        local n2 = 0

        local function v277(p58)
            local now = tick()

            if p58 or t6.HiddenRefreshRate <= now - n2 then
                HiddenMaps = ReplicatedStorage:FindFirstChild("HiddenMaps")
                HiddenCharacters = ReplicatedStorage:FindFirstChild("HiddenCharacters")
                n2 = now
            end
        end

        v16(ReplicatedStorage.ChildAdded:Connect(function(child)
            if child.Name == "HiddenMaps" then
                HiddenMaps = child
            end

            if child.Name == "HiddenCharacters" then
                HiddenCharacters = child
            end
        end))
        v16(ReplicatedStorage.ChildRemoved:Connect(function(child)
            if child == HiddenMaps then
                HiddenMaps = nil
            end

            if child == HiddenCharacters then
                HiddenCharacters = nil
            end
        end))
        t7 = {}

        local function v279()
            table.clear(t7)

            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer2 then
                    table.insert(t7, player)
                end
            end
        end

        v279()
        v16(Players.PlayerAdded:Connect(function(player)
            if player ~= LocalPlayer2 then
                table.insert(t7, player)
            end
        end))
        v16(Players.PlayerRemoving:Connect(function(player)
            for i = #t7, 1, -1 do
                if t7[i] == player then
                    table.remove(t7, i)

                    break
                end
            end
        end))

        local function v283()
            v277(false)

            return {
                HiddenMaps,
                HiddenCharacters
            }
        end

        v51 = function()
            for _, v in ipairs(v283()) do
                if v then
                    return true
                end
            end

            return false
        end
        v52 = function(p59)
            for _, v in ipairs(v283()) do
                if not v then
                    continue
                end

                if p59 and v:IsAncestorOf(p59) then
                    return true
                end
            end

            return false
        end
    end

    do
        v53 = function(p60)
            if p60 then
                return p60:FindFirstChildOfClass("Humanoid")
            end

            return nil
        end
    end

    do
        v54 = function(p61)
            return p61 and p61.Team and LocalPlayer2.Team and p61.Team == LocalPlayer2.Team
        end
    end

    do
        v55 = function(p62)
            return p62 and p62.Team and LocalPlayer2.Team and p62.Team ~= LocalPlayer2.Team
        end
    end

    v56 = function(p63)
        return p63 and p63.Team ~= nil
    end
    v57 = function(p64)
        return v54(p64) and Color3.new(0.1, 0.4, 0.8) or Color3.new(0.8, 0.1, 0.1)
    end

    local function v288(p65)
        local Character = p65 and p65.Character and v53(p65.Character)

        return Character and Character.Health > 0
    end

    do
        local function v290(p66)
            if not p66 then
                return nil
            end

            local ok, result = pcall(function()
                return p66:GetAttribute("Match")
            end)

            if not ok then
                return nil
            end

            return result
        end
        local function v293(p67)
            return p67 ~= nil and p67 ~= false and p67 ~= 0 and p67 ~= ""
        end

        v58 = function()
            return v293(v290(LocalPlayer2))
        end

        local function v294(p68)
            if not p68 or p68 == LocalPlayer2 then
                return false
            end

            local v295 = v290(LocalPlayer2)

            if not v293(v295) then
                return false
            end

            local v296 = v290(p68)

            if v296 ~= nil and not v293(v296) then
                return false
            end

            if v296 == nil then
                return true
            end

            if type(v295) == "boolean" or type(v296) == "boolean" then
                return true
            end

            return tostring(v295) == tostring(v296)
        end
        local function v297(p69)
            return p69 and p69.Parent and p69:IsDescendantOf(Workspace)
        end

        v59 = function(p70, p71, p72, p73, p74, p75)
            if not p70 or not (p70 ~= LocalPlayer2 and p70.Parent) then
                return false
            end

            if not v294(p70) then
                return false
            end

            if v297(p71) then
                if not v52(p71) then
                    if not p72 or not p73 or not p73.Parent then
                        return false
                    end

                    if p75 ~= false and p72.Health <= 0 then
                        return false
                    end

                    if p74 and v54(p70) then
                        return false
                    end

                    return true
                end
            end

            return false
        end
    end

    local function v298(p76)
        local Character = p76 and p76.Character

        if not Character then
            return false
        end

        for _, descendant in ipairs(Character:GetDescendants()) do
            if descendant:IsA("BasePart") and descendant.Material == Enum.Material.ForceField then
                return true
            end
        end

        return false
    end

    local v302

    do
        local Remotes = ReplicatedStorage:FindFirstChild("Remotes")
        local ShootGun = Remotes and Remotes:FindFirstChild("ShootGun")

        if ShootGun and ShootGun:IsA("RemoteEvent") then
            v302 = ShootGun
        end
    end

    local Modules = ReplicatedStorage:FindFirstChild("Modules")
    local BulletRenderer = Modules and Modules:FindFirstChild("BulletRenderer")
    local DefaultBullet = BulletRenderer and BulletRenderer:FindFirstChild("DefaultBullet")
    local BulletBeam = DefaultBullet and DefaultBullet:FindFirstChild("BulletBeam") or nil
    local n3 = 0
    local u310 = false
    local n4 = 0
    local u312, obj2, v314, v315, v316, v317, v318

    do
        local n5 = 0
        local n6 = 0

        u312 = nil
        obj2 = setmetatable({}, {
            __mode = "k"
        })
        v314 = function()
            return tick() >= n5
        end
        v315 = function(p77)
            local now = tick()

            if now < n5 then
                return nil
            end

            n6 += 1
            n5 = now + math.max(tonumber(p77) or 0.15, 0.15)

            return n6
        end
        v316 = function(p78, p79)
            if p78 and p78 ~= n6 then
                return
            end

            n5 = math.max(n5, tick() + math.max(tonumber(p79) or 0.15, 0.15))
        end
        v317 = function(p80, p81)
            if p80 and p80 ~= n6 then
                return
            end

            n5 = math.min(n5, tick() + math.max(tonumber(p81) or 0, 0))
        end
        v318 = function(p82)
            return p82 ~= nil and p82 == n6
        end
    end

    local function v322()
        return tick() - n3 >= 0.3
    end

    do
        v60 = function()
            local Character = LocalPlayer2.Character

            if Character then
                return Character:FindFirstChildOfClass("Tool")
            end

            return nil
        end
    end

    local function v324(p83)
        if not p83 then
            return nil
        end

        local v325 = obj2[p83]

        if v325 ~= nil then
            return v325 ~= false and v325 or nil
        end

        local Fire = p83:FindFirstChild("Fire", true)

        if Fire and Fire:IsA("Sound") then
            obj2[p83] = Fire

            return Fire
        end

        for _, descendant in ipairs(p83:GetDescendants()) do
            if not descendant:IsA("Sound") then
                continue
            end

            if descendant.Name:lower() == "fire" then
                obj2[p83] = descendant

                return descendant
            end
        end

        obj2[p83] = false

        return nil
    end
    local function v329()
        return v324(v60())
    end

    v61 = function(p84)
        return v324(p84) ~= nil
    end

    local function v330(p85)
        local v331 = tonumber(p85) or 2.5
        local v332 = v60()

        if v332 and v61(v332) then
            local v333 = tonumber(v332:GetAttribute("Cooldown"))

            if v333 and v333 > 0 then
                return math.max(0.15, math.min(v331, v333))
            end
        end

        return math.max(0.15, v331)
    end
    local function v334()
        return v329() ~= nil
    end
    local function v335()
        local now = tick()

        if now - n4 > 0.2 then
            u310 = v334()
            n4 = now
        end

        return u310
    end
    local function v337()
        return v60() ~= nil
    end
    local function v338()
        local Character = LocalPlayer2.Character

        if not Character then
            return nil, nil
        end

        local v340 = v60()

        if v340 then
            local RightHandle = v340:FindFirstChild("RightHandle")
            local Muzzle = RightHandle and RightHandle:FindFirstChild("Muzzle")

            if Muzzle and Muzzle:IsA("Attachment") then
                return Muzzle.WorldPosition, Muzzle
            end

            local Muzzle2 = v340:FindFirstChild("Muzzle", true)

            if Muzzle2 then
                if Muzzle2:IsA("Attachment") then
                    return Muzzle2.WorldPosition, Muzzle2
                end

                if Muzzle2:IsA("BasePart") then
                    return Muzzle2.Position, Muzzle2
                end
            end
        end

        local Torso = Character:FindFirstChild("Torso") or Character:FindFirstChild("UpperTorso")

        if Torso then
            return Torso.Position, nil
        end

        local Head = Character:FindFirstChild("Head")

        if Head then
            return Head.Position, nil
        end

        return nil, nil
    end
    local function v346()
        local Character = LocalPlayer2.Character

        if not Character then
            return nil
        end

        local Head = Character:FindFirstChild("Head")

        if Head then
            return Head.Position
        end

        local UpperTorso = Character:FindFirstChild("UpperTorso") or Character:FindFirstChild("Torso")

        if UpperTorso then
            return UpperTorso.Position
        end

        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if HumanoidRootPart then
            return HumanoidRootPart.Position
        end

        return (v338())
    end
    local function v351()
        local Character = LocalPlayer2.Character

        if not Character then
            return nil
        end

        local Torso = Character:FindFirstChild("Torso") or Character:FindFirstChild("UpperTorso")

        return Torso and Torso.Position or nil
    end

    local raycastParams = RaycastParams.new()

    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

    local raycastParams2 = RaycastParams.new()

    raycastParams2.FilterType = Enum.RaycastFilterType.Blacklist

    local function v356(p86, p87)
        local v357 = v89(p86)
        local v358 = p87 or 5000
        local v359 = CurrentCamera:ViewportPointToRay(v357.X, v357.Y)

        raycastParams2.FilterDescendantsInstances = { LocalPlayer2.Character }

        local hit = Workspace:Raycast(v359.Origin, v359.Direction * v358, raycastParams2)

        return hit and hit.Position or v359.Origin + v359.Direction * v358
    end

    local v361, v362, v363, v364, v365

    do
        local function v366(p88, p89)
            local v367 = v89(p88)
            local v368 = p89 or 5000
            local v369 = CurrentCamera:ScreenPointToRay(v367.X, v367.Y)

            raycastParams2.FilterDescendantsInstances = { LocalPlayer2.Character }

            local hit = Workspace:Raycast(v369.Origin, v369.Direction * v368, raycastParams2)

            return hit and hit.Position or v369.Origin + v369.Direction * v368
        end

        v361 = function(p90)
            if not p90 or not t4.IsMobile then
                return false
            end

            local v371 = v89(p90)
            local ViewportSize = CurrentCamera.ViewportSize

            return v371.X >= ViewportSize.X * 0.82 and v371.Y >= ViewportSize.Y * 0.3 and v371.Y <= ViewportSize.Y * 0.48
        end

        local function v373(p91)
            if p91 then
                if t4.IsMobile then
                    local v374 = v89(p91)
                    local ViewportSize = CurrentCamera.ViewportSize

                    return v374.X >= ViewportSize.X * 0.78 and v374.Y > ViewportSize.Y * 0.62
                end
            end

            return false
        end

        v362 = function(p92)
            if p92 then
                if t4.IsMobile then
                    if v373(p92) then
                        return true
                    end

                    local v376 = v89(p92)
                    local ViewportSize = CurrentCamera.ViewportSize

                    if ViewportSize.X * 0.68 <= v376.X and ViewportSize.Y * 0.46 <= v376.Y then
                        return true
                    end

                    if ViewportSize.Y * 0.66 <= v376.Y then
                        return true
                    end

                    if v376.X <= ViewportSize.X * 0.42 and ViewportSize.Y * 0.48 <= v376.Y then
                        return true
                    end

                    if ViewportSize.Y * 0.58 <= v376.Y and ViewportSize.X * 0.35 <= v376.X then
                        return true
                    end

                    return false
                end
            end

            return false
        end

        local function v378()
            local ok, result = pcall(function()
                return mouse and mouse.Hit
            end)

            if ok then
                if typeof(result) == "CFrame" then
                    return result.Position
                end
            end

            return nil
        end

        v363 = function(p93)
            local v381 = v378()

            if v381 then
                return v381
            end

            return v366(v98(), p93 or 5000)
        end
        v364 = function(p94)
            if not p94 then
                return nil
            end

            local v382 = CurrentCamera:WorldToViewportPoint(p94)

            return Vector2.new(v382.X, v382.Y)
        end
        v365 = function(p95, p96)
            local v383 = p96 or 5000
            local v384 = v361(p95)

            if p95 then
                if not v384 then
                    local v385 = v89(p95)

                    return v366(v385, v383), v385
                end

                local vector2 = Vector2.new(CurrentCamera.ViewportSize.X / 2, CurrentCamera.ViewportSize.Y / 2)

                return v356(vector2, v383), vector2
            end

            local v387 = v378()

            if v387 then
                return v387, v364(v387)
            end

            local vector2 = Vector2.new(CurrentCamera.ViewportSize.X / 2, CurrentCamera.ViewportSize.Y / 2)

            return v356(vector2, v383), vector2
        end
    end

    local function v389(p97, p98)
        if p97 and p98 then
            if p98:IsA("BasePart") then
                raycastParams.FilterDescendantsInstances = { LocalPlayer2.Character }

                local hit = Workspace:Raycast(p97, p98.Position - p97, raycastParams)

                return not hit or hit.Instance and hit.Instance:IsDescendantOf(p98.Parent) or false
            end
        end

        return false
    end
    local function v391(p99)
        if not p99 then
            return false
        end

        local _, v393 = CurrentCamera:WorldToViewportPoint(p99.Position)

        return v393
    end

    local v394, v395, v396, v397, v398, v399, v400, v401, v402, v403
    local v404, v405, v406

    do
        local t15 = {
            Vector3.new(0, 0, 0),
            Vector3.new(-0.5, -0.5, -0.5),
            Vector3.new(-0.5, -0.5, 0.5),
            Vector3.new(-0.5, 0.5, -0.5),
            Vector3.new(-0.5, 0.5, 0.5),
            Vector3.new(0.5, -0.5, -0.5),
            Vector3.new(0.5, -0.5, 0.5),
            Vector3.new(0.5, 0.5, -0.5),
            Vector3.new(0.5, 0.5, 0.5)
        }
        local t16 = {
            Vector3.new(0, 0, 0),
            Vector3.new(0, 0.5, 0),
            Vector3.new(0, -0.5, 0),
            Vector3.new(0.5, 0, 0),
            Vector3.new(-0.5, 0, 0),
            Vector3.new(0, 0, 0.5),
            Vector3.new(0, 0, -0.5),
            Vector3.new(0.35, 0.35, 0),
            Vector3.new(-0.35, 0.35, 0),
            Vector3.new(0.35, -0.35, 0),
            Vector3.new(-0.35, -0.35, 0)
        }

        local function v409(p100, p101)
            local ok, result, result2 = pcall(function()
                if p101 then
                    return CurrentCamera:WorldToScreenPoint(p100)
                end

                return CurrentCamera:WorldToViewportPoint(p100)
            end)

            if ok and result and result2 then
                return Vector2.new(result.X, result.Y), true
            end

            return nil, false
        end
        local function v413(p102, p103, p104)
            if p102 then
                if p102:IsA("BasePart") then
                    local v414 = v89(p103)
                    local v415, v416 = v409(p102.Position, p104)

                    if not v416 then
                        return nil, math.huge
                    end

                    local Magnitude = (v415 - v414).Magnitude
                    local n7 = 0
                    local Size = p102.Size

                    for _, v in ipairs(t15) do
                        local v422, v423 = v409(
                        p102.CFrame:PointToWorldSpace(Vector3.new(Size.X * v.X, Size.Y * v.Y, Size.Z * v.Z)), p104)

                        if v423 then
                            local Magnitude2 = (v422 - v415).Magnitude

                            if n7 < Magnitude2 then
                                n7 = Magnitude2
                            end
                        end
                    end

                    return math.max(Magnitude - n7, 0), Magnitude
                end
            end

            return nil, math.huge
        end
        local function v425(p105, p106)
            return v413(p105, p106, false)
        end
        local function v426(p107, p108)
            return v413(p107, p108, true)
        end

        v394 = function(p109, p110, p111)
            if not p109 or not p109:IsA("BasePart") then
                return nil
            end

            if not p110 then
                return p109.Position
            end

            local v427 = v89(p110)
            local Position = p109.Position
            local huge = math.huge
            local Size = p109.Size

            for _, v in ipairs(t16) do
                local v433 = p109.CFrame:PointToWorldSpace(Vector3.new(Size.X * v.X, Size.Y * v.Y, Size.Z * v.Z))
                local v434, v435 = v409(v433, p111)

                if v435 then
                    local Magnitude = (v434 - v427).Magnitude

                    if Magnitude < huge then
                        huge = Magnitude
                        Position = v433
                    end
                end
            end

            return Position
        end

        local function v437(p112, p113, p114)
            local v438
            local huge = math.huge
            local huge2 = math.huge

            if not p112 or not p112.Character then
                return nil, huge
            end

            local v441 = v89(p113)

            for i = 1, 2 do
                local v443 = i == 2

                for _, child in ipairs(p112.Character:GetChildren()) do
                    if child:IsA("BasePart") and (v443 or child.Name ~= "HumanoidRootPart") then
                        local v446, v447 = v413(child, v441, p114)

                        if v446 and (v446 < huge or v446 == huge and v447 < huge2) then
                            v438 = child
                            huge = v446
                            huge2 = v447
                        end
                    end
                end

                if v438 then
                    break
                end
            end

            return v438, huge
        end

        v395 = function(p115, p116)
            return v437(p115, p116, false)
        end
        v396 = function(p117, p118)
            return v437(p117, p118, true)
        end
        v397 = function(p119, p120, p121)
            local v448 = v425(p119, p120)
            local v449 = v448 ~= nil

            if v449 then
                v449 = v448 <= (tonumber(p121) or 0)
            end

            return v449
        end
        v398 = function(p122)
            if not p122 then
                return false
            end

            local _, v451 = CurrentCamera:WorldToViewportPoint(p122)

            return v451
        end
        v399 = function(p123, p124, p125)
            if not p123 or not p124 or not p125 then
                return false
            end

            raycastParams.FilterDescendantsInstances = { LocalPlayer2.Character }

            local hit = Workspace:Raycast(p123, p125 - p123, raycastParams)

            return not hit or hit.Instance and hit.Instance:IsDescendantOf(p124) or false
        end
        v400 = function(p126)
            return p126 ~= LocalPlayer2 and p126.Character and v288(p126) and not v54(p126) and not v52(p126.Character) and
            not v298(p126)
        end
        v401 = function(p127)
            if not p127 then
                return nil
            end

            for _, v in ipairs(t7) do
                local Character = v.Character

                if Character and p127:IsDescendantOf(Character) then
                    return v
                end
            end

            return nil
        end
        v402 = function(p128, p129, p130)
            local Character = p128 and p128.Character

            if not Character then
                return nil
            end

            if p129 then
                if p129:IsA("BasePart") and p129.Parent == Character then
                    return p129
                end
            end

            return v395(p128, p130)
        end

        local function v457(p131)
            local v458 = v89(p131)
            local v459 = v346()

            if not v459 then
                return nil, nil
            end

            local v460 = CurrentCamera:ScreenPointToRay(v458.X, v458.Y)

            raycastParams2.FilterDescendantsInstances = { LocalPlayer2.Character }

            local hit = Workspace:Raycast(v460.Origin, v460.Direction * 5000, raycastParams2)
            local Instance_ = hit and hit.Instance

            if not Instance_ or not Instance_:IsA("BasePart") then
                return nil, nil
            end

            local v463 = v401(Instance_)

            if not v463 or not v400(v463) then
                return nil, nil
            end

            local v464 = v402(v463, Instance_, v458)

            if v464 then
                if v389(v459, v464) and v391(v464) then
                    return v463, v464
                end
            end

            return nil, nil
        end
        local function v465(p132)
            local v466 = v89(p132)
            local v467 = v346()

            if not v467 then
                return nil, nil
            end

            local v468 = CurrentCamera:ScreenPointToRay(v466.X, v466.Y)

            raycastParams2.FilterDescendantsInstances = { LocalPlayer2.Character }

            local hit = Workspace:Raycast(v468.Origin, v468.Direction * 5000, raycastParams2)
            local Instance_ = hit and hit.Instance

            if not Instance_ or not Instance_:IsA("BasePart") then
                return nil, nil
            end

            local v471 = v401(Instance_)

            if not v471 or not v400(v471) then
                return nil, nil
            end

            local Character = v471.Character
            local v473

            if Character and Instance_.Parent == Character then
                v473 = Instance_
            else
                v473 = v396(v471, v466)
            end

            if v473 and v389(v467, v473) and v391(v473) then
                return v471, v473
            end

            return nil, nil
        end

        v403 = function(p133, p134)
            local v474, v475 = v457(p133)

            if v474 then
                return v474, v475
            end

            local v476
            local v477
            local huge = math.huge
            local v479 = v346()

            if not v479 then
                return nil
            end

            for _, v in ipairs(t7) do
                if v400(v) then
                    local v482, v483 = v395(v, p133)

                    if v482 and v483 < huge and (not p134 or v483 <= p134) and v389(v479, v482) then
                        v476 = v
                        v477 = v482
                        huge = v483
                    end
                end
            end

            return v476, v477
        end
        v404 = function(p135, p136)
            local v484 = v89(p135)
            local v485 = tonumber(p136) or 0
            local v486
            local v487
            local huge = math.huge
            local huge2 = math.huge
            local v490 = v346()

            if not v490 then
                return nil, nil
            end

            for _, v in ipairs(t7) do
                if v400(v) then
                    for _, child in ipairs(v.Character:GetChildren()) do
                        if child:IsA("BasePart") then
                            local v495, v496 = v425(child, v484)

                            if v495 and v495 <= v485 and v389(v490, child) and (v495 < huge or v495 == huge and v496 < huge2) then
                                v486 = v
                                v487 = child
                                huge = v495
                                huge2 = v496
                            end
                        end
                    end
                end
            end

            return v486, v487
        end

        local t17 = {
            "LeftFoot",
            "RightFoot",
            "LeftLowerLeg",
            "RightLowerLeg",
            "Left Leg",
            "Right Leg",
            "LowerTorso",
            "Torso",
            "HumanoidRootPart"
        }

        local function v498(p137)
            local t18 = {}
            local t19 = {}

            for _, v in ipairs(t17) do
                local v503 = p137 and p137:FindFirstChild(v)

                if v503 and v503:IsA("BasePart") and not t19[v503] then
                    t19[v503] = true
                    table.insert(t18, v503)
                end
            end

            local HumanoidRootPart = p137 and p137:FindFirstChild("HumanoidRootPart")
            local Y = HumanoidRootPart and HumanoidRootPart.Position.Y or nil

            if p137 then
                for _, child in ipairs(p137:GetChildren()) do
                    if child:IsA("BasePart") and not t19[child] and (not Y or child.Position.Y <= Y + 0.5) then
                        t19[child] = true
                        table.insert(t18, child)
                    end
                end
            end

            return t18
        end
        local function v508(p138)
            local Size = p138.Size
            local v510 = -Size.Y * 0.48
            local v511 = Size.X * 0.34
            local v512 = Size.Z * 0.34
            local t20 = {}

            for _, v in ipairs({
                Vector3.new(0, v510, 0),
                Vector3.new(v511, v510, 0),
                Vector3.new(-v511, v510, 0),
                Vector3.new(0, v510, v512),
                Vector3.new(0, v510, -v512),
                Vector3.new(0, -Size.Y * 0.28, 0)
            }) do
                table.insert(t20, p138.CFrame:PointToWorldSpace(v))
            end

            return t20
        end

        v405 = function(p139, p140)
            local v516 = v89(p139)
            local huge = tonumber(p140) or math.huge
            local v518 = v346()

            if not v518 then
                return nil, nil, nil, v516
            end

            local v519
            local v520
            local v521
            local v522
            local huge2 = math.huge

            for _, v in ipairs(t7) do
                if v400(v) then
                    local Character = v.Character
                    local v527 = v498(Character)

                    for i, v2 in ipairs(v527) do
                        for i2, v3 in ipairs(v508(v2)) do
                            local v532, v533 = CurrentCamera:WorldToViewportPoint(v3)

                            if v533 and v399(v518, Character, v3) then
                                local vector2 = Vector2.new(v532.X, v532.Y)
                                local Magnitude = (vector2 - v516).Magnitude

                                if Magnitude <= huge then
                                    local v536 = Magnitude + i * 6 + i2 * 0.35

                                    if v536 < huge2 then
                                        v519 = v
                                        v520 = v2
                                        v521 = v3
                                        v522 = vector2
                                        huge2 = v536
                                    end
                                end
                            end
                        end
                    end
                end
            end

            return v519, v520, v521, v522 or v516
        end
        v406 = function(p141)
            local v537 = v98()
            local v538 = v90(v537)
            local v539, v540 = v465(v537)

            if v539 then
                return v539, v540, v538, v537
            end

            local v541
            local v542
            local huge = math.huge
            local v544 = v346()

            if not v544 then
                return nil, nil, v538, v537
            end

            for _, v in ipairs(t7) do
                if v400(v) then
                    local v547, v548 = v396(v, v537)

                    if v547 and v548 < huge and (not p141 or v548 <= p141) and v389(v544, v547) then
                        v541 = v
                        v542 = v547
                        huge = v548
                    end
                end
            end

            return v541, v542, v538, v537
        end
    end

    local function v549(p142, p143, p144)
        if not p142 or not p143 then
            return nil, nil
        end

        local v550 = p143 - p142

        if v550.Magnitude <= 0 then
            return nil, nil
        end

        raycastParams2.FilterDescendantsInstances = { LocalPlayer2.Character }

        local hit = Workspace:Raycast(p142, v550, raycastParams2)
        local Instance_ = hit and hit.Instance

        if Instance_ then
            if Instance_:IsA("BasePart") then
                local v553 = v401(Instance_)

                if not v553 or not v400(v553) then
                    return nil, nil
                end

                local v554 = v402(v553, Instance_, p144 or v364(Instance_.Position))

                if v554 and v391(v554) then
                    return v553, v554
                end

                return nil, nil
            end
        end

        return nil, nil
    end

    local v555, v556

    do
        local function v557(p145)
            if not p145 or not p145.Character then
                return false
            end

            local n8 = 0
            local n9 = 0
            local v560 = v346()

            if not v560 then
                return false
            end

            for _, child in ipairs(p145.Character:GetChildren()) do
                if child:IsA("BasePart") and child.Name ~= "HumanoidRootPart" then
                    n9 += 1

                    if v389(v560, child) and v391(child) then
                        n8 += 1
                    end
                end
            end

            return n9 > 0 and n8 / n9 >= 0.5
        end
        local function v563(p146, p147)
            local v564 = tonumber(p147) or 100

            if math.random(0, 100) <= v564 then
                return p146, true
            end

            return p146 + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)), false
        end

        v555 = function(p148, p149, p150, p151, p152, p153)
            local Character = p149 and p149.Character

            if p151 and Character then
                if v399(p148, Character, p151) and v398(p151) then
                    return p151
                end
            end

            if p150 and Character and p150:IsDescendantOf(Character) then
                local v566 = v394(p150, p152, p153)

                if v566 and v399(p148, Character, v566) and v398(v566) then
                    return v566
                end

                if v389(p148, p150) and v391(p150) then
                    return p150.Position
                end
            end

            return nil
        end

        local function v567()
            u312 = nil

            local v568 = v53(LocalPlayer2.Character)
            local Animations = ReplicatedStorage:FindFirstChild("Animations")
            local Shoot = Animations and Animations:FindFirstChild("Shoot")

            if not v568 or not Shoot then
                return
            end

            local Animation = Instance.new("Animation")

            Animation.AnimationId = Shoot.AnimationId
            u312 = v568:LoadAnimation(Animation)
        end
        local function v572()
            if u312 then
                pcall(function()
                    if u312.IsPlaying then
                        u312:Stop(0)
                    end
                end)
            end
        end

        v556 = function()
            if not u312 then
                v567()
            end

            if u312 then
                pcall(function()
                    if u312.IsPlaying then
                        u312:Stop(0)
                    end

                    u312:Play()
                end)
            end
        end

        local function v573()
            local v574 = v329()

            if v574 then
                pcall(function()
                    v574:Play()
                end)
            end
        end
        local function v575(p154, p155, p156, p157)
            if not p154 or not p155 then
                return
            end

            if p157 == nil then
                p157 = true
            end

            local v576, v577 = v338()
            local WorldPosition = v576 or p154
            local v579 = p156 or v577

            if v579 then
                if v579:IsA("Attachment") then
                    WorldPosition = v579.WorldPosition
                elseif v579:IsA("BasePart") then
                    WorldPosition = v579.Position
                end
            end

            if p157 then
                local raycastParams3 = RaycastParams.new()

                raycastParams3.FilterDescendantsInstances = { LocalPlayer2.Character }
                raycastParams3.FilterType = Enum.RaycastFilterType.Blacklist

                local hit = Workspace:Raycast(WorldPosition, p155 - WorldPosition, raycastParams3)

                if hit then
                    p155 = hit.Position
                end
            end

            local Magnitude = (WorldPosition - p155).Magnitude

            if Magnitude <= 0.05 then
                return
            end

            local v583 = false

            if BulletBeam then
                v583 = pcall(function()
                    local v584 = v18(Instance.new("Attachment"))

                    v584.Parent = Workspace.Terrain
                    v584.WorldPosition = WorldPosition

                    local v585 = v18(Instance.new("Attachment"))

                    v585.Parent = Workspace.Terrain
                    v585.WorldPosition = p155

                    local v586 = v18(BulletBeam:Clone())

                    v586.Attachment0 = v584
                    v586.Attachment1 = v585
                    v586.Parent = v584

                    local v587 = math.max(v586.Width0 or 0, 0.06)
                    local v588 = math.max(v586.Width1 or 0, 0.06)

                    v586.Width0 = 0
                    v586.Width1 = 0

                    local tween = TweenService:Create(v586,
                        TweenInfo.new(0.08, Enum.EasingStyle.Cubic, Enum.EasingDirection.In), {
                        Width0 = v587,
                        Width1 = v588
                    })

                    tween:Play()
                    tween.Completed:Connect(function()
                        pcall(function()
                            TweenService:Create(v586,
                                TweenInfo.new(0.08, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                                Width0 = 0,
                                Width1 = 0
                            }):Play()
                        end)
                    end)
                    Debris:AddItem(v584, 0.28)
                    Debris:AddItem(v585, 0.28)
                    Debris:AddItem(v586, 0.28)
                end)
            end

            pcall(function()
                local v590 = v18(Instance.new("Part"))

                v590.Size = Vector3.new(0.045, 0.045, Magnitude)
                v590.CFrame = CFrame.new(WorldPosition, p155) * CFrame.new(0, 0, -Magnitude / 2)
                v590.Anchored = true
                v590.CanCollide = false
                v590.CanTouch = false
                v590.CanQuery = false
                v590.CastShadow = false
                v590.Color = v583 and Color3.fromRGB(255, 235, 120) or Color3.fromRGB(255, 70, 70)
                v590.Transparency = v583 and 0.35 or 0.05
                v590.Material = Enum.Material.Neon
                v590.Parent = Workspace
                Debris:AddItem(v590, 0.1)
            end)
        end

        local connection

        local function v592(p158)
            local v593 = tonumber(p158) or 2.5

            pcall(function()
                if connection then
                    connection:Disconnect()
                    connection = nil
                end

                local PlayerGui = LocalPlayer2:FindFirstChild("PlayerGui")
                local Backpack = PlayerGui and PlayerGui:FindFirstChild("Backpack")
                local Container = Backpack and Backpack:FindFirstChild("Container")
                local ButtonFrame = Container and Container:FindFirstChild("ButtonFrame")

                if not ButtonFrame then
                    return
                end

                local v598

                for _, child in ipairs(ButtonFrame:GetChildren()) do
                    if child.Name == "Button" then
                        local Container2 = child:FindFirstChild("Container")
                        local Number = Container2 and Container2:FindFirstChild("Number")

                        if Number and Number:IsA("TextLabel") and Number.Text == "2" then
                            v598 = child

                            break
                        end
                    end
                end

                local CooldownBar = v598 and v598:FindFirstChild("CooldownBar")
                local Bar = CooldownBar and CooldownBar:FindFirstChild("Bar")
                local UIGradient = Bar and Bar:FindFirstChild("UIGradient")

                if not UIGradient then
                    return
                end

                local vector2 = Vector2.new(-0.001, 0)
                local vector22 = Vector2.new(-1, 0)
                local now = tick()

                UIGradient.Offset = vector2
                CooldownBar.Visible = true
                connection = RunService.RenderStepped:Connect(function()
                    local v609 = math.clamp((tick() - now) / v593, 0, 1)

                    UIGradient.Offset = vector2:Lerp(vector22, v609)

                    if v609 >= 1 then
                        UIGradient.Offset = vector22
                        CooldownBar.Visible = false

                        if connection then
                            connection:Disconnect()
                            connection = nil
                        end
                    end
                end)
                v16(connection)
            end)
        end
        local function v610(p159)
            if not p159 then
                return
            end

            v16(p159.ChildAdded:Connect(function(child)
                if child:IsA("Tool") then
                    obj2[child] = nil
                    n3 = tick()
                    u310 = false
                    n4 = 0
                    task.delay(0.1, v567)
                end
            end))
            v16(p159.ChildRemoved:Connect(function(child)
                if child:IsA("Tool") then
                    obj2[child] = nil
                    v572()
                    u310 = false
                    n4 = 0
                end
            end))
            task.delay(0.5, v567)
        end

        if LocalPlayer2.Character then
            v610(LocalPlayer2.Character)
        end

        v16(LocalPlayer2.CharacterAdded:Connect(function(character)
            n3 = tick()
            v610(character)
        end))
        v48("PC Aimbot", { "HasMouseMove" }, "PC", function()
            local v611 = v123("mousemoverel")
            local t21 = {
                Enabled = false,
                AimKey = Enum.UserInputType.MouseButton2,
                FoVRadius = 100,
                Sensitivity = 10,
                AimPart = "Head",
                TeamCheck = true,
                WallCheck = true,
                DeathCheck = true
            }
            local u613 = false
            local u614

            local function v615(p160)
                local Position = CurrentCamera.CFrame.Position
                local raycastParams3 = RaycastParams.new()

                raycastParams3.FilterDescendantsInstances = { LocalPlayer2.Character }
                raycastParams3.FilterType = Enum.RaycastFilterType.Blacklist

                local hit = Workspace:Raycast(Position, p160.Position - Position, raycastParams3)

                return not hit or hit.Instance:IsDescendantOf(p160.Parent)
            end
            local function v619(p161)
                if not p161 or v52(p161) then
                    return false
                end

                local v620 = v53(p161)

                return not t21.DeathCheck or v620 and v620.Health > 0
            end
            local function v621()
                local v622
                local v623 = tonumber(t21.FoVRadius) or 100
                local mouseLocation = UserInputService:GetMouseLocation()

                for _, v in ipairs(t7) do
                    local Character = v.Character
                    local v628 = Character and Character:FindFirstChild(t21.AimPart)

                    if v ~= LocalPlayer2 and v628 and v619(Character) then
                        if (not t21.TeamCheck or not v54(v)) and (not t21.WallCheck or v615(v628)) then
                            local v629, v630 = CurrentCamera:WorldToViewportPoint(v628.Position)

                            if v630 then
                                local Magnitude = (mouseLocation - Vector2.new(v629.X, v629.Y)).Magnitude

                                if Magnitude < v623 then
                                    v623 = Magnitude
                                    v622 = v
                                end
                            end
                        end
                    end
                end

                return v622
            end
            local function v632(p162)
                local v633 = CurrentCamera:WorldToViewportPoint(p162.Position)
                local mouseLocation = UserInputService:GetMouseLocation()

                v611((v633.X - mouseLocation.X) / t21.Sensitivity, (v633.Y - mouseLocation.Y) / t21.Sensitivity)
            end

            v16(UserInputService.InputBegan:Connect(function(input)
                if v117(input, t21.AimKey) then
                    u613 = true
                end
            end))
            v16(UserInputService.InputEnded:Connect(function(input)
                if v117(input, t21.AimKey) then
                    u613 = false
                    u614 = nil
                end
            end))
            v16(RunService.RenderStepped:Connect(function()
                if not t21.Enabled or not u613 then
                    return
                end

                local ok = not u614 or not u614.Character

                if not ok then
                    ok = not u614.Character:FindFirstChild(t21.AimPart)
                end

                if ok then
                    u614 = v621()
                end

                local Character = u614 and u614.Character and u614.Character:FindFirstChild(t21.AimPart)

                if Character then
                    v632(Character)
                end
            end))
            t5.Aim:AddToggle("AimbotEnabled", {
                Title = "Enable Aimbot",
                Default = false
            }):OnChanged(function(p163)
                t21.Enabled = p163
            end)
            t5.Aim:AddKeybind("AimKey", {
                Title = "Aim Key",
                Mode = "Hold",
                Default = "MouseButton2",
                Callback = function()
                end,
                ChangedCallback = function(p164)
                    t21.AimKey = v38(p164)
                end
            })
            t5.Aim:AddDropdown("AimPart", {
                Title = "Aim Part",
                Values = {
                    "Head",
                    "HumanoidRootPart"
                },
                Default = "Head"
            }):OnChanged(function(p165)
                t21.AimPart = p165
            end)
            t5.Aim:AddSlider("AimbotFoVRadius", {
                Title = "Aimbot FoV Radius",
                Default = t21.FoVRadius,
                Min = 50,
                Max = 500,
                Rounding = 1
            }):OnChanged(function(p166)
                t21.FoVRadius = tonumber(p166) or t21.FoVRadius
            end)
            t5.Aim:AddSlider("AimbotSensitivity", {
                Title = "Aimbot Sensitivity",
                Default = t21.Sensitivity,
                Min = 1,
                Max = 20,
                Rounding = 1
            }):OnChanged(function(p167)
                local sensitivity = tonumber(p167)

                t21.Sensitivity = sensitivity or t21.Sensitivity
            end)
            t5.Aim:AddToggle("AimbotWallCheck", {
                Title = "Aimbot Wall Check",
                Default = true
            }):OnChanged(function(p168)
                t21.WallCheck = p168
            end)
        end)
        v48("PC Silent Aim Suite", {}, "PC", function()
            if not v302 then
                v22("PC Silent Aim Suite", "ShootGun remote missing")

                return
            end

            local t22 = {
                cooldownTime = 2.5,
                silentAimHitChance = 100,
                autoShootHitChance = 100,
                autoShootReactionTime = 0,
                fovRadius = 100,
                toeShotRadius = 140
            }
            local t23 = {
                silentAim = false,
                aimAssist = false,
                autoShoot = false,
                antiCrackshots = false,
                toeShots = false,
                showFOVCircle = false,
                lastShootTime = 0,
                shotLockUntil = 0,
                targetStartTime = nil,
                currentTarget = nil,
                fovCircle = nil
            }
            local n10 = 0
            local u641
            local pcGunSuppression
            local obj3 = setmetatable({}, {
                __mode = "k"
            })

            local function v644()
                local now = tick()

                return now >= t23.shotLockUntil and now - t23.lastShootTime >= v330(t22.cooldownTime) and v314()
            end
            local function v646()
                return v644() and v335() and v322()
            end
            local function v647()
                local now = tick()

                t23.lastShootTime = now
                t23.shotLockUntil = now + 0.15
            end
            local function v649()
                local v650 = pcGunSuppression ~= nil or u641 ~= nil or next(obj3) ~= nil

                if pcGunSuppression then
                    pcall(function()
                        pcGunSuppression:Disconnect()
                    end)
                    pcGunSuppression = nil
                end

                for k in pairs(obj3) do
                    if k and k.Parent then
                        if v61(k) then
                            pcall(function()
                                k.Enabled = true
                            end)
                        end
                    end

                    obj3[k] = nil
                end

                if v650 then
                    local v652 = v60()

                    if v652 then
                        if v61(v652) then
                            pcall(function()
                                v652.Enabled = true
                            end)
                        end
                    end
                end

                u641 = nil
                u310 = false
                n4 = 0
            end
            local function v653()
                local v654 = v60()

                if not v654 then
                    return
                end

                if not v61(v654) then
                    return
                end

                obj3[v654] = true

                local now, u656, u657

                if u641 == v654 then
                    now = tick()
                    u656 = nil
                    u657 = nil
                else
                    if pcGunSuppression then
                        pcall(function()
                            pcGunSuppression:Disconnect()
                        end)
                        pcGunSuppression = nil
                    end

                    pcGunSuppression = v24(v654:GetPropertyChangedSignal("Enabled"), "PC Gun Suppression", function()
                        if (t23.silentAim or t23.autoShoot or t23.aimAssist) and v654.Enabled then
                            pcall(function()
                                v654.Enabled = false
                            end)
                        end
                    end)
                    now = tick()
                    u656 = nil
                    u657 = nil
                end

                if u641 ~= v654 or not (now - n10 < 0.25) then
                    u641 = v654
                    n10 = now
                    pcall(function()
                        v654.Enabled = false
                    end)

                    return
                end

                if v654.Enabled then
                    pcall(function()
                        u656 = 503403195
                        u657 = 146278019
                        v654.Enabled = false
                    end)
                end
            end
            local function v658(p169, p170, p171, p172, p173)
                if not v302 or not v646() then
                    return false
                end

                local v659 = v315(0.15)

                if not v659 then
                    return false
                end

                v653()

                local v660 = v346()

                if not v660 then
                    v317(v659, 0.05)

                    return false
                end

                local v661 = p171 or v97()

                if not p169 then
                    local v662 = v330(t22.cooldownTime)
                    local v663 = v363(5000)
                    local v664, v665 = v563(v663, p170)

                    v556()
                    v573()

                    if v665 then
                        v575(v660, v663, nil, true)
                        v302:FireServer(v660, v663, nil, v663)
                    else
                        v575(v660, v664, nil, true)
                    end

                    v647()
                    v316(v659, v662)
                    v592(v662)

                    return true
                end

                local v666 = p172 or v395(p169, v661)

                if not v666 or not p169.Character or not v666:IsDescendantOf(p169.Character) then
                    v666 = v395(p169, v661)
                end

                local v667 = v555(v660, p169, v666, p173, v661, false)

                if not v666 or not v667 then
                    v317(v659, 0.05)

                    return false
                end

                local v668 = v330(t22.cooldownTime)
                local v669, v670 = v563(v667, p170)

                v556()
                v573()

                if v670 then
                    v575(v660, v667, nil, false)
                    v302:FireServer(v660, v667, v666, v667)
                else
                    v575(v660, v669, nil, true)
                end

                v647()
                v316(v659, v668)
                v592(v668)

                return true
            end

            local t24 = {
                create = function()
                    if not t4.HasDrawing then
                        return
                    end

                    if t23.fovCircle then
                        v20(t23.fovCircle)
                    end

                    t23.fovCircle = v17(Drawing.new("Circle"))
                    t23.fovCircle.Thickness = 2
                    t23.fovCircle.NumSides = 64
                    t23.fovCircle.Radius = t22.fovRadius
                    t23.fovCircle.Filled = false
                    t23.fovCircle.Color = Color3.fromRGB(255, 255, 255)
                    t23.fovCircle.Transparency = 0.7
                    t23.fovCircle.Visible = t23.showFOVCircle
                end
            }

            t24.update = function()
                if not t4.HasDrawing then
                    return
                end

                if not t23.showFOVCircle then
                    if t23.fovCircle then
                        t23.fovCircle.Visible = false
                    end

                    return
                end

                if not t23.fovCircle then
                    t24.create()
                end

                local fovCircle = t23.fovCircle

                if not fovCircle then
                    return
                end

                local v673 = v98()

                fovCircle.Position = Vector2.new(v673.X, v673.Y)
                fovCircle.Radius = t22.fovRadius
                fovCircle.Visible = true
            end

            local n11 = 0
            local u675
            local u676
            local u677
            local u678

            local function v679()
                local v680 = v98()
                local v681 = v90(v680)

                if t23.toeShots then
                    local v682, v683, v684, v685 = v405(v681, t22.toeShotRadius)

                    if v682 then
                        return v682, v683, v685 or v681, v680, v684
                    end
                end

                local v686, v687, v688, v689 = v406(t22.fovRadius)

                return v686, v687, v688, v689, nil
            end

            v24(UserInputService.InputBegan, "PC Silent Aim Manual", function(p174, p175)
                if p175 or not (t23.silentAim or t23.autoShoot) then
                    return
                end

                if p174.UserInputType == Enum.UserInputType.MouseButton1 then
                    if v108(v98()) then
                        return
                    end

                    local silentAimHitChance = t23.silentAim and t22.silentAimHitChance or t22.autoShootHitChance
                    local v691, v692, v693, _, v695 = v679()

                    if not v658(v691, silentAimHitChance, v693, v692, v695) and v691 then
                        v658(nil, silentAimHitChance, v693)
                    end
                end
            end)
            v24(UserInputService.InputBegan, "PC Aim Assist", function(p176, p177)
                if not p177 and t23.aimAssist then
                    if p176.KeyCode == Enum.KeyCode.E then
                        if not v646() then
                            return
                        end

                        local v696, v697, v698, _, v700 = v679()

                        if v696 then
                            v658(v696, 100, v698, v697, v700)
                        end

                        return
                    end
                end
            end)
            v24(RunService.RenderStepped, "PC Silent Aim Render", function()
                if t23.showFOVCircle then
                    t24.update()
                end

                if not (t23.silentAim or t23.autoShoot) then
                    if not t23.aimAssist then
                        v649()
                    end

                    return
                end

                v653()

                if not v337() then
                    v572()
                end

                if not t23.autoShoot or not v335() or not v322() or not v644() then
                    t23.targetStartTime = nil
                    t23.currentTarget = nil
                    u676 = nil
                    u677 = nil

                    return
                end

                local now = tick()
                local v702 = v97()
                local v703 = tonumber(t22.autoShootReactionTime) or 0
                local AutoShootScanRate = v703 <= 0.1 and not t4.IsMobile and 0 or t6.AutoShootScanRate

                if AutoShootScanRate <= 0 or AutoShootScanRate <= now - n11 then
                    local v705, v706, v707, _, v709 = v679()

                    u678 = v707 or v702
                    u675 = v705
                    u676 = v706
                    u677 = v709
                    n11 = now
                end

                local v710 = u675

                if not v710 then
                    t23.targetStartTime = nil
                    t23.currentTarget = nil
                    u676 = nil
                    u677 = nil

                    return
                end

                local v711 = u676

                if not v711 then
                    v711 = v395(v710, u678 or v702)
                end

                local v712 = v346()
                local v713 = u677
                local v714 = v712

                if v714 then
                    v714 = v555(v712, v710, v711, v713, u678 or v702, false)
                end

                if v711 and v712 then
                    if v714 then
                        local v715 = v714

                        if v703 > 0 and t23.antiCrackshots and not v557(v710) then
                            t23.targetStartTime = nil
                            t23.currentTarget = nil

                            return
                        end

                        if v703 > 0 then
                            if t23.currentTarget ~= v710 then
                                t23.currentTarget = v710
                                t23.targetStartTime = tick()

                                return
                            end

                            if not t23.targetStartTime or tick() - t23.targetStartTime < v703 then
                                return
                            end
                        end

                        v658(v710, t22.autoShootHitChance, u678 or v702, v711, v715)
                        t23.targetStartTime = nil
                        t23.currentTarget = nil
                        u676 = nil
                        u677 = nil

                        return
                    end
                end

                t23.targetStartTime = nil
                t23.currentTarget = nil
                u676 = nil
                u677 = nil
            end)
            t5.Shots:AddKeybind("PerfectSilentAimKeybind", {
                Title = "Perfect Silent Aim",
                Mode = "Toggle",
                Default = "LeftAlt",
                Callback = function(p178)
                    t23.silentAim = p178

                    if p178 then
                        v653()
                    end

                    if not p178 then
                        if not (t23.autoShoot or t23.aimAssist) then
                            v649()
                        end
                    end

                    Fluent:Notify({
                        Title = "Perfect Silent Aim",
                        Content = p178 and "Enabled" or "Disabled",
                        Duration = 3
                    })
                end
            })
            t5.Shots:AddSlider("SilentAimHitChanceSlider", {
                Title = "Silent Aim Hit Chance",
                Default = t22.silentAimHitChance,
                Min = 0,
                Max = 100,
                Rounding = 0,
                Callback = function(p179)
                    t22.silentAimHitChance = tonumber(p179) or t22.silentAimHitChance
                end
            })
            t5.Shots:AddKeybind("AutoshootKeybind", {
                Title = "Autoshoot",
                Mode = "Toggle",
                Default = "LeftControl",
                Callback = function(p180)
                    t23.autoShoot = p180
                    t23.targetStartTime = nil
                    t23.currentTarget = nil

                    if p180 then
                        v653()
                    end

                    if not (p180 or t23.silentAim or t23.aimAssist) then
                        v649()
                    end

                    Fluent:Notify({
                        Title = "Autoshoot",
                        Content = p180 and "Enabled" or "Disabled",
                        Duration = 3
                    })
                end
            })
            t5.Shots:AddSlider("AutoShootHitChanceSlider", {
                Title = "Autoshoot Hit Chance",
                Default = t22.autoShootHitChance,
                Min = 0,
                Max = 100,
                Rounding = 0,
                Callback = function(p181)
                    t22.autoShootHitChance = tonumber(p181) or t22.autoShootHitChance
                end
            })
            t5.Shots:AddSlider("AutoShootReactionTimeSlider", {
                Title = "Autoshoot Reaction Time (ms)",
                Default = t22.autoShootReactionTime * 1000,
                Min = 0,
                Max = 1000,
                Rounding = 0,
                Callback = function(p182)
                    t22.autoShootReactionTime = (tonumber(p182) or 0) / 1000
                    t23.targetStartTime = nil
                    t23.currentTarget = nil
                end
            })
            t5.Shots:AddToggle("AntiCrackshots", {
                Title = "Anti-Crackshots",
                Default = false
            }):OnChanged(function(p183)
                t23.antiCrackshots = p183
            end)
            t5.Shots:AddToggle("ToeShotsToggle", {
                Title = "Toeshots",
                Default = false
            }):OnChanged(function(p184)
                t23.toeShots = p184
                t23.targetStartTime = nil
                t23.currentTarget = nil
                u675 = nil
                u676 = nil
                u677 = nil
            end)
            t5.Shots:AddSlider("ToeShotRadiusSlider", {
                Title = "Toeshots Radius",
                Default = t22.toeShotRadius,
                Min = 20,
                Max = 500,
                Rounding = 0,
                Callback = function(p185)
                    t22.toeShotRadius = tonumber(p185) or t22.toeShotRadius
                end
            })
            t5.Shots:AddToggle("AimAssist", {
                Title = "Aim Assist [E]",
                Default = false
            }):OnChanged(function(p186)
                t23.aimAssist = p186

                if not (p186 or t23.silentAim or t23.autoShoot) then
                    v649()
                end

                Fluent:Notify({
                    Title = "Aim Assist",
                    Content = p186 and "Enabled" or "Disabled",
                    Duration = 3
                })
            end)
            t5.Shots:AddSlider("CooldownSlider", {
                Title = "Cooldown",
                Default = t22.cooldownTime,
                Min = 0,
                Max = 5,
                Rounding = 1,
                Callback = function(p187)
                    t22.cooldownTime = tonumber(p187) or t22.cooldownTime
                end
            })

            if t4.HasDrawing then
                t24.create()
                t5.Shots:AddToggle("ShowFOVCircle", {
                    Title = "Show FOV Circle",
                    Default = false
                }):OnChanged(function(p188)
                    t23.showFOVCircle = p188

                    if t23.fovCircle then
                        t23.fovCircle.Visible = p188
                    end
                end)
                t5.Shots:AddSlider("FOVRadius", {
                    Title = "FOV Radius",
                    Default = t22.fovRadius,
                    Min = 1,
                    Max = 500,
                    Rounding = 0,
                    Callback = function(p189)
                        t22.fovRadius = tonumber(p189) or t22.fovRadius

                        if t23.fovCircle then
                            t23.fovCircle.Radius = t22.fovRadius
                        end
                    end
                })
            else
                v22("FOV Circle", "missing Drawing")
            end
        end)
        v48("Mobile Silent Aim", { "HasTouch" }, "Mobile", function()
            if not v302 then
                v22("Mobile Silent Aim", "ShootGun remote missing")

                return
            end

            local u716 = false
            local u717 = false
            local n12 = 100
            local n13 = 100
            local n14 = 0
            local n15 = 2.5
            local u722 = false
            local n16 = 0
            local u724 = false
            local u725 = false
            local n17 = 200
            local n18 = 160
            local u728 = false
            local t25 = {}
            local t26 = {}
            local t27 = {}
            local u732
            local u733
            local now
            local n19 = 0
            local u736
            local u737
            local u738
            local u739
            local u740
            local n20 = 0
            local mobileGunSuppression
            local obj3 = setmetatable({}, {
                __mode = "k"
            })
            local u744
            local u745
            local u746
            local u747
            local TextLabel
            local UIStroke
            local enabled = false

            local function v751(p190)
                local ViewportSize = CurrentCamera.ViewportSize
                local v753 = p190 and v89(p190) or nil

                if v753 and ViewportSize.Y * 0.55 <= v753.Y then
                    return math.clamp(ViewportSize.X * 0.01, 10, 18)
                end

                return math.clamp(ViewportSize.X * 0.018, 18, 34)
            end
            local function v754(p191)
                t25[p191] = nil
                t26[p191] = nil
                t27[p191] = nil
            end
            local function v755()
                return not u722 and tick() - n16 >= 0.15 and v335() and v322()
            end
            local function v756()
                u733 = nil
                now = nil
                u736 = nil
                u737 = nil
                u738 = nil
                u739 = nil
            end
            local function v757()
                local v758 = mobileGunSuppression ~= nil or u740 ~= nil or next(obj3) ~= nil

                if mobileGunSuppression then
                    pcall(function()
                        mobileGunSuppression:Disconnect()
                    end)
                    mobileGunSuppression = nil
                end

                for k in pairs(obj3) do
                    if k then
                        if k.Parent and v61(k) then
                            pcall(function()
                                k.Enabled = true
                            end)
                        end
                    end

                    obj3[k] = nil
                end

                if v758 then
                    local v760 = v60()

                    if not v760 or not v61(v760) then
                        u740 = nil
                        u310 = false
                        n4 = 0

                        return
                    end

                    pcall(function()
                        v760.Enabled = true
                    end)
                end

                u740 = nil
                u310 = false
                n4 = 0
            end
            local function v761()
                if not TextLabel or not UIStroke or not u747 then
                    return
                end

                if u717 then
                    TextLabel.Text = "AUTOSHOOT: ON"
                    u747.BackgroundColor3 = Color3.fromRGB(19, 82, 55)
                    UIStroke.Color = Color3.fromRGB(86, 255, 169)
                else
                    TextLabel.Text = "AUTOSHOOT: OFF"
                    u747.BackgroundColor3 = Color3.fromRGB(28, 30, 42)
                    UIStroke.Color = Color3.fromRGB(145, 160, 205)
                end
            end
            local function v762(p192, p193)
                u717 = p192 == true
                v756()
                v761()

                if not (u717 or u716) then
                    v757()
                end

                if p193 then
                    Fluent:Notify({
                        Title = "Autoshoot",
                        Content = u717 and "Enabled" or "Disabled",
                        Duration = 2
                    })
                end
            end
            local function v763()
                local v764 = v330(n15)

                n16 = tick()
                u722 = true
                v592(v764)
                task.delay(v764, function()
                    u722 = false
                end)
            end
            local function v765()
                local v766 = v60()

                if not v766 then
                    return
                end

                if not v61(v766) then
                    return
                end

                obj3[v766] = true

                if u740 ~= v766 then
                    if mobileGunSuppression then
                        pcall(function()
                            mobileGunSuppression:Disconnect()
                        end)
                        mobileGunSuppression = nil
                    end

                    mobileGunSuppression = v24(v766:GetPropertyChangedSignal("Enabled"), "Mobile Gun Suppression",
                        function()
                            if (u716 or u717) and v766.Enabled then
                                pcall(function()
                                    v766.Enabled = false
                                end)
                            end
                        end)
                end

                local now2 = tick()

                if u740 ~= v766 or not (now2 - n20 < 0.25) then
                    u740 = v766
                    n20 = now2
                    pcall(function()
                        v766.Enabled = false
                    end)

                    return
                end

                if v766.Enabled then
                    pcall(function()
                        v766.Enabled = false
                    end)
                end
            end
            local function v768(p194)
                if u745 then
                    u745.Visible = p194 and u728 and u724
                end
            end
            local function v769(p195)
                if not u745 then
                    return
                end

                local v770 = v93(p195)

                u745.Size = UDim2.fromOffset(n17 * 2, n17 * 2)
                u745.Position = UDim2.fromOffset(v770.X - n17, v770.Y - n17)
                v768(true)
            end
            local function v771()
                if u744 then
                    return
                end

                u744 = v18(Instance.new("ScreenGui"))
                u744.Name = "VexalTouchRadius"
                u744.ResetOnSpawn = false
                u744.IgnoreGuiInset = true
                u744.Parent = LocalPlayer2:WaitForChild("PlayerGui")
                u745 = v18(Instance.new("Frame"))
                u745.Name = "Radius"
                u745.BackgroundTransparency = 1
                u745.Visible = false
                u745.Parent = u744

                local UICorner = Instance.new("UICorner")

                UICorner.CornerRadius = UDim.new(1, 0)
                UICorner.Parent = u745

                local UIStroke2 = Instance.new("UIStroke")

                UIStroke2.Color = Color3.fromRGB(255, 255, 255)
                UIStroke2.Transparency = 0.35
                UIStroke2.Thickness = 2
                UIStroke2.Parent = u745
            end
            local function v774()
                if u746 then
                    v761()

                    return
                end

                u746 = v18(Instance.new("ScreenGui"))
                u746.Name = "VexalMobileAutoshootControl"
                u746.ResetOnSpawn = false
                u746.IgnoreGuiInset = true
                u746.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                u746.DisplayOrder = 999998
                u746.Enabled = false
                u746.Parent = LocalPlayer2:WaitForChild("PlayerGui")

                local v775 = v45(0.76, 1)
                local v776 = math.floor(172 * v775 + 0.5)
                local v777 = math.floor(44 * v775 + 0.5)
                local v778 = math.floor(154 * v775 + 0.5)

                u747 = v18(Instance.new("TextButton"))
                u747.Name = "AutoshootButton"
                u747.Size = UDim2.fromOffset(v776, v777)
                u747.Position = UDim2.new(0.5, -(v776 / 2), 1, -v778)
                u747.BackgroundColor3 = Color3.fromRGB(28, 30, 42)
                u747.BorderSizePixel = 0
                u747.AutoButtonColor = false
                u747.Text = ""
                u747.ZIndex = 30
                u747.Parent = u746

                local UICorner = Instance.new("UICorner")

                UICorner.CornerRadius = UDim.new(0, math.floor(14 * v775 + 0.5))
                UICorner.Parent = u747
                UIStroke = Instance.new("UIStroke")
                UIStroke.Color = Color3.fromRGB(145, 160, 205)
                UIStroke.Thickness = math.max(1, 1.5 * v775)
                UIStroke.Transparency = 0.05
                UIStroke.Parent = u747

                local UIGradient = Instance.new("UIGradient")

                UIGradient.Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(47, 52, 75)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(18, 20, 30))
                })
                UIGradient.Rotation = 90
                UIGradient.Parent = u747
                TextLabel = Instance.new("TextLabel")
                TextLabel.Name = "Label"
                TextLabel.Size = UDim2.fromScale(1, 1)
                TextLabel.BackgroundTransparency = 1
                TextLabel.Text = "AUTOSHOOT: OFF"
                TextLabel.TextColor3 = Color3.fromRGB(250, 252, 255)
                TextLabel.TextSize = math.floor(15 * math.clamp(v775, 0.84, 1) + 0.5)
                TextLabel.Font = Enum.Font.GothamBold
                TextLabel.ZIndex = 31
                TextLabel.Parent = u747

                local UIScale = Instance.new("UIScale")

                UIScale.Scale = 1
                UIScale.Parent = u747

                local u782 = false
                local u783 = false
                local u784
                local u785
                local vector2
                local v787 = math.floor(14 * v775 + 0.5)
                local n21 = 0

                local function v789(p196)
                    return v93(Vector2.new(p196.Position.X, p196.Position.Y))
                end
                local function v790(p197, p198)
                    local ViewportSize = CurrentCamera.ViewportSize
                    local AbsoluteSize = u747.AbsoluteSize
                    local vector22 = p198 or Vector2.new(AbsoluteSize.X / 2, AbsoluteSize.Y / 2)
                    local v794 = math.clamp(p197.X - vector22.X, 8, ViewportSize.X - AbsoluteSize.X - 8)
                    local v795 = math.clamp(p197.Y - vector22.Y, 8, ViewportSize.Y - AbsoluteSize.Y - 8)

                    u747.Position = UDim2.fromOffset(v794, v795)
                end

                u747.InputBegan:Connect(function(input)
                    if input.UserInputType ~= Enum.UserInputType.Touch and input.UserInputType ~= Enum.UserInputType.MouseButton1 then
                        return
                    end

                    u782 = true
                    u783 = false
                    u785 = input
                    u784 = v789(input)

                    local AbsolutePosition = u747.AbsolutePosition
                    local AbsoluteSize = u747.AbsoluteSize

                    vector2 = Vector2.new(math.clamp(u784.X - AbsolutePosition.X, 0, AbsoluteSize.X),
                        math.clamp(u784.Y - AbsolutePosition.Y, 0, AbsoluteSize.Y))
                    TweenService:Create(UIScale, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Scale = 0.96
                    }):Play()

                    local connection2

                    connection2 = input.Changed:Connect(function()
                        if input.UserInputState == Enum.UserInputState.End then
                            u782 = false
                            u785 = nil
                            u784 = nil
                            vector2 = nil
                            TweenService:Create(UIScale,
                                TweenInfo.new(0.16, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                                Scale = 1
                            }):Play()

                            if connection2 then
                                connection2:Disconnect()
                            end
                        end
                    end)
                    v16(connection2)
                end)
                v24(UserInputService.InputChanged, "Mobile Autoshoot Button Drag", function(p199)
                    if not u782 or not u784 then
                        return
                    end

                    if u785 and u785.UserInputType == Enum.UserInputType.Touch and p199 ~= u785 then
                        return
                    end

                    if u785 and u785.UserInputType ~= Enum.UserInputType.Touch and p199.UserInputType ~= Enum.UserInputType.MouseMovement then
                        return
                    end

                    local v799 = v789(p199)

                    if v787 < (v799 - u784).Magnitude then
                        u783 = true
                    end

                    if not u783 then
                        return
                    end

                    v790(v799, vector2)
                end)
                u747.MouseButton1Click:Connect(function()
                    if u783 then
                        return
                    end

                    if tick() - n21 < 0.18 then
                        return
                    end

                    n21 = tick()
                    v762(not u717, true)
                end)
                v761()
            end
            local function v800(p200)
                if not u747 or not u746 or not u746.Enabled then
                    return false
                end

                local v801 = v93(p200)
                local AbsolutePosition = u747.AbsolutePosition
                local AbsoluteSize = u747.AbsoluteSize

                return v801.X >= AbsolutePosition.X and v801.X <= AbsolutePosition.X + AbsoluteSize.X and
                v801.Y >= AbsolutePosition.Y and v801.Y <= AbsolutePosition.Y + AbsoluteSize.Y
            end
            local function v804(p201, p202, p203, p204, p205)
                if not p201 or not v755() then
                    return false
                end

                v765()

                local v805 = v346()

                if not v805 then
                    return false
                end

                local v806 = p204

                if not v806 or not p201.Character or not v806:IsDescendantOf(p201.Character) then
                    v806 = v395(p201, p202)
                end

                local v807 = v555(v805, p201, v806, p205, p202, false)

                if not v806 or not v807 then
                    return false
                end

                local v808, v809 = v563(v807, p203 or n12)

                v556()
                v573()

                if v809 then
                    v575(v805, v807, nil, false)
                    v302:FireServer(v805, v807, v806, v807)
                else
                    v575(v805, v808, nil, true)
                    v302:FireServer(v805, v808, nil, v808)
                end

                v763()

                return true
            end
            local function v810(p206)
                if not v755() then
                    return
                end

                v765()

                local v811, v812 = v365(p206, 5000)
                local vector2 = p206 and u724 and not v361(p206) and v89(p206) or v812 or
                Vector2.new(CurrentCamera.ViewportSize.X / 2, CurrentCamera.ViewportSize.Y / 2)
                local v814
                local v815, v816

                if u725 then
                    v815, v816, v814 = v405(vector2, u724 and n17 or n18)
                elseif u724 then
                    v815, v816 = v404(vector2, n17)
                else
                    v815, v816 = v403(vector2, nil)
                end

                if v815 and v804(v815, vector2, n12, v816, v814) then
                    return
                end

                local v817 = v346()

                if not v817 then
                    return
                end

                local v818 = v811 or v356(vector2, 5000)
                local v819, v820 = v549(v817, v818, vector2)

                if v819 and (not u724 or v397(v820, vector2, n17)) and v804(v819, vector2, n12, v820) then
                    return
                end

                local v821, v822 = v563(v818, n12)

                v556()
                v573()

                if v822 then
                    v575(v817, v818, nil, true)
                    v302:FireServer(v817, v818, nil, v818)
                else
                    v575(v817, v821, nil, true)
                    v302:FireServer(v817, v821, nil, v821)
                end

                v763()
            end

            v24(RunService.RenderStepped, "Mobile Silent Aim Render", function()
                if not (u716 or u717) then
                    v757()

                    return
                end

                v765()

                if not v337() then
                    v572()
                end

                if not u717 or not v755() then
                    u733 = nil
                    now = nil
                    u737 = nil
                    u738 = nil

                    return
                end

                if u724 and not u732 then
                    v756()
                    v768(false)

                    return
                end

                local vector2 = u724 and u732 or
                Vector2.new(CurrentCamera.ViewportSize.X / 2, CurrentCamera.ViewportSize.Y / 2)
                local v824 = u724 and n17 or nil
                local v825 = tonumber(n14) or 0
                local now2 = tick()
                local AutoShootScanRate = v825 <= 0.1 and not t4.IsMobile and 0 or t6.AutoShootScanRate

                if AutoShootScanRate <= 0 or AutoShootScanRate <= now2 - n19 then
                    u739 = vector2
                    u738 = nil

                    if u725 then
                        local v828, v829, v830 = v405(vector2, u724 and n17 or n18)

                        u736 = v828
                        u737 = v829
                        u738 = v830
                    elseif u724 then
                        local v831, v832 = v404(vector2, n17)

                        u736 = v831
                        u737 = v832
                    else
                        local v833, v834 = v403(vector2, v824)

                        u736 = v833
                        u737 = v834
                    end

                    n19 = now2
                end

                local v835 = u736

                if not v835 then
                    u733 = nil
                    now = nil
                    u737 = nil
                    u738 = nil

                    return
                end

                local v836 = u737
                local v837 = u738

                if not v836 or not v835.Character or not v836:IsDescendantOf(v835.Character) then
                    if u725 then
                        local v838, v839, v840 = v405(u739 or vector2, u724 and n17 or n18)

                        if v838 == v835 then
                            v836 = v839
                            v837 = v840
                        end
                    elseif u724 then
                        local v841, v842 = v404(u739 or vector2, n17)

                        if v841 == v835 then
                            v836 = v842
                        end
                    else
                        v836 = v395(v835, u739 or vector2)
                    end
                end

                if not v836 then
                    u733 = nil
                    now = nil
                    u738 = nil

                    return
                end

                if v825 > 0 then
                    if u733 ~= v835 then
                        u733 = v835
                        now = tick()

                        return
                    end

                    if not now or tick() - now < v825 then
                        return
                    end
                end

                if v804(v835, u739 or vector2, n13, v836, v837) then
                    u733 = nil
                    now = nil
                    u737 = nil
                    u738 = nil
                end
            end)
            v24(UserInputService.TouchStarted, "Mobile Touch Started", function(p207, p208)
                if v108(p207.Position) then
                    v754(p207)

                    return
                end

                if v800(p207.Position) then
                    return
                end

                if v362(p207.Position) then
                    return
                end

                local v843 = v361(p207.Position)

                if p208 and not v843 then
                    return
                end

                t25[p207] = tick()
                t26[p207] = v89(p207.Position)
                t27[p207] = false

                if v843 then
                    return
                end

                u732 = v89(p207.Position)

                if u728 and u724 then
                    v771()
                    v769(p207.Position)
                end
            end)
            v24(UserInputService.TouchMoved, "Mobile Touch Moved", function(p209)
                if v108(p209.Position) then
                    v754(p209)
                    u732 = nil
                    v768(false)

                    return
                end

                if v800(p209.Position) then
                    return
                end

                if not t25[p209] then
                    return
                end

                if v362(p209.Position) then
                    t27[p209] = true
                    u732 = nil
                    v768(false)

                    return
                end

                local v844 = v361(p209.Position)
                local v845 = t26[p209]
                local v846 = v89(p209.Position)

                if v845 then
                    local Magnitude = (v846 - v845).Magnitude

                    if v751(v846) < Magnitude then
                        t27[p209] = true

                        if not u717 or not u724 or v844 then
                            u732 = nil
                            v768(false)

                            return
                        end

                        u732 = v846

                        if u728 then
                            v771()
                            v769(p209.Position)
                        end

                        return
                    end
                end

                if v844 then
                    return
                end

                u732 = v89(p209.Position)

                if u728 and u724 then
                    v771()
                    v769(p209.Position)
                end
            end)
            v24(UserInputService.TouchEnded, "Mobile Touch Ended", function(p210, p211)
                v768(false)
                u732 = nil

                if v108(p210.Position) then
                    v754(p210)

                    return
                end

                if v800(p210.Position) then
                    v754(p210)

                    return
                end

                if v362(p210.Position) then
                    v754(p210)

                    return
                end

                local v848 = v361(p210.Position)

                if p211 and not v848 then
                    v754(p210)

                    return
                end

                if not (u716 or u717) then
                    v754(p210)

                    return
                end

                local v849 = t25[p210]
                local v850 = t26[p210]
                local v851 = t27[p210]

                v754(p210)

                if not (v849 or v848) then
                    return
                end

                if v851 then
                    return
                end

                if v850 then
                    local Magnitude = (v89(p210.Position) - v850).Magnitude

                    if v751(p210.Position) < Magnitude then
                        return
                    end
                end

                if not (tick() - (v849 or tick()) > 0.2) or v848 then
                    v810(p210.Position)

                    return
                end
            end)
            t5.Shots:AddToggle("MobileSilentAimToggle", {
                Title = "Tap Aim Assist",
                Default = false
            }):OnChanged(function(p212)
                u716 = p212

                if p212 then
                    v765()
                elseif not u717 then
                    v757()
                end
            end)
            t5.Shots:AddSlider("MobileSilentAimHitChance", {
                Title = "Tap Accuracy",
                Default = n12,
                Min = 0,
                Max = 100,
                Rounding = 0,
                Callback = function(p213)
                    n12 = tonumber(p213) or n12
                end
            })
            t5.Shots:AddToggle("MobileAutoshootToggle", {
                Title = "Show Autoshoot Button",
                Default = false
            }):OnChanged(function(p214)
                enabled = p214 == true

                if enabled then
                    v774()
                end

                if u746 then
                    u746.Enabled = enabled
                end

                v762(p214, true)

                if p214 then
                    v765()
                end
            end)
            t5.Shots:AddSlider("MobileAutoshootHitChance", {
                Title = "Autoshoot Accuracy",
                Default = n13,
                Min = 0,
                Max = 100,
                Rounding = 0,
                Callback = function(p215)
                    n13 = tonumber(p215) or n13
                end
            })
            t5.Shots:AddSlider("MobileAutoshootReactionTime", {
                Title = "Autoshoot Delay (ms)",
                Default = n14 * 1000,
                Min = 0,
                Max = 1000,
                Rounding = 0,
                Callback = function(p216)
                    n14 = (tonumber(p216) or 0) / 1000
                    u733 = nil
                    now = nil
                end
            })
            t5.Shots:AddToggle("CloseToFingerToggle", {
                Title = "Use Finger Zone",
                Default = false
            }):OnChanged(function(p217)
                u724 = p217
                v756()

                if not p217 then
                    v768(false)
                end
            end)
            t5.Shots:AddToggle("MobileToeShotsToggle", {
                Title = "Toeshots",
                Default = false
            }):OnChanged(function(p218)
                u725 = p218
                v756()
            end)
            t5.Shots:AddSlider("FingerRadiusSlider", {
                Title = "Finger Zone Size",
                Default = n17,
                Min = 1,
                Max = 500,
                Rounding = 0,
                Callback = function(p219)
                    n17 = tonumber(p219) or n17

                    if u745 then
                        if u732 then
                            v769(u732)
                        end
                    end
                end
            })
            t5.Shots:AddSlider("MobileToeShotRadiusSlider", {
                Title = "Toeshots Radius",
                Default = n18,
                Min = 20,
                Max = 500,
                Rounding = 0,
                Callback = function(p220)
                    n18 = tonumber(p220) or n18
                    v756()
                end
            })
            t5.Shots:AddToggle("RadiusVisualizerToggle", {
                Title = "Show Finger Zone",
                Default = false
            }):OnChanged(function(p221)
                u728 = p221

                if p221 then
                    v771()
                else
                    v768(false)
                end
            end)
            t5.Shots:AddSlider("MobileShotCooldown", {
                Title = "Shot Cooldown (s)",
                Default = n15,
                Min = 0,
                Max = 5,
                Rounding = 1,
                Callback = function(p222)
                    n15 = tonumber(p222) or n15
                end
            })
        end)
        v48("Mobile Triggerbot", { "HasTouch" }, "Mobile", function()
            if not v302 then
                v22("Mobile Triggerbot", "ShootGun remote missing")

                return
            end

            local Modules2 = ReplicatedStorage:FindFirstChild("Modules")
            local WeaponRaycast
            local CollisionGroups

            pcall(function()
                WeaponRaycast = Modules2 and require(Modules2:WaitForChild("WeaponRaycast", 3)) or nil
                CollisionGroups = Modules2 and require(Modules2:WaitForChild("CollisionGroups", 3)) or nil
            end)

            local u856 = false
            local n22 = 0
            local u858 = true
            local u859
            local u860
            local n23 = 0
            local n24 = 0
            local part
            local n25 = 0

            local function v865()
                local v866 = v60()

                if v866 and v61(v866) and v322() then
                    return v866
                end

                return nil
            end
            local function v867(p223, p224, p225)
                if not p223 or not p224 then
                    return nil
                end

                if WeaponRaycast then
                    local ok, result = pcall(function()
                        return WeaponRaycast(p223, p224, nil, p225)
                    end)

                    if ok then
                        return result
                    end
                end

                local v870 = p224 - p223

                if v870.Magnitude <= 0 then
                    return nil
                end

                local raycastParams3 = RaycastParams.new()

                raycastParams3.FilterType = Enum.RaycastFilterType.Exclude
                raycastParams3.FilterDescendantsInstances = { LocalPlayer2.Character }

                if p225 then
                    pcall(function()
                        raycastParams3.CollisionGroup = p225
                    end)
                end

                return Workspace:Raycast(p223, v870, raycastParams3)
            end
            local function v872(p226)
                local v873, v874, SCREEN_RAYCAST, screenRaycast, v877

                if WeaponRaycast and WeaponRaycast.convertScreenPointToVector3 then
                    local ok, result = pcall(WeaponRaycast.convertScreenPointToVector3, p226)

                    if ok and result then
                        return result
                    end

                    local CurrentCamera2 = Workspace.CurrentCamera

                    if CurrentCamera2 then
                        v873 = CurrentCamera2:ViewportPointToRay(p226.X, p226.Y, 0)
                        v874 = v873.Origin + v873.Direction * 1000
                        SCREEN_RAYCAST = CollisionGroups and CollisionGroups.SCREEN_RAYCAST

                        if SCREEN_RAYCAST then
                            screenRaycast = v867(v873.Origin, v874, SCREEN_RAYCAST)
                            v877 = screenRaycast and screenRaycast.Position + v873.Direction * 10 or v874

                            return v877
                        end

                        screenRaycast = v867(v873.Origin, v874, "ScreenRaycast")

                        return screenRaycast and screenRaycast.Position + v873.Direction * 10 or v874
                    end
                else
                    local CurrentCamera2 = Workspace.CurrentCamera

                    if CurrentCamera2 then
                        v873 = CurrentCamera2:ViewportPointToRay(p226.X, p226.Y, 0)
                        v874 = v873.Origin + v873.Direction * 1000
                        SCREEN_RAYCAST = CollisionGroups and CollisionGroups.SCREEN_RAYCAST or "ScreenRaycast"
                        screenRaycast = v867(v873.Origin, v874, SCREEN_RAYCAST)
                        v877 = screenRaycast and screenRaycast.Position + v873.Direction * 10 or v874

                        return v877
                    end
                end

                return nil
            end
            local function v882()
                local v883 = v865()
                local CurrentCamera2 = Workspace.CurrentCamera
                local v885 = v346()

                if not v883 or not CurrentCamera2 or not v885 or not u860 or not u859 then
                    return nil
                end

                local v886 = v90(u859)
                local v887 = v872(v886)

                if not v887 then
                    return nil
                end

                local v888 = v867(CurrentCamera2.CFrame.Position, v887,
                    CollisionGroups and CollisionGroups.SCREEN_RAYCAST or "ScreenRaycast")
                local v889 = v867(v885, v888 and v888.Position or v887, nil) or v888

                if not v889 then
                    return nil
                end

                local v890 = v401(v889.Instance)

                if not v890 or not v400(v890) then
                    return nil
                end

                local Instance_ = v889.Instance
                local Position = v889.Position
                local v893 = v887

                if u858 then
                    local v894 = v402(v890, v889.Instance, v886) or v395(v890, v886)
                    local v895 = v555(v885, v890, v894, nil, v886, false)

                    if v894 and v895 then
                        Instance_ = v894
                        Position = v895
                        v893 = v895
                    end
                end

                return {
                    tool = v883,
                    part = Instance_,
                    position = Position,
                    direction = v893,
                    origin = v885,
                    cooldown = math.max(tonumber(v883:GetAttribute("Cooldown")) or 2.5, 0.15)
                }
            end

            v16(UserInputService.TouchStarted:Connect(function(p227, p228)
                if not (p228 or v108(v90(p227.Position))) then
                    u860 = p227
                    u859 = v89(p227.Position)
                end
            end))
            v16(UserInputService.TouchMoved:Connect(function(p229, p230)
                if not (p229 ~= u860 or p230 or v108(v90(p229.Position))) then
                    u859 = v89(p229.Position)
                end
            end))
            v16(UserInputService.TouchEnded:Connect(function(part2)
                if part2 == u860 then
                    u860 = nil
                    u859 = nil
                    part = nil
                end
            end))
            v24(RunService.RenderStepped, "Mobile Game Raycast Triggerbot", function()
                if not u856 then
                    part = nil

                    return
                end

                local now = tick()

                if now - n23 < t6.TriggerbotRate then
                    return
                end

                n23 = now

                local v897 = v882()

                if not v897 then
                    part = nil

                    return
                end

                if part ~= v897.part then
                    part = v897.part
                    n25 = now
                end

                if now - n25 < n22 or now - n24 < v897.cooldown then
                    return
                end

                local v898 = v315(v897.cooldown)

                if not v898 then
                    return
                end

                v556()
                v573()
                v575(v897.origin, v897.position, nil, false)
                v302:FireServer(v897.origin, v897.direction, v897.part, v897.position)
                v592(v897.cooldown)
                v316(v898, v897.cooldown)
                n24 = now
                part = nil
            end)
            t5.Trigger:AddToggle("MobileTriggerbotToggle", {
                Title = "Mobile Triggerbot [Finger]",
                Default = false
            }):OnChanged(function(p231)
                u856 = p231
                part = nil
            end)
            t5.Trigger:AddToggle("MobileTriggerbotSmartAim", {
                Title = "Smart Trigger Aim",
                Default = true
            }):OnChanged(function(p232)
                u858 = p232 == true
                part = nil
            end)
            t5.Trigger:AddSlider("MobileTriggerbotDelay", {
                Title = "Trigger Delay (ms)",
                Default = 0,
                Min = 0,
                Max = 500,
                Rounding = 0,
                Callback = function(p233)
                    local n26 = 0

                    n22 = math.max(n26, (tonumber(p233) or 0) / 1000)
                    part = nil
                end
            })
        end)
        v48("Knife Silent Aim", {}, nil, function()
            local Modules2 = ReplicatedStorage:FindFirstChild("Modules")
            local u901

            pcall(function()
                local WeaponRaycast = Modules2 and require(Modules2:WaitForChild("WeaponRaycast", 3))

                u901 = WeaponRaycast or nil
            end)

            if type(u901) ~= "table" or type(u901.convertScreenPointToVector3) ~= "function" then
                v22("Knife Silent Aim", "WeaponRaycast module unavailable")

                return
            end

            local u903 = false
            local s1 = "Prediction"
            local s2 = "Finger"
            local n27 = 180
            local n28 = 1
            local u908 = true
            local u909 = false
            local u910
            local n29 = 0
            local convertScreenPointToVector3 = u901.convertScreenPointToVector3

            local function v913()
                local v914 = v60()

                return v914 and not v61(v914) and v914:GetAttribute("ThrowSpeed") ~= nil
            end
            local function v915()
                local Character = LocalPlayer2.Character
                local Head = Character and Character:FindFirstChild("Head")

                if Head then
                    return (Head.CFrame * CFrame.new(0, Head.Size.Y / 2, Head.Size.Z / 2)).Position
                end

                return Character and Character:FindFirstChild("HumanoidRootPart") and Character.HumanoidRootPart
                .Position or nil
            end
            local function v918(p234, p235)
                if not u909 then
                    return true
                end

                if not p234 or not p235 then
                    return false
                end

                local Position = v915()

                if not Position then
                    local CurrentCamera2 = Workspace.CurrentCamera

                    Position = CurrentCamera2 and CurrentCamera2.CFrame.Position or nil
                end

                if Position then
                    return v399(Position, p234, p235)
                end

                return false
            end
            local function v921(p236)
                if not Workspace.CurrentCamera then
                    return nil
                end

                local v922 = v90(p236)
                local v923
                local huge = s2 == "Nearest" and math.huge or n27
                local HumanoidRootPart = LocalPlayer2.Character and
                LocalPlayer2.Character:FindFirstChild("HumanoidRootPart")

                for _, v in ipairs(t7) do
                    if v400(v) then
                        local Character = v.Character
                        local Magnitude
                        local UpperTorso

                        if s2 == "Nearest" and HumanoidRootPart then
                            local HumanoidRootPart2 = Character and Character:FindFirstChild("HumanoidRootPart")

                            UpperTorso = Character and
                            (Character:FindFirstChild("UpperTorso") or Character:FindFirstChild("Torso") or HumanoidRootPart2 or Character:FindFirstChild("Head"))

                            if UpperTorso then
                                Magnitude = (UpperTorso.Position - HumanoidRootPart.Position).Magnitude
                            end
                        else
                            UpperTorso, Magnitude = v395(v, v922)
                        end

                        if UpperTorso and Magnitude and Magnitude <= huge and v918(Character, UpperTorso.Position) then
                            huge = Magnitude
                            v923 = UpperTorso
                        end
                    end
                end

                return v923
            end
            local function v932(p237)
                local v933 = v915()
                local v934 = v60()

                if not v933 or not v934 or not p237 then
                    local Position = p237 and p237.Position or nil

                    return Position
                end

                local v936 = tonumber(v934:GetAttribute("ThrowSpeed")) or 100
                local v937 = math.max(v936, 1)
                local n30 = 0

                pcall(function()
                    n30 = LocalPlayer2:GetNetworkPing()
                end)
                n30 = math.clamp(tonumber(n30) or 0, 0, 0.35)

                local v939 = (p237.Position - v933).Magnitude / v937 + n30

                if u908 then
                    v939 += math.clamp(n30 * 0.35, 0, 0.08)
                end

                local v940 = math.clamp(v939, 0, 3)
                local AssemblyLinearVelocity = p237.AssemblyLinearVelocity

                if typeof(AssemblyLinearVelocity) ~= "Vector3" then
                    AssemblyLinearVelocity = Vector3.zero
                end

                local HumanoidRootPart = p237.Parent and p237.Parent:FindFirstChild("HumanoidRootPart")

                if HumanoidRootPart and HumanoidRootPart:IsA("BasePart") and AssemblyLinearVelocity.Magnitude < 1 then
                    AssemblyLinearVelocity = HumanoidRootPart.AssemblyLinearVelocity
                end

                return p237.Position + AssemblyLinearVelocity * v940 * n28
            end
            local function convertScreenPointToVector32(p238, p239)
                if u903 and v913() then
                    u910 = v921(p238)
                    n29 = tick() + 3

                    if s1 == "Prediction" and u910 then
                        local v944 = v932(u910)

                        if v944 and v918(u910.Parent, v944) then
                            return v944
                        end
                    end
                end

                return convertScreenPointToVector3(p238, p239)
            end
            local function v945()
                if not u903 or s1 ~= "Prediction" then
                    if u901.convertScreenPointToVector3 == convertScreenPointToVector32 then
                        u901.convertScreenPointToVector3 = convertScreenPointToVector3
                    end
                elseif u901.convertScreenPointToVector3 ~= convertScreenPointToVector32 then
                    if type(u901.convertScreenPointToVector3) == "function" then
                        convertScreenPointToVector3 = u901.convertScreenPointToVector3
                    end

                    u901.convertScreenPointToVector3 = convertScreenPointToVector32
                end
            end
            local function v946(p240)
                if u903 and v913() and p240 then
                    u910 = v921(p240)
                    n29 = tick() + 3
                end
            end

            v16(UserInputService.TouchStarted:Connect(function(p241, p242)
                if not p242 then
                    v946(p241.Position)
                end
            end))
            v16(UserInputService.InputBegan:Connect(function(input, gameProcessed)
                if not (gameProcessed or input.UserInputType ~= Enum.UserInputType.MouseButton1) then
                    v946(UserInputService:GetMouseLocation())
                end
            end))
            v16(UserInputService.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    v946(UserInputService:GetMouseLocation())
                end
            end))
            v24(RunService.RenderStepped, "Knife Silent Aim Hook Watchdog", function()
                if u903 then
                    v945()
                elseif u901.convertScreenPointToVector3 == convertScreenPointToVector32 then
                    u901.convertScreenPointToVector3 = convertScreenPointToVector3
                end

                if u910 and (not u910.Parent or n29 < tick()) then
                    u910 = nil
                end
            end)
            v19(function()
                u903 = false
                u910 = nil

                if u901.convertScreenPointToVector3 == convertScreenPointToVector32 then
                    u901.convertScreenPointToVector3 = convertScreenPointToVector3
                end
            end)
            t5.Shots:AddToggle("KnifeSilentAimToggle", {
                Title = "Knife Silent Aim",
                Default = false
            }):OnChanged(function(p243)
                u903 = p243
                u910 = nil
                v945()
            end)
            t5.Shots:AddDropdown("KnifeSilentAimMode", {
                Title = "Mode",
                Values = { "Prediction" },
                Default = "Prediction",
                Callback = function(p244)
                    s1 = p244
                    u910 = nil
                    v945()
                end
            })
            t5.Shots:AddDropdown("KnifeSilentAimTarget", {
                Title = "Target",
                Values = {
                    "Finger",
                    "Nearest"
                },
                Default = "Finger",
                Callback = function(p245)
                    s2 = p245
                    u910 = nil
                end
            })
            t5.Shots:AddToggle("KnifeSilentAimWallCheck", {
                Title = "Knife Wall Check",
                Default = false
            }):OnChanged(function(p246)
                u909 = p246 == true
                u910 = nil
            end)
            t5.Shots:AddToggle("KnifeSilentAimAutoPrediction", {
                Title = "Auto Knife Prediction",
                Default = true
            }):OnChanged(function(p247)
                u908 = p247 == true
                u910 = nil
            end)
            t5.Shots:AddSlider("KnifeSilentAimRadius", {
                Title = "Radius",
                Default = n27,
                Min = 20,
                Max = 500,
                Rounding = 0,
                Callback = function(p248)
                    n27 = tonumber(p248) or n27
                end
            })

            local KnifeSilentAimPrediction = t5.Shots:AddSlider("KnifeSilentAimPrediction", {
                Title = "Prediction",
                Default = 100,
                Min = 0,
                Max = 200,
                Rounding = 0,
                Callback = function(p249)
                    n28 = math.max(0, (tonumber(p249) or 100) / 100)
                end
            })

            t5.Shots:AddButton({
                Title = "Calibrate Knife Prediction",
                Description = "Sets prediction from current ping.",
                Callback = function()
                    local n31 = 0

                    pcall(function()
                        n31 = LocalPlayer2:GetNetworkPing()
                    end)
                    n31 = math.clamp(tonumber(n31) or 0, 0, 0.35)

                    local v949 = math.clamp(math.floor(100 + n31 * 180 + 0.5), 80, 165)

                    n28 = v949 / 100

                    if KnifeSilentAimPrediction and type(KnifeSilentAimPrediction.SetValue) == "function" then
                        KnifeSilentAimPrediction:SetValue(v949)
                    end

                    Fluent:Notify({
                        Title = "Knife Prediction",
                        Content = "Calibrated to " .. tostring(v949) .. "% for current ping.",
                        Duration = 3
                    })
                end
            })
        end)
        v48("PC Triggerbots", {}, "PC", function()
            if not v302 then
                v22("PC Triggerbot", "ShootGun remote missing")

                return
            end

            local WeaponRaycast
            local u951

            pcall(function()
                local Modules2 = ReplicatedStorage:FindFirstChild("Modules")
                local CollisionGroups

                if Modules2 then
                    WeaponRaycast = require(Modules2:WaitForChild("WeaponRaycast", 3)) or nil
                    CollisionGroups = require(Modules2:WaitForChild("CollisionGroups", 3))

                    if not CollisionGroups then
                        CollisionGroups = nil
                        u951 = CollisionGroups

                        return
                    end
                else
                    WeaponRaycast = nil
                    CollisionGroups = nil
                end

                u951 = CollisionGroups
            end)

            local t28 = {
                enabled = false,
                keybindEnabled = false,
                keybind = Enum.KeyCode.T,
                mode = "Hold",
                delay = 0,
                smartAim = false
            }
            local u955 = false
            local n32 = 0
            local n33 = 0
            local player
            local instance
            local n34 = 0
            local u961
            local u962
            local pcTriggerbotGunSuppression
            local n35 = 0
            local obj3 = setmetatable({}, {
                __mode = "k"
            })

            local function v966()
                return t28.enabled or t28.keybindEnabled and u955
            end
            local function v967()
                local v968 = v60()

                if v968 and v61(v968) and v322() then
                    return v968
                end

                return nil
            end
            local function v969()
                local v970 = pcTriggerbotGunSuppression ~= nil or u962 ~= nil or next(obj3) ~= nil

                if pcTriggerbotGunSuppression then
                    pcall(function()
                        pcTriggerbotGunSuppression:Disconnect()
                    end)
                    pcTriggerbotGunSuppression = nil
                end

                for k in pairs(obj3) do
                    if k and k.Parent and v61(k) then
                        pcall(function()
                            k.Enabled = true
                        end)
                    end

                    obj3[k] = nil
                end

                if v970 then
                    local v972 = v60()

                    if v972 and v61(v972) then
                        pcall(function()
                            v972.Enabled = true
                        end)
                    end
                end

                u962 = nil
                u310 = false
                n4 = 0
            end
            local function v973()
                local v974 = v60()

                if not v974 or not v61(v974) then
                    return
                end

                obj3[v974] = true

                if u962 ~= v974 then
                    if pcTriggerbotGunSuppression then
                        pcall(function()
                            pcTriggerbotGunSuppression:Disconnect()
                        end)
                        pcTriggerbotGunSuppression = nil
                    end

                    pcTriggerbotGunSuppression = v24(v974:GetPropertyChangedSignal("Enabled"),
                        "PC Triggerbot Gun Suppression", function()
                        if v966() and v974.Enabled then
                            pcall(function()
                                v974.Enabled = false
                            end)
                        end
                    end)
                end

                local now = tick()

                if u962 ~= v974 or not (now - n35 < 0.25) then
                    u962 = v974
                    n35 = now
                    pcall(function()
                        v974.Enabled = false
                    end)

                    return
                end

                if v974.Enabled then
                    pcall(function()
                        v974.Enabled = false
                    end)
                end
            end
            local function v976(p250, p251, p252)
                if not p250 or not p251 then
                    return nil
                end

                if WeaponRaycast then
                    local ok, result = pcall(function()
                        return WeaponRaycast(p250, p251, nil, p252)
                    end)

                    if ok then
                        return result
                    end
                end

                local raycastParams3 = RaycastParams.new()

                raycastParams3.FilterType = Enum.RaycastFilterType.Blacklist
                raycastParams3.FilterDescendantsInstances = { LocalPlayer2.Character }

                if p252 then
                    pcall(function()
                        raycastParams3.CollisionGroup = p252
                    end)
                end

                local v980 = p251 - p250

                if v980.Magnitude <= 0 then
                    return nil
                end

                return Workspace:Raycast(p250, v980, raycastParams3)
            end
            local function v981(p253)
                if WeaponRaycast and WeaponRaycast.convertScreenPointToVector3 then
                    local ok, result = pcall(function()
                        return WeaponRaycast.convertScreenPointToVector3(p253)
                    end)

                    if ok and result then
                        return result
                    end
                end

                local v984 = CurrentCamera:ViewportPointToRay(p253.X, p253.Y, 0)
                local v985 = v984.Origin + v984.Direction * 1000
                local v986 = v976(v984.Origin, v985, u951 and u951.SCREEN_RAYCAST or "ScreenRaycast")
                local v987 = v986 and v986.Position + v984.Direction * 10 or v985

                return v987
            end
            local function v988()
                if v108(v98()) then
                    return nil
                end

                local v989 = v967()

                if not v989 then
                    return nil
                end

                local v990 = v346()
                local CurrentCamera2 = Workspace.CurrentCamera

                if not v990 or not CurrentCamera2 then
                    return nil
                end

                local v992 = v98()
                local v993 = v981(v992)
                local v994 = v976(CurrentCamera2.CFrame.Position, v993, u951 and u951.SCREEN_RAYCAST or "ScreenRaycast")
                local v995 = v976(v990, v994 and v994.Position or v993, nil) or v994
                local Instance_ = v995 and v995.Instance
                local Position = v995 and v995.Position

                if not Instance_ or not Position then
                    return nil
                end

                local v998 = v401(Instance_)

                if not v998 or not v400(v998) then
                    return nil
                end

                local v999 = Instance_
                local v1000 = Position
                local v1001 = v993

                if t28.smartAim then
                    local v1002 = v402(v998, Instance_, v992) or v396(v998, v992)
                    local v1003 = v555(v990, v998, v1002, nil, v992, true)

                    if v1002 and v1003 then
                        v999 = v1002
                        v1000 = v1003
                        v1001 = v1003
                    end
                end

                return {
                    tool = v989,
                    player = v998,
                    instance = v999,
                    position = v1000,
                    origin = v990,
                    direction = v1001,
                    cooldown = math.max(tonumber(v989:GetAttribute("Cooldown")) or 2.5, 0.15)
                }
            end
            local function v1004(p254)
                if p254 and u961 then
                    v317(u961, 0.05)
                end

                player = nil
                instance = nil
                n34 = 0
                u961 = nil
            end
            local function v1005(p255)
                if not p255 then
                    return false
                end

                if u961 and not v318(u961) then
                    u961 = nil

                    return false
                end

                local v1006 = u961 or v315(0.15)

                if not v1006 then
                    return false
                end

                local now = tick()

                if now - n33 < p255.cooldown then
                    v317(v1006, 0.05)

                    if v1006 == u961 then
                        u961 = nil
                    end

                    return false
                end

                v973()
                v556()
                v573()
                v575(p255.origin, p255.position, nil, false)
                v302:FireServer(p255.origin, p255.direction, p255.instance, p255.position)
                v592(p255.cooldown)
                n33 = now
                v316(v1006, p255.cooldown)

                if v1006 == u961 then
                    u961 = nil
                end

                return true
            end
            local function v1008()
                if v966() then
                    return
                end

                v1004(true)
                v969()
            end

            v24(RunService.RenderStepped, "PC Game Raycast Triggerbot", function()
                if not v966() then
                    v1004(true)
                    v969()

                    return
                end

                v973()

                local now = tick()

                if now - n32 < t6.TriggerbotRate then
                    return
                end

                n32 = now

                local v1010 = v988()

                if not v1010 then
                    v1004(true)

                    return
                end

                if player ~= v1010.player or instance ~= v1010.instance then
                    v1004(true)
                    player = v1010.player
                    instance = v1010.instance
                    n34 = now

                    if t28.delay > 0 then
                        u961 = v315(t28.delay + v1010.cooldown)

                        if not u961 then
                            v1004(false)
                        end

                        return
                    end
                end

                if t28.delay > 0 and now - n34 < t28.delay then
                    return
                end

                if v1005(v1010) then
                    v1004(false)
                end
            end)
            v16(UserInputService.InputBegan:Connect(function(input, gameProcessed)
                if not gameProcessed then
                    if input.KeyCode == t28.keybind then
                        if t28.mode == "Toggle" then
                            u955 = not u955
                        else
                            u955 = true
                        end

                        v1008()

                        return
                    end
                end
            end))
            v16(UserInputService.InputEnded:Connect(function(input)
                if t28.mode == "Hold" and input.KeyCode == t28.keybind then
                    u955 = false
                    v1008()
                end
            end))
            t5.Trigger:AddToggle("TriggerbotV1Toggle", {
                Title = "Triggerbot",
                Default = false
            }):OnChanged(function(p256)
                t28.enabled = p256
                v1004(true)
                v1008()
            end)
            t5.Trigger:AddToggle("TriggerbotSmartAim", {
                Title = "Smart Trigger Aim",
                Default = false
            }):OnChanged(function(p257)
                t28.smartAim = p257 == true
                v1004(true)
            end)
            t5.Trigger:AddToggle("TriggerbotV2Enabled", {
                Title = "Use Keybind",
                Default = false
            }):OnChanged(function(p258)
                t28.keybindEnabled = p258

                if not p258 then
                    u955 = false
                end

                v1004(true)
                v1008()
            end)
            t5.Trigger:AddDropdown("TriggerbotV2Keybind", {
                Title = "Trigger Key",
                Values = {
                    "A",
                    "B",
                    "C",
                    "D",
                    "E",
                    "F",
                    "G",
                    "H",
                    "I",
                    "J",
                    "K",
                    "L",
                    "M",
                    "N",
                    "O",
                    "P",
                    "Q",
                    "R",
                    "S",
                    "T",
                    "U",
                    "V",
                    "W",
                    "X",
                    "Y",
                    "Z",
                    "LeftShift",
                    "LeftAlt",
                    "CapsLock",
                    "Space",
                    "LeftControl",
                    "RightControl"
                },
                Default = "T",
                Callback = function(p259)
                    t28.keybind = v38(p259)
                end
            })
            t5.Trigger:AddDropdown("TriggerbotV2Mode", {
                Title = "Trigger Mode",
                Values = {
                    "Hold",
                    "Toggle"
                },
                Default = "Hold",
                Callback = function(p260)
                    t28.mode = p260
                    u955 = false
                    v1008()
                end
            })
            t5.Trigger:AddSlider("TriggerbotDelay", {
                Title = "Trigger Delay (ms)",
                Default = 0,
                Min = 0,
                Max = 500,
                Rounding = 0,
                Callback = function(p261)
                    t28.delay = math.max(0, (tonumber(p261) or 0) / 1000)
                    v1004(true)
                end
            })
        end)
    end

    v48("Hitbox Expander", {}, nil, function()
        local u1011 = false
        local n36 = 4.1
        local u1013 = false
        local u1014 = true
        local u1015 = false
        local t29 = {
            "Head",
            "HumanoidRootPart",
            "UpperTorso",
            "Torso"
        }
        local t30 = {}
        local u1018 = false
        local raycastParams3 = RaycastParams.new()

        raycastParams3.FilterType = Enum.RaycastFilterType.Blacklist

        local function v1020(p262)
            if p262 then
                local HumanoidRootPart = p262:FindFirstChild("HumanoidRootPart")

                if HumanoidRootPart then
                    HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                    HumanoidRootPart.Material = Enum.Material.Plastic
                    HumanoidRootPart.BrickColor = BrickColor.new("White")
                    HumanoidRootPart.Transparency = 1

                    return
                end
            end
        end
        local function v1022()
            for k in pairs(t30) do
                v1020(k)
                t30[k] = nil
            end
        end
        local function v1024(p263)
            raycastParams3.FilterDescendantsInstances = { LocalPlayer2.Character }

            local Position = CurrentCamera.CFrame.Position
            local hit = Workspace:Raycast(Position, (p263.Position - Position).Unit * 500, raycastParams3)

            return hit and hit.Instance and hit.Instance:IsDescendantOf(p263.Parent)
        end
        local function v1027(p264, p265, p266)
            local HumanoidRootPart = p264 and p264:FindFirstChild("HumanoidRootPart")

            if not HumanoidRootPart then
                return
            end

            if p266 or not u1014 then
                t30[p264] = true
                HumanoidRootPart.Size = Vector3.new(p265, p265 * 1.6, p265)
                HumanoidRootPart.Material = Enum.Material.Metal
                HumanoidRootPart.BrickColor = BrickColor.new("Black")
                HumanoidRootPart.Transparency = u1013 and 0.8 or 1
            else
                v1020(p264)
                t30[p264] = nil
            end
        end
        local function v1029()
            local v1030 = u1015 and v337() or v335()

            if not u1011 or not v1030 then
                if u1018 then
                    v1022()
                end

                u1018 = false

                return
            end

            u1018 = true

            for _, v in ipairs(t7) do
                local Character = v.Character
                local v1034 = v53(Character)

                if v ~= LocalPlayer2 and v55(v) and v1034 and v1034.Health > 0 then
                    local v1035 = not u1014

                    if u1014 then
                        for _, v2 in ipairs(t29) do
                            local v1038 = Character:FindFirstChild(v2)

                            if v1038 and v1024(v1038) then
                                v1035 = true

                                break
                            end
                        end
                    end

                    v1027(Character, n36, v1035)
                elseif Character and t30[Character] then
                    v1020(Character)
                    t30[Character] = nil
                end
            end
        end

        task.spawn(function()
            while getgenv().VexalUnifiedLoaded do
                task.wait(t6.HBEInterval)

                if u1011 then
                    local v1039 = v53(LocalPlayer2.Character)

                    if v1039 and v1039.Health > 0 then
                        v1029()
                    else
                        v1022()
                        u1018 = false
                    end
                else
                    if u1018 then
                        v1022()
                    end

                    u1018 = false
                end
            end
        end)
        t5.Hitbox:AddToggle("EnableHBE", {
            Title = "Enable HBE",
            Default = false
        }):OnChanged(function(p267)
            u1011 = p267

            if not p267 then
                v1022()
            end
        end)
        t5.Hitbox:AddToggle("EnableKnifeHBE", {
            Title = "Enable Knife HBE",
            Default = false
        }):OnChanged(function(p268)
            u1015 = p268

            if not u1011 then
                v1022()
            end
        end)
        t5.Hitbox:AddSlider("HBEHitboxSize", {
            Title = "HBE Size",
            Default = n36,
            Min = 2,
            Max = 10,
            Rounding = 1,
            Callback = function(p269)
                n36 = tonumber(p269) or n36
            end
        })
        t5.Hitbox:AddToggle("VisualizeHBE", {
            Title = "Visualize Hitbox",
            Default = false
        }):OnChanged(function(p270)
            u1013 = p270
        end)
        t5.Hitbox:AddToggle("WallCheckHBE", {
            Title = "HBE Wall Check",
            Default = true
        }):OnChanged(function(p271)
            u1014 = p271
        end)
    end)

    do
        v62 = function(p272, p273)
            local function v1040(p274)
                if not p274 then
                    return nil
                end

                local ok, result = pcall(function()
                    return p274:GetAttribute("Role")
                end)

                if ok and result ~= nil and result ~= false and result ~= "" then
                    return tostring(result)
                end

                local Role = p274:FindFirstChild("Role")

                if Role then
                    local ok2, result2 = pcall(function()
                        return Role.Value
                    end)

                    if ok2 and result2 ~= nil and result2 ~= false and result2 ~= "" then
                        return tostring(result2)
                    end
                end

                return nil
            end

            local v1046 = v1040(p272) or v1040(p273)

            return v1046
        end
    end

    v63 = function(p275)
        if not p275 then
            return nil
        end

        local ok, result = pcall(function()
            return p275:GetAttribute("Match")
        end)

        if not ok or result == nil or result == false or result == 0 or result == "" then
            return nil
        end

        return result
    end
end

local function v1049()
    local n37 = 0

    for _, player in pairs(Players:GetPlayers()) do
        local PlayerName = Workspace:FindFirstChild(player.Name)

        if PlayerName and PlayerName:IsA("Model") then
            n37 += 1
        end
    end

    return n37
end
local function v1054()
    if v1049() > 8 then
        return false
    end

    if v62(LocalPlayer2.Character, LocalPlayer2) == nil then
        return v63(LocalPlayer2) ~= nil or v58()
    end

    return true
end
local function v1055(p276, p277, p278)
    if p278 == nil then
        p278 = v62(LocalPlayer2.Character, LocalPlayer2) ~= nil
    end

    if p278 then
        return v62(p276, p277) ~= nil
    end

    return true
end

local t31 = {
    Enabled = false,
    TeamCheck = false,
    AliveCheck = true,
    ShowBox = true,
    BoxStyle = "Corner",
    GlowFill = false,
    ShowName = false,
    ShowRole = false,
    ShowDistance = false,
    ShowHealth = false,
    ShowSkeleton = false,
    ShowHeadDot = false,
    ShowTracer = false,
    ShowChams = false,
    ShowOffscreen = false,
    ColorMode = "Role",
    InfoMode = "Clean",
    MaxDistance = 2500,
    ChamsFill = 0.68,
    TextSize = t4.IsMobile and 11 or 12,
    UpdateRate = t4.IsMobile and 0.05 or 0.033333333333333333,
    DetailRate = t4.IsMobile and 0.35 or 0.24,
    SkeletonRate = t4.IsMobile and 0.083333333333333329 or 0.055555555555555552
}
local t32 = {
    murderer = Color3.fromRGB(255, 72, 92),
    murder = Color3.fromRGB(255, 72, 92),
    killer = Color3.fromRGB(255, 72, 92),
    sheriff = Color3.fromRGB(68, 188, 255),
    hero = Color3.fromRGB(255, 215, 92),
    innocent = Color3.fromRGB(96, 255, 154),
    dual = Color3.fromRGB(178, 124, 255)
}
local color3 = Color3.fromRGB(96, 172, 255)
local color32 = Color3.fromRGB(255, 85, 112)
local color33 = Color3.fromRGB(235, 238, 255)
local color34 = Color3.fromRGB(2, 4, 10)

local function v1062(p279)
    return tostring(p279 or ""):lower():gsub("%s+", "")
end
local function v1063(p280, p281)
    if t31.ColorMode == "Team" then
        return v54(p280) and color3 or color32
    end

    local v1064 = v62(p281, p280)
    local v1065 = t32[v1062(v1064)]

    if v1065 then
        return v1065
    end

    if v54(p280) then
        return color3
    end

    if v55(p280) then
        return color32
    end

    return color33
end
local function v1066(p282, p283)
    local v1067 = v62(p283, p282)

    if v1067 then
        if v1067 ~= "" then
            return tostring(v1067)
        end
    end

    if p282 and p282.Team then
        return tostring(p282.Team.Name)
    end

    return "Player"
end
local function v1068(p284)
    local v1069 = math.clamp(tonumber(p284) or 0, 0, 1)

    if v1069 > 0.62 then
        return Color3.fromRGB(68, 255, 142)
    end

    if v1069 > 0.32 then
        return Color3.fromRGB(255, 218, 86)
    end

    return Color3.fromRGB(255, 82, 98)
end

local v1070, v1071, v1072, v1073, v1074, v1075, t33, v1077, v1078

do
    local function v1079(p285, p286)
        if not t4.HasDrawing or type(Drawing) ~= "table" then
            return nil
        end

        local ok, result = pcall(function()
            return Drawing.new(p285)
        end)

        if not ok or not result then
            return nil
        end

        v17(result)

        local v1082 = p286 or {}

        for k, v in pairs(v1082) do
            pcall(function()
                result[k] = v
            end)
        end

        return result
    end

    v1070 = function(p287, p288)
        if p287 then
            pcall(function()
                p287.Visible = p288 == true
            end)
        end
    end
    v1071 = function(p289, p290)
        if not p289 then
            return
        end

        local v1085 = p290 or {}

        for k, v in pairs(v1085) do
            pcall(function()
                p289[k] = v
            end)
        end
    end
    v1072 = function(p291, p292, p293, p294, p295, p296)
        if not p291 then
            return
        end

        pcall(function()
            p291.From = p292
            p291.To = p293
            p291.Color = p294
            p291.Transparency = p296 or 1
            p291.Thickness = p295 or 1.6
            p291.Visible = true
        end)
    end
    v1073 = function()
        local CurrentCamera2 = Workspace.CurrentCamera

        if CurrentCamera2 then
            CurrentCamera = CurrentCamera2
        end

        return CurrentCamera2 or CurrentCamera
    end

    local function v1089(p297)
        return type(p297) == "number" and p297 == p297 and math.abs(p297) < math.huge
    end

    v1074 = function(p298)
        return p298 and v1089(p298.X) and v1089(p298.Y) and v1089(p298.Z) and p298.Z > 0
    end

    local function v1090(p299, p300, p301)
        if p299 then
            if v1074(p300) then
                local v1091 = p301 or 0
                local ViewportSize = p299.ViewportSize

                return p300.X >= -v1091 and p300.X <= ViewportSize.X + v1091 and p300.Y >= -v1091 and
                p300.Y <= ViewportSize.Y + v1091
            end
        end

        return false
    end

    v1075 = function(p302, p303, p304)
        if not p302 or not p303 then
            return nil, false
        end

        local v1093, v1094 = p302:WorldToViewportPoint(p303)

        return v1093, v1094 == true and v1090(p302, v1093, p304)
    end
    t33 = {}

    local function v1095(p305, p306)
        local v1096 = v1079
        local s3 = "Line"
        local t34 = {
            Thickness = p305 or 1.5,
            Color = p306 or color33,
            Transparency = 1,
            Visible = false
        }

        return v1096(s3, t34)
    end
    local function v1099(p307)
        local t35 = {
            Drawings = {},
            Skeleton = {},
            Connections = {},
            Chams = nil,
            LastDetailUpdate = 0,
            LastSkeletonUpdate = 0,
            CachedColor = nil,
            CachedInfoText = ""
        }
        local Drawings = t35.Drawings

        Drawings.BoxShadow = v1079("Square", {
            Filled = false,
            Thickness = 3.5,
            Color = color34,
            Transparency = 0.72,
            Visible = false
        })
        Drawings.Box = v1079("Square", {
            Filled = false,
            Thickness = 1.35,
            Color = color33,
            Transparency = 1,
            Visible = false
        })
        Drawings.BoxFill = v1079("Square", {
            Filled = true,
            Thickness = 0,
            Color = color33,
            Transparency = 0.12,
            Visible = false
        })
        Drawings.HealthBack = v1079("Square", {
            Filled = true,
            Thickness = 0,
            Color = color34,
            Transparency = 0.82,
            Visible = false
        })
        Drawings.Health = v1079("Square", {
            Filled = true,
            Thickness = 0,
            Color = Color3.fromRGB(80, 255, 140),
            Transparency = 1,
            Visible = false
        })
        Drawings.Name = v1079("Text", {
            Center = true,
            Outline = true,
            Color = Color3.fromRGB(255, 255, 255),
            Size = t31.TextSize,
            Transparency = 1,
            Visible = false
        })
        Drawings.Info = v1079("Text", {
            Center = true,
            Outline = true,
            Color = Color3.fromRGB(205, 214, 255),
            Size = t31.TextSize - 1,
            Transparency = 1,
            Visible = false
        })
        Drawings.Tracer = v1095(1.25, color33)
        Drawings.HeadDot = v1079("Circle", {
            Filled = true,
            Radius = 4,
            Thickness = 1,
            Color = color33,
            Transparency = 0.9,
            Visible = false
        })
        Drawings.Arrow = v1079("Triangle", {
            Filled = true,
            Thickness = 1,
            Color = color33,
            Transparency = 0.92,
            Visible = false
        })
        Drawings.ArrowOutline = v1079("Triangle", {
            Filled = false,
            Thickness = 2,
            Color = color34,
            Transparency = 0.75,
            Visible = false
        })

        local function v1102(p308)
            if p308 then
                table.insert(t35.Connections, p308)
                v16(p308)
            end
        end

        v1102(p307.CharacterAdded:Connect(function(character)
            task.defer(function()
                if t35.Chams and character then
                    pcall(function()
                        t35.Chams.Parent = character
                    end)
                end
            end)
        end))
        v1102(p307.CharacterRemoving:Connect(function()
            if t35.Chams then
                pcall(function()
                    t35.Chams.Enabled = false
                end)
            end
        end))

        if p307.Character and t35.Chams then
            pcall(function()
                t35.Chams.Parent = p307.Character
            end)
        end

        t33[p307] = t35

        return t35
    end
    local function v1103(p309)
        if not p309 then
            return
        end

        for _, drawing in pairs(p309.Drawings) do
            v1070(drawing, false)
        end

        local Skeleton = p309.Skeleton or {}

        for _, v in ipairs(Skeleton) do
            v1070(v, false)
        end

        if p309.Corners then
            for _, corner in pairs(p309.Corners) do
                v1070(corner, false)
            end
        end

        if p309.Chams then
            pcall(function()
                p309.Chams.Enabled = false
            end)
        end
    end
    local function v1111(p310)
        local v1112 = t33[p310]

        if not v1112 then
            return
        end

        v1103(v1112)

        local Connections = v1112.Connections or {}

        for _, Connection in ipairs(Connections) do
            pcall(function()
                if Connection and Connection.Connected then
                    Connection:Disconnect()
                end
            end)
        end

        local Drawings = v1112.Drawings or {}

        for _, Drawing_ in pairs(Drawings) do
            v20(Drawing_)
        end

        local Skeleton = v1112.Skeleton or {}

        for _, v in ipairs(Skeleton) do
            v20(v)
        end

        if v1112.Corners then
            for _, corner in pairs(v1112.Corners) do
                v20(corner)
            end
        end

        if v1112.Chams then
            v21(v1112.Chams)
        end

        t33[p310] = nil
    end
    local function v1124(p311)
        if p311 == LocalPlayer2 then
            return nil
        end

        return t33[p311] or v1099(p311)
    end
    local function v1125(p312, p313)
        if not p312 then
            return nil
        end

        if not p312.Chams then
            local ok, chams = pcall(function()
                local Highlight = Instance.new("Highlight")

                Highlight.Name = "VexalPremiumESP"
                Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                Highlight.FillTransparency = t31.ChamsFill
                Highlight.OutlineTransparency = 0
                Highlight.Enabled = false

                return Highlight
            end)

            if ok and chams then
                v18(chams)
                p312.Chams = chams
            end
        end

        if p312.Chams and p313 then
            pcall(function()
                p312.Chams.Parent = p313
            end)
        end

        return p312.Chams
    end
    local function v1129(p314, p315, p316, p317)
        local Chams = p317 and v1125(p314, p315) or p314 and p314.Chams

        if not Chams then
            return
        end

        pcall(function()
            if p317 then
                Chams.Parent = p315
                Chams.Enabled = true
                Chams.FillColor = p316
                Chams.OutlineColor = p316
                Chams.FillTransparency = t31.ChamsFill
                Chams.OutlineTransparency = 0
            else
                Chams.Enabled = false
            end
        end)
    end

    v1077 = function()
        for _, v in pairs(t33) do
            v1103(v)
        end
    end
    v1078 = function()
        for _, v in pairs(t33) do
            v.CachedColor = nil
            v.CachedInfoText = nil
            v.LastDetailUpdate = 0
        end
    end

    local function v1135(p318, p319, p320)
        if not p318 or not p319 or not p320 then
            return nil
        end

        local v1136, v1137 = v1075(p320, p319.Position, 8)

        if not v1137 then
            return nil
        end

        local Head = p318:FindFirstChild("Head")
        local v1139 = (Head and Head.Position or p319.Position + Vector3.new(0, 2.7, 0)) + Vector3.new(0, 0.55, 0)
        local v1140 = p319.Position - Vector3.new(0, 3, 0)
        local v1141 = p320:WorldToViewportPoint(v1139)
        local v1142 = p320:WorldToViewportPoint(v1140)

        if not v1074(v1141) or not v1074(v1142) then
            return nil
        end

        local ViewportSize = p320.ViewportSize
        local v1144 = math.abs(v1142.Y - v1141.Y)

        if v1144 < 2 then
            return nil
        end

        local v1145 = t4.IsMobile and 16 or 18
        local v1146 = t4.IsMobile and 8 or 10
        local v1147 = math.max(v1145, math.min(ViewportSize.Y * 0.58, t4.IsMobile and 250 or 310))
        local v1148 = math.max(v1146, math.min(ViewportSize.X * 0.2, t4.IsMobile and 82 or 118))
        local v1149 = math.clamp(v1144, v1145, v1147)
        local v1150 = math.clamp(v1149 * 0.42, v1146, v1148)

        return Vector2.new(v1136.X - v1150 * 0.5, (v1141.Y + v1142.Y) * 0.5 - v1149 * 0.5), Vector2.new(v1150, v1149),
            v1136
    end
    local function v1151(p321, p322, p323, p324)
        local Drawings = p321.Drawings

        if not p321.Corners then
            p321.Corners = {}

            for _, v in ipairs({
                "C1",
                "C2",
                "C3",
                "C4",
                "C5",
                "C6",
                "C7",
                "C8"
            }) do
                p321.Corners[v] = v1095(1.5, p324)
            end
        end

        v1070(Drawings.Box, false)
        v1070(Drawings.BoxShadow, false)

        local X = p322.X
        local Y = p322.Y
        local X2 = p323.X
        local Y2 = p323.Y
        local v1159 = math.clamp(math.min(X2, Y2) * 0.24, 7, 18)
        local Corners = p321.Corners

        v1072(Corners.C1, Vector2.new(X, Y), Vector2.new(X + v1159, Y), p324, 1.6, 1)
        v1072(Corners.C2, Vector2.new(X, Y), Vector2.new(X, Y + v1159), p324, 1.6, 1)
        v1072(Corners.C3, Vector2.new(X + X2, Y), Vector2.new(X + X2 - v1159, Y), p324, 1.6, 1)
        v1072(Corners.C4, Vector2.new(X + X2, Y), Vector2.new(X + X2, Y + v1159), p324, 1.6, 1)
        v1072(Corners.C5, Vector2.new(X, Y + Y2), Vector2.new(X + v1159, Y + Y2), p324, 1.6, 1)
        v1072(Corners.C6, Vector2.new(X, Y + Y2), Vector2.new(X, Y + Y2 - v1159), p324, 1.6, 1)
        v1072(Corners.C7, Vector2.new(X + X2, Y + Y2), Vector2.new(X + X2 - v1159, Y + Y2), p324, 1.6, 1)
        v1072(Corners.C8, Vector2.new(X + X2, Y + Y2), Vector2.new(X + X2, Y + Y2 - v1159), p324, 1.6, 1)
    end
    local function v1161(p325)
        if not p325 or not p325.Corners then
            return
        end

        for _, corner in pairs(p325.Corners) do
            v1070(corner, false)
        end
    end
    local function v1164(p326)
        local Head = p326:FindFirstChild("Head")
        local UpperTorso = p326:FindFirstChild("UpperTorso") or p326:FindFirstChild("Torso") or
        p326:FindFirstChild("HumanoidRootPart")
        local LowerTorso = p326:FindFirstChild("LowerTorso") or UpperTorso
        local LeftUpperArm = p326:FindFirstChild("LeftUpperArm") or p326:FindFirstChild("Left Arm")
        local RightUpperArm = p326:FindFirstChild("RightUpperArm") or p326:FindFirstChild("Right Arm")
        local LeftLowerArm = p326:FindFirstChild("LeftLowerArm") or LeftUpperArm
        local RightLowerArm = p326:FindFirstChild("RightLowerArm") or RightUpperArm
        local LeftHand = p326:FindFirstChild("LeftHand") or LeftLowerArm
        local RightHand = p326:FindFirstChild("RightHand") or RightLowerArm
        local LeftUpperLeg = p326:FindFirstChild("LeftUpperLeg") or p326:FindFirstChild("Left Leg")
        local RightUpperLeg = p326:FindFirstChild("RightUpperLeg") or p326:FindFirstChild("Right Leg")
        local LeftLowerLeg = p326:FindFirstChild("LeftLowerLeg") or LeftUpperLeg
        local RightLowerLeg = p326:FindFirstChild("RightLowerLeg") or RightUpperLeg

        return {
            {
                Head,
                UpperTorso
            },
            {
                UpperTorso,
                LowerTorso
            },
            {
                UpperTorso,
                LeftUpperArm
            },
            {
                LeftUpperArm,
                LeftLowerArm
            },
            {
                LeftLowerArm,
                LeftHand
            },
            {
                UpperTorso,
                RightUpperArm
            },
            {
                RightUpperArm,
                RightLowerArm
            },
            {
                RightLowerArm,
                RightHand
            },
            {
                LowerTorso,
                LeftUpperLeg
            },
            {
                LeftUpperLeg,
                LeftLowerLeg
            },
            {
                LeftLowerLeg,
                p326:FindFirstChild("LeftFoot") or LeftLowerLeg
            },
            {
                LowerTorso,
                RightUpperLeg
            },
            {
                RightUpperLeg,
                RightLowerLeg
            },
            {
                RightLowerLeg,
                p326:FindFirstChild("RightFoot") or RightLowerLeg
            }
        }
    end
    local function v1178(p327, p328, p329, p330)
        if not t31.ShowSkeleton then
            local ipairs_ = ipairs
            local Skeleton = p327.Skeleton or {}

            for _, v in ipairs_(Skeleton) do
                v1070(v, false)
            end

            return
        end

        p327.Skeleton = p327.Skeleton or {}

        for i = 1, 16 do
            if not p327.Skeleton[i] then
                p327.Skeleton[i] = v1095(1.35, color33)
            end
        end

        local v1184 = v1164(p328)
        local Skeleton = p327.Skeleton or {}

        for i, v in ipairs(Skeleton) do
            local v1188 = v1184[i]

            if v1188 and v1188[1] and v1188[2] then
                local v1189, v1190 = v1075(p330, v1188[1].Position, 2)
                local v1191, v1192 = v1075(p330, v1188[2].Position, 2)

                if v1190 and v1192 then
                    v1072(v, Vector2.new(v1189.X, v1189.Y), Vector2.new(v1191.X, v1191.Y), p329, 1.35, 0.92)
                else
                    v1070(v, false)
                end
            else
                v1070(v, false)
            end
        end
    end
    local function v1193(p331, p332, p333, p334)
        local Drawings = p331.Drawings

        if not t31.ShowOffscreen then
            v1070(Drawings.Arrow, false)
            v1070(Drawings.ArrowOutline, false)

            return
        end

        if not p334 or not p332 then
            v1070(Drawings.Arrow, false)
            v1070(Drawings.ArrowOutline, false)

            return
        end

        local ViewportSize = p334.ViewportSize
        local vector2 = Vector2.new(ViewportSize.X * 0.5, ViewportSize.Y * 0.5)
        local v1197 = p334:WorldToViewportPoint(p332.Position)

        if not v1197 or not v1089(v1197.X) or not v1089(v1197.Y) or not v1089(v1197.Z) then
            v1070(Drawings.Arrow, false)
            v1070(Drawings.ArrowOutline, false)

            return
        end

        local v1198 = Vector2.new(v1197.X, v1197.Y) - vector2

        if v1197.Z < 0 then
            v1198 = -v1198
        end

        if v1198.Magnitude < 1 then
            v1198 = Vector2.new(0, -1)
        end

        local Unit = v1198.Unit
        local v1200 = vector2 + Unit * (math.min(ViewportSize.X, ViewportSize.Y) * 0.43)
        local vector22 = Vector2.new(-Unit.Y, Unit.X)
        local v1202 = t4.IsMobile and 13 or 15
        local v1203 = v1200 + Unit * v1202
        local v1204 = v1200 - Unit * v1202 * 0.82 + vector22 * v1202 * 0.72
        local v1205 = v1200 - Unit * v1202 * 0.82 - vector22 * v1202 * 0.72

        v1071(Drawings.ArrowOutline, {
            PointA = v1203,
            PointB = v1204,
            PointC = v1205,
            Color = color34,
            Visible = true
        })
        v1071(Drawings.Arrow, {
            PointA = v1203,
            PointB = v1204,
            PointC = v1205,
            Color = p333,
            Visible = true
        })
    end
    local function v1206(p335)
        v1070(p335.Drawings.Arrow, false)
        v1070(p335.Drawings.ArrowOutline, false)
    end
    local function v1207(p336, p337)
        local function v1208(p338)
            if not p338 then
                return nil
            end

            for _, child in ipairs(p338:GetChildren()) do
                if not child:IsA("Tool") then
                    continue
                end

                local v1211 = tostring(child.Name):lower()

                if v1211:find("knife", 1, true) then
                    return "KNIFE"
                end

                if v1211:find("gun", 1, true) or v1211:find("revolver", 1, true) then
                    return "GUN"
                end
            end

            return nil
        end

        local v1212 = v1208(p337)

        if not v1212 then
            v1212 = v1208(p336 and p336:FindFirstChildOfClass("Backpack"))
        end

        return v1212
    end
    local function v1213(p339, p340, p341, p342)
        local t36 = {}

        if t31.ShowRole then
            table.insert(t36, v1066(p339, p340))

            local v1215 = v1207(p339, p340)

            if v1215 then
                table.insert(t36, v1215)
            end
        end

        if t31.ShowHealth and p341 and p341.MaxHealth > 0 then
            table.insert(t36, tostring(math.floor(p341.Health + 0.5)) .. " HP")
        end

        if t31.ShowDistance and p342 then
            table.insert(t36, tostring(math.floor(p342 + 0.5)) .. "m")
        end

        if t31.InfoMode == "Clean" and #t36 > 2 then
            return t36[1] .. " | " .. t36[#t36]
        end

        return table.concat(t36, " | ")
    end

    local u1216 = false
    local n38 = 0

    local function v1218()
        return t31.Enabled and
        (t31.ShowBox or t31.ShowName or t31.ShowRole or t31.ShowDistance or t31.ShowHealth or t31.ShowSkeleton or t31.ShowHeadDot or t31.ShowTracer or t31.ShowChams or t31.ShowOffscreen)
    end

    v24(Players.PlayerRemoving, "Premium ESP PlayerRemoving", function(p343)
        v1111(p343)
    end)
    v24(RunService.RenderStepped, "Premium ESP Render", function()
        if not v1218() then
            if u1216 then
                v1077()
                u1216 = false
            end

            return
        end

        local now = tick()

        if now - n38 < t31.UpdateRate then
            return
        end

        n38 = now
        u1216 = true

        local v1220 = v1073()

        if not v1220 or not v1054() then
            v1077()

            return
        end

        local HumanoidRootPart = LocalPlayer2.Character and LocalPlayer2.Character:FindFirstChild("HumanoidRootPart")
        local v1222 = v62(LocalPlayer2.Character, LocalPlayer2) ~= nil
        local n39 = 0

        for _, v in ipairs(t7) do
            if t6.ESPMaxTargets <= n39 then
                break
            end

            local u1226 = t33[v]

            v23("Premium ESP PlayerUpdate", function()
                if not v or not v.Parent then
                    return
                end

                local Character = v.Character
                local HumanoidRootPart2 = Character and Character:FindFirstChild("HumanoidRootPart")
                local v1229 = Character and v53(Character)

                if not v59(v, Character, v1229, HumanoidRootPart2, t31.TeamCheck, t31.AliveCheck) or not v1055(Character, v, v1222) then
                    if u1226 then
                        v1103(u1226)
                    end

                    return
                end

                local Magnitude = HumanoidRootPart and (HumanoidRootPart2.Position - HumanoidRootPart.Position)
                .Magnitude or nil

                if Magnitude and math.min(t31.MaxDistance, t6.ESPMaxDistance) < Magnitude then
                    if u1226 then
                        v1103(u1226)
                    end

                    return
                end

                n39 += 1

                local v1231, v1232, v1233 = v1135(Character, HumanoidRootPart2, v1220)
                local v1234 = v1231 and v1232 and v1233

                if not (v1234 or t31.ShowOffscreen or t31.ShowChams) then
                    if u1226 then
                        v1103(u1226)
                    end

                    return
                end

                u1226 = u1226 or v1124(v)

                if not u1226 then
                    return
                end

                local v1235 = now - (u1226.LastDetailUpdate or 0) >= t31.DetailRate

                if v1235 or not u1226.CachedColor then
                    u1226.CachedColor = v1063(v, Character)
                    u1226.LastDetailUpdate = now
                end

                local CachedColor = u1226.CachedColor or color33

                if not v1234 then
                    for _, drawing in pairs(u1226.Drawings) do
                        v1070(drawing, false)
                    end

                    local ipairs_ = ipairs
                    local Skeleton = u1226.Skeleton or {}

                    for _, v2 in ipairs_(Skeleton) do
                        v1070(v2, false)
                    end

                    v1161(u1226)

                    if not t31.ShowChams then
                        v1129(u1226, Character, CachedColor, false)
                    elseif v1235 or not u1226.Chams or u1226.Chams.Enabled ~= true then
                        v1129(u1226, Character, CachedColor, true)
                    end

                    v1193(u1226, HumanoidRootPart2, CachedColor, v1220)

                    return
                end

                v1206(u1226)

                if t31.GlowFill then
                    v1071(u1226.Drawings.BoxFill, {
                        Position = v1231,
                        Size = v1232,
                        Color = CachedColor,
                        Transparency = 0.11,
                        Visible = true
                    })
                else
                    v1070(u1226.Drawings.BoxFill, false)
                end

                if not t31.ShowBox then
                    v1161(u1226)
                    v1070(u1226.Drawings.BoxShadow, false)
                    v1070(u1226.Drawings.Box, false)
                elseif t31.BoxStyle == "Full" then
                    v1161(u1226)
                    v1071(u1226.Drawings.BoxShadow, {
                        Position = v1231,
                        Size = v1232,
                        Visible = true
                    })
                    v1071(u1226.Drawings.Box, {
                        Position = v1231,
                        Size = v1232,
                        Color = CachedColor,
                        Visible = true
                    })
                else
                    v1151(u1226, v1231, v1232, CachedColor)
                end

                local v1243 = v1229.MaxHealth > 0 and math.clamp(v1229.Health / v1229.MaxHealth, 0, 1) or 0

                if t31.ShowHealth then
                    local Y = v1232.Y
                    local v1245 = v1231.X - 6

                    v1071(u1226.Drawings.HealthBack, {
                        Position = Vector2.new(v1245, v1231.Y - 1),
                        Size = Vector2.new(3, Y + 2),
                        Visible = true
                    })
                    v1071(u1226.Drawings.Health, {
                        Position = Vector2.new(v1245 + 1, v1231.Y + Y * (1 - v1243)),
                        Size = Vector2.new(1, math.max(1, Y * v1243)),
                        Color = v1068(v1243),
                        Visible = true
                    })
                else
                    v1070(u1226.Drawings.HealthBack, false)
                    v1070(u1226.Drawings.Health, false)
                end

                local v1246 = v1231.X + v1232.X * 0.5

                if t31.ShowName then
                    local v1247 = v1071
                    local Name = u1226.Drawings.Name
                    local tostring_ = tostring
                    local t37 = {
                        Text = tostring_(v.DisplayName or v.Name),
                        Position = Vector2.new(v1246, v1231.Y - 17),
                        Color = CachedColor,
                        Size = t31.TextSize,
                        Visible = true
                    }

                    v1247(Name, t37)
                else
                    v1070(u1226.Drawings.Name, false)
                end

                local ShowRole = t31.ShowRole or t31.ShowHealth or t31.ShowDistance
                local s4 = ""

                if ShowRole then
                    if v1235 or u1226.CachedInfoText == nil then
                        u1226.CachedInfoText = v1213(v, Character, v1229, Magnitude)
                    end

                    s4 = u1226.CachedInfoText or ""
                else
                    u1226.CachedInfoText = ""
                end

                if s4 == "" then
                    v1070(u1226.Drawings.Info, false)
                else
                    v1071(u1226.Drawings.Info, {
                        Text = s4,
                        Position = Vector2.new(v1246, v1231.Y + v1232.Y + 3),
                        Color = Color3.fromRGB(218, 225, 255),
                        Size = math.max(9, t31.TextSize - 1),
                        Visible = true
                    })
                end

                if t31.ShowHeadDot then
                    local Head = Character:FindFirstChild("Head")
                    local v1254
                    local v1255 = false

                    if Head then
                        v1254, v1255 = v1075(v1220, Head.Position, 2)
                    end

                    if v1255 then
                        local v1256 = math.clamp(v1232.Y * 0.045, 3, 7)

                        v1071(u1226.Drawings.HeadDot, {
                            Position = Vector2.new(v1254.X, v1254.Y),
                            Radius = v1256,
                            Color = CachedColor,
                            Visible = true
                        })
                    else
                        v1070(u1226.Drawings.HeadDot, false)
                    end
                else
                    v1070(u1226.Drawings.HeadDot, false)
                end

                if t31.ShowTracer then
                    local ViewportSize = v1220.ViewportSize
                    local mouseLocation

                    if t31.TracerOrigin == "Mouse" then
                        mouseLocation = UserInputService:GetMouseLocation()
                    elseif t31.TracerOrigin == "Center" then
                        mouseLocation = Vector2.new(ViewportSize.X * 0.5, ViewportSize.Y * 0.5)
                    else
                        mouseLocation = Vector2.new(ViewportSize.X * 0.5, ViewportSize.Y - 18)
                    end

                    v1071(u1226.Drawings.Tracer, {
                        From = mouseLocation,
                        To = Vector2.new(v1233.X, v1233.Y),
                        Color = CachedColor,
                        Transparency = 0.72,
                        Visible = true
                    })
                else
                    v1070(u1226.Drawings.Tracer, false)
                end

                if not t31.ShowSkeleton then
                    v1178(u1226, Character, CachedColor, v1220)
                elseif t31.SkeletonRate <= now - (u1226.LastSkeletonUpdate or 0) then
                    u1226.LastSkeletonUpdate = now
                    v1178(u1226, Character, CachedColor, v1220)
                end

                if not t31.ShowChams then
                    v1129(u1226, Character, CachedColor, false)
                elseif v1235 or not u1226.Chams or u1226.Chams.Enabled ~= true then
                    v1129(u1226, Character, CachedColor, true)
                end
            end)
        end
    end)
end

do
    t5.Visuals:AddToggle("PremiumESP", {
        Title = "Enable ESP",
        Default = false
    }):OnChanged(function(p344)
        t31.Enabled = p344

        if not p344 then
            v1077()
        end
    end)
    t5.Visuals:AddToggle("PremiumESPTeamCheck", {
        Title = "Team Check",
        Default = false
    }):OnChanged(function(p345)
        t31.TeamCheck = p345
    end)
    t5.Visuals:AddDropdown("PremiumESPBoxStyle", {
        Title = "Box Style",
        Values = {
            "Corner",
            "Full"
        },
        Default = "Corner"
    }):OnChanged(function(p346)
        t31.BoxStyle = p346
    end)
    t5.Visuals:AddDropdown("PremiumESPColorMode", {
        Title = "Color Mode",
        Values = {
            "Role",
            "Team"
        },
        Default = "Role"
    }):OnChanged(function(p347)
        t31.ColorMode = p347
        v1078()
    end)
    t5.Visuals:AddDropdown("PremiumESPInfoMode", {
        Title = "Info Style",
        Values = {
            "Clean",
            "Detailed"
        },
        Default = "Clean"
    }):OnChanged(function(p348)
        t31.InfoMode = p348
        v1078()
    end)
    t5.Visuals:AddSlider("PremiumESPDistance", {
        Title = "Max Distance",
        Default = t31.MaxDistance,
        Min = 100,
        Max = 5000,
        Rounding = 0,
        Callback = function(p349)
            t31.MaxDistance = tonumber(p349) or t31.MaxDistance
        end
    })
    t5.Visuals:AddToggle("PremiumESPBox", {
        Title = "Box",
        Default = true
    }):OnChanged(function(p350)
        t31.ShowBox = p350
    end)
    t5.Visuals:AddToggle("PremiumESPGlowFill", {
        Title = "Soft Fill",
        Default = false
    }):OnChanged(function(p351)
        t31.GlowFill = p351
    end)
    t5.Visuals:AddToggle("PremiumESPName", {
        Title = "Name",
        Default = t31.ShowName
    }):OnChanged(function(p352)
        t31.ShowName = p352
    end)
    t5.Visuals:AddToggle("PremiumESPRole", {
        Title = "Role / Team",
        Default = t31.ShowRole
    }):OnChanged(function(p353)
        t31.ShowRole = p353
        v1078()
    end)
    t5.Visuals:AddToggle("PremiumESPDistanceText", {
        Title = "Distance",
        Default = t31.ShowDistance
    }):OnChanged(function(p354)
        t31.ShowDistance = p354
        v1078()
    end)
    t5.Visuals:AddToggle("PremiumESPHealth", {
        Title = "Health Bar",
        Default = t31.ShowHealth
    }):OnChanged(function(p355)
        t31.ShowHealth = p355
        v1078()
    end)
    t5.Visuals:AddToggle("PremiumESPChams", {
        Title = "Highlight Chams",
        Default = t31.ShowChams
    }):OnChanged(function(p356)
        t31.ShowChams = p356

        if not p356 then
            for _, v in pairs(t33) do
                if v.Chams then
                    pcall(function()
                        v.Chams.Enabled = false
                    end)
                end
            end
        end
    end)
    t5.Visuals:AddToggle("PremiumESPSkeleton", {
        Title = "Skeleton",
        Default = false
    }):OnChanged(function(p357)
        t31.ShowSkeleton = p357

        if p357 then
            for _, v in pairs(t33) do
                v.LastSkeletonUpdate = 0
            end
        else
            for _, v in pairs(t33) do
                local ipairs_ = ipairs
                local Skeleton = v.Skeleton or {}

                for _, v2 in ipairs_(Skeleton) do
                    v1070(v2, false)
                end
            end
        end
    end)
    t5.Visuals:AddToggle("PremiumESPHeadDot", {
        Title = "Head Dot",
        Default = false
    }):OnChanged(function(p358)
        t31.ShowHeadDot = p358
    end)
    t5.Visuals:AddToggle("PremiumESPTracer", {
        Title = "Tracers",
        Default = false
    }):OnChanged(function(p359)
        t31.ShowTracer = p359
    end)
    t5.Visuals:AddDropdown("PremiumESPTracerOrigin", {
        Title = "Tracer Origin",
        Values = {
            "Bottom",
            "Center",
            "Mouse"
        },
        Default = "Bottom"
    }):OnChanged(function(p360)
        t31.TracerOrigin = p360
    end)
    t5.Visuals:AddToggle("PremiumESPOffscreen", {
        Title = "Offscreen Arrows",
        Default = t31.ShowOffscreen
    }):OnChanged(function(p361)
        t31.ShowOffscreen = p361
    end)
end

if not t4.HasDrawing then
    v22("Premium Drawing ESP", "missing Drawing API; highlight chams may still work")
end

local u1269, u1270, u1271, u1272, u1273, u1274, u1275, u1276, v1277, v1278

do
    u1269 = nil
    u1270 = nil
    u1271 = nil
    u1272 = nil
    u1273 = nil
    u1274 = nil
    u1275 = nil
    u1276 = nil

    local t38 = {
        Checks = {
            TeamCheck = false,
            AliveCheck = true
        },
        Box = {
            Enabled = false,
            Style = "Normal",
            Color = Color3.fromRGB(255, 255, 255),
            Thickness = 1,
            Transparency = 1,
            CornerSize = 5
        },
        HealthBar = {
            Enabled = false,
            Thickness = 1,
            Transparency = 1,
            FullColor = Color3.fromRGB(0, 255, 0),
            HalfColor = Color3.fromRGB(255, 255, 0),
            LowColor = Color3.fromRGB(255, 0, 0),
            Position = "Overhead",
            Width = 50
        },
        Chams = {
            Enabled = false,
            Transparency = 0.5
        }
    }

    local function v1280(p362, p363)
        local v1281 = p362 / p363

        if v1281 > 0.65 then
            return t38.HealthBar.FullColor
        end

        if v1281 > 0.35 then
            return t38.HealthBar.HalfColor
        end

        return t38.HealthBar.LowColor
    end

    local t39 = {}

    local function v1283(p364)
        if not p364 then
            return {}
        end

        if not p364.CornerLines then
            p364.CornerLines = {
                p364.TopLeftVert,
                p364.TopLeftHor,
                p364.TopRightVert,
                p364.TopRightHor,
                p364.BottomLeftVert,
                p364.BottomLeftHor,
                p364.BottomRightVert,
                p364.BottomRightHor
            }
        end

        return p364.CornerLines
    end
    local function v1284(p365)
        if not p365 then
            return nil
        end

        local ok, result = pcall(function()
            return p365:GetAttribute("Role")
        end)

        if not ok or result == nil or result == false or result == "" then
            return nil
        end

        return result
    end
    local function v1287(p366)
        if not p366 then
            return nil
        end

        local ok, result = pcall(function()
            return p366:GetAttribute("Match")
        end)

        if not ok or result == nil or result == false or result == 0 or result == "" then
            return nil
        end

        return result
    end
    local function v1290()
        local n40 = 0

        for _, player in pairs(Players:GetPlayers()) do
            local PlayerName = Workspace:FindFirstChild(player.Name)

            if PlayerName and PlayerName:IsA("Model") then
                n40 += 1
            end
        end

        return n40
    end

    v1277 = function()
        if v1290() > 8 then
            return false
        end

        if v1284(LocalPlayer2.Character) == nil then
            return v1287(LocalPlayer2) ~= nil
        end

        return true
    end
    v1278 = function(p367)
        if v1284(LocalPlayer2.Character) == nil then
            return true
        end

        return v1284(p367) ~= nil
    end

    local function v1295(p368, p369)
        if p368.Chams then
            pcall(function()
                p368.Chams.Enabled = p369
            end)
        end
    end
    local function v1296(p370, p371)
        if not p370.Chams or not p370.Chams.Parent then
            pcall(function()
                if p370.Chams then
                    p370.Chams:Destroy()
                end
            end)

            local Highlight = Instance.new("Highlight")

            Highlight.FillTransparency = t38.Chams.Transparency
            Highlight.OutlineTransparency = 0
            Highlight.Enabled = false
            p370.Chams = Highlight
        end

        pcall(function()
            p370.Chams.Parent = p371
        end)
    end
    local function v1298(p372)
        if not p372 then
            return
        end

        p372.Box.Visible = false
        p372.HealthBarOutline.Visible = false
        p372.HealthBar.Visible = false
        v1295(p372, false)

        for _, v in ipairs(v1283(p372)) do
            if v then
                v.Visible = false
            end
        end
    end
    local function v1301()
        for _, v in pairs(t39) do
            v1298(v)
        end
    end
    local function v1304(p373)
        local v1305 = t39[p373]

        if not v1305 then
            return
        end

        if v1305.Connections then
            for _, connection in ipairs(v1305.Connections) do
                pcall(function()
                    if connection and connection.Connected then
                        connection:Disconnect()
                    end
                end)
            end
        end

        pcall(function()
            v1305.Box:Remove()
            v1305.HealthBarOutline:Remove()
            v1305.HealthBar:Remove()

            if v1305.Chams then
                v1305.Chams:Destroy()
            end

            v1305.TopLeftVert:Remove()
            v1305.TopLeftHor:Remove()
            v1305.TopRightVert:Remove()
            v1305.TopRightHor:Remove()
            v1305.BottomLeftVert:Remove()
            v1305.BottomLeftHor:Remove()
            v1305.BottomRightVert:Remove()
            v1305.BottomRightHor:Remove()
        end)
        t39[p373] = nil
    end
    local function v1308(p374)
        if t39[p374] then
            v1304(p374)
        end

        local t40 = {
            Box = Drawing.new("Square"),
            HealthBarOutline = Drawing.new("Square"),
            HealthBar = Drawing.new("Square"),
            Chams = nil,
            TopLeftVert = Drawing.new("Line"),
            TopLeftHor = Drawing.new("Line"),
            TopRightVert = Drawing.new("Line"),
            TopRightHor = Drawing.new("Line"),
            BottomLeftVert = Drawing.new("Line"),
            BottomLeftHor = Drawing.new("Line"),
            BottomRightVert = Drawing.new("Line"),
            BottomRightHor = Drawing.new("Line"),
            Connections = {}
        }

        t40.CornerLines = {
            t40.TopLeftVert,
            t40.TopLeftHor,
            t40.TopRightVert,
            t40.TopRightHor,
            t40.BottomLeftVert,
            t40.BottomLeftHor,
            t40.BottomRightVert,
            t40.BottomRightHor
        }

        local function v1310(p375)
            if p375 then
                table.insert(t40.Connections, p375)
                v16(p375)
            end
        end

        t40.Box.Thickness = t38.Box.Thickness
        t40.Box.Color = t38.Box.Color
        t40.Box.Transparency = t38.Box.Transparency
        t40.Box.Filled = false
        t40.Box.Visible = false

        local t41 = {
            Thickness = t38.Box.Thickness,
            Color = t38.Box.Color,
            Transparency = t38.Box.Transparency,
            Visible = false
        }

        for _, cornerLine in ipairs(t40.CornerLines) do
            for k, v in pairs(t41) do
                cornerLine[k] = v
            end
        end

        t40.HealthBarOutline.Thickness = t38.HealthBar.Thickness
        t40.HealthBarOutline.Color = Color3.fromRGB(0, 0, 0)
        t40.HealthBarOutline.Transparency = t38.HealthBar.Transparency
        t40.HealthBarOutline.Filled = true
        t40.HealthBarOutline.Visible = false
        t40.HealthBar.Thickness = t38.HealthBar.Thickness
        t40.HealthBar.Transparency = t38.HealthBar.Transparency
        t40.HealthBar.Filled = true
        t40.HealthBar.Visible = false
        pcall(function()
            local Highlight = Instance.new("Highlight")

            Highlight.FillTransparency = t38.Chams.Transparency
            Highlight.OutlineTransparency = 0
            Highlight.Enabled = false

            if p374.Character then
                Highlight.Parent = p374.Character
            end

            t40.Chams = Highlight
        end)
        t39[p374] = t40

        if p374.Character then
            local v1317 = v53(p374.Character)

            if v1317 then
                v1310(v1317.Died:Connect(function()
                    v23("Drawing ESP HumanoidDied", function()
                        v1298(t40)
                    end)
                end))
            end
        end

        v1310(p374.CharacterAdded:Connect(function(character)
            v23("Drawing ESP CharacterAdded", function()
                v1296(t40, character)
                task.spawn(function()
                    local Humanoid = character:WaitForChild("Humanoid", 5)

                    if Humanoid then
                        v1310(Humanoid.Died:Connect(function()
                            v23("Drawing ESP HumanoidDied", function()
                                v1298(t40)
                            end)
                        end))
                    end
                end)
            end)
        end))
    end
    local function v1319()
        return t38.Box.Enabled or t38.HealthBar.Enabled or t38.Chams.Enabled
    end
    local function v1320(p376)
        if p376 ~= LocalPlayer2 and not t39[p376] then
            v1308(p376)
        end

        return t39[p376]
    end

    v24(Players.PlayerAdded, "Drawing ESP PlayerAdded", function(p377)
        if v1319() then
            v1320(p377)
        end
    end)
    v24(Players.PlayerRemoving, "Drawing ESP PlayerRemoving", function(p378)
        v1304(p378)
    end)

    local now = tick()
    local ESPUpdateRate = t6.ESPUpdateRate
    local u1323 = false

    v24(RunService.RenderStepped, "Drawing ESP Render", function()
        if not v1319() then
            if u1323 then
                v1301()
                u1323 = false
            end

            return
        end

        if not v51() or not v1277() then
            if u1323 then
                v1301()
                u1323 = false
            end

            return
        end

        local v1324 = v1073()

        if not v1324 then
            v1301()
            u1323 = false

            return
        end

        local now2 = tick()

        if now2 - now < ESPUpdateRate then
            return
        end

        now = now2
        u1323 = true

        local n41 = 0
        local HumanoidRootPart = LocalPlayer2.Character and LocalPlayer2.Character:FindFirstChild("HumanoidRootPart")

        for _, v in ipairs(t7) do
            if t6.ESPMaxTargets <= n41 then
                break
            end

            local v1330 = v1320(v)

            if v1330 then
                v23("Drawing ESP PlayerUpdate", function()
                    if not v or not v.Parent then
                        v1304(v)

                        return
                    end

                    local Character = v.Character

                    if not Character or not Character:FindFirstChild("HumanoidRootPart") then
                        v1298(v1330)

                        return
                    end

                    local v1332 = v53(Character)

                    if not v1332 then
                        v1298(v1330)

                        return
                    end

                    if not v1278(Character) then
                        v1298(v1330)

                        return
                    end

                    if v52(Character) then
                        v1298(v1330)

                        return
                    end

                    if t38.Checks.AliveCheck and v1332.Health <= 0 then
                        v1298(v1330)

                        return
                    end

                    if t38.Checks.TeamCheck and v54(v) then
                        v1298(v1330)

                        return
                    end

                    local HumanoidRootPart2 = Character.HumanoidRootPart

                    if HumanoidRootPart and t6.ESPMaxDistance < (HumanoidRootPart2.Position - HumanoidRootPart.Position).Magnitude then
                        v1298(v1330)

                        return
                    end

                    local v1334, v1335 = v1075(v1324, HumanoidRootPart2.Position, 2)

                    if not v1335 then
                        v1298(v1330)

                        return
                    end

                    n41 += 1

                    if t6.ESPMaxTargets < n41 then
                        v1298(v1330)

                        return
                    end

                    local v1336 = v1324:WorldToViewportPoint(HumanoidRootPart2.Position + Vector3.new(0, 3, 0))
                    local v1337 = v1324:WorldToViewportPoint(HumanoidRootPart2.Position - Vector3.new(0, 3, 0))

                    if not v1074(v1336) or not v1074(v1337) then
                        v1298(v1330)

                        return
                    end

                    local v1338 = math.clamp(math.abs(v1336.Y - v1337.Y), 8, v1324.ViewportSize.Y * 1.5)
                    local vector2 = Vector2.new(math.clamp(v1338 / 2, 4, v1324.ViewportSize.X * 0.8), v1338)
                    local vector22 = Vector2.new(v1334.X - vector2.X / 2, v1334.Y - vector2.Y / 2)

                    if not t38.Box.Enabled then
                        v1330.Box.Visible = false

                        for _, v2 in ipairs(v1283(v1330)) do
                            if v2 then
                                v2.Visible = false
                            end
                        end
                    elseif t38.Box.Style == "Normal" then
                        v1330.Box.Size = vector2
                        v1330.Box.Position = vector22
                        v1330.Box.Visible = true
                        v1330.Box.Color = v57(v)

                        for _, v2 in ipairs(v1283(v1330)) do
                            if v2 then
                                v2.Visible = false
                            end
                        end
                    else
                        v1330.Box.Visible = false

                        local CornerSize = t38.Box.CornerSize
                        local v1346 = v57(v)

                        v1330.TopLeftVert.From = Vector2.new(vector22.X, vector22.Y)
                        v1330.TopLeftVert.To = Vector2.new(vector22.X, vector22.Y + CornerSize)
                        v1330.TopLeftHor.From = Vector2.new(vector22.X, vector22.Y)
                        v1330.TopLeftHor.To = Vector2.new(vector22.X + CornerSize, vector22.Y)
                        v1330.TopRightVert.From = Vector2.new(vector22.X + vector2.X, vector22.Y)
                        v1330.TopRightVert.To = Vector2.new(vector22.X + vector2.X, vector22.Y + CornerSize)
                        v1330.TopRightHor.From = Vector2.new(vector22.X + vector2.X, vector22.Y)
                        v1330.TopRightHor.To = Vector2.new(vector22.X + vector2.X - CornerSize, vector22.Y)
                        v1330.BottomLeftVert.From = Vector2.new(vector22.X, vector22.Y + vector2.Y)
                        v1330.BottomLeftVert.To = Vector2.new(vector22.X, vector22.Y + vector2.Y - CornerSize)
                        v1330.BottomLeftHor.From = Vector2.new(vector22.X, vector22.Y + vector2.Y)
                        v1330.BottomLeftHor.To = Vector2.new(vector22.X + CornerSize, vector22.Y + vector2.Y)
                        v1330.BottomRightVert.From = Vector2.new(vector22.X + vector2.X, vector22.Y + vector2.Y)
                        v1330.BottomRightVert.To = Vector2.new(vector22.X + vector2.X,
                            vector22.Y + vector2.Y - CornerSize)
                        v1330.BottomRightHor.From = Vector2.new(vector22.X + vector2.X, vector22.Y + vector2.Y)
                        v1330.BottomRightHor.To = Vector2.new(vector22.X + vector2.X - CornerSize, vector22.Y + vector2
                        .Y)

                        for _, v2 in ipairs(v1283(v1330)) do
                            if v2 then
                                v2.Visible = true
                                v2.Color = v1346
                            end
                        end
                    end

                    if t38.HealthBar.Enabled then
                        local v1349 = v1332.Health / v1332.MaxHealth

                        if t38.HealthBar.Position == "Side" then
                            local Y = vector2.Y
                            local vector23 = Vector2.new(vector22.X - 5, vector22.Y)

                            v1330.HealthBarOutline.Size = Vector2.new(4, Y + 2)
                            v1330.HealthBarOutline.Position = Vector2.new(vector23.X - 1, vector23.Y - 1)
                            v1330.HealthBarOutline.Visible = true
                            v1330.HealthBar.Size = Vector2.new(2, Y * v1349)
                            v1330.HealthBar.Position = Vector2.new(vector23.X, vector23.Y + Y * (1 - v1349))
                            v1330.HealthBar.Color = v1280(v1332.Health, v1332.MaxHealth)
                            v1330.HealthBar.Visible = true
                        else
                            local Width = t38.HealthBar.Width
                            local vector23 = Vector2.new(vector22.X + (vector2.X - Width) / 2, vector22.Y - 10)

                            v1330.HealthBarOutline.Size = Vector2.new(Width + 2, 6)
                            v1330.HealthBarOutline.Position = Vector2.new(vector23.X - 1, vector23.Y - 1)
                            v1330.HealthBarOutline.Visible = true
                            v1330.HealthBar.Size = Vector2.new(Width * v1349, 4)
                            v1330.HealthBar.Position = vector23
                            v1330.HealthBar.Color = v1280(v1332.Health, v1332.MaxHealth)
                            v1330.HealthBar.Visible = true
                        end
                    else
                        v1330.HealthBar.Visible = false
                        v1330.HealthBarOutline.Visible = false
                    end

                    if t38.Chams.Enabled then
                        if not v1330.Chams or not v1330.Chams.Parent then
                            v1296(v1330, Character)
                        end

                        pcall(function()
                            v1330.Chams.Enabled = true
                            v1330.Chams.FillColor = v57(v)
                            v1330.Chams.OutlineColor = v57(v)
                        end)
                    else
                        v1295(v1330, false)
                    end
                end)
            end
        end
    end)
    t5.Visuals:AddParagraph({
        Title = "ESP",
        Content = "Box, Health Bar, and Highlight Chams."
    })
    t5.Visuals:AddToggle("BoxESP", {
        Title = "Box ESP",
        Default = false
    }):OnChanged(function()
        t38.Box.Enabled = Options.BoxESP.Value

        if not Options.BoxESP.Value then
            for _, v in pairs(t39) do
                v.Box.Visible = false

                for _, v2 in ipairs(v1283(v)) do
                    if v2 then
                        v2.Visible = false
                    end
                end
            end
        end
    end)
    t5.Visuals:AddDropdown("BoxStyle", {
        Title = "Box Style",
        Values = {
            "Normal",
            "Corner"
        },
        Default = "Normal"
    }):OnChanged(function(p379)
        t38.Box.Style = p379
    end)
    t5.Visuals:AddToggle("HealthBarESP", {
        Title = "Health Bar ESP",
        Default = false
    }):OnChanged(function()
        u1271 = 902364770
        u1272 = 894572140
        t38.HealthBar.Enabled = Options.HealthBarESP.Value

        if not Options.HealthBarESP.Value then
            for _, v in pairs(t39) do
                v.HealthBar.Visible = false
                v.HealthBarOutline.Visible = false
            end
        end
    end)
    t5.Visuals:AddDropdown("HealthBarPosition", {
        Title = "Health Bar Position",
        Values = {
            "Overhead",
            "Side"
        },
        Default = "Overhead"
    }):OnChanged(function(p380)
        t38.HealthBar.Position = p380
    end)
    t5.Visuals:AddToggle("TeamCheck", {
        Title = "Team Check",
        Default = false
    }):OnChanged(function()
        t38.Checks.TeamCheck = Options.TeamCheck.Value
    end)
    t5.Visuals:AddToggle("Chams", {
        Title = "Highlight Chams",
        Default = false
    }):OnChanged(function()
        t38.Chams.Enabled = Options.Chams.Value

        if not Options.Chams.Value then
            for _, v in pairs(t39) do
                v1295(v, false)
            end
        end
    end)

    local CoreGui

    pcall(function()
        CoreGui = game:GetService("CoreGui")
    end)

    if CoreGui then
        v24(CoreGui.ChildRemoved, "Drawing ESP CoreGuiRemoved", function(p381)
            u1274 = 135779146
            u1275 = 351437406

            if p381.Name == "ESP GUI" then
                for k in pairs(t39) do
                    v1304(k)
                end

                t39 = {}
            end
        end)
    end
end

t5.Visuals:AddParagraph({
    Title = "Extra ESP",
    Content = "Skeleton, Head dot, and Adornment Chams."
})

do
    local t42 = {
        skeletonEspEnabled = false,
        headEspEnabled = false,
        chamsEspEnabled = false
    }
    local t43 = {
        skeletonLines = {},
        headCircles = {}
    }
    local t44 = {}

    local function v1367(p382, p383)
        local v1368 = Drawing.new(p382)

        for k, v in pairs(p383) do
            v1368[k] = v
        end

        return v1368
    end
    local function v1371(p384)
        u1269 = 503723504
        u1270 = 744571485

        if t43.skeletonLines[p384] then
            for _, v in ipairs(t43.skeletonLines[p384]) do
                v.Visible = false
                v:Remove()
            end

            t43.skeletonLines[p384] = nil
        end
    end
    local function v1374(p385)
        if t43.headCircles[p385] then
            t43.headCircles[p385].Visible = false
            t43.headCircles[p385]:Remove()
            t43.headCircles[p385] = nil
        end
    end
    local function v1375(p386)
        if t44[p386] then
            for _, v in pairs(t44[p386]) do
                pcall(function()
                    v:Destroy()
                end)
            end

            t44[p386] = nil
        end
    end
    local function v1378(p387)
        if not t42.chamsEspEnabled then
            return
        end

        local Character = p387.Character

        if not Character then
            v1375(p387)

            return
        end

        local v1380 = v53(Character)

        if not v1380 or v1380.Health <= 0 then
            v1375(p387)

            return
        end

        if not v1277() or not v1278(Character) then
            v1375(p387)

            return
        end

        if not t44[p387] then
            t44[p387] = {}
        end

        local color35 = v54(p387) and Color3.fromRGB(0, 0, 255) or Color3.fromRGB(255, 0, 0)

        for _, child in ipairs(Character:GetChildren()) do
            if not child:IsA("BasePart") or t44[p387][child] then
                if t44[p387][child] then
                    t44[p387][child].Color3 = color35
                end
            else
                local BoxHandleAdornment = Instance.new("BoxHandleAdornment")

                BoxHandleAdornment.Name = "ChamsAdornment"
                BoxHandleAdornment.Adornee = child
                BoxHandleAdornment.AlwaysOnTop = true
                BoxHandleAdornment.ZIndex = 10
                BoxHandleAdornment.Size = child.Size + Vector3.new(0.05, 0.05, 0.05)
                BoxHandleAdornment.Color3 = color35
                BoxHandleAdornment.Transparency = 0.7
                BoxHandleAdornment.Parent = child
                t44[p387][child] = BoxHandleAdornment
            end
        end
    end
    local function v1385(p388)
        local Character = p388.Character
        local v1387 = Character and v53(Character)

        if not Character or not v1387 or v1387.Health <= 0 or not v56(p388) or v52(Character) or not v1277() or not v1278(Character) then
            v1371(p388)

            return
        end

        if not t43.skeletonLines[p388] then
            t43.skeletonLines[p388] = {}

            for i = 1, 15 do
                table.insert(t43.skeletonLines[p388], v1367("Line", {
                    Thickness = 1.5,
                    Transparency = 1
                }))
            end
        end

        local v1389 = v1073()

        if not v1389 then
            v1371(p388)

            return
        end

        local t45 = {
            head = Character:FindFirstChild("Head"),
            torso = Character:FindFirstChild("HumanoidRootPart"),
            leftArm = Character:FindFirstChild("LeftUpperArm"),
            rightArm = Character:FindFirstChild("RightUpperArm"),
            leftLeg = Character:FindFirstChild("LeftUpperLeg"),
            rightLeg = Character:FindFirstChild("RightUpperLeg"),
            leftForearm = Character:FindFirstChild("LeftLowerArm"),
            rightForearm = Character:FindFirstChild("RightLowerArm"),
            leftThigh = Character:FindFirstChild("LeftLowerLeg"),
            rightThigh = Character:FindFirstChild("RightLowerLeg"),
            leftHand = Character:FindFirstChild("LeftHand"),
            rightHand = Character:FindFirstChild("RightHand"),
            leftFoot = Character:FindFirstChild("LeftFoot"),
            rightFoot = Character:FindFirstChild("RightFoot")
        }

        for i, v in ipairs({
            {
                t45.head,
                t45.torso
            },
            {
                t45.torso,
                t45.leftArm
            },
            {
                t45.torso,
                t45.rightArm
            },
            {
                t45.torso,
                t45.leftLeg
            },
            {
                t45.torso,
                t45.rightLeg
            },
            {
                t45.leftArm,
                t45.leftForearm
            },
            {
                t45.rightArm,
                t45.rightForearm
            },
            {
                t45.leftForearm,
                t45.leftHand
            },
            {
                t45.rightForearm,
                t45.rightHand
            },
            {
                t45.leftLeg,
                t45.leftThigh
            },
            {
                t45.rightLeg,
                t45.rightThigh
            },
            {
                t45.leftThigh,
                t45.leftFoot
            },
            {
                t45.rightThigh,
                t45.rightFoot
            }
        }) do
            local v1393 = v[1]
            local v1394 = v[2]

            if v1393 and v1394 and t43.skeletonLines[p388][i] then
                local v1395, v1396 = v1075(v1389, v1393.Position, 2)
                local v1397, v1398 = v1075(v1389, v1394.Position, 2)

                if v1396 and v1398 then
                    t43.skeletonLines[p388][i].From = Vector2.new(v1395.X, v1395.Y)
                    t43.skeletonLines[p388][i].To = Vector2.new(v1397.X, v1397.Y)
                    t43.skeletonLines[p388][i].Color = v57(p388)
                    t43.skeletonLines[p388][i].Visible = true
                else
                    t43.skeletonLines[p388][i].Visible = false
                end
            elseif t43.skeletonLines[p388][i] then
                t43.skeletonLines[p388][i].Visible = false
            end
        end
    end
    local function v1399(p389)
        u1276 = 962694241

        local Character = p389.Character
        local v1401 = Character and v53(Character)

        if not Character or not v1401 or v1401.Health <= 0 or not v56(p389) or v52(Character) or not v1277() or not v1278(Character) then
            v1374(p389)

            return
        end

        local Head = Character:FindFirstChild("Head")

        if not Head then
            if t43.headCircles[p389] then
                t43.headCircles[p389].Visible = false
            end

            return
        end

        if not t43.headCircles[p389] then
            t43.headCircles[p389] = v1367("Circle", {
                Filled = true,
                Thickness = 1,
                Transparency = 0.5
            })
        end

        local v1403, v1404 = v1075(v1073(), Head.Position, 2)

        if v1404 then
            t43.headCircles[p389].Position = Vector2.new(v1403.X, v1403.Y)
            t43.headCircles[p389].Radius = 8
            t43.headCircles[p389].Color = v57(p389)
            t43.headCircles[p389].Visible = true
        else
            t43.headCircles[p389].Visible = false
        end
    end

    local n42 = 0
    local u1406 = false

    local function v1407()
        return t42.skeletonEspEnabled or t42.headEspEnabled or t42.chamsEspEnabled
    end
    local function v1408()
        for _, v in ipairs(t7) do
            v1371(v)
            v1374(v)
            v1375(v)
        end
    end

    v24(RunService.Heartbeat, "Extra ESP Heartbeat", function()
        if not v1407() then
            if u1406 then
                v1408()
                u1406 = false
            end

            return
        end

        local now = tick()

        if now - n42 < t6.ESPHeavyRate then
            return
        end

        n42 = now
        u1406 = true

        if not v51() or not v1277() then
            v1408()

            return
        end

        local n43 = 0
        local HumanoidRootPart = LocalPlayer2.Character and LocalPlayer2.Character:FindFirstChild("HumanoidRootPart")

        for _, v in ipairs(t7) do
            if t6.ESPMaxTargets <= n43 then
                break
            end

            if v ~= LocalPlayer2 and v56(v) then
                local Character = v.Character
                local HumanoidRootPart2 = Character and Character:FindFirstChild("HumanoidRootPart")

                if HumanoidRootPart and HumanoidRootPart2 and t6.ESPMaxDistance < (HumanoidRootPart2.Position - HumanoidRootPart.Position).Magnitude then
                    v1371(v)
                    v1374(v)
                    v1375(v)
                else
                    n43 += 1

                    if t42.skeletonEspEnabled then
                        v1385(v)
                    else
                        v1371(v)
                    end

                    if t42.headEspEnabled then
                        v1399(v)
                    else
                        v1374(v)
                    end

                    if t42.chamsEspEnabled then
                        v1378(v)
                    else
                        v1375(v)
                    end
                end
            else
                v1371(v)
                v1374(v)
                v1375(v)
            end
        end
    end)
    v24(Players.PlayerRemoving, "Extra ESP PlayerRemoving", function(p390)
        v1371(p390)
        v1374(p390)
        v1375(p390)
    end)
    t5.Visuals:AddToggle("SkeletonESP", {
        Title = "Skeleton ESP",
        Default = false,
        Callback = function(p391)
            u1273 = 974676004
            t42.skeletonEspEnabled = p391

            if not p391 then
                for _, player in pairs(Players:GetPlayers()) do
                    v1371(player)
                end
            end
        end
    })
    t5.Visuals:AddToggle("HeadESP", {
        Title = "Head ESP",
        Default = false,
        Callback = function(p392)
            t42.headEspEnabled = p392

            if not p392 then
                for _, player in pairs(Players:GetPlayers()) do
                    v1374(player)
                end
            end
        end
    })
    t5.Visuals:AddToggle("ChamsESP", {
        Title = "Adornment Chams",
        Default = false,
        Callback = function(p393)
            t42.chamsEspEnabled = p393

            if not p393 then
                for _, player in pairs(Players:GetPlayers()) do
                    v1375(player)
                end
            end
        end
    })
end

t5.Visuals:AddParagraph({
    Title = "Ability ESP",
    Content = "Timers for Soul Reap and Blind tracking."
})

do
    local u1424 = false
    local t46 = {}

    local function v1426(p394)
        local BillboardGui = Instance.new("BillboardGui")

        BillboardGui.Name = "SoulReapESP_Billboard"
        BillboardGui.Adornee = p394
        BillboardGui.Size = UDim2.new(4, 0, 1, 0)
        BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
        BillboardGui.AlwaysOnTop = true

        local TextLabel = Instance.new("TextLabel")

        TextLabel.Parent = BillboardGui
        TextLabel.Size = UDim2.new(1, 0, 1, 0)
        TextLabel.BackgroundTransparency = 1
        TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
        TextLabel.TextScaled = true
        TextLabel.Font = Enum.Font.Arcade
        TextLabel.Text = "3.0"

        return BillboardGui, TextLabel
    end
    local function v1429(p395, p396)
        if u1424 then
            if v1054() and v1055(p395) then
                local Head = p395:FindFirstChild("Head")

                if not Head then
                    return
                end

                if t46[p395] then
                    pcall(function()
                        t46[p395]:Destroy()
                    end)
                    t46[p395] = nil
                end

                local v1431, v1432 = v1426(Head)

                v1431.Parent = Head
                t46[p395] = v1431

                local u1433 = p396
                local soulReapTimer

                soulReapTimer = v24(RunService.Heartbeat, "SoulReap Timer", function(p397)
                    if not u1424 or not p395.Parent or not Head.Parent then
                        if t46[p395] then
                            pcall(function()
                                t46[p395]:Destroy()
                            end)
                            t46[p395] = nil
                        end

                        if soulReapTimer then
                            soulReapTimer:Disconnect()
                        end

                        return
                    end

                    u1433 -= p397

                    if u1433 <= 0 then
                        if t46[p395] then
                            pcall(function()
                                t46[p395]:Destroy()
                            end)
                            t46[p395] = nil
                        end

                        if soulReapTimer then
                            soulReapTimer:Disconnect()
                        end
                    else
                        v1432.Text = string.format("%.1f", u1433)
                    end
                end)

                return
            end
        end
    end
    local function v1435(p398)
        local Character = p398.Character or p398.CharacterAdded:Wait()

        if not Character then
            return
        end

        local u1437 = false
        local soulReapDescendantAdded = v24(Character.DescendantAdded, "SoulReap DescendantAdded", function(p399)
            if u1424 then
                if v1054() and v1055(Character) then
                    if p399:IsA("BasePart") and p399.Material == Enum.Material.ForceField and not u1437 then
                        u1437 = true
                        v1429(Character, 3)
                    end

                    return
                end
            end
        end)

        v24(Character.DescendantRemoving, "SoulReap DescendantRemoving", function(p400)
            if p400:IsA("BasePart") and p400.Material == Enum.Material.ForceField then
                u1437 = false
            end
        end)
        v24(p398.CharacterRemoving, "SoulReap CharacterRemoving", function()
            if soulReapDescendantAdded then
                soulReapDescendantAdded:Disconnect()
            end

            if t46[Character] then
                pcall(function()
                    t46[Character]:Destroy()
                end)
                t46[Character] = nil
            end
        end)
    end

    local u1439 = false

    local function v1440()
        if u1439 then
            return
        end

        u1439 = true

        for _, v in ipairs(t7) do
            if v ~= LocalPlayer2 then
                task.spawn(v1435, v)
            end
        end

        v24(Players.PlayerAdded, "SoulReap PlayerAdded", function(p401)
            if p401 ~= LocalPlayer2 then
                task.spawn(v1435, p401)
            end
        end)
    end

    t5.Visuals:AddToggle("SoulReapTimerESP", {
        Title = "SoulReap Timer ESP",
        Default = false,
        Callback = function(p402)
            if p402 then
                u1424 = true
                task.spawn(v1440)
            else
                u1424 = false

                for _, v in pairs(t46) do
                    pcall(function()
                        v:Destroy()
                    end)
                end

                t46 = {}
            end
        end
    })
end

do
    local u1445 = false

    local function v1446(p403)
        if not v1054() or not v1055(p403) then
            return
        end

        local Head = p403:FindFirstChild("Head")

        if not Head then
            return
        end

        local BlindESP_Billboard = Head:FindFirstChild("BlindESP_Billboard")

        if BlindESP_Billboard then
            BlindESP_Billboard:Destroy()
        end

        local BillboardGui = Instance.new("BillboardGui")

        BillboardGui.Name = "BlindESP_Billboard"
        BillboardGui.Adornee = Head
        BillboardGui.Size = UDim2.new(4, 0, 1, 0)
        BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
        BillboardGui.AlwaysOnTop = true

        local TextLabel = Instance.new("TextLabel")

        TextLabel.Parent = BillboardGui
        TextLabel.Size = UDim2.new(1, 0, 1, 0)
        TextLabel.BackgroundTransparency = 1
        TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
        TextLabel.TextScaled = true
        TextLabel.Font = Enum.Font.GothamBold
        BillboardGui.Parent = Head

        local n44 = 2.5

        while u1445 and p403.Parent and Head.Parent do
            TextLabel.Text = string.format("%.1f", n44)
            n44 -= RunService.Heartbeat:Wait()

            if not p403:FindFirstChild("ShroudStatePart") or not (n44 > 0) then
                break
            end
        end

        pcall(function()
            BillboardGui:Destroy()
        end)
    end
    local function v1452(p404)
        while p404 and p404.Parent do
            if u1445 then
                local Character = p404.Character

                if v1054() and Character and v1055(Character) and Character:FindFirstChild("ShroudStatePart") then
                    v1446(Character)
                end
            end

            task.wait(u1445 and (t4.IsMobile and 0.25 or 0.1) or 1)
        end
    end

    local u1454 = false

    local function v1455()
        if u1454 then
            return
        end

        u1454 = true

        for _, v in ipairs(t7) do
            if v ~= LocalPlayer2 then
                task.spawn(v1452, v)
            end
        end

        v24(Players.PlayerAdded, "BlindESP PlayerAdded", function(p405)
            if p405 ~= LocalPlayer2 then
                task.spawn(v1452, p405)
            end
        end)
    end

    t5.Visuals:AddToggle("BlindESP", {
        Title = "Blind ESP [Shows unblind timer]",
        Default = false,
        Callback = function(p406)
            if not p406 then
                u1445 = false

                for _, player in pairs(Players:GetPlayers()) do
                    local Character = player.Character

                    if Character then
                        local Head = Character:FindFirstChild("Head")

                        if Head then
                            local BlindESP_Billboard = Head:FindFirstChild("BlindESP_Billboard")

                            if BlindESP_Billboard then
                                BlindESP_Billboard:Destroy()
                            end
                        end
                    end
                end
            elseif not u1445 then
                u1445 = true
                task.spawn(v1455)
            end
        end
    })
end

do
    local u1463 = false
    local t47 = {}
    local t48 = {}

    local function v1466()
        t47 = {
            FogEnd = Lighting.FogEnd,
            FogStart = Lighting.FogStart,
            Brightness = Lighting.Brightness,
            Ambient = Lighting.Ambient,
            OutdoorAmbient = Lighting.OutdoorAmbient
        }

        local Sky = Lighting:FindFirstChildOfClass("Sky")

        if Sky then
            t48 = {
                SkyboxBk = Sky.SkyboxBk,
                SkyboxDn = Sky.SkyboxDn,
                SkyboxFt = Sky.SkyboxFt,
                SkyboxLf = Sky.SkyboxLf,
                SkyboxRt = Sky.SkyboxRt,
                SkyboxUp = Sky.SkyboxUp
            }
        end
    end
    local function v1468()
        if t47.FogEnd then
            Lighting.FogEnd = t47.FogEnd
            Lighting.FogStart = t47.FogStart
            Lighting.Brightness = t47.Brightness
            Lighting.Ambient = t47.Ambient
            Lighting.OutdoorAmbient = t47.OutdoorAmbient
        end

        local Sky = Lighting:FindFirstChildOfClass("Sky")

        if Sky and t48.SkyboxBk then
            Sky.SkyboxBk = t48.SkyboxBk
            Sky.SkyboxDn = t48.SkyboxDn
            Sky.SkyboxFt = t48.SkyboxFt
            Sky.SkyboxLf = t48.SkyboxLf
            Sky.SkyboxRt = t48.SkyboxRt
            Sky.SkyboxUp = t48.SkyboxUp
        end
    end
    local function v1470()
        v1468()

        for _, child in pairs(Lighting:GetChildren()) do
            if child:IsA("ColorCorrectionEffect") or child:IsA("BlurEffect") then
                child:Destroy()
            end
        end
    end
    local function v1473(p407)
        if not p407 then
            return
        end

        local ShroudStatePart = p407:FindFirstChild("ShroudStatePart")

        if ShroudStatePart and ShroudStatePart:IsA("BasePart") then
            ShroudStatePart:Destroy()
        end

        v1470()
    end

    t5.Visuals:AddToggle("AntiBlind", {
        Title = "AntiBlind [Prevents blindness]",
        Default = false,
        Callback = function(p408)
            if not p408 then
                u1463 = false
            elseif not u1463 then
                u1463 = true
                v1466()
                task.spawn(function()
                    while u1463 do
                        if LocalPlayer2.Character then
                            v1473(LocalPlayer2.Character)
                        end

                        task.wait(0.1)
                    end
                end)
            end
        end
    })
end

do
    v48("Abilities", {}, nil, function()
        local Ability = ReplicatedStorage:FindFirstChild("Ability")
        local AbilityConfig = Ability and Ability:FindFirstChild("AbilityConfig")

        if not AbilityConfig then
            v22("Abilities", "unavailable")
            t5.Abilities:AddParagraph({
                Title = "Abilities",
                Content = "Unavailable."
            })

            return
        end

        local ok, result = pcall(require, AbilityConfig)

        if not ok or type(result) ~= "table" then
            v22("Abilities", "unavailable")
            t5.Abilities:AddParagraph({
                Title = "Abilities",
                Content = "Unavailable."
            })

            return
        end

        local t49 = {}

        for k, v in pairs(result) do
            if type(v) == "number" then
                t49[k] = v
            end
        end

        local function v1482(p409, p410)
            local v1483 = tonumber(p410)

            if v1483 == nil then
                return
            end

            result[p409] = v1483
        end

        local u1484 = false
        local u1485 = false
        local n45 = 0
        local n46 = 0
        local obj = setmetatable({}, {
            __mode = "k"
        })

        local function v1489(p411)
            if not p411 or not p411:IsA("Tool") then
                return nil
            end

            local v1490 = obj[p411]

            if v1490 then
                local attribute = p411:GetAttribute("Cooldown")
                local attribute2 = p411:GetAttribute("ThrowSpeed")

                if v1490.Cooldown == nil and attribute ~= nil then
                    v1490.Cooldown = attribute
                    pcall(function()
                        p411:SetAttribute("VexalOriginalCooldown", attribute)
                    end)
                end

                if v1490.ThrowSpeed == nil and attribute2 ~= nil then
                    v1490.ThrowSpeed = attribute2
                    pcall(function()
                        p411:SetAttribute("VexalOriginalThrowSpeed", attribute2)
                    end)
                end

                return v1490
            end

            local attribute = p411:GetAttribute("VexalOriginalCooldown")
            local attribute2 = p411:GetAttribute("VexalOriginalThrowSpeed")
            local attribute3 = p411:GetAttribute("Cooldown")
            local attribute4 = p411:GetAttribute("ThrowSpeed")
            local t50 = {
                Cooldown = attribute ~= nil and attribute or attribute3,
                ThrowSpeed = attribute2 ~= nil and attribute2 or attribute4
            }

            obj[p411] = t50

            if t50.Cooldown ~= nil and attribute == nil then
                pcall(function()
                    p411:SetAttribute("VexalOriginalCooldown", t50.Cooldown)
                end)
            end

            if t50.ThrowSpeed ~= nil and attribute2 == nil then
                pcall(function()
                    p411:SetAttribute("VexalOriginalThrowSpeed", t50.ThrowSpeed)
                end)
            end

            return t50
        end
        local function v1498(p412)
            local Character = LocalPlayer2.Character
            local Backpack = LocalPlayer2:FindFirstChildOfClass("Backpack") or LocalPlayer2:FindFirstChild("Backpack")

            for _, v in ipairs({
                Character,
                Backpack
            }) do
                if v then
                    for _, child in ipairs(v:GetChildren()) do
                        if child:IsA("Tool") then
                            p412(child, v)
                        end
                    end
                end
            end
        end
        local function v1505(p413)
            local v1506 = v1489(p413)

            if not v1506 then
                return false
            end

            local v1507 = false
            local v1508 = math.max(0, tonumber(result.ShootSpeedBuff) or 0)
            local v1509 = math.max(0, tonumber(result.ThrowSpeedBuff) or 0)
            local v1510 = tonumber(v1506.Cooldown)

            if v1510 and v61(p413) then
                local v1511 = math.clamp(v1510 / math.max(1 + v1508, 0.05), 0.05, v1510)

                if math.abs((tonumber(p413:GetAttribute("Cooldown")) or v1510) - v1511) > 0.001 then
                    p413:SetAttribute("Cooldown", v1511)
                    v1507 = true
                end
            end

            local v1512 = tonumber(v1506.ThrowSpeed)

            if v1512 then
                local v1513 = math.clamp(v1512 * math.max(1 + v1509, 0.05), 1, 10000)

                if math.abs((tonumber(p413:GetAttribute("ThrowSpeed")) or v1512) - v1513) > 0.001 then
                    p413:SetAttribute("ThrowSpeed", v1513)
                    v1507 = true
                end
            end

            return v1507
        end
        local function v1514(p414)
            local v1515 = obj[p414]

            if not v1515 or not p414 or not p414.Parent then
                return false
            end

            local v1516 = false

            if v1515.Cooldown ~= nil and p414:GetAttribute("Cooldown") ~= v1515.Cooldown then
                p414:SetAttribute("Cooldown", v1515.Cooldown)
                v1516 = true
            end

            if v1515.ThrowSpeed ~= nil and p414:GetAttribute("ThrowSpeed") ~= v1515.ThrowSpeed then
                p414:SetAttribute("ThrowSpeed", v1515.ThrowSpeed)
                v1516 = true
            end

            return v1516
        end
        local function v1517()
            local now = tick()

            if now - n46 < 0.75 then
                return
            end

            local Character = LocalPlayer2.Character
            local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
            local v1521 = v60()

            if not Character or not Humanoid or not v1521 then
                return
            end

            n46 = now
            task.defer(function()
                if not v1521 or not v1521.Parent or not Humanoid.Parent then
                    return
                end

                pcall(function()
                    Humanoid:UnequipTools()
                end)
                task.wait(0.05)

                if v1521 and v1521.Parent and Humanoid.Parent then
                    pcall(function()
                        Humanoid:EquipTool(v1521)
                    end)
                end
            end)
        end
        local function v1522(p415)
            local u1523 = false

            v1498(function(p416)
                if not u1484 then
                    if v1514(p416) then
                        u1523 = true
                    end
                elseif v1505(p416) then
                    u1523 = true
                end
            end)

            if p415 then
                if u1523 then
                    v1517()
                end
            end
        end
        local function v1524()
            if u1485 then
                return
            end

            u1485 = true

            local function v1525(p417, p418)
                if not p417 then
                    return
                end

                v24(p417.ChildAdded, "LiveWeaponBuffToolAdded" .. tostring(p418), function(p419)
                    if not u1484 or not p419:IsA("Tool") then
                        return
                    end

                    task.defer(function()
                        v1522(true)
                    end)
                end)
                v24(p417.DescendantAdded, "LiveWeaponBuffToolDescendant" .. tostring(p418), function(p420)
                    if not u1484 then
                        return
                    end

                    if p420 and p420:FindFirstAncestorOfClass("Tool") then
                        task.defer(function()
                            v1522(false)
                        end)
                    end
                end)
            end

            v24(RunService.Heartbeat, "LiveWeaponBuffScan", function()
                if not u1484 then
                    return
                end

                local now = tick()

                if now - n45 < 0.12 then
                    return
                end

                n45 = now
                v1522(false)
            end)
            v24(LocalPlayer2.CharacterAdded, "LiveWeaponBuffCharacter", function()
                task.wait(0.25)
                v1525(LocalPlayer2.Character, "Character")

                if u1484 then
                    v1522(true)
                end
            end)
            v1525(LocalPlayer2:FindFirstChildOfClass("Backpack") or LocalPlayer2:FindFirstChild("Backpack"), "Backpack")

            if LocalPlayer2.Character then
                v1525(LocalPlayer2.Character, "Character")
            end
        end

        v19(function()
            u1484 = false
            v1522(true)
        end)

        local t51 = {}
        local t52 = {
            SprintBoost = true,
            SoulReapSpeedBoost = true,
            ShootSpeedBuff = true,
            ThrowSpeedBuff = true,
            PropellerJumpBoost = true
        }

        local function v1529(p421, p422, p423, p424, p425, p426)
            local v1530 = t49[p423]

            if type(v1530) ~= "number" then
                return
            end

            local v1531 = t52[p423] == true

            t51[p423] = t5.Abilities:AddSlider(p421, {
                Title = p422,
                Default = v1531 and v1530 * 100 or v1530,
                Min = p424,
                Max = p425,
                Rounding = p426,
                Callback = function(p427)
                    local v1532 = tonumber(p427)

                    if v1532 then
                        v1482(p423, v1531 and v1532 / 100 or v1532)

                        if v1522 and (p423 == "ShootSpeedBuff" or p423 == "ThrowSpeedBuff") then
                            v1522(true)
                        end
                    end
                end
            })
        end

        t5.Abilities:AddParagraph({
            Title = "Sprint",
            Content = ""
        })
        v1529("GameSprintTime", "Duration", "SprintTime", 0, 20, 2)
        v1529("GameSprintCooldown", "Cooldown", "SprintCooldown", 0, 60, 2)
        v1529("GameSprintBoost", "Speed Boost (%)", "SprintBoost", 0, 300, 0)
        t5.Abilities:AddParagraph({
            Title = "Soul Reap",
            Content = ""
        })
        v1529("GameSoulLifetime", "Soul Lifetime", "SoulLifetime", 0, 30, 2)
        v1529("GameSoulReapTime", "Effect Duration", "SoulReapTime", 0, 20, 2)
        v1529("GameSoulReapSpeed", "Speed Boost (%)", "SoulReapSpeedBoost", 0, 300, 0)
        v1529("GameSoulReapCombatDelay", "Combat Delay", "SoulReapCombatDelay", 0, 10, 2)

        local Tags = ReplicatedStorage:FindFirstChild("Modules") and ReplicatedStorage.Modules:FindFirstChild("Tags")
        local ok2, result2 = pcall(function()
            return Tags and require(Tags)
        end)
        local SOUL_PROMPT = ok2 and type(result2) == "table" and result2.SOUL_PROMPT or "SoulPrompt"
        local SOUL_REAP_CHARACTER = ok2 and type(result2) == "table" and result2.SOUL_REAP_CHARACTER or
        "SoulReapCharacter"
        local SpeedController = Ability:FindFirstChild("SpeedController")
        local CombatDisabledStateController = Ability:FindFirstChild("CombatDisabledStateController")
        local ok3, result3 = pcall(function()
            return SpeedController and require(SpeedController)
        end)
        local ok4, result4 = pcall(function()
            return CombatDisabledStateController and require(CombatDisabledStateController)
        end)
        local u1544 = false
        local n47 = 0
        local u1546 = false
        local obj2 = setmetatable({}, {
            __mode = "k"
        })

        local function v1548()
            local Character = LocalPlayer2.Character
            local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")

            if Character and Humanoid and not (Humanoid.Health <= 0) then
                return Character
            end

            return nil
        end
        local function v1551(p428)
            if not p428 or not p428:IsA("ProximityPrompt") then
                return false
            end

            if p428:GetAttribute("PlayerId") ~= LocalPlayer2.UserId then
                return false
            end

            if not p428:IsDescendantOf(Workspace) then
                return false
            end

            local v1552 = v1548()

            if not v1552 then
                return false
            end

            if CollectionService:HasTag(v1552, SOUL_REAP_CHARACTER) then
                return false
            end

            return true
        end
        local function v1553(p429)
            if not v1551(p429) then
                return
            end

            if not ok3 or type(result3) ~= "function" then
                return
            end

            if not ok4 or type(result4) ~= "table" or type(result4.Activate) ~= "function" then
                return
            end

            local v1554 = v1548()

            if v1554 then
                local Humanoid = v1554:FindFirstChildOfClass("Humanoid")

                if v1554 and Humanoid then
                    local Parent = p429.Parent and p429.Parent.Parent

                    if Parent then
                        pcall(function()
                            Parent:Destroy()
                        end)
                    end

                    local u1557

                    pcall(function()
                        u1557 = result3(Humanoid, tonumber(result.SoulReapSpeedBoost) or 0.6)
                    end)
                    CollectionService:AddTag(v1554, SOUL_REAP_CHARACTER)

                    local u1558

                    pcall(function()
                        u1558 = result4.Activate(v1554)
                    end)
                    task.spawn(function()
                        task.wait(math.max(0, tonumber(result.SoulReapTime) or 3))

                        if type(u1557) == "function" then
                            pcall(u1557)
                        end

                        if v1554 and v1554.Parent then
                            pcall(function()
                                CollectionService:RemoveTag(v1554, SOUL_REAP_CHARACTER)
                            end)
                        end

                        task.wait(math.max(0, tonumber(result.SoulReapCombatDelay) or 0.35))

                        if type(u1558) == "function" then
                            pcall(u1558)
                        end
                    end)

                    return
                end
            end
        end
        local function v1559(p430)
            if not v1551(p430) then
                return
            end

            pcall(function()
                p430.Enabled = true
            end)

            local v1560 = false

            if type(fireproximityprompt) == "function" then
                v1560 = pcall(fireproximityprompt, p430)
            end

            if not v1560 then
                pcall(function()
                    p430:InputHoldBegin()
                    task.wait(math.max(tonumber(p430.HoldDuration) or 0, 0.03))
                    p430:InputHoldEnd()
                end)
            end

            task.delay(0.12, function()
                local v1561 = v1548()

                if v1561 and not CollectionService:HasTag(v1561, SOUL_REAP_CHARACTER) then
                    v1553(p430)
                end
            end)
        end
        local function v1562(p431)
            if u1544 then
                if not obj2[p431] then
                    if not v1551(p431) then
                        return
                    end

                    obj2[p431] = true
                    task.spawn(function()
                        local v1563 = tonumber(n47) or 0

                        if v1563 > 0 then
                            task.wait(v1563)
                        end

                        if u1544 then
                            v1559(p431)
                        end
                    end)

                    return
                end
            end
        end
        local function v1564()
            local ok5, result5 = pcall(function()
                return CollectionService:GetTagged(SOUL_PROMPT)
            end)

            if ok5 and type(result5) == "table" then
                for _, v in ipairs(result5) do
                    v1562(v)
                end
            end
        end
        local function v1569()
            if u1546 then
                v1564()

                return
            end

            u1546 = true
            v24(CollectionService:GetInstanceAddedSignal(SOUL_PROMPT), "InstantSoulReapPrompt", v1562)
            v24(LocalPlayer2.CharacterAdded, "InstantSoulReapCharacter", function()
                task.wait(0.25)

                if u1544 then
                    v1564()
                end
            end)
            v1564()
        end

        t5.Abilities:AddParagraph({
            Title = "Instant Reap",
            Content =
            "Automatically triggers your Soul Reap prompt after a kill. Set delay to 0 for instant mobile-friendly reaps."
        })
        t5.Abilities:AddToggle("InstantSoulReap", {
            Title = "Instant Soul Reap",
            Default = false,
            Callback = function(p432)
                u1544 = p432 == true

                if u1544 then
                    v1569()
                end
            end
        })
        t5.Abilities:AddSlider("InstantSoulReapDelay", {
            Title = "Reap Delay",
            Default = 0,
            Min = 0,
            Max = 10,
            Rounding = 2,
            Callback = function(p433)
                n47 = math.max(0, tonumber(p433) or 0)
            end
        })
        t5.Abilities:AddParagraph({
            Title = "Weapon Buff",
            Content =
            "Enable live apply if you want the buff to affect normal shooting/throwing while using other features like HBE."
        })
        t5.Abilities:AddToggle("LiveWeaponBuff", {
            Title = "Apply Weapon Buff To Tools",
            Default = false,
            Callback = function(p434)
                u1484 = p434 == true
                v1524()
                v1522(true)
                Fluent:Notify({
                    Title = "Weapon Buff",
                    Content = u1484 and "Applied to live tools." or "Restored live tool stats.",
                    Duration = 3
                })
            end
        })
        t5.Abilities:AddButton({
            Title = "Refresh Current Weapon Buff",
            Description = "Re-applies buff and re-equips your current tool once.",
            Callback = function()
                v1522(true)
                Fluent:Notify({
                    Title = "Weapon Buff",
                    Content = "Refreshed current weapon.",
                    Duration = 2
                })
            end
        })
        v1529("GameShootSpeedBuff", "Gun Speed Buff (%)", "ShootSpeedBuff", 0, 300, 0)
        v1529("GameThrowSpeedBuff", "Knife Speed Buff (%)", "ThrowSpeedBuff", 0, 300, 0)
        t5.Abilities:AddParagraph({
            Title = "Dash / Propeller / Teleport",
            Content = ""
        })
        v1529("GameDashCooldown", "Dash Cooldown", "DashCooldown", 0, 30, 2)
        v1529("GameDashActiveTime", "Dash Active Time", "DashActivatedTime", 0.05, 3, 2)
        v1529("GamePropellerBoost", "Propeller Jump Boost (%)", "PropellerJumpBoost", 0, 300, 0)
        v1529("GameTeleportCooldown", "Teleport Cooldown", "TeleportCooldown", 0, 60, 2)
        t5.Abilities:AddParagraph({
            Title = "Shroud",
            Content = ""
        })
        v1529("GameShroudTime", "Blind Duration", "ShroudTime", 0, 30, 2)
        v1529("GameShroudCooldown", "Cooldown", "ShroudCooldown", 0, 30, 2)
        v1529("GameShroudSpeed", "Projectile Speed", "ShroudProjectileSpeed", 1, 500, 0)
        v1529("GameShroudRange", "Projectile Range", "ShroudProjectileRange", 10, 2000, 0)
        t5.Abilities:AddButton({
            Title = "Reset",
            Callback = function()
                for k, v in pairs(t49) do
                    v1482(k, v)

                    local v1572 = t51[k]

                    if v1572 and type(v1572.SetValue) == "function" then
                        v1572:SetValue(t52[k] and v * 100 or v)
                    end
                end

                v1522(true)
            end
        })
    end)
end

local t53 = {
    SprintTime = 2.5,
    SprintCooldown = 15,
    SprintBoost = 0.5,
    DashCooldown = 6,
    DashActivatedTime = 0.25,
    DashPower = 60
}
local u1574
local t54 = {}
local u1576 = false
local u1577 = false
local n48 = 3
local u1579 = false
local placePortal
local teleport
local t55 = {}
local Q = Enum.KeyCode.Q
local E = Enum.KeyCode.E
local u1585
local u1586
local dash
local sprint
local u1589
local u1590
local t56 = {}
local u1592 = false
local u1593 = false
local u1594 = false
local Q2 = Enum.KeyCode.Q
local E2 = Enum.KeyCode.E

local function v1597()
    u1592 = u1593 or u1594
end

local v1598

do
    local function v1599()
        return t4.IsMobile or UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
    end
    local function v1600()
        local v1601 = v1599()
        local v1602 = v1601 and v45(0.78, 1) or 1
        local t57 = {
            mobile = v1601,
            scale = v1602,
            baseSize = v1601 and math.floor(60 * v1602 + 0.5) or 70,
            spacing = v1601 and math.floor(8 * v1602 + 0.5) or 10,
            sideMargin = v1601 and math.floor(15 * v1602 + 0.5) or 15,
            corner = v1601 and math.floor(8 * v1602 + 0.5) or 10,
            stroke = v1601 and math.max(1, 1.5 * v1602) or 2
        }
        local iconInset = v1601 and math.floor(20 * v1602 + 0.5)

        t57.iconInset = iconInset or 25
        t57.emojiText = v1601 and math.floor(28 * math.clamp(v1602, 0.84, 1) + 0.5) or 32
        t57.cooldownText = v1601 and math.floor(22 * math.clamp(v1602, 0.84, 1) + 0.5) or 24

        return t57
    end
    local function v1605()
        local v1606 = v1600()
        local spacing = v1606.spacing
        local baseSize = v1606.baseSize
        local n49 = 0

        if u1579 then
            n49 += 2
        end

        if u1593 then
            n49 += 1
        end

        if u1594 then
            n49 += 1
        end

        local t58 = {
            portalPlace = 0,
            portalTeleport = 0,
            dash = 0,
            sprint = 0
        }

        if n49 <= 0 then
            return t58
        end

        local n50 = 0

        local function v1612()
            n50 += 1

            return (n50 - (n49 + 1) / 2) * (baseSize + spacing)
        end

        if u1579 then
            t58.portalPlace = v1612()
            t58.portalTeleport = v1612()
        end

        if u1593 then
            t58.dash = v1612()
        end

        if u1594 then
            t58.sprint = v1612()
        end

        return t58
    end
    local function v1613()
        local v1614 = v1605()
        local v1615 = v1600()
        local v1616 = -(v1615.baseSize + v1615.sideMargin)

        if placePortal and placePortal.Frame then
            placePortal.Frame.Position = UDim2.new(1, v1616, 0.5, v1614.portalPlace)
        end

        if teleport and teleport.Frame then
            teleport.Frame.Position = UDim2.new(1, v1616, 0.5, v1614.portalTeleport)
        end

        if dash and dash.Frame then
            dash.Frame.Position = UDim2.new(1, v1616, 0.5, v1614.dash)
        end

        if sprint and sprint.Frame then
            sprint.Frame.Position = UDim2.new(1, v1616, 0.5, v1614.sprint)
        end
    end
    local function v1617(p435, p436, p437, p438, p439, p440)
        local v1618 = v1600()
        local mobile = v1618.mobile
        local baseSize = v1618.baseSize

        local function v1621(p441)
            local v1622 = v38(p441)

            if typeof(v1622) == "EnumItem" then
                if tostring(v1622):find("Enum.KeyCode.", 1, true) then
                    local ok, result = pcall(function()
                        return UserInputService:GetStringForKeyCode(v1622)
                    end)

                    if ok and result and result ~= "" then
                        return result
                    end
                end
            end

            local v1625 = tostring(v1622):gsub("Enum%.KeyCode%.", "")

            return v1625:gsub("Enum%.UserInputType%.", "")
        end
        local function v1626()
            if p440 then
                return nil
            end

            local PlayerGui = LocalPlayer2:FindFirstChildOfClass("PlayerGui")
            local AbilitySlot = PlayerGui and PlayerGui:FindFirstChild("AbilitySlot")
            local Frame = AbilitySlot and AbilitySlot:FindFirstChild("Frame")
            local Entry = Frame and Frame:FindFirstChild("Entry")

            if not Entry then
                return nil
            end

            local clone = Entry:Clone()

            clone.Name = p436 .. "Slot"
            clone.Visible = true
            clone.Size = UDim2.fromOffset(baseSize, baseSize)
            clone.Position = UDim2.new(1, -(baseSize + v1618.sideMargin), 0.5, p438)
            clone.AnchorPoint = Vector2.new(0, 0.5)
            clone.Active = true
            clone.Parent = p435
            v37(clone)

            local Frame2 = clone:FindFirstChild("Frame", true)
            local Cooldown = clone:FindFirstChild("Cooldown", true)
            local TextLabel = Cooldown and Cooldown:FindFirstChild("TextLabel", true)
            local KeyBind = Frame2 and Frame2:FindFirstChild("KeyBind", true)
            local GamepadButtonIcon = clone:FindFirstChild("GamepadButtonIcon", true)
            local Icon = Frame2 and Frame2:FindFirstChild("Icon", true)

            if Icon and (Icon:IsA("ImageLabel") or Icon:IsA("ImageButton")) then
                Icon.Image = p439
            end

            if KeyBind and KeyBind:IsA("TextLabel") then
                KeyBind.Text = v1621(p437)
                KeyBind.Visible = not mobile
            end

            if GamepadButtonIcon and GamepadButtonIcon:IsA("ImageLabel") then
                local ok, image = pcall(function()
                    return UserInputService:GetImageForKeyCode(v38(p437))
                end)

                if ok and image then
                    GamepadButtonIcon.Image = image
                end

                GamepadButtonIcon.Visible = UserInputService.GamepadEnabled
            end

            if Frame2 then
                Frame2.Visible = true
            end

            if Cooldown then
                Cooldown.Visible = false
            end

            local TextButton = Instance.new("TextButton")

            TextButton.Name = "ClickButton"
            TextButton.Size = UDim2.fromScale(1, 1)
            TextButton.BackgroundTransparency = 1
            TextButton.Text = ""
            TextButton.Active = true
            TextButton.AutoButtonColor = false
            TextButton.ZIndex = 100
            pcall(function()
                TextButton.Modal = true
            end)
            TextButton.Parent = clone
            TextButton.InputBegan:Connect(v36)
            TextButton.InputEnded:Connect(v36)
            TextButton.MouseButton1Down:Connect(v36)

            local connection

            return {
                Frame = clone,
                Button = TextButton,
                KeyLabel = KeyBind,
                UpdateKey = function(p442)
                    if KeyBind and KeyBind:IsA("TextLabel") then
                        KeyBind.Text = v1621(p442)
                    end

                    if GamepadButtonIcon and GamepadButtonIcon:IsA("ImageLabel") then
                        local ok, image = pcall(function()
                            return UserInputService:GetImageForKeyCode(v38(p442))
                        end)

                        if ok and image then
                            GamepadButtonIcon.Image = image
                        end
                    end
                end,
                Activate = function()
                    if connection then
                        connection:Disconnect()
                        connection = nil
                    end

                    if Frame2 then
                        Frame2.Visible = true
                    end

                    if Cooldown then
                        Cooldown.Visible = false
                    end

                    if TextLabel then
                        TextLabel.Text = ""
                    end
                end,
                Deactivate = function(p443)
                    local v1644 = tonumber(p443) or 0

                    if connection then
                        connection:Disconnect()
                        connection = nil
                    end

                    if v1644 <= 0 then
                        if Frame2 then
                            Frame2.Visible = true
                        end

                        if Cooldown then
                            Cooldown.Visible = false
                        end

                        if TextLabel then
                            TextLabel.Text = ""
                        end

                        return
                    end

                    if Frame2 then
                        Frame2.Visible = false
                    end

                    if Cooldown then
                        Cooldown.Visible = true
                    end

                    local now = tick()

                    connection = RunService.Heartbeat:Connect(function()
                        local v1646 = v1644 - (tick() - now)

                        if v1646 <= 0 then
                            if connection then
                                connection:Disconnect()
                                connection = nil
                            end

                            if Frame2 then
                                Frame2.Visible = true
                            end

                            if Cooldown then
                                Cooldown.Visible = false
                            end

                            if TextLabel then
                                TextLabel.Text = ""
                            end
                        elseif TextLabel then
                            TextLabel.Text = tostring(math.clamp(math.ceil(v1646), 0, math.ceil(v1644)))
                        end
                    end)
                end,
                Destroy = function()
                    if connection then
                        connection:Disconnect()
                        connection = nil
                    end

                    clone:Destroy()
                end
            }
        end

        local v1647 = v1626()

        if v1647 then
            return v1647
        end

        local Frame = Instance.new("Frame")

        Frame.Name = p436 .. "Slot"
        Frame.Size = UDim2.new(0, baseSize, 0, baseSize)
        Frame.Position = UDim2.new(1, -(baseSize + v1618.sideMargin), 0.5, p438)
        Frame.AnchorPoint = Vector2.new(0, 0.5)
        Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        Frame.BorderSizePixel = 0
        Frame.Active = true
        Frame.Parent = p435
        v37(Frame)

        local UICorner = Instance.new("UICorner")

        UICorner.CornerRadius = UDim.new(0, v1618.corner)
        UICorner.Parent = Frame

        local UIStroke = Instance.new("UIStroke")

        UIStroke.Color = p440 and Color3.fromRGB(100, 200, 255) or Color3.fromRGB(70, 70, 70)
        UIStroke.Thickness = v1618.stroke
        UIStroke.Parent = Frame

        if p440 then
            local TextLabel = Instance.new("TextLabel")

            TextLabel.Name = "Icon"
            TextLabel.Size = UDim2.new(0, baseSize - v1618.iconInset, 0, baseSize - v1618.iconInset)
            TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
            TextLabel.BackgroundTransparency = 1
            TextLabel.Text = p439
            TextLabel.TextSize = v1618.emojiText
            TextLabel.TextColor3 = Color3.fromRGB(100, 200, 255)
            TextLabel.Font = Enum.Font.GothamBold
            TextLabel.Parent = Frame
        else
            local ImageLabel = Instance.new("ImageLabel")

            ImageLabel.Name = "Icon"
            ImageLabel.Size = UDim2.new(0, baseSize - v1618.iconInset, 0, baseSize - v1618.iconInset)
            ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
            ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
            ImageLabel.BackgroundTransparency = 1
            ImageLabel.Image = p439
            ImageLabel.ScaleType = Enum.ScaleType.Fit
            ImageLabel.Parent = Frame
        end

        local TextLabel

        if not mobile then
            TextLabel = Instance.new("TextLabel")
            TextLabel.Name = "Key"
            TextLabel.Size = UDim2.new(0, 22, 0, 22)
            TextLabel.Position = UDim2.new(0, 4, 0, 4)
            TextLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            TextLabel.BorderSizePixel = 0
            TextLabel.Text = v1621(p437)
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.Font = Enum.Font.GothamBold
            TextLabel.TextSize = 13
            TextLabel.Parent = Frame

            local UICorner2 = Instance.new("UICorner")

            UICorner2.CornerRadius = UDim.new(0, 5)
            UICorner2.Parent = TextLabel
        end

        local TextLabel2 = Instance.new("TextLabel")

        TextLabel2.Name = "CooldownText"
        TextLabel2.Size = UDim2.new(1, 0, 1, 0)
        TextLabel2.BackgroundTransparency = 1
        TextLabel2.Text = ""
        TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel2.Font = Enum.Font.GothamBold
        TextLabel2.TextSize = v1618.cooldownText
        TextLabel2.ZIndex = 10
        TextLabel2.Parent = Frame

        local Frame2 = Instance.new("Frame")

        Frame2.Name = "CooldownFill"
        Frame2.Size = UDim2.new(1, 0, 1, 0)
        Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Frame2.BackgroundTransparency = 0.7
        Frame2.BorderSizePixel = 0
        Frame2.Visible = false
        Frame2.ZIndex = 5
        Frame2.Parent = Frame

        local UICorner2 = Instance.new("UICorner")

        UICorner2.CornerRadius = UDim.new(0, v1618.corner)
        UICorner2.Parent = Frame2

        local TextButton = Instance.new("TextButton")

        TextButton.Name = "ClickButton"
        TextButton.Size = UDim2.new(1, 0, 1, 0)
        TextButton.BackgroundTransparency = 1
        TextButton.Text = ""
        TextButton.Active = true
        TextButton.AutoButtonColor = false
        TextButton.ZIndex = 15
        TextButton.Parent = Frame
        pcall(function()
            TextButton.Modal = true
        end)
        TextButton.InputBegan:Connect(v36)
        TextButton.InputEnded:Connect(v36)
        TextButton.MouseButton1Down:Connect(v36)

        local connection

        return {
            Frame = Frame,
            Button = TextButton,
            KeyLabel = TextLabel,
            UpdateKey = function(p444)
                if TextLabel then
                    TextLabel.Text = v1621(p444)
                end
            end,
            Activate = function()
                UIStroke.Color = Color3.fromRGB(100, 200, 255)
                Frame2.Visible = false
                TextLabel2.Text = ""
            end,
            Deactivate = function(p445)
                UIStroke.Color = Color3.fromRGB(200, 100, 100)
                Frame2.Visible = true

                if connection then
                    connection:Disconnect()
                end

                local v1660 = tick() + p445

                connection = RunService.Heartbeat:Connect(function()
                    local v1661 = v1660 - tick()

                    if v1661 <= 0 then
                        connection:Disconnect()
                        connection = nil
                        UIStroke.Color = p440 and Color3.fromRGB(100, 200, 255) or Color3.fromRGB(70, 70, 70)
                        Frame2.Visible = false
                        TextLabel2.Text = ""
                    else
                        TextLabel2.Text = string.format("%.1f", v1661)
                        Frame2.BackgroundTransparency = 0.3 + 0.4 * (1 - v1661 / p445)
                    end
                end)
            end,
            Destroy = function()
                if connection then
                    connection:Disconnect()
                    connection = nil
                end

                if Frame then
                    Frame:Destroy()
                end
            end
        }
    end
    local function createPart(p446)
        local Part = Instance.new("Part")

        Part.Name = "Portal"
        Part.Size = Vector3.new(6, 0.5, 6)
        Part.CFrame = CFrame.new(p446)
        Part.Anchored = true
        Part.CanCollide = false
        Part.Material = Enum.Material.Neon
        Part.Color = Color3.fromRGB(100, 200, 255)
        Part.Transparency = 0.3
        Part.Parent = Workspace

        local PointLight = Instance.new("PointLight")

        PointLight.Color = Color3.fromRGB(100, 200, 255)
        PointLight.Brightness = 3
        PointLight.Range = 15
        PointLight.Parent = Part

        local Part2 = Instance.new("Part")

        Part2.Name = "SpinEffect"
        Part2.Size = Vector3.new(7, 0.3, 7)
        Part2.CFrame = Part.CFrame
        Part2.Anchored = true
        Part2.CanCollide = false
        Part2.Material = Enum.Material.Neon
        Part2.Color = Color3.fromRGB(150, 220, 255)
        Part2.Transparency = 0.5
        Part2.Parent = Part

        local SpecialMesh = Instance.new("SpecialMesh")

        SpecialMesh.MeshType = Enum.MeshType.Cylinder
        SpecialMesh.Parent = Part

        local SpecialMesh2 = Instance.new("SpecialMesh")

        SpecialMesh2.MeshType = Enum.MeshType.Cylinder
        SpecialMesh2.Parent = Part2

        local Attachment = Instance.new("Attachment")

        Attachment.Parent = Part

        local ParticleEmitter = Instance.new("ParticleEmitter")

        ParticleEmitter.Texture = "rbxasset://textures/particles/sparkles_main.dds"
        ParticleEmitter.Color = ColorSequence.new(Color3.fromRGB(100, 200, 255))
        ParticleEmitter.LightEmission = 1
        ParticleEmitter.Size = NumberSequence.new(0.5)
        ParticleEmitter.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0.5),
            NumberSequenceKeypoint.new(1, 1)
        })
        ParticleEmitter.Lifetime = NumberRange.new(1, 2)
        ParticleEmitter.Rate = 50
        ParticleEmitter.Speed = NumberRange.new(5, 10)
        ParticleEmitter.SpreadAngle = Vector2.new(180, 180)
        ParticleEmitter.Parent = Attachment

        local connection

        connection = RunService.Heartbeat:Connect(function()
            if not Part or not Part.Parent then
                if connection then
                    connection:Disconnect()
                end

                return
            end

            Part2.CFrame *= CFrame.Angles(0, math.rad(2), 0)

            local transparency = 0.3 + math.sin(tick() * 3) * 0.2

            Part.Transparency = transparency
            Part2.Transparency = transparency + 0.2
        end)
        table.insert(t54, {
            portal = Part,
            connection = connection
        })

        return Part
    end
    local function v1672()
        if u1574 then
            u1574:Destroy()
            u1574 = nil
        end

        for _, v in ipairs(t54) do
            if v.connection then
                v.connection:Disconnect()
            end

            if v.portal then
                v.portal:Destroy()
            end
        end

        t54 = {}
    end
    local function v1675(p447)
        if not p447 then
            return
        end

        if not p447:FindFirstChild("Animator") then
            return
        end

        local Parent = p447.Parent
        local HumanoidRootPart = Parent and Parent:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then
            return
        end

        local Part = Instance.new("Part")

        Part.Size = Vector3.new(4, 8, 4)
        Part.CFrame = HumanoidRootPart.CFrame
        Part.Anchored = true
        Part.CanCollide = false
        Part.Material = Enum.Material.Neon
        Part.Color = Color3.fromRGB(100, 200, 255)
        Part.Transparency = 0.5
        Part.Parent = Workspace

        local SpecialMesh = Instance.new("SpecialMesh")

        SpecialMesh.MeshType = Enum.MeshType.Sphere
        SpecialMesh.Parent = Part
        TweenService:Create(Part, TweenInfo.new(0.5), {
            Transparency = 1,
            Size = Vector3.new(8, 12, 8)
        }):Play()
        Debris:AddItem(Part, 0.5)
    end
    local function v1680()
        if not u1579 or not LocalPlayer2:GetAttribute("Match") or u1577 then
            return
        end

        local Character = LocalPlayer2.Character

        if not Character then
            return
        end

        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then
            return
        end

        v1672()
        u1577 = true

        local TeleportSound = ReplicatedStorage:FindFirstChild("Ability") and
        ReplicatedStorage.Ability:FindFirstChild("TeleportSound")

        if TeleportSound then
            local clone = TeleportSound:Clone()

            clone.Parent = HumanoidRootPart
            clone:Play()
            Debris:AddItem(clone, clone.TimeLength)
        end

        u1574 = createPart(HumanoidRootPart.Position + Vector3.new(0, -2.5, 0))
        v1675(v53(Character))

        if placePortal then
            placePortal.Deactivate(1)
        end

        local function v1685()
            u1577 = false
        end

        task.delay(1, v1685)
    end
    local function v1686(p448)
        if not u1579 or not LocalPlayer2:GetAttribute("Match") or u1576 then
            return
        end

        if not u1574 or not u1574.Parent then
            return
        end

        local Character = LocalPlayer2.Character

        if not Character then
            return
        end

        local v1688 = v53(Character)
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not v1688 or not HumanoidRootPart then
            return
        end

        v1675(v1688)

        local TeleportSound = ReplicatedStorage:FindFirstChild("Ability") and
        ReplicatedStorage.Ability:FindFirstChild("TeleportSound")

        if TeleportSound then
            local clone = TeleportSound:Clone()

            clone.Parent = HumanoidRootPart
            clone:Play()
            Debris:AddItem(clone, clone.TimeLength)
        end

        task.wait(0.2)
        HumanoidRootPart.CFrame = u1574.CFrame + Vector3.new(0, 3, 0)
        v1675(v1688)

        if TeleportSound then
            local clone = TeleportSound:Clone()

            clone.Parent = HumanoidRootPart
            clone:Play()
            Debris:AddItem(clone, clone.TimeLength)
        end

        v1672()
        u1576 = true

        if p448 then
            p448.Deactivate(n48)
        end

        task.delay(n48, function()
            u1576 = false
        end)
    end
    local function createScreenGui()
        local ScreenGui = Instance.new("ScreenGui")

        ScreenGui.Name = "PortalAbilityUI"
        ScreenGui.ResetOnSpawn = false
        ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        ScreenGui.IgnoreGuiInset = false
        ScreenGui.DisplayOrder = 999997

        local v1695 = v1605()

        placePortal = v1617(ScreenGui, "PlacePortal", Q, v1695.portalPlace, "http://www.roblox.com/asset/?id=15203104398",
            false)
        teleport = v1617(ScreenGui, "Teleport", E, v1695.portalTeleport, "http://www.roblox.com/asset/?id=15386331894",
            false)
        ScreenGui.Parent = LocalPlayer2:WaitForChild("PlayerGui")

        return ScreenGui
    end
    local function v1696()
        u1585 = createScreenGui()
        table.insert(t55, UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if not u1579 or not LocalPlayer2:GetAttribute("Match") then
                return
            end

            if gameProcessed or UserInputService:GetFocusedTextBox() then
                return
            end

            if input.KeyCode == Q then
                v1680()
            elseif input.KeyCode == E then
                v1686(teleport)
            end
        end))
        table.insert(t55, placePortal.Button.MouseButton1Click:Connect(function()
            v1680()
        end))
        table.insert(t55, teleport.Button.MouseButton1Click:Connect(function()
            v1686(teleport)
        end))
    end

    v1598 = function()
        v1672()
        u1576 = false
        u1577 = false

        for _, v in ipairs(t55) do
            v:Disconnect()
        end

        t55 = {}

        if placePortal and placePortal.Destroy then
            placePortal.Destroy()
        end

        if teleport and teleport.Destroy then
            teleport.Destroy()
        end

        if u1585 then
            u1585:Destroy()
            u1585 = nil
        end

        placePortal = nil
        teleport = nil
    end

    local function v1699(p449, p450)
        local WalkSpeed = p449.WalkSpeed

        p449.WalkSpeed = WalkSpeed * (1 + p450)

        local function v1701()
            p449.WalkSpeed = WalkSpeed
        end

        return v1701
    end
    local function createAttachment(p451)
        local Attachment = Instance.new("Attachment")

        Attachment.Name = "SpeedTrailAttachment"
        Attachment.Parent = p451

        local Trail = Instance.new("Trail")

        Trail.Attachment0 = Attachment
        Trail.Attachment1 = Attachment
        Trail.Color = ColorSequence.new(Color3.fromRGB(100, 200, 255))
        Trail.Lifetime = 0.5
        Trail.MinLength = 0
        Trail.FaceCamera = true
        Trail.LightEmission = 1
        Trail.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0.5),
            NumberSequenceKeypoint.new(1, 1)
        })
        Trail.WidthScale = NumberSequence.new(1)
        Trail.Parent = Attachment

        return Attachment
    end
    local function v1705(p452, p453)
        local HumanoidRootPart = p452.Parent:WaitForChild("HumanoidRootPart")
        local Animator = p452:WaitForChild("Animator")
        local RootAttachment = HumanoidRootPart:WaitForChild("RootAttachment")
        local DashAnimation = ReplicatedStorage:FindFirstChild("Ability") and
        ReplicatedStorage.Ability:FindFirstChild("DashAnimation")
        local v1710 = DashAnimation and Animator:LoadAnimation(DashAnimation)

        if v1710 then
            v1710:GetMarkerReachedSignal("Completed"):Connect(function()
                v1710:AdjustSpeed(0)
            end)
        end

        local u1711 = false

        return {
            Activate = function()
                if not u1593 or u1711 or HumanoidRootPart.Anchored then
                    return
                end

                u1711 = true

                if liveWeaponBuffEnabled and applyLiveWeaponBuff then
                    applyLiveWeaponBuff(false)
                end

                if v1710 then
                    v1710:Play(nil, nil, 1)
                end

                local LookVector = HumanoidRootPart.CFrame.LookVector
                local LinearVelocity = Instance.new("LinearVelocity")

                LinearVelocity.VectorVelocity = LookVector * t53.DashPower
                LinearVelocity.MaxForce = 50000
                LinearVelocity.Attachment0 = RootAttachment
                LinearVelocity.Parent = HumanoidRootPart
                Debris:AddItem(LinearVelocity, 0.1)
                task.delay(0.03, function()
                    if liveWeaponBuffEnabled and applyLiveWeaponBuff then
                        applyLiveWeaponBuff(false)
                    end
                end)

                if p453 then
                    p453.Activate(t53.DashActivatedTime)
                end

                task.delay(t53.DashActivatedTime, function()
                    if v1710 then
                        v1710:Stop()
                    end

                    if liveWeaponBuffEnabled and applyLiveWeaponBuff then
                        applyLiveWeaponBuff(false)
                    end

                    if p453 then
                        p453.Deactivate(t53.DashCooldown)
                    end

                    task.delay(t53.DashCooldown, function()
                        u1711 = false
                    end)
                end)
            end
        }
    end
    local function v1714(p454, p455)
        local u1715

        return {
            Activate = function()
                if not u1594 or u1715 then
                    return
                end

                local Parent = p454.Parent

                if not Parent then
                    return
                end

                local HumanoidRootPart = Parent:FindFirstChild("HumanoidRootPart")

                if not HumanoidRootPart then
                    return
                end

                local v1718 = createAttachment(HumanoidRootPart)

                u1715 = true

                local v1719 = v1699(p454, t53.SprintBoost)

                if p455 then
                    p455.Activate(t53.SprintTime)
                end

                task.delay(t53.SprintTime, function()
                    if p455 then
                        p455.Deactivate(t53.SprintCooldown)
                    end

                    v1719()

                    if v1718 then
                        v1718:Destroy()
                    end

                    task.delay(t53.SprintCooldown, function()
                        u1715 = nil
                    end)
                end)
            end
        }
    end
    local function createScreenGui2()
        local ScreenGui = Instance.new("ScreenGui")

        ScreenGui.Name = "CustomAbilityUI"
        ScreenGui.ResetOnSpawn = false
        ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        ScreenGui.IgnoreGuiInset = false
        ScreenGui.DisplayOrder = 999997

        local v1722 = v1605()

        if u1593 then
            dash = v1617(ScreenGui, "Dash", Q2, v1722.dash, "http://www.roblox.com/asset/?id=17605583293", false)
        end

        if u1594 then
            sprint = v1617(ScreenGui, "Sprint", E2, v1722.sprint, "http://www.roblox.com/asset/?id=13318881043", false)
        end

        ScreenGui.Parent = LocalPlayer2:WaitForChild("PlayerGui")

        return ScreenGui
    end
    local function v1723()
        for _, v in ipairs(t56) do
            v:Disconnect()
        end

        t56 = {}

        if u1589 and u1589.Destroy then
            pcall(function()
                u1589.Destroy()
            end)
        end

        if u1590 and u1590.Destroy then
            pcall(function()
                u1590.Destroy()
            end)
        end

        if dash and dash.Destroy then
            dash.Destroy()
        end

        if sprint and sprint.Destroy then
            sprint.Destroy()
        end

        if u1586 then
            u1586:Destroy()
            u1586 = nil
        end

        dash = nil
        sprint = nil
        u1589 = nil
        u1590 = nil
    end
    local function v1726()
        local Character = LocalPlayer2.Character or LocalPlayer2.CharacterAdded:Wait()
        local Humanoid = Character:WaitForChild("Humanoid")
        local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

        u1586 = createScreenGui2()

        if u1593 and dash then
            u1589 = v1705(Humanoid, dash)
        end

        if u1594 and sprint then
            u1590 = v1714(Humanoid, sprint)
        end

        table.insert(t56, UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if u1592 and not gameProcessed then
                if not UserInputService:GetFocusedTextBox() then
                    if HumanoidRootPart.Anchored then
                        return
                    end

                    if input.KeyCode == Q2 and u1589 then
                        u1589.Activate()
                    elseif input.KeyCode == E2 and u1590 then
                        u1590.Activate()
                    end

                    return
                end
            end
        end))

        if dash and u1589 then
            table.insert(t56, dash.Button.MouseButton1Click:Connect(function()
                if not HumanoidRootPart.Anchored then
                    u1589.Activate()
                end
            end))
        end

        if sprint and u1590 then
            table.insert(t56, sprint.Button.MouseButton1Click:Connect(function()
                if not HumanoidRootPart.Anchored then
                    u1590.Activate()
                end
            end))
        end
    end
    local function v1730()
        local attribute = LocalPlayer2:GetAttribute("Match")

        if not attribute or not u1592 then
            if u1586 then
                v1723()
            end
        elseif not u1586 then
            v1726()
        end

        if not attribute or not u1579 then
            if u1585 then
                v1598()
            end
        elseif not u1585 then
            v1696()
        end

        v1613()
    end

    t5.Player:AddParagraph({
        Title = "teleportie",
        Content = ""
    })
    t5.Player:AddToggle("PortalToggle", {
        Title = "Teleport",
        Default = false
    }):OnChanged(function()
        u1579 = Options.PortalToggle.Value
        v1730()
    end)
    t5.Player:AddKeybind("PlacePortalKey", {
        Title = "Place Portal Key",
        Mode = "Toggle",
        Default = "Q",
        ChangedCallback = function(p456)
            Q = p456

            if placePortal then
                if placePortal.UpdateKey then
                    placePortal.UpdateKey(p456)
                end
            end
        end
    })
    t5.Player:AddKeybind("TeleportKey", {
        Title = "Teleport Key",
        Mode = "Toggle",
        Default = "E",
        ChangedCallback = function(p457)
            E = p457

            if teleport and teleport.UpdateKey then
                teleport.UpdateKey(p457)
            end
        end
    })
    t5.Player:AddSlider("CustomTeleportCooldownSlider", {
        Title = "Teleport Cooldown",
        Default = n48,
        Min = 0,
        Max = 30,
        Rounding = 1,
        Callback = function(p458)
            n48 = tonumber(p458) or n48
        end
    })
    t5.Player:AddParagraph({
        Title = "Movement",
        Content = "Dash & sprint unlocker"
    })
    t5.Player:AddToggle("UnlockDashToggle", {
        Title = "Unlock Dash",
        Default = false
    }):OnChanged(function()
        u1593 = Options.UnlockDashToggle.Value
        v1597()

        if u1586 then
            v1723()
        end

        v1730()
    end)
    t5.Player:AddToggle("UnlockSprintToggle", {
        Title = "Unlock Sprint",
        Default = false
    }):OnChanged(function()
        u1594 = Options.UnlockSprintToggle.Value
        v1597()

        if u1586 then
            v1723()
        end

        v1730()
    end)
    t5.Player:AddKeybind("DashKey", {
        Title = "Dash Key",
        Mode = "Toggle",
        Default = "Q",
        ChangedCallback = function(p459)
            Q2 = p459

            if dash then
                if dash.UpdateKey then
                    dash.UpdateKey(p459)
                end
            end
        end
    })
    t5.Player:AddKeybind("SprintKey", {
        Title = "Sprint Key",
        Mode = "Toggle",
        Default = "E",
        ChangedCallback = function(p460)
            E2 = p460

            if sprint and sprint.UpdateKey then
                sprint.UpdateKey(p460)
            end
        end
    })
    t5.Player:AddSlider("CustomDashCooldownSlider", {
        Title = "Dash Cooldown",
        Default = 6,
        Min = 0,
        Max = 30,
        Rounding = 1,
        Callback = function(p461)
            t53.DashCooldown = tonumber(p461) or t53.DashCooldown
        end
    })
    t5.Player:AddSlider("CustomDashPowerSlider", {
        Title = "Dash Power",
        Default = t53.DashPower,
        Min = 20,
        Max = 120,
        Rounding = 0,
        Callback = function(p462)
            t53.DashPower = tonumber(p462) or t53.DashPower
        end
    })
    t5.Player:AddSlider("CustomSprintDurationSlider", {
        Title = "Sprint Duration",
        Default = t53.SprintTime,
        Min = 0.5,
        Max = 10,
        Rounding = 1,
        Callback = function(p463)
            t53.SprintTime = tonumber(p463) or t53.SprintTime
        end
    })
    t5.Player:AddSlider("CustomSprintCooldownSlider", {
        Title = "Sprint Cooldown",
        Default = 15,
        Min = 0,
        Max = 60,
        Rounding = 1,
        Callback = function(p464)
            t53.SprintCooldown = tonumber(p464) or t53.SprintCooldown
        end
    })
    t5.Player:AddSlider("CustomSprintBoostSlider", {
        Title = "Sprint Boost",
        Default = t53.SprintBoost * 100,
        Min = 5,
        Max = 150,
        Rounding = 0,
        Callback = function(p465)
            t53.SprintBoost = (tonumber(p465) or 50) / 100
        end
    })
    v24(LocalPlayer2.CharacterAdded, "Player CharacterAdded", function()
        if u1579 then
            v1598()
        end

        if u1592 then
            v1723()
        end

        task.wait(0.1)
        v1730()
    end)
    v24(LocalPlayer2:GetAttributeChangedSignal("Match"), "Player MatchChanged", function()
        v1730()
    end)
end

if InterfaceManager then
    pcall(function()
        InterfaceManager:SetLibrary(Fluent)
        InterfaceManager:SetFolder("VexalUnified")
        InterfaceManager:BuildInterfaceSection(t5.Settings)
    end)
end

if SaveManager and t4.HasFiles then
    pcall(function()
        SaveManager:SetLibrary(Fluent)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({})
        SaveManager:SetFolder(t4.IsMobile and "VexalUnified/mobile" or "VexalUnified/desktop")
        SaveManager:BuildConfigSection(t5.Settings)
        SaveManager:LoadAutoloadConfig()
    end)
else
    v22("Config Saving", "missing file functions")
    t5.Settings:AddParagraph({
        Title = "Config Saving",
        Content = "Skipped because this executor does not expose readfile/writefile/isfile."
    })
end

t5.Settings:AddParagraph({
    Title = "Loaded Features",
    Content = "Device: " ..
    (t4.IsMobile and "Mobile" or "PC") ..
    " (" ..
    tostring(t4.DeviceModeSource) ..
    ") | Drawing: " .. tostring(t4.HasDrawing) .. " | Hooks: " .. tostring(t4.HasExecutorHooks)
})
t5.Settings:AddButton({
    Title = "Reset Device Choice",
    Callback = function()
        v40()
        Fluent:Notify({
            Title = "Device Choice Reset",
            Content = "Restart Vexal to choose Android/Mobile or PC again.",
            Duration = 4
        })
    end
})

if #t3 > 0 then
    local v1732 = table.concat(t3, "\n")

    if #v1732 > 1800 then
        v1732 = v1732:sub(1, 1800) .. "\n..."
    end

    t5.Settings:AddParagraph({
        Title = "Skipped Features",
        Content = v1732
    })
end

do
    t5.Settings:AddButton({
        Title = "Unload Vexal",
        Callback = function()
            if type(getgenv().VexalUnifiedUnload) == "function" then
                getgenv().VexalUnifiedUnload()
            end
        end
    })
end

v44:SelectTab(1)
