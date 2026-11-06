local a=game:GetService('TweenService')local b=game:GetService('UserInputService')local c=game:
GetService('RunService')local d=game:GetService('CoreGui')local e=game:GetService('Players').
LocalPlayer if getgenv().VexalHub then pcall(function()getgenv().VexalHub:Close(true)end)end local
f=loadstring(game:HttpGet(
[[https://raw.githubusercontent.com/VexalScripts/Useless/refs/heads/main/VersionTags.lua]]))()local
g=f.mvsd local h={Title='Vexal Scripts',IconUrl='https://vexal.fun/images/icon.png',Width=480,
MaxListHeight=340,DragSmoothness=18,HoverSweepTime=0.6,FullOutlineTime=0.35,DiscordLink=
'https://dsc.gg/vexal',WebsiteLink='https://vexal.fun',BacklistedExecutors={'Xeno','Solara'},
Buttons={{Name='Main Script (Recommended)',Description=
'Get access to every premium feature for free',Version=g,Note='Recommended',Callback=function()
loadstring(game:HttpGet(
[[https://raw.githubusercontent.com/VexalScripts/scripts/refs/heads/main/v2/MvsdMainScript.lua]],
true))()end},{Name='Spawner Script (Outdated)',Description=
'Spawns items and show off to your friends locally',Version='v1.2',Note='Outdated',Callback=
function()loadstring(game:HttpGet(
[[https://raw.githubusercontent.com/VexalScripts/scripts/refs/heads/main/v2/MvsdSpawnerScript.lua]]
,true))()end}}}local i={Text=Color3.fromRGB(245,246,248),White=Color3.new(1,1,1),Muted=Color3.
fromRGB(135,141,151),Header=Color3.fromRGB(17,18,21),Outline=Color3.fromRGB(46,48,55),Green=Color3.
fromRGB(87,242,135),Red=Color3.fromRGB(237,66,69)}local j={MainTop=Color3.fromRGB(22,23,27),
MainBottom=Color3.fromRGB(11,12,14),HeaderTop=Color3.fromRGB(21,22,26),HeaderBottom=Color3.fromRGB(
17,18,21),RowLeft=Color3.fromRGB(30,32,37),RowRight=Color3.fromRGB(18,19,22)}local k={Recommended=i
.Green,Outdated=i.Red}local l=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(40,42,
48)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(235,237,241)),ColorSequenceKeypoint.new(1,Color3.
fromRGB(40,42,48))})local m=52 local n=68 local o=64 local p='Click to run  \u{203a}'local function 
findGlobal(q)local r pcall(function()r=getgenv()[q]end)if type(r)=='function'then return r end
pcall(function()r=getfenv()[q]end)if type(r)=='function'then return r end pcall(function()r=_G[q]
end)if type(r)=='function'then return r end pcall(function()r=shared[q]end)if type(r)=='function'
then return r end return nil end local function getExecutorStrings()local q={}for r,s in ipairs({
'identifyexecutor','getexecutorname'})do local t=findGlobal(s)if t then local u=table.pack(pcall(t)
)if u[1]then for v=2,u.n do if type(u[v])=='string'and#u[v]>0 then table.insert(q,u[v])end end end
end end return q end local q=getExecutorStrings()local r=q[1]or'Unknown'local s=false do local t=
table.concat(q,' '):lower()for u,v in ipairs(h.BacklistedExecutors)do if t:find(tostring(v):lower()
,1,true)then s=true break end end end local function new(t,u,v)local w=Instance.new(t)for x,y in
pairs(u)do w[x]=y end w.Parent=v return w end local function tween(t,u,v,w,x)local y=a:Create(t,
TweenInfo.new(u,w or Enum.EasingStyle.Quad,x or Enum.EasingDirection.Out),v)y:Play()return y end
local function corner(t,u)return new('UICorner',{CornerRadius=UDim.new(0,u)},t)end local function 
gradient(t,u,v,w)return new('UIGradient',{Color=ColorSequence.new(u,v),Rotation=w or 0},t)end local 
function badge(t,u,v,w)local x=new('TextLabel',{AutomaticSize=Enum.AutomaticSize.X,Size=UDim2.new(0
,0,0,18),BackgroundColor3=v,BackgroundTransparency=0.88,BorderSizePixel=0,Font=Enum.Font.GothamBold
,Text=u,TextColor3=v,TextSize=11,LayoutOrder=w},t)corner(x,9)new('UIPadding',{PaddingLeft=UDim.new(
0,8),PaddingRight=UDim.new(0,8)},x)new('UIStroke',{Color=v,Thickness=1,Transparency=0.55,
ApplyStrokeMode=Enum.ApplyStrokeMode.Border},x)return x end local t={Buttons={},Closed=false,
Running=false}local u={}local v=new('ScreenGui',{Name='VexalScriptsHub',ResetOnSpawn=false,
DisplayOrder=2147483647,IgnoreGuiInset=true,ZIndexBehavior=Enum.ZIndexBehavior.Sibling})pcall(
function()sethiddenproperty(v,'OnTopOfCoreBlur',true)end)pcall(protectgui or(syn and syn.
protect_gui)or function()end,v)pcall(function()v.Parent=gethui and gethui()or d end)if not v.Parent
then v.Parent=e:WaitForChild('PlayerGui')end local w pcall(function()writefile(
'VexalScriptsIcon.png',game:HttpGet(h.IconUrl))w=getcustomasset('VexalScriptsIcon.png')end)local x=
new('Frame',{Name='Main',AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0.5,0,0.5,0),Size=
UDim2.new(0,0,0,0),BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=0,ClipsDescendants=true,
Active=true},v)corner(x,10)gradient(x,j.MainTop,j.MainBottom,90)local y=new('UIStroke',{Color=i.
Outline,Thickness=1.5,Transparency=1,ApplyStrokeMode=Enum.ApplyStrokeMode.Border},x)tween(y,0.4,{
Transparency=0})local z=new('Frame',{Size=UDim2.new(1,0,0,m),BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0},x)corner(z,10)gradient(z,j.HeaderTop,j.HeaderBottom,90)new('Frame',{Position=
UDim2.new(0,0,1,-12),Size=UDim2.new(1,0,0,12),BackgroundColor3=j.HeaderBottom,BorderSizePixel=0},z)
if w then local A=new('ImageLabel',{AnchorPoint=Vector2.new(0,0.5),Size=UDim2.new(0,28,0,28),
Position=UDim2.new(0,16,0.5,0),BackgroundTransparency=1,Image=w},z)corner(A,7)end new('TextLabel',{
AnchorPoint=Vector2.new(0,0.5),Size=UDim2.new(1,-110,0,20),Position=UDim2.new(0,w and 54 or 18,0.5,
0),BackgroundTransparency=1,Font=Enum.Font.GothamBold,Text=h.Title,TextColor3=i.Text,TextSize=15,
TextXAlignment=Enum.TextXAlignment.Left},z)local A=new('TextButton',{Name='Close',AnchorPoint=
Vector2.new(1,0.5),Size=UDim2.new(0,28,0,28),Position=UDim2.new(1,-14,0.5,0),BackgroundColor3=i.Red
,BackgroundTransparency=1,AutoButtonColor=false,Text=''},z)corner(A,7)local function xBar(B)return
new('Frame',{AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0.5,0,0.5,0),Size=UDim2.new(0,12,0
,2),Rotation=B,BackgroundColor3=i.Muted,BorderSizePixel=0},A)end local B,C=xBar(45),xBar(-45)
corner(B,1)corner(C,1)A.MouseEnter:Connect(function()tween(A,0.15,{BackgroundTransparency=0})tween(
B,0.15,{BackgroundColor3=i.White})tween(C,0.15,{BackgroundColor3=i.White})end)A.MouseLeave:Connect(
function()tween(A,0.15,{BackgroundTransparency=1})tween(B,0.15,{BackgroundColor3=i.Muted})tween(C,
0.15,{BackgroundColor3=i.Muted})end)local D=new('Frame',{Position=UDim2.new(0,0,0,m-1),Size=UDim2.
new(1,0,0,1),BackgroundColor3=Color3.fromRGB(60,63,71),BorderSizePixel=0},x)new('UIGradient',{
Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.5,0),
NumberSequenceKeypoint.new(1,1)})},D)local E=new('ScrollingFrame',{Position=UDim2.new(0,12,0,n),
Size=UDim2.new(1,-24,0,40),BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=3,
ScrollBarImageColor3=Color3.fromRGB(70,73,81),CanvasSize=UDim2.new(0,0,0,0),Visible=not s},x)local
F=new('UIListLayout',{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,8)},E)local G=false
local function resize()if s then return end local H=F.AbsoluteContentSize.Y E.CanvasSize=UDim2.new(
0,0,0,H)local I=math.clamp(H,40,h.MaxListHeight)E.Size=UDim2.new(1,-24,0,I)local J=UDim2.new(0,h.
Width,0,n+I+14)if G then tween(x,0.25,{Size=J})else tween(x,0.45,{Size=J},Enum.EasingStyle.Back)end
end F:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(resize)local H=0 function t:AddButton
(I)H+=1 local J=H local K={Description=I.Description or'',Version=I.Version,Note=I.Note,Callback=I.
Callback or function()end,Busy=false}local L=new('CanvasGroup',{Name=I.Name,Size=UDim2.new(1,-6,0,o
),BackgroundTransparency=1,BorderSizePixel=0,GroupTransparency=1,LayoutOrder=J},E)local M=new(
'Frame',{Position=UDim2.new(0,2,0,2),Size=UDim2.new(1,-4,1,-4),BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0},L)corner(M,8)gradient(M,j.RowLeft,j.RowRight,0)new('UIStroke',{Color=i.Outline,
Thickness=1.5,ApplyStrokeMode=Enum.ApplyStrokeMode.Border},M)local N=k[K.Note]or i.Muted local O=
new('Frame',{AnchorPoint=Vector2.new(0,0.5),Position=UDim2.new(0,8,0.5,0),Size=UDim2.new(0,3,1,-20)
,BackgroundColor3=N,BackgroundTransparency=0.35,BorderSizePixel=0},M)corner(O,2)local P=new('Frame'
,{Position=UDim2.new(0,2,0,2),Size=UDim2.new(1,-4,1,-4),BackgroundTransparency=1,BorderSizePixel=0}
,L)corner(P,8)local Q=new('UIStroke',{Color=Color3.new(1,1,1),Thickness=1.5,Transparency=1,
ApplyStrokeMode=Enum.ApplyStrokeMode.Border},P)local R=new('UIGradient',{Color=l,Rotation=0},Q)
local S=new('Frame',{Position=UDim2.new(0,2,0,2),Size=UDim2.new(1,-4,1,-4),BackgroundTransparency=1
,BorderSizePixel=0},L)corner(S,8)local T=new('UIStroke',{Color=Color3.new(1,1,1),Thickness=1.5,
Transparency=1,ApplyStrokeMode=Enum.ApplyStrokeMode.Border},S)local U=new('Frame',{Position=UDim2.
new(0,22,0,9),Size=UDim2.new(1,-34,0,20),BackgroundTransparency=1,BorderSizePixel=0},M)new(
'UIListLayout',{FillDirection=Enum.FillDirection.Horizontal,SortOrder=Enum.SortOrder.LayoutOrder,
VerticalAlignment=Enum.VerticalAlignment.Center,Padding=UDim.new(0,8)},U)new('TextLabel',{
AutomaticSize=Enum.AutomaticSize.X,Size=UDim2.new(0,0,1,0),BackgroundTransparency=1,Font=Enum.Font.
GothamBold,Text=I.Name,TextColor3=i.Text,TextSize=15,TextXAlignment=Enum.TextXAlignment.Left,
LayoutOrder=1},U)if K.Version then badge(U,K.Version,i.Muted,2)end if K.Note then badge(U,K.Note,k[
K.Note]or i.Muted,3)end new('TextLabel',{Position=UDim2.new(0,22,0,33),Size=UDim2.new(1,-140,0,18),
BackgroundTransparency=1,Font=Enum.Font.Gotham,Text=K.Description,TextColor3=i.Muted,TextSize=13,
TextXAlignment=Enum.TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd},M)local V=new(
'TextLabel',{AnchorPoint=Vector2.new(1,0),Position=UDim2.new(1,-14,0,33),Size=UDim2.new(0,104,0,18)
,BackgroundTransparency=1,Font=Enum.Font.GothamBold,Text=p,TextColor3=i.Muted,TextSize=13,
TextXAlignment=Enum.TextXAlignment.Right},M)local W=new('TextButton',{Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,Text='',AutoButtonColor=false},L)local function setHint(X,Y)V.Text=X
tween(V,0.15,{TextColor3=Y})end local X=0 local function sweepOn()X+=1 local Y=X R.Rotation=0 Q.
Transparency=1 T.Transparency=1 tween(Q,0.25,{Transparency=0})tween(O,0.2,{BackgroundTransparency=0
})local Z=tween(R,h.HoverSweepTime,{Rotation=120},Enum.EasingStyle.Quad,Enum.EasingDirection.Out)Z.
Completed:Connect(function(_)if _==Enum.PlaybackState.Completed and Y==X then tween(T,h.
FullOutlineTime,{Transparency=0},Enum.EasingStyle.Sine,Enum.EasingDirection.InOut)end end)end local 
function sweepOff()X+=1 tween(Q,0.2,{Transparency=1})tween(T,0.2,{Transparency=1})tween(O,0.2,{
BackgroundTransparency=0.35})end W.MouseEnter:Connect(function()if not t.Running then sweepOn()
setHint(p,i.Text)end end)W.MouseLeave:Connect(function()if not K.Busy then sweepOff()setHint(p,i.
Muted)end end)W.MouseButton1Down:Connect(function()if not t.Running then tween(Q,0.08,{Transparency
=0.4})end end)W.MouseButton1Up:Connect(function()if not t.Running then tween(Q,0.08,{Transparency=0
})end end)W.MouseButton1Click:Connect(function()if t.Running then return end t.Running=true K.Busy=
true setHint('Running...',i.Text)task.spawn(function()local Y,Z=pcall(K.Callback)if Y then setHint(
'Done',i.Green)task.wait(0.5)t:Close()else warn(("[VexalHub] '%s' errored: %s"):format(I.Name,
tostring(Z)))setHint('Error',i.Red)task.wait(1.2)t.Running=false K.Busy=false sweepOff()setHint(p,i
.Muted)end end)end)self.Buttons[I.Name]=K task.delay(G and 0 or(0.3+J*0.06),function()tween(L,0.3,{
GroupTransparency=0})end)return K end function t:ShowUnsupported()local I=new('Frame',{Name=
'Unsupported',Position=UDim2.new(0,0,0,m),Size=UDim2.new(1,0,1,-m),BackgroundTransparency=1,
BorderSizePixel=0},x)new('TextLabel',{Position=UDim2.new(0,18,0,16),Size=UDim2.new(1,-36,0,22),
BackgroundTransparency=1,Font=Enum.Font.GothamBold,Text='Environment Not Supported',TextColor3=i.
Red,TextSize=17,TextXAlignment=Enum.TextXAlignment.Left},I)new('TextLabel',{Position=UDim2.new(0,18
,0,44),Size=UDim2.new(1,-36,0,62),BackgroundTransparency=1,Font=Enum.Font.Gotham,Text=
[[Your environment isn't supported by this script and will not work. To upgrade and use a better environment for free, join our Discord server.]]
,TextColor3=i.Text,TextSize=13,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Top},I)new('TextLabel',{Position=UDim2.new(0,18,0,110),Size=
UDim2.new(1,-36,0,18),BackgroundTransparency=1,Font=Enum.Font.Gotham,Text='Detected executor: '..
tostring(r),TextColor3=i.Muted,TextSize=12,TextXAlignment=Enum.TextXAlignment.Left},I)local J=new(
'Frame',{Position=UDim2.new(0,18,0,142),Size=UDim2.new(1,-36,0,40),BackgroundTransparency=1,
BorderSizePixel=0},I)local function linkButton(K,L,M)local N=new('Frame',{Position=M,Size=UDim2.
new(0.5,-6,1,0),BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=0},J)corner(N,8)gradient(N,j.
RowLeft,j.RowRight,0)local O=new('UIStroke',{Color=i.Outline,Thickness=1.5,ApplyStrokeMode=Enum.
ApplyStrokeMode.Border},N)local P=new('TextButton',{Size=UDim2.new(1,0,1,0),BackgroundTransparency=
1,BorderSizePixel=0,AutoButtonColor=false,Font=Enum.Font.GothamBold,Text=K,TextColor3=Color3.new(1,
1,1),TextSize=13},N)local Q=false P.MouseEnter:Connect(function()tween(O,0.15,{Color=Color3.new(1,1
,1)})end)P.MouseLeave:Connect(function()tween(O,0.15,{Color=i.Outline})end)P.MouseButton1Click:
Connect(function()if Q then return end Q=true local R=findGlobal('setclipboard')or findGlobal(
'toclipboard')or(syn and syn.write_clipboard)local S=R and pcall(R,L)P.Text=S and'Copied!'or
'Clipboard unavailable'tween(P,0.15,{TextColor3=S and i.Green or i.Red})task.wait(1.4)P.Text=K
tween(P,0.15,{TextColor3=Color3.new(1,1,1)})Q=false end)return P end linkButton(
'Copy Discord Invite',h.DiscordLink,UDim2.new(0,0,0,0))linkButton('Copy Website Link',h.WebsiteLink
,UDim2.new(0.5,6,0,0))tween(x,0.45,{Size=UDim2.new(0,h.Width,0,m+198)},Enum.EasingStyle.Back)end
function t:Close(I)if self.Closed then return end self.Closed=true for J,K in ipairs(u)do K:
Disconnect()end if getgenv().VexalHub==self then getgenv().VexalHub=nil end if I then v:Destroy()
return end tween(y,0.25,{Transparency=1})tween(x,0.3,{Size=UDim2.new(0,h.Width,0,0)},Enum.
EasingStyle.Back,Enum.EasingDirection.In)task.delay(0.35,function()v:Destroy()end)end A.
MouseButton1Click:Connect(function()t:Close()end)local I,J,K local L=x.Position z.InputBegan:
Connect(function(M)if M.UserInputType==Enum.UserInputType.MouseButton1 or M.UserInputType==Enum.
UserInputType.Touch then I=true J=M.Position K=L end end)table.insert(u,b.InputChanged:Connect(
function(M)if I and(M.UserInputType==Enum.UserInputType.MouseMovement or M.UserInputType==Enum.
UserInputType.Touch)then local N=M.Position-J L=UDim2.new(K.X.Scale,K.X.Offset+N.X,K.Y.Scale,K.Y.
Offset+N.Y)end end))table.insert(u,b.InputEnded:Connect(function(M)if M.UserInputType==Enum.
UserInputType.MouseButton1 or M.UserInputType==Enum.UserInputType.Touch then I=false end end))table
.insert(u,c.Heartbeat:Connect(function(M)local N=1-math.exp(-M*h.DragSmoothness)x.Position=x.
Position:Lerp(L,N)end))if s then t:ShowUnsupported()else for M,N in ipairs(h.Buttons)do t:
AddButton(N)end resize()end task.delay(0.5,function()G=true end)getgenv().VexalHub=t return t
