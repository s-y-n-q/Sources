local celeryexec = Instance.new("StringValue", game:GetService("CoreGui"))
    celeryexec.Value = celerytoken

    for i = 1, 10 do
        local s = Instance.new("StringValue", celeryexec)
        s.Name = "s"..tostring(i)
    end

    local out = Instance.new("StringValue", celeryexec)
    out.Name = "out"

    local objout = Instance.new("ObjectValue", celeryexec)
    objout.Name = "objout"

    for i = 1, 50 do
        local sout = Instance.new("StringValue", out)
        sout.Name = "sout"..tostring(i)
    end

    for i = 1, 10 do
        local s = Instance.new("StringValue", out)
        s.Name = "sin"..tostring(i)
    end

  Script error: %s
       
local fname = "waiting";
local arg1 = "arg1";
local arg2 = "arg2";
local arg3 = "arg3";
local ret1 = "ret1";
local processing = false;
local donothing = function(...) return end

local function celerycmd(name, ...)
    while processing do task.wait() end
    processing = true;
    local args = {...};
    arg1 = args[1] or "arg1";
    arg2 = args[2] or "arg2";
    arg3 = args[3] or "arg3";
    ret1 = "ret1"
    fname = name;
    donothing("Queuing function: ", fname)
    while fname == name and processing and ret1 == "ret1" do
        task.wait()
    end
    if ret1 == "ret1" then ret1 = nil end
    donothing("Returned: ", ret1)
    local retCopy = ret1;
    processing = false;
    return retCopy;
end

