local a=game:GetService('TweenService')local b=game:GetService('UserInputService')local c=game:
GetService('RunService')local d=game:GetService('CoreGui')local e=game:GetService('Players').
LocalPlayer if getgenv().VexalHub then pcall(function()getgenv().VexalHub:Close(true)end)end local
f={Title='Vexal Scripts',IconUrl='https://vexal.fun/images/icon.png',Width=460,MaxListHeight=340,
DragSmoothness=18,HoverSweepTime=0.6,FullOutlineTime=0.35,Buttons={{Name=
'Main Script (Recommended)',Description='Get access to every premium feature for free',Version=
'v3.6',Note='Recommended',Callback=function()loadstring(game:HttpGet(
[[https://raw.githubusercontent.com/VexalScripts/scripts/refs/heads/main/v2/MvsdMainScript.lua]],
true))()end},{Name='Spawner Script (Outdated)',Description=
'Spawns items and show off to your friends locally',Version='v1.2',Note='Outdated',Callback=
function()loadstring(game:HttpGet(
[[https://raw.githubusercontent.com/VexalScripts/scripts/refs/heads/main/v2/MvsdSpawnerScript.lua]]
,true))()end}}}local g={Text=Color3.fromRGB(242,243,245),Muted=Color3.fromRGB(148,155,164),Header=
Color3.fromRGB(30,31,34),Outline=Color3.fromRGB(74,77,84),Green=Color3.fromRGB(87,242,135),Red=
Color3.fromRGB(237,66,69)}local h={Recommended=g.Green,Outdated=g.Red}local i=ColorSequence.new({
ColorSequenceKeypoint.new(0,Color3.fromRGB(58,60,66)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(
226,228,232)),ColorSequenceKeypoint.new(1,Color3.fromRGB(58,60,66))})local j=48 local k=62 local l=
60 local m='Click to run  \u{203a}'local function new(n,o,p)local q=Instance.new(n)for r,s in
pairs(o)do q[r]=s end q.Parent=p return q end local function tween(n,o,p,q,r)local s=a:Create(n,
TweenInfo.new(o,q or Enum.EasingStyle.Quad,r or Enum.EasingDirection.Out),p)s:Play()return s end
local function corner(n,o)return new('UICorner',{CornerRadius=UDim.new(0,o)},n)end local function 
gradient(n,o,p,q)return new('UIGradient',{Color=ColorSequence.new(o,p),Rotation=q or 0},n)end local 
function badge(n,o,p,q)local r=new('TextLabel',{AutomaticSize=Enum.AutomaticSize.X,Size=UDim2.new(0
,0,0,18),BackgroundColor3=p,BackgroundTransparency=0.85,BorderSizePixel=0,Font=Enum.Font.GothamBold
,Text=o,TextColor3=p,TextSize=11,LayoutOrder=q},n)corner(r,9)new('UIPadding',{PaddingLeft=UDim.new(
0,8),PaddingRight=UDim.new(0,8)},r)new('UIStroke',{Color=p,Thickness=1,Transparency=0.5,
ApplyStrokeMode=Enum.ApplyStrokeMode.Border},r)return r end local n={Buttons={},Closed=false,
Running=false}local o={}local p=new('ScreenGui',{Name='VexalScriptsHub',ResetOnSpawn=false,
DisplayOrder=2147483647,IgnoreGuiInset=true,ZIndexBehavior=Enum.ZIndexBehavior.Sibling})pcall(
function()sethiddenproperty(p,'OnTopOfCoreBlur',true)end)pcall(protectgui or(syn and syn.
protect_gui)or function()end,p)pcall(function()p.Parent=gethui and gethui()or d end)if not p.Parent
then p.Parent=e:WaitForChild('PlayerGui')end local q pcall(function()writefile(
'VexalScriptsIcon.png',game:HttpGet(f.IconUrl))q=getcustomasset('VexalScriptsIcon.png')end)local r=
new('Frame',{Name='Main',AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0.5,0,0.5,0),Size=
UDim2.new(0,0,0,0),BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=0,ClipsDescendants=true,
Active=true},p)corner(r,8)gradient(r,Color3.fromRGB(49,51,56),Color3.fromRGB(30,31,34),90)local s=
new('UIStroke',{Color=g.Outline,Thickness=1.5,Transparency=1,ApplyStrokeMode=Enum.ApplyStrokeMode.
Border},r)tween(s,0.4,{Transparency=0})local t=new('Frame',{Size=UDim2.new(1,0,0,j),
BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=0},r)corner(t,8)gradient(t,Color3.fromRGB(35,36,
40),g.Header,90)new('Frame',{Position=UDim2.new(0,0,1,-10),Size=UDim2.new(1,0,0,10),
BackgroundColor3=g.Header,BorderSizePixel=0},t)if q then local u=new('ImageLabel',{Size=UDim2.new(0
,26,0,26),Position=UDim2.new(0,16,0,11),BackgroundTransparency=1,Image=q},t)corner(u,6)end new(
'TextLabel',{Size=UDim2.new(1,-100,1,0),Position=UDim2.new(0,q and 52 or 16,0,0),
BackgroundTransparency=1,Font=Enum.Font.GothamBold,Text=f.Title,TextColor3=g.Muted,TextSize=14,
TextXAlignment=Enum.TextXAlignment.Left},t)local u=new('TextButton',{Size=UDim2.new(0,30,0,30),
Position=UDim2.new(1,-41,0,9),BackgroundColor3=g.Red,BackgroundTransparency=1,AutoButtonColor=false
,Font=Enum.Font.GothamBold,Text='X',TextColor3=g.Muted,TextSize=15},t)corner(u,6)u.MouseEnter:
Connect(function()tween(u,0.15,{BackgroundTransparency=0,TextColor3=Color3.new(1,1,1)})end)u.
MouseLeave:Connect(function()tween(u,0.15,{BackgroundTransparency=1,TextColor3=g.Muted})end)new(
'Frame',{Position=UDim2.new(0,0,0,j-2),Size=UDim2.new(1,0,0,2),BackgroundColor3=g.Outline,
BorderSizePixel=0},r)local v=new('ScrollingFrame',{Position=UDim2.new(0,12,0,k),Size=UDim2.new(1,-
24,0,40),BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=3,ScrollBarImageColor3=
Color3.fromRGB(88,92,100),CanvasSize=UDim2.new(0,0,0,0)},r)local w=new('UIListLayout',{SortOrder=
Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,6)},v)local x=false local function resize()local y=w.
AbsoluteContentSize.Y v.CanvasSize=UDim2.new(0,0,0,y)local z=math.clamp(y,40,f.MaxListHeight)v.Size
=UDim2.new(1,-24,0,z)local A=UDim2.new(0,f.Width,0,k+z+12)if x then tween(r,0.25,{Size=A})else
tween(r,0.45,{Size=A},Enum.EasingStyle.Back)end end w:GetPropertyChangedSignal(
'AbsoluteContentSize'):Connect(resize)local y=0 function n:AddButton(z)y+=1 local A=y local B={
Description=z.Description or'',Version=z.Version,Note=z.Note,Callback=z.Callback or function()end,
Busy=false}local C=new('CanvasGroup',{Name=z.Name,Size=UDim2.new(1,-6,0,l),BackgroundTransparency=1
,BorderSizePixel=0,GroupTransparency=1,LayoutOrder=A},v)local D=new('Frame',{Position=UDim2.new(0,2
,0,2),Size=UDim2.new(1,-4,1,-4),BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=0},C)corner(D,8)
gradient(D,Color3.fromRGB(59,62,69),Color3.fromRGB(40,42,47),0)new('UIStroke',{Color=g.Outline,
Thickness=1.5,ApplyStrokeMode=Enum.ApplyStrokeMode.Border},D)local E=new('Frame',{Position=UDim2.
new(0,2,0,2),Size=UDim2.new(1,-4,1,-4),BackgroundTransparency=1,BorderSizePixel=0},C)corner(E,8)
local F=new('UIStroke',{Color=Color3.new(1,1,1),Thickness=1.5,Transparency=1,ApplyStrokeMode=Enum.
ApplyStrokeMode.Border},E)local G=new('UIGradient',{Color=i,Rotation=0},F)local H=new('Frame',{
Position=UDim2.new(0,2,0,2),Size=UDim2.new(1,-4,1,-4),BackgroundTransparency=1,BorderSizePixel=0},C
)corner(H,8)local I=new('UIStroke',{Color=Color3.new(1,1,1),Thickness=1.5,Transparency=1,
ApplyStrokeMode=Enum.ApplyStrokeMode.Border},H)local J=new('Frame',{Position=UDim2.new(0,12,0,8),
Size=UDim2.new(1,-24,0,20),BackgroundTransparency=1,BorderSizePixel=0},D)new('UIListLayout',{
FillDirection=Enum.FillDirection.Horizontal,SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=
Enum.VerticalAlignment.Center,Padding=UDim.new(0,8)},J)new('TextLabel',{AutomaticSize=Enum.
AutomaticSize.X,Size=UDim2.new(0,0,1,0),BackgroundTransparency=1,Font=Enum.Font.GothamBold,Text=z.
Name,TextColor3=g.Text,TextSize=15,TextXAlignment=Enum.TextXAlignment.Left,LayoutOrder=1},J)if B.
Version then badge(J,B.Version,g.Muted,2)end if B.Note then badge(J,B.Note,h[B.Note]or g.Muted,3)
end new('TextLabel',{Position=UDim2.new(0,12,0,31),Size=UDim2.new(1,-130,0,18),
BackgroundTransparency=1,Font=Enum.Font.Gotham,Text=B.Description,TextColor3=g.Muted,TextSize=13,
TextXAlignment=Enum.TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd},D)local K=new(
'TextLabel',{AnchorPoint=Vector2.new(1,0),Position=UDim2.new(1,-12,0,31),Size=UDim2.new(0,104,0,18)
,BackgroundTransparency=1,Font=Enum.Font.GothamBold,Text=m,TextColor3=g.Muted,TextSize=13,
TextXAlignment=Enum.TextXAlignment.Right},D)local L=new('TextButton',{Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,Text='',AutoButtonColor=false},C)local function setHint(M,N)K.Text=M
tween(K,0.15,{TextColor3=N})end local M=0 local function sweepOn()M+=1 local N=M G.Rotation=0 F.
Transparency=1 I.Transparency=1 tween(F,0.25,{Transparency=0})local O=tween(G,f.HoverSweepTime,{
Rotation=120},Enum.EasingStyle.Quad,Enum.EasingDirection.Out)O.Completed:Connect(function(P)if P==
Enum.PlaybackState.Completed and N==M then tween(I,f.FullOutlineTime,{Transparency=0},Enum.
EasingStyle.Sine,Enum.EasingDirection.InOut)end end)end local function sweepOff()M+=1 tween(F,0.2,{
Transparency=1})tween(I,0.2,{Transparency=1})end L.MouseEnter:Connect(function()if not n.Running
then sweepOn()setHint(m,g.Text)end end)L.MouseLeave:Connect(function()if not B.Busy then sweepOff()
setHint(m,g.Muted)end end)L.MouseButton1Down:Connect(function()if not n.Running then tween(F,0.08,{
Transparency=0.4})end end)L.MouseButton1Up:Connect(function()if not n.Running then tween(F,0.08,{
Transparency=0})end end)L.MouseButton1Click:Connect(function()if n.Running then return end n.
Running=true B.Busy=true setHint('Running...',g.Text)task.spawn(function()local N,O=pcall(B.
Callback)if N then setHint('Done',g.Green)task.wait(0.5)n:Close()else warn((
"[VexalHub] '%s' errored: %s"):format(z.Name,tostring(O)))setHint('Error',g.Red)task.wait(1.2)n.
Running=false B.Busy=false sweepOff()setHint(m,g.Muted)end end)end)self.Buttons[z.Name]=B task.
delay(x and 0 or(0.3+A*0.06),function()tween(C,0.3,{GroupTransparency=0})end)return B end function
n:Close(z)if self.Closed then return end self.Closed=true for A,B in ipairs(o)do B:Disconnect()end
if getgenv().VexalHub==self then getgenv().VexalHub=nil end if z then p:Destroy()return end tween(s
,0.25,{Transparency=1})tween(r,0.3,{Size=UDim2.new(0,f.Width,0,0)},Enum.EasingStyle.Back,Enum.
EasingDirection.In)task.delay(0.35,function()p:Destroy()end)end u.MouseButton1Click:Connect(
function()n:Close()end)local z,A,B local C=r.Position t.InputBegan:Connect(function(D)if D.
UserInputType==Enum.UserInputType.MouseButton1 or D.UserInputType==Enum.UserInputType.Touch then z=
true A=D.Position B=C end end)table.insert(o,b.InputChanged:Connect(function(D)if z and(D.
UserInputType==Enum.UserInputType.MouseMovement or D.UserInputType==Enum.UserInputType.Touch)then
local E=D.Position-A C=UDim2.new(B.X.Scale,B.X.Offset+E.X,B.Y.Scale,B.Y.Offset+E.Y)end end))table.
insert(o,b.InputEnded:Connect(function(D)if D.UserInputType==Enum.UserInputType.MouseButton1 or D.
UserInputType==Enum.UserInputType.Touch then z=false end end))table.insert(o,c.Heartbeat:Connect(
function(D)local E=1-math.exp(-D*f.DragSmoothness)r.Position=r.Position:Lerp(C,E)end))for D,E in
ipairs(f.Buttons)do n:AddButton(E)end resize()task.delay(0.5,function()x=true end)getgenv().
VexalHub=n return n
