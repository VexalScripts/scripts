if getgenv().VexalScriptsGuiLoaderRan then return end getgenv().VexalScriptsGuiLoaderRan=true local
a=game:GetService('Lighting')local b=game:GetService('TweenService')local c=game:GetService(
'Players').LocalPlayer local d=Instance.new('ScreenGui',c:WaitForChild('PlayerGui'))local e=
Instance.new('BlurEffect',a)local f=Instance.new('Frame',d)local g=Instance.new('UIGradient',f)
local h=Instance.new('TextLabel',d)local i=Instance.new('Frame',d)local j=Instance.new('Frame',i)
local k=Instance.new('UIGradient',j)local l=Instance.new('TextButton',d)local m=Instance.new(
'UIGradient',l)local n=TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.Out)local o=b:
Create(j,TweenInfo.new(5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Size=UDim2.new(1,0,1,0)})
local function SetCornerRadius(p,q)local r=Instance.new('UICorner',p)r.CornerRadius=UDim.new(0,q)
end local function CloseGui()local p=TweenInfo.new(0.7,Enum.EasingStyle.Quad,Enum.EasingDirection.
In)b:Create(e,p,{Size=0}):Play()b:Create(h,p,{TextTransparency=1,TextStrokeTransparency=1,Size=
UDim2.new(1.2,0,1.2,0),Position=UDim2.new(-0.1,0,-0.1,0)}):Play()b:Create(f,p,{
BackgroundTransparency=1}):Play()b:Create(i,p,{BackgroundTransparency=1,Position=UDim2.new(0.5,-200
,0.8,0)}):Play()b:Create(j,p,{BackgroundTransparency=1}):Play()b:Create(l,p,{BackgroundTransparency
=1,TextTransparency=1,Position=UDim2.new(0.5,-60,0.9,0)}):Play()task.delay(0.7,function()d:Destroy(
)e:Destroy()end)end d.IgnoreGuiInset=true e.Size=0 f.Size=UDim2.new(1,0,1,0)f.
BackgroundTransparency=1 f.BackgroundColor3=Color3.fromRGB(15,10,25)f.BorderSizePixel=0 g.Color=
ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(35,15,60)),ColorSequenceKeypoint.new(
0.5,Color3.fromRGB(15,10,25)),ColorSequenceKeypoint.new(1,Color3.fromRGB(10,25,50))})g.Transparency
=NumberSequence.new({NumberSequenceKeypoint.new(0,0.4),NumberSequenceKeypoint.new(0.5,0.2),
NumberSequenceKeypoint.new(1,0.4)})g.Rotation=45 h.Size=UDim2.new(0.8,0,0.8,0)h.Position=UDim2.new(
0.1,0,0.1,0)h.BackgroundTransparency=1 h.Text='VEXAL SCRIPTS'h.TextColor3=Color3.fromRGB(255,255,
255)h.TextSize=120 h.Font=Enum.Font.LuckiestGuy h.TextTransparency=1 h.TextStrokeTransparency=1 h.
TextStrokeColor3=Color3.fromRGB(25,0,50)local p=Instance.new('UIGradient',h)p.Color=ColorSequence.
new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,90,200)),ColorSequenceKeypoint.new(0.5,Color3.
fromRGB(150,50,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,230,255))})p.Rotation=90 i.Size=
UDim2.new(0,400,0,12)i.Position=UDim2.new(0.5,-200,0.8,0)i.BackgroundColor3=Color3.fromRGB(20,20,30
)i.BackgroundTransparency=1 i.BorderSizePixel=0 SetCornerRadius(i,6)j.Size=UDim2.new(0,0,1,0)j.
BackgroundColor3=Color3.fromRGB(255,255,255)j.BackgroundTransparency=1 j.BorderSizePixel=0
SetCornerRadius(j,6)k.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(150,50,
255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,230,255))})l.Size=UDim2.new(0,140,0,45)l.
Position=UDim2.new(0.5,-70,0.88,0)l.BackgroundColor3=Color3.fromRGB(255,255,255)l.TextColor3=Color3
.new(1,1,1)l.Text='SKIP'l.Font=Enum.Font.GothamBold l.TextSize=16 l.BackgroundTransparency=1 l.
TextTransparency=1 SetCornerRadius(l,22)m.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,
Color3.fromRGB(80,30,140)),ColorSequenceKeypoint.new(1,Color3.fromRGB(40,20,80))})local q=Instance.
new('UIStroke',l)q.Thickness=2 q.Color=Color3.fromRGB(150,50,255)q.Transparency=1 q.ApplyStrokeMode
=Enum.ApplyStrokeMode.Border local r=Instance.new('UIStroke',l)r.Thickness=2 r.Color=Color3.new(1,1
,1)r.Transparency=1 local s=Instance.new('UIGradient',r)s.Color=ColorSequence.new({
ColorSequenceKeypoint.new(0,Color3.fromRGB(255,90,200)),ColorSequenceKeypoint.new(1,Color3.fromRGB(
0,230,255))})b:Create(e,n,{Size=15}):Play()b:Create(f,n,{BackgroundTransparency=0}):Play()b:Create(
h,n,{TextTransparency=0,TextStrokeTransparency=0.2,Size=UDim2.new(1,0,1,0),Position=UDim2.new(0,0,0
,0)}):Play()b:Create(i,n,{BackgroundTransparency=0,Position=UDim2.new(0.5,-200,0.75,0)}):Play()b:
Create(j,n,{BackgroundTransparency=0}):Play()b:Create(l,n,{BackgroundTransparency=0,
TextTransparency=0,Position=UDim2.new(0.5,-70,0.83,0)}):Play()b:Create(r,n,{Transparency=0}):Play()
o:Play()l.MouseEnter:Connect(function()b:Create(l,TweenInfo.new(0.2),{Size=UDim2.new(0,150,0,48),
Position=UDim2.new(0.5,-75,0.828,0)}):Play()b:Create(r,TweenInfo.new(0.2),{Thickness=3}):Play()end)
l.MouseLeave:Connect(function()b:Create(l,TweenInfo.new(0.2),{Size=UDim2.new(0,140,0,45),Position=
UDim2.new(0.5,-70,0.83,0)}):Play()b:Create(r,TweenInfo.new(0.2),{Thickness=2}):Play()end)l.
MouseButton1Down:Connect(function()b:Create(l,TweenInfo.new(0.1),{Size=UDim2.new(0,135,0,42),
Position=UDim2.new(0.5,-67.5,0.832,0)}):Play()end)l.MouseButton1Click:Connect(CloseGui)o.Completed:
Connect(CloseGui)