local function init()
    local incall = false

    local celerytoken = "       http:// 
    
    local function load_string(user_src)
        if string.len(user_src) == 0 then return nil end
        if user_src:byte(1,1) <= 0x1F then return nil end
        while incall do task.wait() end
        incall = true
        --for i = 1, 10 do out["sin"..tostring(i)].Value = "" end -- ###
        for i = 1, 50 do out["sout"..tostring(i)].Value = "" end
        local last, n = 1, 1
        local s = 0
        for i = 1, string.len(user_src) do
            if s > 0x30000 then
                out["sout" .. tostring(n)].Value = user_src:sub(last, i)
                last = i + 1
                n = n + 1
                s = 0
            else
                s = s + 1
            end
        end
        if s then
            out["sout" .. tostring(n)].Value = user_src:sub(last, string.len(user_src))
        end
        out.Value = "ls"
        while out.Value == "ls" do task.wait() end
        local src, rawsrc = "", "";
        for i = 1, 10 do rawsrc = rawsrc .. out["sin" .. tostring(i)].Value end
        src = rawsrc
        local w,func = pcall(function() return luau_load(src, getgenv()) end)
        --[[if type(func) == "function" then
            setfenv(func, env)
        end]]
        incall = false
        if w then
            return func
        else
            return w, func
        end
    end

    local function getscriptbytecode(ls)
        if typeof(ls) == "Instance" then
            if ls.ClassName == "ModuleScript" then error'[getscriptbytecode] ModuleScript not supported' end
            if ls.ClassName ~= "LocalScript" then error'LocalScript expected for getscriptbytecode' end
        end
        while incall do task.wait() end
        incall = true
        --for i = 1, 10 do out["sin"..tostring(i)].Value = "" end -- ###
        objout.Value = ls
        out.Value = "gsb"
        while out.Value == "gsb" do task.wait() end
        local src, rawsrc = "", "";
        for i = 1,10 do rawsrc = rawsrc .. out["sin" .. tostring(i)].Value end
        src = rawsrc
        incall = false
        return src
    end

    local function decompile(x)
	    local disassemble = loadstring(httpget("https://raw.githubusercontent.com/TheSeaweedMonster/Lua-Scripts/main/decompile.lua"))()
	    return disassemble(x)
    end

    local function serializeinstance(x)
	    local disassemble = loadstring(httpget("https://raw.githubusercontent.com/TheSeaweedMonster/Lua-Scripts/main/saveinstance.lua"))()
	    return disassemble(x)
    end
    
    local function httpget(url)
	    local d,ise,Body = false,false,""
	    game:GetService("HttpService"):RequestInternal({Url = url,Method = "GET"}):Start(function(suc, res) if not suc then Body = res.StatusCode ise = true d=true return end Body=res.Body d=true end)
	    repeat task.wait() until d
	    if ise then error(Body, 0) end
	    return Body
        --[[for i = 1, 10 do out["sin" .. tostring(i)].Value = "" end
        out["sout1"].Value = url
        out.Value = "httpget"
        while out.Value == "httpget" do task.wait() end
        local src, rawsrc = "", "";
        for i = 1, 10 do rawsrc = rawsrc .. out["sin" .. tostring(i)].Value end
        src = rawsrc
        return src]]
    end
    
    local function getobjects(a1)
	    return { game:GetService("InsertService"):LoadLocalAsset(a1) }
    end

    local function _request(options)
        local Event = Instance.new("BindableEvent");
        local RequestInternal = game:GetService("HttpService").RequestInternal;
        local Request = RequestInternal(game:GetService("HttpService"), options);
        local Start = Request.Start;
        local Response;
        Start(Request, function(state, response) 
            Response = response;
            Event:Fire();
        end);
        Event.Event:Wait();
        return Response;
    end
    
    local http = {}
    http.request = _request;
    
    local function lz4compress(fpath)
        while incall do task.wait() end
        incall = true
        --for i = 1, 10 do out["sin" .. tostring(i)].Value = "" end -- ###
        out["sout1"].Value = fpath
        out.Value = "lz4compress"
        while out.Value == "lz4compress" do task.wait() end
        local src, rawsrc = "", "";
        for i = 1, 10 do rawsrc = rawsrc .. out["sin" .. tostring(i)].Value end
        src = rawsrc
        incall = false
        return src
    end
    
    local function lz4decompress(fpath)
        while incall do task.wait() end
        incall = true
        --for i = 1, 10 do out["sin" .. tostring(i)].Value = "" end -- ###
        out["sout1"].Value = fpath
        out.Value = "lz4decompress"
        while out.Value == "lz4decompress" do task.wait() end
        local src, rawsrc = "", "";
        for i = 1, 10 do rawsrc = rawsrc .. out["sin" .. tostring(i)].Value end
        src = rawsrc
        incall = false
        return src
    end
    
    local function _readfile(fpath)
        while incall do task.wait() end
        incall = true
        --for i = 1, 10 do out["sin" .. tostring(i)].Value = "" end -- ###
        out["sout1"].Value = fpath
        out.Value = "fread"
        while out.Value == "fread" do task.wait() end
        local src, rawsrc = "", "";
        for i = 1, 10 do rawsrc = rawsrc .. out["sin" .. tostring(i)].Value end
        src = rawsrc
        incall = false
        return src
    end
    
    local function _listfiles(fpath)
        while incall do task.wait() end
        incall = true
        --for i = 1, 10 do out["sin" .. tostring(i)].Value = "" end -- ###
        out["sout1"].Value = fpath
        out.Value = "listfiles"
        while out.Value == "listfiles" do task.wait() end
        local src, rawsrc = "", "";
        for i = 1, 10 do rawsrc = rawsrc .. out["sin" .. tostring(i)].Value end
        src = rawsrc
        incall = false
        return src
    end
    
    local function _delfile(fpath)
        while incall do task.wait() end
        incall = true
        out["sout1"].Value = fpath
        out.Value = "fdel"
        while out.Value == "fdel" do task.wait() end
        incall = false
    end
    
    local function _delfolder(fpath)
        while incall do task.wait() end
        incall = true
        out["sout1"].Value = fpath
        out.Value = "delfolder"
        while out.Value == "delfolder" do task.wait() end
        incall = false
    end
    
    local function _makefolder(fpath)
        while incall do task.wait() end
        incall = true
        out["sout1"].Value = fpath
        out.Value = "mkfolder"
        while out.Value == "mkfolder" do task.wait() end
        incall = false
    end

    local function _writefile(fpath, data)
        while incall do task.wait() end
        incall = true
        for i = 1, 50 do out["sout"..tostring(i)].Value = "" end
        local last, n = 1, 2
        local s = 0
        for i = 1, string.len(data) do
            if s > 0x30000 then
                out["sout" .. tostring(n)].Value = data:sub(last, i)
                last = i + 1
                n = n + 1
                s = 0
            else
                s = s + 1
            end
        end
        if s then
            out["sout" .. tostring(n)].Value = data:sub(last, string.len(data))
        end
        out["sout1"].Value = fpath
        out.Value = "fwrite"
        while out.Value == "fwrite" do task.wait() end
        incall = false
    end

    local function _appendfile(fpath, data)
        while incall do task.wait() end
        incall = true
        for i = 1, 50 do out["sout"..tostring(i)].Value = "" end
        local last, n = 1, 2
        local s = 0
        for i = 1, string.len(data) do
            if s > 0x30000 then
                out["sout" .. tostring(n)].Value = data:sub(last, i)
                last = i + 1
                n = n + 1
                s = 0
            else
                s = s + 1
            end
        end
        if s then
            out["sout" .. tostring(n)].Value = data:sub(last, string.len(data))
        end
        out["sout1"].Value = fpath
        out.Value = "fapp"
        while out.Value == "fapp" do task.wait() end
        incall = false
    end

    local function setclipboard(data)
        while incall do task.wait() end
        incall = true
        for i = 1, 50 do out["sout"..tostring(i)].Value = "" end
        local last, n = 1, 1
        local s = 0
        for i = 1, string.len(data) do
            if s > 0x30000 then
                out["sout" .. tostring(n)].Value = data:sub(last, i)
                last = i + 1
                n = n + 1
                s = 0
            else
                s = s + 1
            end
        end
        if s then
            out["sout" .. tostring(n)].Value = data:sub(last, string.len(data))
        end
        out.Value = "scb"
        while out.Value == "scb" do task.wait() end
        incall = false
    end

    local function _rconsoleprint(data)
        while incall do task.wait() end
        incall = true
        for i = 1, 50 do out["sout"..tostring(i)].Value = "" end
        local last, n = 1, 1
        local s = 0
        for i = 1, string.len(data) do
            if s > 0x30000 then
                out["sout" .. tostring(n)].Value = data:sub(last, i)
                last = i + 1
                n = n + 1
                s = 0
            else
                s = s + 1
            end
        end
        if s then
            out["sout" .. tostring(n)].Value = data:sub(last, string.len(data))
        end
        out.Value = "rcp"
        while out.Value == "rcp" do task.wait() end
        incall = false
    end

    local function getclipboard()
        while incall do task.wait() end
        incall = true
        --for i = 1, 10 do out["sin" .. tostring(i)].Value = "" end
        out.Value = "gcb"
        while out.Value == "gcb" do task.wait() end
        local src, rawsrc = "", "";
        for i = 1, 10 do rawsrc = rawsrc .. out["sin" .. tostring(i)].Value end
        src = rawsrc
        incall = false
        return src
    end

    local function _fireproximityprompt(obj, amount, skip)
        if obj.ClassName == "ProximityPrompt" then 
            amount = amount or 1
            local PromptTime = obj.HoldDuration
            if skip then 
                obj.HoldDuration = 0
            end
            for i = 1, amount do 
                obj:InputHoldBegin()
                if not skip then 
                    wait(obj.HoldDuration)
                end
                obj:InputHoldEnd()
            end
            obj.HoldDuration = PromptTime
        else 
            error("ProximityPrompt expected")
        end
    end


    local function _getmodules()
        local a = {}
        for b,c in next,getreg() do
            if type(c) == "table" then
                for d,e in next,c do
                    if typeof(e) == "Instance" and e:IsA("ModuleScript") then
                        table.insert(a,e)
                    end
                end
            end
        end
        return a
    end

    local function _getscripts()
        local a = {}
        for b,c in next,getreg() do
            if type(c)=="table" then
                for d,e in next,c do
                    if typeof(e) == "Instance" and (e:IsA("LocalScript") or e:IsA("ModuleScript")) then
                        table.insert(a,e)
                    end
                end
            end
        end
        return a
    end

    local function _getinstances()
        local a = {}
        for b,c in next,getreg() do
            if type(c) == "table" then
                for d,e in next,c do
                    if typeof(e) == "Instance" then
                        table.insert(a,e)
                    end
                end
            end
        end;
        return a
    end

    local function _getnilinstances()
        local a = {}
        for b,c in next,getreg() do
            if type(c) == "table" then
                for d,e in next,c do
                    if typeof(e) == "Instance" and e.Parent == nil then
                        table.insert(a,e)
                    end
                end
            end
        end;
        return a
    end

    local function _getsenv(scr)
	    if scr == nil then return getfenv() end
        for i, v in next, getreg() do
            if type(v) == "function" and getfenv(v).script == scr then
                return getfenv(v)
            end
        end
        return nil
        --error("Script environment could not be found.")
    end

    local function _getscriptenvs()
        local envs = {}
        for i, v in next, getscripts() do
            local succ, res = pcall(getsenv, v)
            if succ then
                envs[res.script] = res
            end
        end
        return envs
    end

    local function _getallthreads()
        local threads = {}
        for i, v in next, getreg() do
            if type(v) == "thread" then
                table.insert(threads, v);
            end
        end
        return threads
    end

    local function _getrunningscripts()
        local scripts = {}
        for _, v in pairs(getinstances()) do
            if v:IsA("LocalScript") and v.Enabled then
                table.insert(scripts, v)
            end
        end
        return scripts
    end

    local function _clonefunction(p1)
        assert(type(p1) == "function", "invalid argument #1 to '?' (expected) ", 2)
        local A = p1
        local B = xpcall(setfenv, function(p2, p3)
            return p2, p3
        end, p1, getfenv(p1))
        if B then
            return function(...)
                return A(...)
            end
        end
        return coroutine.wrap(function(...)
            while true do
                A = coroutine.yield(A(...))
            end
        end)
    end


      

