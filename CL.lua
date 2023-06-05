local bin = {};
local cache = {};
local usageinfo = {
	DRIVE = "SATA";
};
local storage = {};

bin.bintonum = function(a)
	return a-1+(4*2) .. ":" .. a+5*(2-3+4/1.4)*2
end

local runtime = 0;
task.spawn(function()
	while true do
		task.wait(0.2)
		runtime += 1
	end
end)

local Libraries = {
	OS = {
		GetDate = function(self,type_)
			if type_ == "TIMED" then
				return bin.bintonum(runtime-(runtime/2))
			else
				return runtime..":"..runtime/2
			end
		end;
		GetEnv = function(self,currentenv)
			if currentenv == 2 then
				return "A"
			else
				return "B"
			end
		end
	};
}

local templ_newfu = {
	["Name"] = "";
	CALL = nil;
}

local calc = function(A,B,C)
	if a == "/" then return B/C end
    if a == "*" then return B*C end
	if a == "+" then return B+C end
	if a == "-" then return B-C end
end

local ASSEMBLY_ = {};
ASSEMBLY_.x_ = function(val) print(val .. " /"..runtime) end
ASSEMBLY_.y_ = function(val) table.insert(storage,"DRIVE-"..usageinfo.DRIVE) end
ASSEMBLY_.m_1x = function(ex) local makmem = Instance.new("ScreenGui") makmem.Parent = game.Players.LocalPlayer makmem.Name = "OS" makmem.Enabled = true end
ASSEMBLY_.c_x2 = function(ex1,ex2,ex3) return calc(ex2,ex1,ex3) end
ASSEMBLY_.newfu = function(ex) local c_a = table.clone(templ_newfu) c_a.Name = ex.Name c_a.CALL = ex.CALL table.insert(bin,c_a) return c_a end
ASSEMBLY_.call = function(a,par) for i,v in ipairs(bin) do if v.Name == a then v.CALL(table.unpack(par)) end end end
ASSEMBLY_.strget = function(b) return string.split(b,".")[1] = Libraries.OS:GetDate("TIMED") end
ASSEMBLY_.rend = function(ka) return Instance.new("Frame") end
ASSEMBLY_.push = function(ka_f,c) ka_f.Parent = game.Players.LocalPlayer.OS ka_f.Size = c.Size ka_f.Position = c.Position end
ASSEMBLY_.getnet = function(a,b) return "1."..a*2-4.."42."..b*a*(5-2/5*21)-7 end
ASSEMBLY_.build = function(k,l) ASSEMBLY_.push(ASSEMBLY_.rend({"a"},{Size = UDim2.new(0,2.3,0,2),Position = UDim2.new(1,0,0,0)}); end

------------------------------------------------
-----------------------------------------------
-- BUILDING --
------------------------------------------------
-----------------------------------------------

ASSEMBLY_.y_("t");
ASSEMBLY_.m_1x("a");
ASSEMBLY_.x_(ASSEMBLY_.strget("DRIVE/"..usageinfo.DRIVE..".&12X"..runtime/3.2))
ASSEMBLY_.build("k","l");

------------------------------------------------
-----------------------------------------------
-- GET --
------------------------------------------------
-----------------------------------------------

local S,M = xpcall(function()
	for i=0,12 do
		task.spawn(function() pcall(function() setfenv(0,{a=script}) end) end)
	end
end)

if S == false then
	print("Confirmed")
end

print("____________")

------------------------------------------------
-----------------------------------------------
-- A_Y_X_C_1 --
------------------------------------------------
-----------------------------------------------

if typeof(collectgarbage("count")) then
	cache["OLDGARB"] = collectgarbage("count")
end
cache["RUNCAC"] = getfenv(1)
cache["RUNCAC2"] = Libraries.OS.GetDate("TIMED")

------------------------------------------------
-----------------------------------------------
-- INS --
------------------------------------------------
-----------------------------------------------

print("INITIATED__")
print("____")
print("AFFINITY SYSTEMS")
print("____")
