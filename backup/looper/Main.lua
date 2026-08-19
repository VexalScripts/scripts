local a={}function a.Register(b)local c={_thread=nil,_running=false,_enabled=false}function c:
Disconnect()self._enabled=false self._running=false if self._thread then task.cancel(self._thread)
self._thread=nil end end function c:Connect()if self._running then return end self._running=true
self._enabled=true self._thread=task.spawn(function()while self._enabled do local d,e=pcall(b,self)
if not d then warn('[register loop err]: '..e)break end end self._running=false end)end c:Connect()
return c end return a