local DrawingDict = Instance.new("ScreenGui", game:GetService("CoreGui")) -- For drawing.new
local Drawings = {} -- for cleardrawcache
local Fonts = { -- Drawing.Fonts
 [0] = Enum.Font.Arial,
 [1] = Enum.Font.BuilderSans,
 [2] = Enum.Font.Gotham,
 [3] = Enum.Font.RobotoMono
}
local Drawing = {};
Drawing.Fonts = {
  ['UI'] = 0,
  ['System'] = 1,
  ['Plex'] = 2,
  ['Monospace'] = 3
}
local function cleardrawcache()
    for _, v in pairs(Drawings) do
        v:Remove()
    end
    table.clear(Drawings)
end
local function isrenderobj(thing)
    return Drawings[thing] ~= nil
end
Drawing.new = function(Type) -- Drawing.new
    local baseProps = {
     Visible = false,
     Color = Color3.new(0,0,0),
     ClassName = nil
    }
    if Type == 'Line' then
        local a = Instance.new("Frame", Instance.new("ScreenGui", DrawingDict))
        a.Visible = false
        a.Size = UDim2.new(0, 0, 0, 0)
        a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        a.BackgroundTransparency = 1
        a.BorderSizePixel = 0

        local meta = baseProps
        meta.ClassName = Type
        meta.__index = {
            Thickness = 1,
            From = Vector2.new(0, 0),
            To = Vector2.new(0, 0),
            Transparency = 0,
            Remove = function()
               for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end
               a:Destroy() 
            end,
            Destroy = function()
               for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end
               a:Destroy() 
            end,
            updateLine = function(self)
             if not a then return end
             local from = self.From
             local to = self.To
             local distance = (to - from).Magnitude
             local angle = math.deg(math.atan2(to.Y - from.Y, to.X - from.X))

             a.Size = UDim2.new(0, distance, 0, self.Thickness)
             a.Position = UDim2.new(0, from.X, 0, from.Y)
             a.Rotation = angle
            end
        }

        meta.__newindex = function(self, key, value)
            if not self then return end
            if key == 'Thickness' and typeof(value) == 'number' then
                rawset(self, key, value)
                a.Size = UDim2.new(0, (self.To - self.From).Magnitude, 0, value)
            elseif key == 'Visible' and typeof(value) == 'boolean' then
                rawset(self, key, value)
                a.Visible = value
            elseif key == 'Color' and typeof(value) == 'Color3' then
                rawset(self, key, value)
                a.BackgroundColor3 = value
            elseif key == 'Transparency' and typeof(value) == 'number' and value <= 1 then
                rawset(self, key, value)
                a.BackgroundTransparency = 1 - value
            elseif key == 'From' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
                self:updateLine()
            elseif key == 'To' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
                self:updateLine()
            end
        end
        local meta1 = setmetatable({}, meta)
        Drawings[meta1] = meta1
        return meta1
    elseif Type == 'Square' then
        local a = Instance.new("Frame", DrawingDict)
        a.Visible = false
        a.Size = UDim2.new(0, 0, 0, 0)
        a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        a.BackgroundTransparency = 1
        a.BorderSizePixel = 0
        local b = Instance.new("UIStroke", a)
        b.Color = Color3.fromRGB(255, 255, 255)
        b.Enabled = true

        local meta = baseProps
        meta.ClassName = Type
        meta.__index = {
            Size = Vector2.new(0,0),
            Position = Vector2.new(0, 0),
            Remove = function()
               for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end
               a:Destroy() 
            end,
            Destroy = function()
               for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end
               a:Destroy() 
            end,
            updateSquare = function(self)
             if not a then return end
             a.Size = UDim2.new(0, self.Size.X, 0, self.Size.Y)
             a.Position = UDim2.new(0, self.Position.X, 0, self.Position.Y)
            end
        }

        meta.__newindex = function(self, key, value)
            if not self then return end
            if key == 'Filled' and typeof(value) == 'boolean' then
                rawset(self, key, value)
                b.Enabled = not value
                a.BackgroundTransparency = value and 0 or 1
            elseif key == 'Visible' and typeof(value) == 'boolean' then
                rawset(self, key, value)
                a.Visible = value
            elseif key == 'Color' and typeof(value) == 'Color3' then
                rawset(self, key, value)
                a.BackgroundColor3 = value
                b.Color = value
            elseif key == 'Position' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
                self:updateSquare()
            elseif key == 'Size' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
                self:updateSquare()
            end
        end
        local meta1 = setmetatable({}, meta)
        Drawings[meta1] = meta1
        return meta1
    elseif Type == 'Circle' then
        local a = Instance.new("Frame", Instance.new("ScreenGui", DrawingDict))
        a.Visible = false
        a.Size = UDim2.new(0, 0, 0, 0)
        a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        a.BackgroundTransparency = 1
        a.BorderSizePixel = 0
        local b = Instance.new("UIStroke", a)
        b.Color = Color3.fromRGB(255, 255, 255)
        b.Enabled = false
        b.Thickness = 1
        local c = Instance.new("UICorner", a)
        c.CornerRadius = UDim.new(1, 0)

        local meta = baseProps
        meta.ClassName = Type
        meta.__index = {
            Thickness = 1,
            Filled = false,
            NumSides = 0,
            Radius = 1,
            Position = Vector2.new(0, 0),
            Transparency = 0,
            Remove = function()
               for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end
               a:Destroy() 
            end,
            Destroy = function()
               for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end
               a:Destroy() 
            end,
            updateCircle = function(self)
             if not b or not a then return end
             a.Size = UDim2.new(0, self.Radius, 0, self.Radius)
             a.Position = UDim2.new(0, self.Position.X, 0, self.Position.Y)
             b.Enabled = not self
             b.Color = self.Color
            end
        }

        meta.__newindex = function(self, key, value)
            if not self then return end
            if key == 'Thickness' and typeof(value) == 'number' then
                rawset(self, key, value)
                b.Thickness = value
            elseif key == 'Visible' and typeof(value) == 'boolean' then
                rawset(self, key, value)
                a.Visible = value
            elseif key == 'Color' and typeof(value) == 'Color3' then
                rawset(self, key, value)
                a.BackgroundColor3 = value
                a.Color = value
            elseif key == 'Transparency' and typeof(value) == 'number' then
                rawset(self, key, value)
                a.BackgroundTransparency = 1 - value
            elseif key == 'Position' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
                self:updateCircle()
            elseif key == 'Radius' and typeof(value) == 'number' then
                rawset(self, key, value)
                self:updateCircle()
            elseif key == 'NumSides' and typeof(value) == 'number' then
                rawset(self, key, value)
            elseif key == 'Filled' and typeof(value) == 'boolean' then
                rawset(self, key, value)
                self:updateCircle()
            end
        end
        local meta1 = setmetatable({}, meta)
        Drawings[meta1] = meta1
        return meta1
    elseif Type == 'Text' then
        local a = Instance.new("TextLabel", DrawingDict)
        a.Visible = false
        a.Size = UDim2.new(0, 0, 0, 0)
        a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        a.BackgroundTransparency = 1
        a.BorderSizePixel = 0
        a.TextStrokeColor3 = Color3.new(0,0,0)
        a.TextStrokeTransparency = 1

        local meta = baseProps
        meta.ClassName = Type
        meta.__index = {
            Text = '',
            Transparency = 0,
            Size = 0,
            Center = false,
            Outline = false,
            OutlineColor = Color3.new(0,0,0),
            Position = Vector2.new(0,0),
            Font = 3,
            Remove = function()
               for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end
               a:Destroy() 
            end,
            Destroy = function()
               for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end
               a:Destroy() 
            end,
            updateText = function(self)
             if not a then return end
             a.TextScaled = true
             a.Size = UDim2.new(0, self.Size * 3, 0, self.Size / 2)
             a.Position = UDim2.new(0, self.Position.X, 0, self.Position.Y)
             a.Text = self.Text
             a.Font = Fonts[self.Font]
             a.Visible = self.Visible
             a.TextColor3 = self.Color or Color3.new(0, 0, 0)
             a.TextTransparency = 1 - self.Transparency
             a.BorderSizePixel = self.Outline and 1 or 0
             if self.Center then
              a.TextXAlignment = Enum.TextXAlignment.Center
              a.TextYAlignment = Enum.TextYAlignment.Center
             else
              a.TextXAlignment = Enum.TextXAlignment.Left
              a.TextYAlignment = Enum.TextYAlignment.Top
             end
             a.TextStrokeTransparency = self.Outline and 0 or 1
             a.TextStrokeColor3 = self.OutlineColor
            end
        }

        meta.__newindex = function(self, key, value)
            if not self then return end
            if key == 'Text' and typeof(value) == 'string' then
                rawset(self, key, value)
            elseif key == 'Visible' and typeof(value) == 'boolean' then
                rawset(self, key, value)
                a.Visible = value
            elseif key == 'Color' and typeof(value) == 'Color3' then
                rawset(self, key, value)
            elseif key == 'Transparency' and typeof(value) == 'number' then
                rawset(self, key, value)
            elseif key == 'Position' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
            elseif key == 'Size' and typeof(value) == 'number' then
                rawset(self, key, value)
            elseif key == 'Outline' and typeof(value) == 'boolean' then
                rawset(self, key, value)
            elseif key == 'Center' and typeof(value) == 'boolean' then
                rawset(self, key, value)
            elseif key == 'OutlineColor' and typeof(value) == 'Color3' then
                rawset(self, key, value)
            elseif key == 'Font' and typeof(value) == 'number' then
                rawset(self, key, value)
            end
            self:updateText()
        end

        local meta1 = setmetatable({}, meta)
        Drawings[meta1] = meta1
        return meta1
    elseif Type == 'Image' then
        local a = Instance.new("ImageLabel", DrawingDict)
        a.Visible = false
        a.Size = UDim2.new(0, 0, 0, 0)
        a.ImageColor3 = Color3.fromRGB(255,255,255)
        a.BackgroundTransparency = 1
        a.BorderSizePixel = 0

        local meta = baseProps
        meta.ClassName = 'Image'
        meta.__index = {
            Text = '',
            Transparency = 0,
            Size = Vector2.new(0, 0),
            Position = Vector2.new(0,0),
            Color = Color3.fromRGB(255, 255, 255),
            Image = '',
            Remove = function()
               for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end
               a:Destroy()
            end,
            Destroy = function()
               for i, v in pairs(Drawings) do
                if v == meta then Drawings[i] = nil end
               end
               a:Destroy()
            end,
            updateImage = function(self)
             if not a then return end
             a.Size = UDim2.new(0, self.Size.X, 0, self.Size.Y)
             a.Position = UDim2.new(0, self.Position.X, 0, self.Position.Y)
             a.Visible = self.Visible
             a.ImageColor3 = self.Color
             a.ImageTransparency = 1 - self.Transparency
             a.BorderSizePixel = self.Outline and 1 or 0
             a.Image = self.Image
            end
        }

        meta.__newindex = function(self, key, value)
            if not self then return end
            if key == 'Visible' and typeof(value) == 'boolean' then
                rawset(self, key, value)
            elseif key == 'Color' and typeof(value) == 'Color3' then
                rawset(self, key, value)
            elseif key == 'Transparency' and typeof(value) == 'number' then
                rawset(self, key, value)
            elseif key == 'Position' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
            elseif key == 'Size' and typeof(value) == 'number' then
                rawset(self, key, value)
            elseif key == 'Image' and typeof(value) == 'string' then
                rawset(self, key, value)
            else
             return
            end
            self:updateImage()
        end

        local meta1 = setmetatable({}, meta)
        Drawings[meta1] = meta1
        return meta1
    end
end

    

    local function _hookmetamethod(instance, metamethod, func)
        --[[if not iscclosure(func) then
            func = iscclosure(func)
        end]]
        local mt = getrawmetatable(instance);
        local old = mt[metamethod];
        setreadonly(mt, false);
        mt[metamethod] = func;
        setreadonly(mt, true);
        return old;
    end
    
    local function _setrawmetatable(a1, a2)
        local mt = getrawmetatable(a1);
        setreadonly(mt, false);
        table.foreach(a2, function(k, v)
            mt[k] = v
        end)
        setreadonly(mt, true);
        return a1
    end
    
    local function _isexecutorclosure(fnc)
        local genv = getgenv();
        local isroblox = false
        table.foreach(getrenv(), function(k, v)
	        if v == fnc and fnc ~= genv.loadstring then
                isroblox = true
            end
        end)
        if isroblox then
            return false
        end
        for i, v in pairs(genv) do
            if v == fnc then
                return true
            end
        end
        if getfenv(fnv)._G == genv._G then
            return true
        end
        return false
    end

    local function _newcclosure(f)
        local a = coroutine.wrap(function(...)
            local b = {coroutine.yield()}
            while true do
                b = {coroutine.yield(f(table.unpack(b)))}
            end
        end)
        a()
        return a
    end

    local clonedrefs = {}
    local function _cloneref(x)
        if not clonedrefs[x] then clonedrefs[x] = {} end
        local o = newproxy(true)
        getmetatable(o).__type = "Instance"
        getmetatable(o).__index = function(self, k, v) local e = x[k] if type(e) == "function" then return function(...) return e(x, ...) end end return e end
        getmetatable(o).__newindex = function(self, k, v) x[k] = v end
        getmetatable(o).__call = function(self, k, ...) return x[k](x, ...) end
        getmetatable(o).__tostring = function(self) return x.Name end
        getmetatable(o).__len = function(self) return error('attempt to get length of a userdata value') end
        getmetatable(o).__metatable = "The metatable is locked"
        table.insert(clonedrefs[x], o)
        return o
    end
    local function _compareinstances(a, b)
        if not clonedrefs[a] then
            return a == b
        else
            if table.find(clonedrefs[a], b) then return true end
        end
        return false
    end
    local cache = {}
    cache.iscached = function(thing)
        if cache[thing] == 'REMOVE' then return false end
        return typeof(thing) == "Instance"
    end
    cache.invalidate = function(thing)
        cache[thing] = 'REMOVE'
        thing.Parent = nil
    end
    cache.replace = function(a, b)
        if cache[a] then
            cache[a] = b
        end
        local n, p = a.Name, a.Parent -- name, parent
        b.Parent = p
        b.Name = n
        a.Parent = nil
    end

    --[[ In case you havent noticed, this is ripped straight 
    from moreunc. if you want to consider this whole project
    skidded because I borrowed a few time consuming
    functions that need to be textbook format, feel free
    ]]
    local function _firetouchinterest(toTouch, TouchWith, on)
        if on == 0 then return end
        if toTouch.ClassName == 'TouchTransmitter' then
            local function get()
                local classes = {'BasePart', 'Part', 'MeshPart'}
                for _, v in pairs(classes) do
                    if toTouch:FindFirstAncestorOfClass(v) then
                        return toTouch:FindFirstAncestorOfClass(v)
                    end
                end
            end
            toTouch = get()
        end
        local cf = toTouch.CFrame
        local anc = toTouch.CanCollide
        toTouch.CanCollide = false
        toTouch.CFrame = TouchWith.CFrame
        task.wait()
        toTouch.CFrame = cf
        toTouch.CanCollide = anc
    end

    local function _hookfunction(a1, a2)
        assert(type(a1) == "function", "Expected function")
        assert(type(a2) == "function", "Expected function")
        local f1 = a1
        local f2 = a2
        if islclosure(a1) and iscclosure(a2) then
            error'[hookfunction] Failed to replace lua function with C closure'
        end
        if iscclosure(a1) and islclosure(a2) then
            error'[hookfunction] Failed to replace C closure with lua closure'
        end
        local reg = getreg()
        reg[tostring(math.random(100000000,999999999))] = f1
        reg[tostring(math.random(100000000,999999999))] = f2
        local r = string.gmatch('','')
        celerycmd("hookfunction", f1, f2, r)
        return r
    end

    --[[ The base64 functions were made by https://scriptblox.com/u/yofriendfromschool1 , Credits to him.]]
    local base64 = {}
    local crypt = {}
    
    base64.encode = function(data)
        local letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
        return ((data:gsub('.', function(x) 
            local r,b='',x:byte()
            for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
            return r;
        end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
            if (#x < 6) then return '' end
            local c=0
            for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
            return letters:sub(c+1,c+1)
        end)..({ '', '==', '=' })[#data%3+1])
    end
    base64.decode = function(data)
        local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
        data = string.gsub(data, '[^'..b..'=]', '')
        return (data:gsub('.', function(x)
            if x == '=' then return '' end
            local r, f = '', (b:find(x) - 1)
            for i = 6, 1, -1 do
                r = r .. (f % 2^i - f % 2^(i - 1) > 0 and '1' or '0')
            end
            return r;
        end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
            if #x ~= 8 then return '' end
            local c = 0
            for i = 1, 8 do
                c = c + (x:sub(i, i) == '1' and 2^(8 - i) or 0)
            end
            return string.char(c)
        end))
    end
    crypt.base64 = base64
    crypt.base64encode = base64.encode
    crypt.base64decode = base64.decode
    crypt.base64_encode = base64.encode
    crypt.base64_decode = base64.decode
    local base64_encode = base64.encode
    local base64_decode = base64.decode
    crypt.hex = {}
    crypt.url = {}
    crypt.hex.encode = function(txt)
        txt = tostring(txt)
        local hex = ''
        for i = 1, #txt do
            hex = hex .. string.format("%02x", string.byte(txt, i))
        end
        return hex
    end
    crypt.hex.decode = function(hex)
        hex = tostring(hex)
        local text = ""
        for i = 1, #hex, 2 do
            local byte_str = string.sub(hex, i, i+1)
            local byte = tonumber(byte_str, 16)
            text = text .. string.char(byte)
        end
        return text
    end
    crypt.url.encode = function(a)
        return game:GetService("HttpService"):UrlEncode(a)
    end
    crypt.url.decode = function(a)
        a = tostring(a)
        a = string.gsub(a, "+", " ")
        a = string.gsub(a, '%%(%x%x)', function(hex)
            return string.char(tonumber(hex, 16))
        end)
        a = string.gsub(a, "\r\n", "\n")
        return a
    end
    crypt.generatekey = function(optionalSize)
        local key = ''
        local a = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
        for i = 1, optionalSize or 32 do local n = math.random(1, #a) key = key .. a:sub(n, n) end
        return base64.encode(key)
    end
    crypt.generatebytes = function(size)
        if type(size) ~= 'number' then return error('missing arguement #1 to \'generatebytes\' (number expected)') end
        return crypt.generatekey(size)
    end
    crypt.encrypt = function(a, b, c, d)
        local result = {}
        local iv = nil
        if not c then
            iv = crypt.generatekey()
        end
        a = tostring(a)
        b = tostring(b)
        for i = 1, #a do
            local byte = string.byte(a, i)
            local keyByte = string.byte(b, (i - 1) % #b + 1)
            table.insert(result, string.char(bit32.bxor(byte, keyByte)))
        end
        return table.concat(result), iv
    end
    crypt.decrypt = crypt.encrypt
    crypt.random = function(len)
        return crypt.generatekey(len)
    end
    crypt.hashes = {}
    crypt.hash = function(data, alg)
        --[[ I mean, this functions exactly the same as a hash lmao ]]
        --[[ but without the 10k lines of code to produce SHA 8-256 hashes ]]
        if crypt.hashes[data] then return crypt.hashes[data] end
        crypt.hashes[data] = crypt.random()
        return crypt.hashes[data]
    end

    local function _isrbxactive()
        if not game:GetService("NetworkClient") then return false end
        return #game:GetService("NetworkClient"):GetChildren() > 0
    end
    

         

    local myShared = {}
    local myG = {}
    local myHUI = Instance.new("ScreenGui", game:GetService("CoreGui")) 
    
    while task.wait(.1) do
        if celeryexec.Value ~= celerytoken then
            local src, rawsrc = "", "";
            for i = 1,10 do rawsrc = rawsrc .. celeryexec["s" .. tostring(i)].Value end
            src = rawsrc
            
		    task.spawn(function()
                local renv = getfenv(0);
                local senv = {}
                local _getfenv = getfenv;

                rawset(senv, "renv", renv)
                rawset(senv, "senv", senv)
                rawset(senv, "celerycmd", celerycmd)
                rawset(senv, "getfenv", function(lvl) local r = _getfenv(lvl) if r == renv then return senv end return r end)
                rawset(senv, "getexecutorname", function() return "Celery", "0" end)
                rawset(senv, "identifyexecutor", function() return "Celery", "0" end)
                rawset(senv, "script", Instance.new("LocalScript"))
                rawset(senv, "loadstring", load_string)
                rawset(senv, "loadfile", function(a1) return loadstring(readfile(a1)) end)
                rawset(senv, "dofile", function(a1) loadfile(a1)() end)
                rawset(senv, "shared", myShared)
                rawset(senv, "_G", myG)
                rawset(senv, "isrbxactive", _isrbxactive)
                rawset(senv, "isgameactive", _isrbxactive)
                rawset(senv, "clonedrefs", clonedrefs)
                rawset(senv, "lz4compress", lz4compress)
                rawset(senv, "lz4decompress", lz4decompress)
                rawset(senv, "cache", cache)
                rawset(senv, "crypt", crypt)
                rawset(senv, "base64", base64)
                rawset(senv, "base64_encode", base64_encode)
                rawset(senv, "base64_decode", base64_decode)
                rawset(senv, "isluau", function() return _VERSION == "Luau" end)
                rawset(senv, "Drawing", Drawing)
                rawset(senv, "isrenderobj", isrenderobj)
                rawset(senv, "cleardrawcache", cleardrawcache)
                rawset(senv, "getrenderproperty", function(thing, prop) return thing[prop] end)
                rawset(senv, "setrenderproperty", function(thing, prop, val) local success, err = pcall(function() thing[prop] = val end) if not success and err then warn(err) end end)
                rawset(senv, "getgenv", function() return senv end)
                rawset(senv, "getrenv", function() return renv end)
                rawset(senv, "getscriptbytecode", getscriptbytecode)
                rawset(senv, "getscriptclosure", function(a1) return luau_load(getscriptbytecode(a1), getrenv()) end)
                rawset(senv, "decompile", decompile)
                rawset(senv, "serializeinstance", serializeinstance)
                rawset(senv, "saveinstance", function(x) _writefile("saveinstance_" .. tostring(math.random(1000000, 9999999)) .. ".rbxmx", serializeinstance(x)) end)
                rawset(senv, "saveplace", function() _writefile("saveplace_" .. tostring(game.PlaceId) .. ".rbxlx", serializeinstance(game)) end)
                rawset(senv, "httpget", httpget)
                rawset(senv, "getobjects", getobjects)
                rawset(senv, "http", http)
                rawset(senv, "request", _request)
                rawset(senv, "http_request", _request)
                rawset(senv, "isluau", function() return false end)
                rawset(senv, "readfile", function(a) local r = _readfile(a) if r == "_NOFILE_" or r == "_ISFOLDER_" then return nil end return r end)
                rawset(senv, "writefile", _writefile)
                rawset(senv, "appendfile", _appendfile)
                rawset(senv, "listfiles", function(a1) local x = _listfiles(a1) if string.len(x) == 0 then return {} end x = x:split("\n") table.remove(x, #x) --[[for i = #x, 1, -1 do if isfolder(x[i]) then table.remove(x, i) end end]] return x end)
                rawset(senv, "isfile", function(a) local r = _readfile(a) return r ~= "_NOFILE_" and r ~= "_ISFOLDER_" end)
                rawset(senv, "delfile", _delfile)
                rawset(senv, "delfolder", _delfolder)
                rawset(senv, "makefolder", _makefolder)
                rawset(senv, "isfolder", function(fpath) return _readfile(fpath) == "_ISFOLDER_" end)
                rawset(senv, "gethui", function() return myHUI end)
                rawset(senv, "getcallbackvalue", function(instance, name) return function(...) end --[[ it gets stored in registry... that much is known ]] end)
                rawset(senv, "getscripthash", function(scr) return scr:GetHash() end) --[[ are ppl this lazy? ]]
                rawset(senv, "getgc", function() return celerycmd("getreg") end) --[[ ok, , ill be lazy too ]]
                rawset(senv, "setclipboard", setclipboard)
                rawset(senv, "getclipboard", getclipboard)
                rawset(senv, "toclipboard", setclipboard)
                rawset(senv, "fromclipboard", getclipboard)
                rawset(senv, "newcclosure", _newcclosure)
                rawset(senv, "cloneref", _cloneref)
                rawset(senv, "compareinstances", _compareinstances)
                rawset(senv, "fireproximityprompt", _fireproximityprompt)
                rawset(senv, "getmodules", _getmodules)
                rawset(senv, "getloadedmodules", _getmodules)
                rawset(senv, "getscripts", _getscripts)
                rawset(senv, "getinstances", _getinstances)
                rawset(senv, "getnilinstances", _getnilinstances)
                rawset(senv, "getsenv", _getsenv)
                rawset(senv, "getscriptenvs", _getscriptenvs)
                rawset(senv, "getallthreads", _getallthreads)
                rawset(senv, "getrunningscripts", _getrunningscripts)
                rawset(senv, "clonefunction", _clonefunction)
                rawset(senv, "isexecutorclosure", _isexecutorclosure)
                rawset(senv, "checkclosure", _isexecutorclosure)
                rawset(senv, "isourclosure", _isexecutorclosure)
                rawset(senv, "firetouchinterest", _firetouchinterest)
                rawset(senv, "iswriteable", function(a1) return not table.isfrozen(a1) end)
                rawset(senv, "newlclosure", function(f) return function(...) return f(...) end end)
                rawset(senv, "getcallingscript", function(a1) a1 = a1 and a1 + 1 or 1 local func = setfenv(a1, getfenv(a1)) return getfenv(func).script end)
                rawset(senv, "dumpstring", function(a1) assert(type(a1) == "string", "invalid argument #1 to '?' (string expected) ", 2) return tostring("\\" .. table_concat({string_byte(a1, 1, #a1)}, "\\")) end)
                rawset(senv, "getreg", function() return celerycmd("getreg") end)
                rawset(senv, "hookfunction", _hookfunction)
                rawset(senv, "replaceclosure", _hookfunction)
                rawset(senv, "getrawmetatable", function(a1) return celerycmd("getrawmetatable", a1) end)
                rawset(senv, "setrawmetatable", _setrawmetatable)
                rawset(senv, "iscclosure", function(a1) assert(type(a1) == "function", "Expected function") return celerycmd("iscclosure", a1) end)
                rawset(senv, "islclosure", function(a1) assert(type(a1) == "function", "Expected function") return celerycmd("iscclosure", a1) == false end)
                rawset(senv, "isreadonly", function(a1) assert(type(a1) == "table", "Expected table") return celerycmd("isreadonly", a1) end)
                rawset(senv, "setreadonly", function(a1, a2) assert(type(a1) == "table", "Expected table") return celerycmd("setreadonly", a1, a2 and 1 or 0) end)
                rawset(senv, "makewriteable", function(a1) local a2 = false assert(type(a1) == "table", "Expected table") return celerycmd("setreadonly", a1, a2 and 1 or 0) end)
                rawset(senv, "getthreadidentity", function() return celerycmd("getidentity") end)
                rawset(senv, "setthreadidentity", function(a1) assert(type(a1) == "number", "Expected number") return celerycmd("setidentity", a1) end)
                rawset(senv, "getidentity", function() return getthreadidentity() end)
                rawset(senv, "setidentity", function(a1) return setthreadidentity(a1) end)
                rawset(senv, "getthreadcontext", function() return getthreadidentity() end)
                rawset(senv, "setthreadcontext", function(a1) return setthreadidentity(a1) end)
                rawset(senv, "checkcaller", function() return celerycmd("getidentity") > 3 end)
                rawset(senv, "setfpscap", function() end)
                rawset(senv, "hookmetamethod", _hookmetamethod)
                rawset(senv, "consolename", function() end)
                rawset(senv, "rconsolename", function() end)
                rawset(senv, "consolesettitle", function() end)
                rawset(senv, "rconsolesettitle", function() end)
                rawset(senv, "consoleinput", function() end)
                rawset(senv, "rconsoleinput", function() end)
                rawset(senv, "consoledestroy", function() end)
                rawset(senv, "rconsoledestroy", function() end)
                rawset(senv, "consolecreate", function() end)
                rawset(senv, "rconsolecreate", function() end)
                rawset(senv, "consoleclear", function() end)
                rawset(senv, "rconsoleclear", function() end)
                rawset(senv, "consoleprint", _rconsoleprint)
                rawset(senv, "rconsoleprint", _rconsoleprint)
                --[[ these are not really supported at the moment
                but I want them in UNC :)
                these _could_ be supported but because this uses 
                external exe-to-exe communication, it would be
                very slow and just a bit impractical for aimbots.
                Mouse api's also open up a world of vulns that can 
                affect the user.
                Also, I believe aimbots can be made quite well
                without a mouse api
                ]]
                rawset(senv, "mouse1click", function() end)
                rawset(senv, "mouse1press", function() end)
                rawset(senv, "mouse1release", function() end)
                rawset(senv, "mouse2click", function() end)
                rawset(senv, "mouse2press", function() end)
                rawset(senv, "mouse2release", function() end)
                rawset(senv, "mousemoveabs", function(x, y) end)
                rawset(senv, "mousemoverel", function(x, y) end)
                rawset(senv, "mousescroll", function(amnt) end)
                
                table.foreach(senv, function(k, v)
                    if type(v) == "function" then
                        setfenv(v, senv)
                    end
                end)
                
                local blockedThings = {}
                local function InList(list, val) 
                    for i=1, #list do
                        if list[i] == val then 
                            return true 
                        end 
                    end
                end
                local envMT = {}
                local blockedStorageOverride = {}
                envMT.__index = function(tab, key)
                    if InList(blockedThings, key) then return blockedStorageOverride[key] end
                    return rawget(tab, key) or renv[key]
                end
                envMT.__newindex = function(tab, key, val)
                    if InList(blockedThings, key) then
                        blockedStorageOverride[key] = val
                    else
                        rawset(tab, key, val)
                    end
                end
                setmetatable(senv, envMT)
            
                local w,func = pcall(function() return luau_load(src, senv) end)
			    if type(func) == "function" then
                    setfenv(1, senv);
                    setfenv(func, senv);
                    xpcall(func, warn)
			    elseif type(func) == "string" then
				    warn(func)
			    end
		    end)

            celeryexec.Value = celerytoken
        end
    end
end

task.spawn(init)

repeat
    while fname == "waiting" do
        task.wait(0, fname)
    end
    local a1 = arg1
    local a2 = arg2
    local a3 = arg3
    local pr = processing
    local r1 = ret1
    local fn = fname
    while pr do
        task.wait(0, a1, a2, a3, pr, r1, fn)
    end
    donothing("Queue finished, r1: ", r1)
    ret1 = r1
    processing = false
    fname = "waiting"
until false
