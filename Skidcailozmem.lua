-- Wl Sailor Piece

--	if not LPH_OBFUSCATED then
--		loadstring(game:HttpGet("https://raw.githubusercontent.com/Luraph/macrosdk/main/luraphsdk.lua"))()
--	end

print("vdex")

local _VX = (function()
	local Players = game:GetService("Players")
	local HttpService = game:GetService("HttpService")
	local LocalPlayer = Players.LocalPlayer

	local _H = string.char
	local _CK = "Cr4ckthibucakt"
	local _AS = "Tkbachanhamngunhucho"
	local _SK = "_nguoitinhcuaeZ"
	local _BLK = { "http", "curl", "python", "requests", "postman", "wget", "insomnia", "httpie", "node", "java", "ruby",
		"php", "perl" }
	local _HBI = 8
	local _ATO = 20
	local _MAX_RECONNECT = 999
	local _RECONNECT_DELAY = 3

	local _ls_real = loadstring
	local _ls_safe = newcclosure and newcclosure(function(src, ...)
		if type(src) == "string" and (
				src:find("hookfunction") or
				src:find("hookmetamethod") or
				src:find("print%(") or
				src:find("getscriptbytecode") or
				src:find("getgenv") or
				src:find("getrenv")
			) then
			return nil, "blocked"
		end
		return _ls_real(src, ...)
	end) or _ls_real

	local _WL_REQUIRED = {
		{
			n = "WebSocket.connect",
			f = function()
				return type(WebSocket) == "table" and
					type(WebSocket.connect) == "function"
			end
		},
		{ n = "newcclosure",      f = function() return type(newcclosure) == "function" end },
		{ n = "version",          f = function() return type(version) == "function" end },
		{ n = "identifyexecutor", f = function() return type(identifyexecutor) == "function" end },
	}

	local _missing = {}
	for _, _c in ipairs(_WL_REQUIRED) do
		local _ok, _res = pcall(_c.f)
		if not (_ok and _res == true) then
			table.insert(_missing, _c.n)
		end
	end

	local _ex_name = identifyexecutor and identifyexecutor() or "Unknown"

	if #_missing > 0 then
		LocalPlayer:Kick(
			"Executor not support Whitelist.\nMissing: " .. table.concat(_missing, ", ")
		)
		return
	end

	local _chk_blocked = function(e)
		local lo = e:lower()
		for _, b in ipairs(_BLK) do
			if lo:find(b, 1, true) then return false end
		end
		return true
	end

	if not _chk_blocked(_ex_name) then
		LocalPlayer:Kick("Executor not support Whitelist.")
		return
	end

	print(string.format("🔹 Sailor Piece | Executor: %s | check passed", _ex_name))


	local _anti_tamper = function()
		if checkcaller and not checkcaller() then
			LocalPlayer:Kick("Security violation detected.")
			return false
		end
		local _test_fn = newcclosure(function() return 0xDEAD end)
		local _ok, _res = pcall(_test_fn)
		if not _ok or _res ~= 0xDEAD then
			LocalPlayer:Kick("Security violation detected.")
			return false
		end
		return true
	end
	if not _anti_tamper() then return end

	local _str_concat    = function(t)
		local s = ""
		for i = 1, #t do s = s .. t[i] end
		return s
	end

	local _rc4           = function(d, k)
		local S, j = {}, 0
		for i = 0, 255 do S[i] = i end
		for i = 0, 255 do
			j = (j + S[i] + string.byte(k, (i % #k) + 1)) % 256
			S[i], S[j] = S[j], S[i]
		end
		local o, ii, kk = {}, 0, 0
		for n = 1, #d do
			ii = (ii + 1) % 256
			kk = (kk + S[ii]) % 256
			S[ii], S[kk] = S[kk], S[ii]
			o[n] = _H(bit32.bxor(string.byte(d, n), S[(S[ii] + S[kk]) % 256]))
		end
		return _str_concat(o)
	end

	local _he            = function(s)
		local o = {}
		for i = 1, #s do o[i] = string.format("%02x", string.byte(s, i)) end
		return _str_concat(o)
	end

	local _bkt           = function(t) return tostring(math.floor(t / 30)) end

	local _ex_fn         = newcclosure(function() return identifyexecutor() end)
	local _hw            = newcclosure(function() return gethwid() end)
	local _vr            = newcclosure(function() return version() end)
	local _ts            = newcclosure(function() return os.time() end)

	local _sha_simple    = function(msg, key)
		local combined = key .. msg .. key
		local h = 0
		for i = 1, #combined do
			h = bit32.bxor(bit32.lrotate(h, 5), string.byte(combined, i))
			h = bit32.band(h + 0x6B43A9, 0xFFFFFFFF)
		end
		local h2 = 0
		for i = #combined, 1, -1 do
			h2 = bit32.bxor(bit32.lrotate(h2, 7), string.byte(combined, i))
			h2 = bit32.band(h2 + 0x9E3779B9, 0xFFFFFFFF)
		end
		return string.format("%08x%08x", h, h2)
	end

	local _sign_payload  = function(tbl)
		local keys = {}
		for k in pairs(tbl) do
			if k ~= "sig" then keys[#keys + 1] = k end
		end
		table.sort(keys)
		local msg = ""
		for i, k in ipairs(keys) do
			if i > 1 then msg = msg .. "&" end
			msg = msg .. k .. "=" .. tostring(tbl[k])
		end
		return _sha_simple(msg, _AS)
	end

	local _enc_ws        = function(tbl, t)
		local ok, j = pcall(function() return HttpService:JSONEncode(tbl) end)
		if not ok then return "" end
		return _he(_rc4(j, _CK .. _SK .. "ws" .. _bkt(t)))
	end

	local _derive_slug   = function(seed, len)
		local raw = _rc4(seed, _CK)
		local o = {}
		for i = 1, math.floor(len / 2) do o[i] = string.format("%02x", string.byte(raw, i)) end
		return _str_concat(o):sub(1, len)
	end

	local _gen_nonce     = function()
		local t = _ts()
		local a = bit32.bxor(math.floor(tick() * 1e6) % 0xFFFFFFFF, t)
		local b = bit32.bxor(math.floor(math.random() * 0xFFFF), math.floor(tick() * 999) % 0xFFFF)
		return string.format("%08x%04x", a % 0xFFFFFFFF, b % 0xFFFF)
	end

	local _gen_tab_token = function()
		local _chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
		local token = ""
		for i = 1, 5 do
			local idx = math.floor(math.random() * #_chars) + 1
			token = token .. _chars:sub(idx, idx)
		end
		return token
	end

	local _collect_env   = function()
		return {
			executor = _ex_fn(),
			user_id  = tostring(LocalPlayer.UserId),
			place_id = tostring(game.PlaceId),
			job_id   = tostring(game.JobId),
			version  = _vr(),
		}
	end

	local _WS_SLUG       = _derive_slug("nk3_live_ws_v9", 10)
	local _WS_URL        = _H(119, 115, 58, 47, 47)
		.. _H(117, 115, 51, 46, 98, 111, 116, 45, 104, 111, 115, 116, 105, 110, 103, 46, 110, 101, 116)
		.. _H(58, 50, 49, 50, 57, 49)
		.. "/" .. _WS_SLUG

	getgenv              = getgenv or function() return _G end

	local _bt            = tick()

	if not getgenv().Key or getgenv().Key == "" then
		LocalPlayer:Kick("No key provided. Set: getgenv().Key = \"YOUR_KEY\"")
		return
	end

	local _kv      = tostring(getgenv().Key)
	local _env     = _collect_env()

	local _dup_key = "sailor_auth_" .. _kv .. "_" .. tostring(LocalPlayer.UserId)
	if getgenv()[_dup_key] then
		print(string.format(
			"🔹 Sailor Piece | Duplicate blocked | Key: ...%s | Exec: %s",
			_kv:sub(-6), _env.executor
		))
		return
	end
	getgenv()[_dup_key]                    = true

	local _tab_token                       = _gen_tab_token()
	local _authenticated                   = false
	local _session_id                      = nil
	local _ws_open                         = false
	local _is_dup                          = false
	local _hb_task                         = nil
	local _tab_count                       = 0
	local _max_tabs                        = 100
	local _reconnect_count                 = 0
	local _kicked                          = false
	local _server_hb_interval              = _HBI

	local _do_kick                         = function(msg)
		if _kicked then return end
		_kicked = true
		_ws_open = false
		getgenv()[_dup_key] = nil
		getgenv().__AUTHENTICATED = false
		if LocalPlayer and LocalPlayer.Parent then
			LocalPlayer:Kick(msg)
		end
	end

	local _start_hb                        = function(ws_ref)
		if _hb_task then
			pcall(task.cancel, _hb_task)
		end
		_hb_task = task.spawn(function()
			local _fc = 0
			while _ws_open and _authenticated and not _kicked do
				task.wait(_server_hb_interval)
				if not _ws_open or _kicked or getgenv().__COMPROMISED then break end
				local hok = pcall(function()
					ws_ref:Send(HttpService:JSONEncode({
						type      = "heartbeat",
						session   = _session_id,
						tab_token = _tab_token,
					}))
				end)
				if not hok then
					_fc = _fc + 1
					if _fc >= 3 then
						_ws_open = false
						break
					end
				else
					_fc = 0
				end
			end
		end)
	end

	local _connect_and_auth                = function()
		local _ws = nil
		local _auth_response = nil
		local _conn_open = false

		local _ws_ok, _ws_err = pcall(function()
			_ws = WebSocket.connect(_WS_URL)
		end)

		if not _ws_ok or not _ws then
			return false, "connect_fail", tostring(_ws_err)
		end

		_conn_open = true

		_ws.OnMessage:Connect(function(raw)
			local ok, data = pcall(function() return HttpService:JSONDecode(raw) end)
			if not ok or type(data) ~= "table" then return end

			if not _authenticated then
				_auth_response = data
				return
			end

			local mtype = data.type or ""

			if mtype == "hb_ack" then return end

			if mtype == "ping" then
				pcall(function()
					_ws:Send(HttpService:JSONEncode({ type = "pong", session = _session_id }))
				end)
				return
			end

			if mtype == "tab_update" then
				_tab_count = data.slots or _tab_count
				return
			end

			if mtype == "kick" then
				_ws_open = false
				_do_kick("Disconnected by server: " .. (data.reason or "Session terminated."))
				return
			end
		end)

		_ws.OnClose:Connect(function()
			_conn_open = false
			_ws_open = false
		end)

		local _auth_payload       = {
			key       = _kv,
			user_id   = _env.user_id,
			place_id  = _env.place_id,
			job_id    = _env.job_id,
			executor  = _env.executor,
			tab_token = _tab_token,
			nonce     = _gen_nonce(),
		}
		_auth_payload.sig         = _sign_payload(_auth_payload)

		local _auth_t             = _ts()
		local _auth_hex           = _enc_ws(_auth_payload, _auth_t)

		local _send_ok, _send_err = pcall(function()
			_ws:Send(HttpService:JSONEncode({ type = "auth", d = _auth_hex, t = _auth_t }))
		end)

		if not _send_ok then
			return false, "send_fail", tostring(_send_err)
		end

		local _waited = 0
		while not _auth_response and _waited < _ATO do
			task.wait(0.1)
			_waited = _waited + 0.1
			if not _conn_open then
				return false, "closed_before_auth", "WebSocket closed before auth response"
			end
			if not LocalPlayer or not LocalPlayer.Parent then
				return false, "player_left", ""
			end
		end

		if not _auth_response then
			return false, "auth_timeout", "No response in " .. _ATO .. "s"
		end

		if not _auth_response.ok then
			local r = _auth_response.reason or ""
			return false, "auth_rejected", r
		end

		return true, _ws, _auth_response
	end

	local _success, _ws_or_err, _auth_resp = _connect_and_auth()

	if not _success then
		local reason_code = _ws_or_err
		local reason_msg  = _auth_resp or ""

		if reason_code == "auth_rejected" then
			local r = reason_msg
			if r:find("expired") then
				_do_kick("Sailor Piece key expired. Renew your subscription in Discord.")
			elseif r:find("limit") or r:find("Tab") then
				_do_kick("Tab limit reached. Wait for an existing tab to close.")
			elseif r:find("blacklist") then
				_do_kick("Key blacklisted. Contact support in our Discord.")
			elseif r:find("Invalid key") then
				_do_kick("Invalid key. Get a key from our Discord.")
			elseif r:find("executor") or r:find("Executor") then
				_do_kick("Executor not support Whitelist: " .. _env.executor)
			elseif r:find("Wrong key type") or r:find("key type") then
				_do_kick("Wrong key type. Use the correct script for your key.")
			else
				_do_kick("Authentication failed: " .. r)
			end
		elseif reason_code == "player_left" then
			getgenv()[_dup_key] = nil
		else
			_do_kick("Failed to connect to authentication server. Try again later.")
		end
		return
	end

	local _ws      = _ws_or_err

	_authenticated = true
	_ws_open       = true
	_is_dup        = _auth_resp.duplicate == true
	_session_id    = _auth_resp.session
	_tab_count     = _auth_resp.slots or 1
	_max_tabs      = _auth_resp.max_slots or 100
	if _auth_resp.hb_interval and type(_auth_resp.hb_interval) == "number" then
		_server_hb_interval = _auth_resp.hb_interval
	end

	local max_disp = (_max_tabs == 0) and "∞" or tostring(_max_tabs)

	if not _is_dup then
		getgenv().__AUTHENTICATED = true
		getgenv().__SESSION_ID    = _session_id
		getgenv().__TAB_TOKEN     = _tab_token
		print(string.format(
			"🔹 Sailor Piece | Authenticated | Token: %s | Tabs: %s/%s | Exec: %s | %.3fs",
			_tab_token, tostring(_tab_count), max_disp, _env.executor, tick() - _bt
		))
	else
		print(string.format(
			"🔹 Sailor Piece | Tab reused | Token: %s | Tabs: %s/%s | Exec: %s",
			_tab_token, tostring(_tab_count), max_disp, _env.executor
		))
	end

	_start_hb(_ws)

	_ws.OnClose:Connect(function()
		if _kicked then return end
		_ws_open = false

		if _authenticated and not _is_dup and not _kicked then
			if _reconnect_count < _MAX_RECONNECT then
				_reconnect_count = _reconnect_count + 1
				warn(string.format("🔹 Sailor Piece | Connection lost — reconnecting (%d/%d)...", _reconnect_count,
					_MAX_RECONNECT))

				task.spawn(function()
					local _delay = math.min(_RECONNECT_DELAY * _reconnect_count, 15)
					task.wait(_delay)

					if _kicked then return end
					if not LocalPlayer or not LocalPlayer.Parent then return end

					local _auth_payload2 = {
						key       = _kv,
						user_id   = _env.user_id,
						place_id  = _env.place_id,
						job_id    = _env.job_id,
						executor  = _env.executor,
						tab_token = _tab_token,
						nonce     = _gen_nonce(),
					}
					_auth_payload2.sig = _sign_payload(_auth_payload2)

					local _new_ws = nil
					local _conn_ok, _conn_err = pcall(function()
						_new_ws = WebSocket.connect(_WS_URL)
					end)

					if not _conn_ok or not _new_ws then
						warn("🔹 Sailor Piece | Reconnect failed: " .. tostring(_conn_err))
						return
					end

					local _new_auth_resp = nil
					local _new_conn_open = true

					_new_ws.OnMessage:Connect(function(raw)
						local ok2, data = pcall(function() return HttpService:JSONDecode(raw) end)
						if not ok2 or type(data) ~= "table" then return end

						if not _ws_open then
							_new_auth_resp = data
							return
						end

						local mtype = data.type or ""
						if mtype == "hb_ack" then return end
						if mtype == "ping" then
							pcall(function()
								_new_ws:Send(HttpService:JSONEncode({ type = "pong", session = _session_id }))
							end)
							return
						end
						if mtype == "tab_update" then
							_tab_count = data.slots or _tab_count
							return
						end
						if mtype == "kick" then
							_ws_open = false
							_do_kick("Disconnected by server: " .. (data.reason or "Session terminated."))
							return
						end
					end)

					_new_ws.OnClose:Connect(function()
						_new_conn_open = false
						if _ws_open then
							_ws_open = false
						end
					end)

					local _at   = _ts()
					local _ahex = _enc_ws(_auth_payload2, _at)
					local _sok  = pcall(function()
						_new_ws:Send(HttpService:JSONEncode({ type = "auth", d = _ahex, t = _at }))
					end)
					if not _sok then
						return
					end

					local _waited2 = 0
					while not _new_auth_resp and _waited2 < _ATO do
						task.wait(0.1)
						_waited2 = _waited2 + 0.1
						if not _new_conn_open then break end
						if not LocalPlayer or not LocalPlayer.Parent then return end
					end

					if not _new_auth_resp or not _new_auth_resp.ok then
						local rr = (_new_auth_resp and _new_auth_resp.reason) or "no response"
						warn("🔹 Sailor Piece | Reconnect auth failed: " .. rr)
						return
					end

					_ws = _new_ws
					_session_id = _new_auth_resp.session or _session_id
					_ws_open = true
					_reconnect_count = 0
					print(string.format("🔹 Sailor Piece | Reconnected | Token: %s | Session: %s", _tab_token, _session_id))
					_start_hb(_new_ws)
				end)
			else
				warn("🔹 Sailor Piece | Max reconnects reached — connection closed.")
				getgenv().__AUTHENTICATED = false
				getgenv()[_dup_key] = nil
				if _hb_task then
					pcall(task.cancel, _hb_task)
					_hb_task = nil
				end
			end
		end
	end)
end)()

print("🔹 nguoitinhcuae")

if not getgenv().Studio then
	getgenv().Studio = {
		["Sailor Piece"] = {
			["Use Melee"] = true,    -- -- For Farmings if have Strongest in history
			["Use Skill"] = true,    -- For Farmings
			["Lock Fps"] = 60,       -- Lock Fps
			["Change Account"] = false, -- Yummy Tool Auto Change Account if full items set in section items ( ["Change Account"] = false / Farmings Drop )
			["Hop Server"] = false,  -- if server normal
			["Rejoin Time"] = 15,    -- Auto Rejoin
			["Items"] = {
				["Yuji Melee"] = true, -- Working
				["Sukuna Melee"] = true, -- Working v1/v2
				["Gojo Melee"] = true, -- Working
				["Qin Shi Melee"] = true, -- Working
				["Vampire King Melee"] = true, -- Working
				["Gilgamesh Melee"] = true, -- Working
				["Saber Alter Melee"] = true, -- Working
				["Demon King Melee"] = true, -- Working
				["Blessed Maiden Melee"] = true, -- Working
				["Shinobi Melee"] = true, -- Working
				["Moon Slayer Melee"] = true, -- Working
				["Aizen Sword"] = true, -- Working v1/v2
				["Ichigo Sword"] = true, -- Working
				["Shadow Sword"] = true, -- Working v1/v2
				["Slime Sword"] = true, -- Working
				["Yamato Sword"] = true, -- Working
				["Ice Queen Sword"] = true, -- Working
				["Great Mage Sword"] = true, -- Working Sword & OutFit
			},
			["If Max Level"] = {
				["Egg Event"] = {
					["Enable"] = true,
					["Value"] = 1000 -- Value Farm But no have Buy
				},
				["Get Full Title"] = true, -- Celestial Favor Lucky 50%
				["Upgrade Max Rank"] = true, -- Max Ranks
				["Upgrade Luck"] = true, -- Tree Luck
				["Storage Race"] = true, -- Storage ur race or clan before doing quests that need a specific race
				["Storage Clan"] = true, -- Storage ur race or clan before doing quests that need a specific clan
			},
			["Reroll"] = {
				["Chest"] = { "Common", "Rare", "Legendary", "Epic", "Mythical" }, -- "Secret"
				["Clan"] = { 'Monarch', 'Eminence' },                  -- Wiki Tier List
				["Race"] = { 'Kitsune' },                              -- Wiki Tier List
				["Trail"] = { 'Emperor' },                             -- Wiki Tier List
				["Power"] = { 'Colossus', 'Cursebrand' },              -- Wiki Tier List
				["Rune"] = { 'Fortune Rune' }                          -- Wiki Tier List
			}
		}
	}
end

SetStatus = function()
	print("_nguoitinhcuae")
end

if not getgenv().Hide_UI then
	local Players = game:GetService("Players")
	local TweenService = game:GetService("TweenService")
	local Lighting = game:GetService("Lighting")
	local player = Players.LocalPlayer
	local blur = Instance.new("BlurEffect", Lighting)
	blur.Size = 0
	TweenService:Create(blur, TweenInfo.new(0.5), { Size = 40 }):Play()
	task.delay(2, function()
		if blur then blur:Destroy() end
	end)

	local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
	screenGui.Name = "VxezeLoader"
	screenGui.ResetOnSpawn = false
	screenGui.IgnoreGuiInset = true

	local frame = Instance.new("Frame", screenGui)
	frame.Size = UDim2.new(1, 0, 1, 0)
	frame.BackgroundTransparency = 1

	local bg = Instance.new("Frame", frame)
	bg.Size = UDim2.new(1, 0, 1, 0)
	bg.BackgroundColor3 = Color3.fromRGB(5, 5, 10)
	bg.BackgroundTransparency = 1
	TweenService:Create(bg, TweenInfo.new(0.5), { BackgroundTransparency = 0.2 }):Play()

	local getTitleScale = function()
		local s = workspace.CurrentCamera.ViewportSize
		return math.clamp(math.min(s.X, s.Y) / 600, 0.3, 0.5)
	end

	local gradColor = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 191, 255)),
		ColorSequenceKeypoint.new(0.5, Color3.fromRGB(100, 200, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200)),
	})

	local statusGradColor = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 180, 220)),
		ColorSequenceKeypoint.new(0.5, Color3.fromRGB(190, 200, 230)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(210, 210, 220)),
	})

	local makeLabel = function(parent, pos, size)
		local t = Instance.new("TextLabel", parent)
		t.Font = Enum.Font.FredokaOne
		t.TextColor3 = Color3.fromRGB(255, 255, 255)
		t.TextStrokeColor3 = Color3.fromRGB(0, 100, 150)
		t.TextStrokeTransparency = 0.3
		t.TextTransparency = 1
		t.BackgroundTransparency = 1
		t.Position = pos
		t.Size = size
		t.TextScaled = true
		local g = Instance.new("UIGradient", t)
		g.Color = gradColor
		g.Rotation = 90
		return t
	end

	local makeStatusLabel = function(parent, pos, size)
		local t = Instance.new("TextLabel", parent)
		t.Font = Enum.Font.FredokaOne
		t.TextColor3 = Color3.fromRGB(230, 230, 250)
		t.TextTransparency = 1
		t.BackgroundTransparency = 1
		t.Position = pos
		t.Size = size
		t.TextScaled = true
		t.TextXAlignment = Enum.TextXAlignment.Center
		t.TextYAlignment = Enum.TextYAlignment.Center
		local g = Instance.new("UIGradient", t)
		g.Color = statusGradColor
		g.Rotation = 90
		return t
	end

	local formatNumber = function(num)
		if num == nil then return "0" end
		if type(num) ~= "number" then num = tonumber(num) or 0 end
		if num >= 1e9 then
			local bil = num / 1e9
			return string.format(bil == math.floor(bil) and "%.0fB" or "%.1fB", bil)
		elseif num >= 1e6 then
			local mil = num / 1e6
			return string.format(mil == math.floor(mil) and "%.0fM" or "%.1fM", mil)
		elseif num >= 1e3 then
			local thou = num / 1e3
			return string.format(thou == math.floor(thou) and "%.0fK" or "%.1fK", thou)
		else
			return tostring(num)
		end
	end

	local logo = Instance.new("ImageLabel", frame)
	logo.Image = "rbxassetid://104363488394469"
	logo.BackgroundTransparency = 1
	logo.AnchorPoint = Vector2.new(0.5, 0.5)
	logo.Position = UDim2.new(0.5, 0, 0.3, 0)
	logo.Size = UDim2.new(getTitleScale(), 0, getTitleScale(), 0)
	logo.ImageTransparency = 1
	Instance.new("UIAspectRatioConstraint", logo).AspectRatio = 1
	TweenService:Create(logo, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{ ImageTransparency = 0 }):Play()

	local titleText = makeLabel(frame, UDim2.new(0.5, 0, 0.52, 0), UDim2.new(0.5, 0, 0.09, 0))
	titleText.Text = "Vxeze Hub"
	titleText.AnchorPoint = Vector2.new(0.5, 0.5)
	TweenService:Create(titleText, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{ TextTransparency = 0 }):Play()

	local statusText = makeStatusLabel(frame, UDim2.new(0.5, 0, 0.66, 0), UDim2.new(0.55, 0, 0.05, 0))
	statusText.Text = "Loading..."
	statusText.AnchorPoint = Vector2.new(0.5, 0.5)
	statusText.TextTransparency = 1

	SetStatus = function(newStatus)
		if not newStatus or newStatus == "" then
			statusText.Text = ""
			return
		end
		if statusText.Text == newStatus then return end
		statusText.Text = newStatus
		if statusText.TextTransparency == 0 then
			local fadeOut = TweenService:Create(statusText, TweenInfo.new(0.15), { TextTransparency = 1 })
			fadeOut:Play()
			fadeOut.Completed:Wait()
		end
		TweenService:Create(statusText, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{ TextTransparency = 0 }):Play()
	end

	task.wait(0.2)
	TweenService:Create(statusText, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{ TextTransparency = 0 }):Play()

	local statsContainer = Instance.new("Frame", frame)
	statsContainer.Size = UDim2.new(0.7, 0, 0.05, 0)
	statsContainer.Position = UDim2.new(0.5, 0, 0.82, 0)
	statsContainer.AnchorPoint = Vector2.new(0.5, 0.5)
	statsContainer.BackgroundTransparency = 1

	local levelText = makeLabel(statsContainer, UDim2.new(0, 0, 0, 0), UDim2.new(0.33, 0, 1, 0))
	local gemsText = makeLabel(statsContainer, UDim2.new(0.335, 0, 0, 0), UDim2.new(0.33, 0, 1, 0))
	local moneyText = makeLabel(statsContainer, UDim2.new(0.67, 0, 0, 0), UDim2.new(0.33, 0, 1, 0))

	local lastGems, lastMoney, lastLevel

	local updateStats = function()
		local d = player:FindFirstChild("Data")
		if not d then return end
		local levelVal = d.Level.Value
		local gemsVal = d.Gems.Value
		local moneyVal = d.Money.Value
		if levelVal ~= lastLevel then
			levelText.Text = "Level: " .. tostring(levelVal)
			lastLevel = levelVal
		end
		if gemsVal ~= lastGems then
			gemsText.Text = "Gems: " .. formatNumber(gemsVal)
			lastGems = gemsVal
		end
		if moneyVal ~= lastMoney then
			moneyText.Text = "Money: " .. formatNumber(moneyVal)
			lastMoney = moneyVal
		end
	end

	local playerData = player:FindFirstChild("Data")
	if playerData then
		playerData.Level:GetPropertyChangedSignal("Value"):Connect(updateStats)
		playerData.Gems:GetPropertyChangedSignal("Value"):Connect(updateStats)
		playerData.Money:GetPropertyChangedSignal("Value"):Connect(updateStats)
	end
	updateStats()

	local updateLoop = task.spawn(function()
		while true do
			task.wait(5)
			pcall(updateStats)
		end
	end)

	task.wait(0.2)
	TweenService:Create(levelText, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{ TextTransparency = 0 }):Play()
	task.wait(0.1)
	TweenService:Create(gemsText, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{ TextTransparency = 0 }):Play()
	task.wait(0.1)
	TweenService:Create(moneyText, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{ TextTransparency = 0 }):Play()

	local discordText = Instance.new("TextLabel", frame)
	discordText.Text = "discord.gg/ggcmEa925C"
	discordText.Font = Enum.Font.GothamMedium
	discordText.TextColor3 = Color3.fromRGB(150, 150, 170)
	discordText.TextSize = 14
	discordText.TextTransparency = 0.3
	discordText.BackgroundTransparency = 1
	discordText.AnchorPoint = Vector2.new(0, 1)
	discordText.Position = UDim2.new(0.02, 0, 0.98, 0)
	discordText.Size = UDim2.new(0.3, 0, 0.05, 0)
	discordText.TextXAlignment = Enum.TextXAlignment.Left
	discordText.TextScaled = true

	task.wait(0.8)
	TweenService:Create(discordText, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{ TextTransparency = 0 }):Play()

	if setclipboard then
		setclipboard("discord.gg/ggcmEa925C")
	elseif toclipboard then
		toclipboard("discord.gg/ggcmEa925C")
	end

	screenGui.Destroying:Connect(function()
		if updateLoop then task.cancel(updateLoop) end
	end)
end

repeat task.wait() until game.Players.LocalPlayer

if getgenv().LowCPU then
	loadstring([[
		local g = game
		local l = g:GetService("Lighting")
		pcall(function()
			settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
			settings():GetService("RenderSettings").EagerBulkExecution = false
		end)
		g.DescendantAdded:Connect(function(o)
			local c = o.ClassName
			if c == "ParticleEmitter" or c == "Trail" then
				o.Enabled = false
			elseif c == "Explosion" then
				o.BlastPressure = 0; o.BlastRadius = 0
			elseif c == "Decal" or c == "Texture" then
				o:Destroy()
			end
		end)
		l.GlobalShadows = false
		l.FogEnd = 9e9
		l.Brightness = 0
		l.EnvironmentDiffuseScale = 0
		l.EnvironmentSpecularScale = 0
		for _, v in ipairs(l:GetChildren()) do
			if v:IsA("PostEffect") then v.Enabled = false end
		end
		workspace.ClientAnimatorThrottling = Enum.ClientAnimatorThrottlingMode.Enabled
		workspace.InterpolationThrottling = Enum.InterpolationThrottlingMode.Enabled
		local r = g.ReplicatedStorage.RemoteEvents.SettingsToggle
		for _, v in ipairs({"DisableVFX","DisableCutscene","DisableOtherVFX","DisableScreenShake","RemoveTexture","RemoveShadows","MuteSFX","MuteMusic","DisablePvP"}) do
			r:FireServer(v, true)
		end
		for i, v in pairs(g:GetDescendants()) do
			if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
				v.Material = "Plastic"; v.Reflectance = 0
			elseif (v:IsA("Decal") or v:IsA("Texture")) then
				v.Transparency = 1
			elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
				v.Lifetime = NumberRange.new(0)
			elseif v:IsA("Explosion") then
				v.BlastPressure = 1; v.BlastRadius = 1
			elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
				v.Enabled = false
			end
		end
		pcall(function() g.Lighting.LightingLayers:Destroy() end)
		pcall(function() g.Lighting.Sky:Destroy() end)
		g.Lighting.FogEnd = 9e9
		for i, v in next, workspace:GetDescendants() do
			pcall(function() v.Transparency = 1 end)
		end
		for i, v in next, getnilinstances() do
			pcall(function()
				v.Transparency = 1
				for i1, v1 in next, v:GetDescendants() do v1.Transparency = 1 end
			end)
		end
		workspace.DescendantAdded:Connect(function(v)
			pcall(function() v.Transparency = 1 end)
		end)
	]])()
end

setfpscap(getgenv().Studio["Sailor Piece"]["Lock Fps"])

local _nguoitinhcuaeZ = (function()
	local Players = game:GetService("Players")
	local TweenService = game:GetService("TweenService")
	local TeleportService = game:GetService("TeleportService")
	local RS = game:GetService("ReplicatedStorage")
	local CoreGui = game:GetService("CoreGui")
	local Workspace = game:GetService("Workspace")

	if typeof(cloneref) == "function" then
		Players = cloneref(Players)
		TweenService = cloneref(TweenService)
		TeleportService = cloneref(TeleportService)
		RS = cloneref(RS)
		CoreGui = cloneref(CoreGui)
		Workspace = cloneref(Workspace)
	end

	local plr = Players.LocalPlayer
	local character = plr.Character or plr.CharacterAdded:Wait()
	local RemoteEvents = RS:WaitForChild("RemoteEvents")
	local Remotes = RS:WaitForChild("Remotes")
	local AbilityRemotes = RS:WaitForChild("AbilitySystem"):WaitForChild("Remotes")
	local CombatRemotes = RS:WaitForChild("CombatSystem"):WaitForChild("Remotes")
	local Config = getgenv().Studio["Sailor Piece"]
	local Hop = Config["Hop Server"]
	local Change = Config["Change Account"]
	local Items = Config["Items"]
	local Maxlvl = Config["If Max Level"]
	local Reroll = Config["Reroll"]
	local Use = Config["Use Skill"]
	local Melee = Config["Use Melee"]

	local tw = nil
	local CACHED_WEAPON = nil
	local CAN_UPSTAT = true
	local SPAWN_POINT = nil
	local INVENTORY_LOADED = false
	local targetPos = nil
	local tweens = TweenService
	local Yummytool = false
	local lastInventoryRefresh = 0

	local StatusCache = { Buso = false, Obs = false, Hogyoku = false, Slime = false, Dungeon = false, LastUpdate = 0 }
	local nguoitinhcuae = {
		Inventory = {
			["Items"] = {},
			["Melee"] = {},
			["Sword"] = {},
			["Power"] = {},
			["Accessories"] = {},
			["Runes"] = {},
			["Auras"] = {},
			["Cosmetics"] = {},
		},
	}

	local QuestData = {
		Bunny          = { "Easter", Vector3.new(2306, 6, 2225) },
		Thief          = { "Starter", Vector3.new(181, 31, -155), 1 },
		Monkey         = { "Jungle", Vector3.new(-569, 23, 400), 3 },
		DesertBandit   = { "Desert", Vector3.new(-795, 24, -434), 5 },
		FrostRogue     = { "Snow", Vector3.new(-412, 18, -991), 7 },
		Sorcerer       = { "Shibuya", Vector3.new(1422, 9, 376), 9 },
		Hollow         = { "HollowIsland", Vector3.new(-354, 32, 1071), 11 },
		Curse          = { "Shinjuku", Vector3.new(-41, 38, -1926), 13 },
		Slime          = { "Slime", Vector3.new(-1182, 18, 339), 14 },
		AcademyTeacher = { "Academy", Vector3.new(1029, 1, 1246), 15 },
		Swordsman      = { "Judgement", Vector3.new(-1166, 3, -1193), 16 },
		Quincy         = { "SoulDominion", Vector3.new(-1346, 1604, 1591), 17 },
		Ninja          = { "Ninja", Vector3.new(-1879, 9, -740), 18 },
		ArenaFighter   = { "Lawless", Vector3.new(49, 0, 1809), 19 },
	}

	local BossData = {
		YujiBoss                      = { "Shibuya", Vector3.new(1529, 8, 198) },
		SukunaBoss                    = { "Shibuya", Vector3.new(1529, 8, 198) },
		GojoBoss                      = { "Shibuya", Vector3.new(1529, 8, 198) },
		AizenBoss                     = { "HollowIsland", Vector3.new(-546, -1, 1215) },
		JinwooBoss                    = { "Sailor", Vector3.new(241, 8, 886) },
		AlucardBoss                   = { "Sailor", Vector3.new(241, 8, 886) },
		QuiShiBoss                    = { "Boss", Vector3.new(825, 24, -1088) },
		SaberBoss                     = { "Boss", Vector3.new(825, 24, -1088) },
		IchigoBoss                    = { "Boss", Vector3.new(825, 24, -1088) },
		GilgameshBoss                 = { "Boss", Vector3.new(825, 24, -1088) },
		SaberAlterBoss                = { "Boss", Vector3.new(825, 24, -1088) },
		BlessedMaidenBoss             = { "Boss", Vector3.new(825, 24, -1088) },
		RimuruBoss_Normal             = { "Slime", Vector3.new(391, 4, -2382) },
		StrongestofTodayBoss_Normal   = { "Shinjuku", Vector3.new(140, 3, -2436) },
		StrongestinHistoryBoss_Normal = { "Shinjuku", Vector3.new(615, 3, -2317) },
		AnosBoss                      = { "Academy", Vector3.new(935, 1, 1333) },
		TrueAizenBoss_Normal          = { "SoulDominion", Vector3.new(-1204, 1604, 1766) },
		StrongestShinobiBoss          = { "Ninja", Vector3.new(-2105, 13, -596) },
		AtomicBoss                    = { "Lawless", Vector3.new(71, 3, 1946) },
		YamatoBoss                    = { "Judgement", Vector3.new(-1166, 3, -1193) },
		MoonSlayerBoss                = { "Boss", Vector3.new(825, 24, -1088) },
		IceQueenBoss                  = { "Boss", Vector3.new(825, 24, -1088) },
		GreatMageBoss                 = { "Easter", Vector3.new(2306, 6, 2225) },
	}

	local BossDungeon = {
		YujiBoss    = { "Shibuya", Vector3.new(1529, 8, 198) },
		SukunaBoss  = { "Shibuya", Vector3.new(1529, 8, 198) },
		GojoBoss    = { "Shibuya", Vector3.new(1529, 8, 198) },
		AizenBoss   = { "HollowIsland", Vector3.new(-546, -1, 1215) },
		JinwooBoss  = { "Sailor", Vector3.new(241, 8, 886) },
		AlucardBoss = { "Sailor", Vector3.new(241, 8, 886) },
		QuiShiBoss  = { "Boss", Vector3.new(825, 24, -1088) },
		SaberBoss   = { "Boss", Vector3.new(825, 24, -1088) },
		IchigoBoss  = { "Boss", Vector3.new(825, 24, -1088) }
	}

	local swordC = { "Ice Queen", "Dragon Goddess", "Atomic", "Great Mage", "Shadow Monarch", "True Aizen", "Yamato",
		"Escanor", "Rimuru", "Shadow", "Ichigo", "Aizen",
		"Ragna", "Jinwoo", "Gryphon", "Saber", "Dark Blade", "Katana" }
	local swordN = { "Ice Queen", "Dragon Goddess", "Atomic", "Great Mage", "Shadow Monarch", "True Manipulator",
		"Yamato", "Escanor", "Slime", "Shadow",
		"Soul Reaper", "Manipulator", "Ragna", "Solo Hunter", "Gryphon", "Excalibur", "Dark Blade", "Katana" }

	local codes = { "500KFAVORITES", "900MVISITSTYSMM", "900KLIKESTYYY", "LASTRESTARTHOPEFULLY", "SORRYFORBADSEA2QUEST",
		"BIGGESTUPDATEYET", "SEA2FINALLY", "4SPECS", "SEABEASTS", "GOODFREECODE", "850MVISITSWOAHH", "MOREGOODFREECODE",
		"OVER800KFOLLOWINSANE", "VERYSORRYFORTHEDELAYGUYS", "ALOTOFNEWCONTENTSEA2", "1MMEMBERSTYSMGUYS", "800KLIKESTYSM",
		"700MVISITSWOWW", "700KLIKESTYSM", "SORRYFORTHESEISSUES", "SORRYFORTRADELOCK", "FREECODE", "500MVISITSWOAHH",
		"ICEQUEEN", "600KLIKESTY" }

	local DebugPrint = function(...) print("[DEBUG]", ...) end

	local isAlive = function()
		local char = plr.Character
		if not char then return false end
		local hrp = char:FindFirstChild("HumanoidRootPart")
		local hum = char:FindFirstChildOfClass("Humanoid")
		return hrp and hum and hum.Health > 0
	end

	local cancel = function()
		if tw then
			pcall(function() tw:Cancel() end)
			tw = nil
		end
	end

	local tween = function(v, speed, high, teleport)
		if not isAlive() then
			cancel(); return nil
		end
		cancel()
		local char = plr.Character
		if not char then return nil end
		local rootPart = char:FindFirstChild("HumanoidRootPart")
		local hum = char:FindFirstChildOfClass("Humanoid")
		if not rootPart or not hum then return nil end
		hum.Sit = false
		hum.AutoRotate = false
		local pos
		if typeof(v) == "Vector3" then
			pos = Vector3.new(v.X, (high or v.Y), v.Z)
			v = CFrame.new(pos)
		elseif typeof(v) == "CFrame" then
			pos = Vector3.new(v.Position.X, (high or v.Position.Y), v.Position.Z)
			v = CFrame.new(pos) * (v - v.Position)
		end
		local rot = rootPart.CFrame - rootPart.Position
		local finalCFrame = CFrame.new(pos) * rot
		local distance = (rootPart.Position - pos).Magnitude
		local timeCalc = distance /
			((typeof(getgenv().Speed) == "number" and speed < math.huge and speed < 200) and getgenv().Speed or speed)
		local tweeninfo = TweenInfo.new(timeCalc, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
		if teleport then
			if targetPos then
				rootPart.CFrame = CFrame.new(pos, targetPos)
			else
				rootPart.CFrame = finalCFrame
			end
			return nil
		end
		if targetPos then
			tw = tweens:Create(rootPart, tweeninfo, { CFrame = CFrame.new(pos, targetPos) })
		else
			tw = tweens:Create(rootPart, tweeninfo, { CFrame = finalCFrame })
		end
		tw:Play()
		return tw
	end

	local Teleport = function(v)
		DebugPrint('[Task] Teleport | ' .. tostring(v))
		pcall(function() Remotes:WaitForChild("TeleportToPortal"):FireServer(v) end)
	end

	local UseSkill = function(a, b, c)
		pcall(function()
			if not c then
				AbilityRemotes:WaitForChild("RequestAbility"):FireServer(2, a)
				AbilityRemotes:WaitForChild("RequestAbility"):FireServer(1, a)
			else
				AbilityRemotes:WaitForChild("RequestAbility"):FireServer(2, a)
			end
			AbilityRemotes:WaitForChild("RequestAbility"):FireServer(2, a)
			AbilityRemotes:WaitForChild("RequestAbility"):FireServer(1, a)
			if b then
				AbilityRemotes:WaitForChild("RequestAbility"):FireServer(3, a)
				AbilityRemotes:WaitForChild("RequestAbility"):FireServer(4, a)
				AbilityRemotes:WaitForChild("RequestAbility"):FireServer(5, a)
			end
		end)
	end

	local CheckB = function(v)
		return workspace:FindFirstChild("NPCs") and workspace.NPCs:FindFirstChild(v) ~= nil
	end

	local refreshInventory = function()
		local t = os.clock()
		if t - lastInventoryRefresh < 1.5 then return end
		INVENTORY_LOADED = false
		local attempts = 0
		repeat
			pcall(function()
				Remotes:WaitForChild("RequestInventory"):FireServer()
				RS:WaitForChild("Remotes"):WaitForChild("GetAccessoryEquipped"):InvokeServer()
			end)
			attempts = attempts + 1
			task.wait(0.1)
		until INVENTORY_LOADED or attempts > 30
		if INVENTORY_LOADED then lastInventoryRefresh = os.clock() end
	end

	local getItem = function(item_type, item_name)
		local cat = nguoitinhcuae.Inventory[item_type]
		if not cat then return 0 end
		for _, v in ipairs(cat) do
			if v.name == item_name then return v.quantity end
		end
		return 0
	end

	local getItemNumber = function(item_type, item_name)
		refreshInventory()
		return getItem(item_type, item_name)
	end

	local getBestWeapon = function()
		for i = 1, #swordC do
			local vC = swordC[i]
			local vN = swordN[i]
			if not character:FindFirstChild(vN) then
				if getItem("Sword", vC) >= 1 then
					if not plr.Backpack:FindFirstChild(vN) then
						pcall(function() Remotes:WaitForChild("EquipWeapon"):FireServer("Equip", vC) end)
					end
					return vC
				end
			else
				return vC
			end
		end
		return "Combat"
	end

	local EquipCombat = function()
		local weapon = plr.Backpack:FindFirstChild("Combat") or character:FindFirstChild("Combat")
		if not weapon then
			pcall(function() Remotes:WaitForChild("EquipWeapon"):FireServer("Equip", "Combat") end)
		else
			character.Humanoid:EquipTool(weapon)
		end
	end

	local EquipMelee = function()
		local weapon = plr.Backpack:FindFirstChild("Strongest In History") or
			character:FindFirstChild("Strongest In History")
		if not weapon then
			pcall(function() Remotes:WaitForChild("EquipWeapon"):FireServer("Equip", "Strongest In History") end)
		else
			character.Humanoid:EquipTool(weapon)
		end
	end

	local EquipSword = function()
		if not CACHED_WEAPON then CACHED_WEAPON = getBestWeapon() end
		local idx = table.find(swordC, CACHED_WEAPON)
		local nameN = idx and swordN[idx] or CACHED_WEAPON
		if not character:FindFirstChild(nameN) then
			local wp = getBestWeapon()
			local wpIdx = table.find(swordC, wp)
			local wpN = wpIdx and swordN[wpIdx] or wp
			local tool = plr.Backpack:FindFirstChild(wpN)
			if tool then
				local hum = character:FindFirstChildOfClass("Humanoid")
				if hum then
					hum:EquipTool(tool)
					CACHED_WEAPON = wp
				end
			end
		end
	end

	local getQuest = function()
		local q = {}
		local level = plr.Data.Level.Value
		if level <= 249 then
			q.QuestName = "Thief"; q.MonsterName = "Thief"; q.MonsterCFrame = Vector3.new(170, 16, -215); q.QuestId = 1; q.Teleport =
			"Starter"
		elseif level <= 749 then
			q.QuestName = "Monkey"; q.MonsterName = "Monkey"; q.MonsterCFrame = Vector3.new(-518, -1, 433); q.QuestId = 3; q.Teleport =
			"Jungle"
		elseif level <= 1499 then
			q.QuestName = "Desert Bandit"; q.MonsterName = "DesertBandit"; q.MonsterCFrame = Vector3.new(-688, -2, -458); q.QuestId = 5; q.Teleport =
			"Desert"
		elseif level <= 2999 then
			q.QuestName = "Frost Rogue"; q.MonsterName = "FrostRogue"; q.MonsterCFrame = Vector3.new(-389, -2, -946); q.QuestId = 7; q.Teleport =
			"Snow"
		elseif level <= 5000 then
			q.QuestName = "Sorcerer"; q.MonsterName = "Sorcerer"; q.MonsterCFrame = Vector3.new(1421, 9, 373); q.QuestId = 9; q.Teleport =
			"Shibuya"
		elseif level <= 6250 then
			q.QuestName = "Hollow"; q.MonsterName = "Hollow"; q.MonsterCFrame = Vector3.new(-287, -3, 1038); q.QuestId = 11; q.Teleport =
			"HollowIsland"
		elseif level <= 7000 then
			q.QuestName = "Strong Sorcerer"; q.MonsterName = "StrongSorcerer"; q.MonsterCFrame = Vector3.new(624, 2,
				-1613); q.QuestId = 12; q.Teleport = "Shinjuku"
		elseif level <= 8000 then
			q.QuestName = "Curse"; q.MonsterName = "Curse"; q.MonsterCFrame = Vector3.new(-18, 2, -1984); q.QuestId = 13; q.Teleport =
			"Shinjuku"
		elseif level <= 9000 then
			q.QuestName = "Slime Warrior"; q.MonsterName = "Slime"; q.MonsterCFrame = Vector3.new(-1185, 18, 338); q.QuestId = 14; q.Teleport =
			"Slime"
		elseif level <= 10000 then
			q.QuestName = "Academy Challenge"; q.MonsterName = "AcademyTeacher"; q.MonsterCFrame = Vector3.new(1028, 1,
				1244); q.QuestId = 15; q.Teleport = "Academy"
		elseif level <= 10750 then
			q.QuestName = "Blade Master"; q.MonsterName = "Swordsman"; q.MonsterCFrame = Vector3.new(-1166, 3, -1191); q.QuestId = 16; q.Teleport =
			"Judgement"
		elseif level <= 11500 then
			q.QuestName = "Quincy Purge"; q.MonsterName = "Quincy"; q.MonsterCFrame = Vector3.new(-1407, 1603, 1644); q.QuestId = 17; q.Teleport =
			"SoulDominion"
		elseif level <= 12000 then
			q.QuestName = "Ninja Slayer"; q.MonsterName = "Ninja"; q.MonsterCFrame = Vector3.new(-1787, 7, -742); q.QuestId = 18; q.Teleport =
			"Ninja"
		elseif level <= 99999 then
			q.QuestName = "Arena Takedown"; q.MonsterName = "ArenaFighter"; q.MonsterCFrame = Vector3.new(67, -1, 1761); q.QuestId = 19; q.Teleport =
			"Lawless"
		end
		return q
	end

	local takeQuest = function(a)
		if not a then return end
		local questUI = plr.PlayerGui:WaitForChild("QuestUI"):WaitForChild("Quest")
		if questUI.Visible then
			pcall(function() RemoteEvents:WaitForChild("QuestAbandon"):FireServer("repeatable") end)
		end
		pcall(function() RemoteEvents:WaitForChild("QuestAccept"):FireServer("QuestNPC" .. a) end)
	end

	local GetQ = function()
		local questUI = plr.PlayerGui:WaitForChild("QuestUI"):WaitForChild("Quest")
		if questUI.Visible then return questUI.Quest.Holder.Content.QuestInfo.QuestTitle.QuestTitle.Text end
		return ""
	end

	local GetT = function()
		local questUI = plr.PlayerGui:WaitForChild("QuestUI"):WaitForChild("Quest")
		if questUI.Visible then return questUI.Quest.Holder.Content.QuestInfo.QuestRequirement.Text end
		return ""
	end

	local Clear = function(a, b)
		for _, v in next, workspace.NPCs:GetChildren() do
			if v.Name:find(a) and (not v.Name:find("Boss") or b) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and not v.Name:find("Dummy") then
				if not v.PrimaryPart and v.Humanoid and b then
					repeat
						task.wait(); tween(v:GetPivot(), 150)
					until v.PrimaryPart
				end
				repeat
					task.wait()
					if not v or not v.PrimaryPart or not v:FindFirstChild("Humanoid") then break end
					targetPos = v.PrimaryPart.CFrame.Position
					if v.PrimaryPart.Anchored == false then v.PrimaryPart.Anchored = true end
					pcall(function()
						if StatusCache.Buso and character:FindFirstChild("Right Arm") and character["Right Arm"].Color ~= Color3.new(0, 0, 0) then
							RemoteEvents:WaitForChild("HakiRemote"):FireServer("Toggle")
						end
					end)
					if Melee and getItem("Melee", "Strongest In History") >= 1 then
						EquipMelee()
						if b or plr.Data.Level.Value < 16000 then
							if not v or not v.PrimaryPart then break end
							tween(v.PrimaryPart.CFrame * CFrame.new(0, 10, 0), 150, nil, true)
							if not v or not v.PrimaryPart then break end
						else
							if not v or not v.PrimaryPart then break end
							tween(v.PrimaryPart.CFrame * CFrame.new(0, 0, 5), 150, nil, true)
							if not v or not v.PrimaryPart then break end
							if Use then UseSkill(v.PrimaryPart.CFrame.Position, false, true) end
						end
					else
						EquipSword()
						if not v or not v.PrimaryPart then break end
						tween(v.PrimaryPart.CFrame * CFrame.new(0, 15, 0), 150, nil, true)
						if not v or not v.PrimaryPart then break end
						if Use then UseSkill(v.PrimaryPart.CFrame.Position) end
					end
					if plr:DistanceFromCharacter(v.PrimaryPart.Position) <= 50 then
						if not b then
							for _, v2 in next, workspace.NPCs:GetChildren() do
								if v2.Name:find(a) and v2.PrimaryPart and plr:DistanceFromCharacter(v2.PrimaryPart.Position) <= 60 and v2.Humanoid.Health > 0 then
									pcall(function()
										CombatRemotes:WaitForChild("RequestHit"):FireServer(v2.PrimaryPart
											.CFrame.Position)
									end)
									pcall(function()
										CombatRemotes:WaitForChild("RequestHit"):FireServer(v2.PrimaryPart
											.CFrame.Position)
									end)
								end
							end
						else
							if v and v.PrimaryPart then
								pcall(function()
									CombatRemotes:WaitForChild("RequestHit"):FireServer(v.PrimaryPart
										.CFrame.Position)
								end)
								if Use then UseSkill(v.PrimaryPart.CFrame.Position, true) end
								pcall(function()
									CombatRemotes:WaitForChild("RequestHit"):FireServer(v.PrimaryPart
										.CFrame.Position)
								end)
							end
						end
					end
				until not v or not v.PrimaryPart or not v.Humanoid or v.Humanoid.Health == 0 or (not plr.PlayerGui.QuestUI.Quest.Visible and not b)
			end
		end
	end

	local NearMob = function(Mob)
		local d = QuestData[Mob]
		if not d then return end
		SetStatus('NearMob | ' .. Mob)
		DebugPrint('[Task] NearMob | ' .. Mob)
		local questUI = plr.PlayerGui:WaitForChild("QuestUI"):WaitForChild("Quest")
		if not questUI.Visible then
			takeQuest(d[3])
			task.wait(1)
		end
		if plr:DistanceFromCharacter(d[2]) >= 320 then Teleport(d[1]) else Clear(Mob) end
	end

	local NearBoss = function(Boss)
		local d = BossData[Boss]
		if not d then return end
		DebugPrint('[Task] NearBoss | ' .. Boss)
		if plr:DistanceFromCharacter(d[2]) >= 300 then Teleport(d[1]) end
		Clear(Boss, true)
	end

	local FarmItem = function(a, b)
		DebugPrint('[Task] FarmItem | ' .. a .. ' x' .. b)
		pcall(function() RemoteEvents:WaitForChild("QuestAbandon"):FireServer("repeatable") end)
		local attempts = 0
		repeat
			task.wait(0.5)
			NearMob("ArenaFighter")
			attempts = attempts + 1
		until getItem("Items", a) >= b or attempts > 1000
	end

	local FarmCurrency = function(a, b)
		DebugPrint('[Task] FarmCurrency | ' .. a .. ' -> ' .. b)
		pcall(function() RemoteEvents:WaitForChild("QuestAbandon"):FireServer("repeatable") end)
		local attempts = 0
		repeat
			task.wait(0.5)
			NearMob("ArenaFighter")
			attempts = attempts + 1
		until plr.Data[a].Value >= b or attempts > 1000
	end

	local UpdateBusoStatus = function()
		local StatusBuso = nil
		local connection = nil
		pcall(function()
			connection = RemoteEvents:WaitForChild("HakiRemote").OnClientEvent:Once(function(a, b)
				if a == "Status" then StatusBuso = b end
			end)
			RemoteEvents:WaitForChild("HakiRemote"):FireServer("GetStatus")
		end)
		local startTime = os.clock()
		while os.clock() - startTime < 2 do
			if StatusBuso ~= nil then break end
			task.wait(0.05)
		end
		if connection then connection:Disconnect() end
		StatusCache.Buso = StatusBuso and StatusBuso.hasHaki
		return StatusCache.Buso
	end

	local UpdateObsStatus = function()
		local StatusObs = nil
		local connection = nil
		pcall(function()
			connection = RemoteEvents:WaitForChild("ObservationHakiRemote").OnClientEvent:Once(function(s, d)
				if s == "Status" then StatusObs = d end
			end)
			RemoteEvents:WaitForChild("ObservationHakiRemote"):FireServer("GetStatus")
		end)
		local startTime = os.clock()
		while os.clock() - startTime < 2 do
			if StatusObs ~= nil then break end
			task.wait(0.05)
		end
		if connection then connection:Disconnect() end
		StatusCache.Obs = StatusObs and StatusObs.hasObsHaki
		return StatusCache.Obs
	end

	local UpdateHogyokuStatus = function()
		local checkRemote = Remotes:FindFirstChild("CheckPortalUnlock")
		if not checkRemote then
			StatusCache.Hogyoku = false; return false
		end
		local success, result = pcall(function() return checkRemote:InvokeServer("SoulDominion") end)
		StatusCache.Hogyoku = success and result == true
		return StatusCache.Hogyoku
	end

	local UpdateSlimeStatus = function()
		pcall(function() Remotes:WaitForChild("RequestSlimeCraft"):InvokeServer("SlimeKey", 1) end)
		task.wait(0.3)
		local playerGui = plr:WaitForChild("PlayerGui")
		for _, v in ipairs(playerGui:GetDescendants()) do
			if v:IsA("TextLabel") or v:IsA("TextButton") then
				local text = string.lower(v.Text)
				if text:find("obtained") or (text:find("missing") and text:find("slime")) then
					StatusCache.Slime = true; return true
				end
			end
		end
		StatusCache.Slime = false
		return false
	end

	local UpdateDungeonStatus = function()
		pcall(function() Remotes:WaitForChild("RequestDungeonPortal"):FireServer("CidDungeon") end)
		task.wait(0.3)
		local playerGui = plr:WaitForChild("PlayerGui")
		for _, v in ipairs(playerGui:GetDescendants()) do
			if v:IsA("TextLabel") or v:IsA("TextButton") then
				local text = string.lower(v.Text)
				if text:find("haven't unlocked dungeons") or text:find("have not unlocked dungeons") or text:find("you need level") then
					StatusCache.Dungeon = false; return false
				end
			end
		end
		pcall(function() Remotes:WaitForChild("LeaveDungeonPortal"):FireServer() end)
		StatusCache.Dungeon = true
		return true
	end

	local UpdateAllStatus = function()
		local currentTime = os.clock()
		if currentTime - StatusCache.LastUpdate < 5 then return end
		StatusCache.LastUpdate = currentTime
		UpdateBusoStatus(); task.wait(0.1)
		UpdateObsStatus(); task.wait(0.1)
		UpdateHogyokuStatus(); task.wait(0.1)
		UpdateSlimeStatus(); task.wait(0.1)
		UpdateDungeonStatus()
	end

	local BossFarm = function()
		for v, _ in pairs(BossData) do
			if CheckB(v) then
				DebugPrint('[Task] BossFarm | Found active boss: ' .. v)
				NearBoss(v); return
			end
		end
		local boss_key = getItem("Items", "Boss Key")
		if boss_key > 0 then
			if plr.Data.Money.Value >= 100000 then
				if plr.Data.Gems.Value >= 175 then
					DebugPrint('[Task] BossFarm | Summoning SaberBoss')
					if plr:DistanceFromCharacter(Vector3.new(825, 24, -1088)) >= 300 then Teleport("Boss") end
					pcall(function() Remotes:WaitForChild("RequestSummonBoss"):FireServer("SaberBoss") end)
				else
					DebugPrint('[Task] BossFarm | Farming gems for boss summon')
					FarmCurrency("Gems", 350)
				end
			else
				DebugPrint('[Task] BossFarm | Farming money for boss summon')
				FarmCurrency("Money", 200000)
			end
		else
			local success, stock = pcall(function()
				return Remotes:WaitForChild("MerchantRemotes"):WaitForChild("GetMerchantStock"):InvokeServer()
			end)
			if success and stock then
				for i, v in pairs(stock) do
					if i == "Boss Key" or i == "Race Reroll" or i == "Passive Shard" or i == "Trait Reroll" or i == "Clan Reroll" then
						local amount = math.floor(plr.Data.Gems.Value / v.price)
						if amount > 0 then
							DebugPrint('[Task] BossFarm | Buying ' .. i .. ' x' .. amount)
							pcall(function()
								Remotes:WaitForChild("MerchantRemotes"):WaitForChild("PurchaseMerchantItem")
									:InvokeServer(i, amount)
							end)
						end
						break
					end
				end
			end
			NearMob("ArenaFighter")
		end
	end

	local QuestGojov1 = function()
		if getItem("Melee", "Gojo") >= 1 then return end
		local currentQ = GetQ()
		if currentQ == "Limitless Sorcerer Training 1" then
			DebugPrint('[Task] QuestGojov1 | Training 1 - Kill Thieves')
			for Y, _ in pairs(QuestData) do NearMob(Y) end
		elseif currentQ == "Limitless Sorcerer Training 2" then
			DebugPrint('[Task] QuestGojov1 | Training 2 - Use Skills')
			EquipMelee()
			EquipSword()
			pcall(function()
				AbilityRemotes:WaitForChild("RequestAbility"):FireServer(1)
				AbilityRemotes:WaitForChild("RequestAbility"):FireServer(2)
				AbilityRemotes:WaitForChild("RequestAbility"):FireServer(3)
				AbilityRemotes:WaitForChild("RequestAbility"):FireServer(4)
			end)
		elseif currentQ == "Limitless Sorcerer Training Final" then
			DebugPrint('[Task] QuestGojov1 | Training Final - Boss')
			if CheckB("GojoBoss") then
				NearBoss("GojoBoss")
			elseif Hop then
				pcall(function() TeleportService:Teleport(77747658251236) end)
			else
				NearMob("ArenaFighter")
			end
			if not plr.PlayerGui.QuestUI.Quest.Visible then
				tween(Vector3.new(1740, 157, 516), 150).Completed:Wait()
				fireproximityprompt(workspace.ServiceNPCs.GojoMovesetNPC.HumanoidRootPart.QuestPrompt)
			end
		else
			DebugPrint('[Task] QuestGojov1 | Accept quest')
			tween(Vector3.new(1740, 157, 516), 150).Completed:Wait()
			fireproximityprompt(workspace.ServiceNPCs.GojoMovesetNPC.HumanoidRootPart.QuestPrompt)
		end
	end

	local Aizenv1 = function()
		if getItem("Sword", "Aizen") >= 1 then return end
		local currentQ = GetQ()
		if currentQ == "Manipulator Training 1" then
			DebugPrint('[Task] Aizenv1 | Training 1 - Kill Hollow')
			NearMob("Hollow")
		elseif currentQ == "Manipulator Training 2" then
			DebugPrint('[Task] Aizenv1 | Training 2 - Boss Farm')
			BossFarm()
		elseif currentQ == "Manipulator Training 3" then
			local wf = getItem("Items", "Worthiness Fragment")
			if wf >= 1 then
				DebugPrint('[Task] Aizenv1 | Training 3 - Use Worthiness Fragment')
				pcall(function() Remotes:WaitForChild("UseItem"):FireServer("Use", "Worthiness Fragment", 1, true) end)
			else
				DebugPrint('[Task] Aizenv1 | Training 3 - Farm Hollow for fragment')
				NearMob("Hollow")
			end
		elseif currentQ == "Manipulator Training 4" then
			DebugPrint('[Task] Aizenv1 | Training 4 - Boss Farm')
			BossFarm()
		elseif currentQ == "Manipulator Training Final" then
			DebugPrint('[Task] Aizenv1 | Training Final - Aizen Boss')
			if CheckB("AizenBoss") then
				NearBoss("AizenBoss")
			elseif Hop then
				pcall(function() TeleportService:Teleport(77747658251236) end)
			else
				NearMob("ArenaFighter")
			end
			if not plr.PlayerGui.QuestUI.Quest.Visible then
				tween(Vector3.new(-344, 13, 1403), 150).Completed:Wait()
				task.wait(0.5)
				fireproximityprompt(workspace.ServiceNPCs.AizenMovesetNPC.HumanoidRootPart.QuestPrompt)
			end
		else
			DebugPrint('[Task] Aizenv1 | Accept quest')
			tween(Vector3.new(-344, 13, 1403), 150).Completed:Wait()
			task.wait(0.5)
			fireproximityprompt(workspace.ServiceNPCs.AizenMovesetNPC.HumanoidRootPart.QuestPrompt)
		end
	end

	local Aizenv2 = function()
		if getItem("Sword", "True Aizen") >= 1 then return end
		local titleData = nil
		pcall(function() titleData = RS.Remotes.GetTitlesData:InvokeServer() end)
		local TranscendentBeing = false
		if titleData and titleData.unlocked then
			for _, title in ipairs(titleData.unlocked) do
				if title == "Transcendent Being" then
					TranscendentBeing = true; break
				end
			end
		end
		local ItemsAizen = getItem("Items", "Fusion Ring") >= 15 and getItem("Items", "Divinity Essence") >= 8 and
			getItem("Items", "Transcendent Core") >= 3 and getItem("Items", "Evolution Fragment") >= 1
		if TranscendentBeing and ItemsAizen then
			if getItem("Items", "Chrysalis Sigil") >= 75 then
				if plr.Data.Gems.Value >= 35000 then
					DebugPrint('[Task] Aizenv2 | Buying True Aizen')
					if plr:DistanceFromCharacter(Vector3.new(-1463, 1604, 1853)) >= 300 then Teleport("SoulDominion") end
					tween(Vector3.new(-1463, 1604, 1853), 150).Completed:Wait()
					fireproximityprompt(workspace.ServiceNPCs.TrueAizenBuyerNPC.HumanoidRootPart.BuyerPrompt)
				else
					DebugPrint('[Task] Aizenv2 | Farm gems for True Aizen purchase')
					BossFarm()
				end
			else
				DebugPrint('[Task] Aizenv2 | Farm Quincy for Chrysalis Sigil')
				NearMob("Quincy")
			end
		else
			if CheckB("TrueAizenBoss_Normal") then
				NearBoss("TrueAizenBoss_Normal")
			else
				if getItem("Items", "Chrysalis Sigil") >= 1 then
					DebugPrint('[Task] Aizenv2 | Spawn True Aizen Boss')
					pcall(function()
						RS:WaitForChild("RemoteEvents"):WaitForChild("RequestSpawnTrueAizen"):FireServer(
							"Normal")
					end)
				else
					DebugPrint('[Task] Aizenv2 | Farm Quincy for Chrysalis Sigil')
					NearMob("Quincy")
				end
			end
		end
	end

	local Anos = function()
		if getItem("Melee", "Anos") >= 1 then return end
		local titleData = nil
		pcall(function() titleData = RS.Remotes.GetTitlesData:InvokeServer() end)
		local DemonKing = false
		if titleData and titleData.unlocked then
			for _, title in ipairs(titleData.unlocked) do
				if title == "Demon King" then
					DemonKing = true; break
				end
			end
		end
		local ItemsDemonKing = getItem("Items", "Demonic Fragments") >= 12 and getItem("Items", "Demonic Shard") >= 6 and
			getItem("Items", "Destruction Eye") >= 2 and getItem("Items", "Imperial Mask") >= 1
		if DemonKing and ItemsDemonKing then
			if getItem("Items", "Calamity Seal") >= 65 then
				DebugPrint('[Task] Anos | Buying Anos Melee')
				if plr:DistanceFromCharacter(Vector3.new(973, 75, 1511)) >= 300 then Teleport("Academy") end
				tween(Vector3.new(973, 75, 1511), 150).Completed:Wait()
				fireproximityprompt(workspace.ServiceNPCs.AnosBuyerNPC.HumanoidRootPart.BuyerPrompt)
			else
				DebugPrint('[Task] Anos | Farm Academy for Calamity Seal')
				NearMob("AcademyTeacher")
			end
		else
			if CheckB("AnosBoss") then
				NearBoss("AnosBoss")
			else
				if getItem("Items", "Calamity Seal") >= 1 then
					DebugPrint('[Task] Anos | Spawn Anos Boss')
					pcall(function()
						RS:WaitForChild("Remotes"):WaitForChild("RequestSpawnAnosBoss"):FireServer("Anos",
							"Normal")
					end)
				else
					DebugPrint('[Task] Anos | Farm Academy for Calamity Seal')
					NearMob("AcademyTeacher")
				end
			end
		end
	end

	local ShinobiMelee = function()
		if getItem("Melee", "Strongest Shinobi") >= 1 then return end
		local titleData = nil
		pcall(function() titleData = RS.Remotes.GetTitlesData:InvokeServer() end)
		local BattlefieldWarlord = false
		if titleData and titleData.unlocked then
			for _, title in ipairs(titleData.unlocked) do
				if title == "Battlefield Warlord" then
					BattlefieldWarlord = true; break
				end
			end
		end
		local ItemsShinobi = getItem("Items", "Battle Sigil") >= 8 and getItem("Items", "Power Remnant") >= 15 and
			getItem("Items", "Eternal Core") >= 3 and getItem("Items", "Path Fragment") >= 1
		if BattlefieldWarlord and ItemsShinobi then
			if plr.Data.Gems.Value >= 40000 then
				DebugPrint('[Task] ShinobiMelee | Buying Shinobi Melee')
				if plr:DistanceFromCharacter(Vector3.new(-1774, 6, -386)) >= 300 then Teleport("Ninja") end
				tween(Vector3.new(-1774, 6, -386), 150).Completed:Wait()
				fireproximityprompt(workspace.ServiceNPCs.StrongestShinobiBuyerNPC.HumanoidRootPart.BuyerPrompt)
			else
				DebugPrint('[Task] ShinobiMelee | Farm gems for purchase')
				BossFarm()
			end
		else
			if CheckB("StrongestShinobiBoss") then
				NearBoss("StrongestShinobiBoss")
			elseif Hop then
				pcall(function() TeleportService:Teleport(77747658251236) end)
			else
				DebugPrint('[Task] ShinobiMelee | Farm Ninja mobs')
				NearMob("Ninja")
			end
		end
	end

	local SaberMelee = function()
		if getItem("Melee", "Saber Alter") >= 1 then return end
		local titleData = nil
		pcall(function() titleData = RS.Remotes.GetTitlesData:InvokeServer() end)
		local CorruptTyrant = false
		if titleData and titleData.unlocked then
			for _, title in ipairs(titleData.unlocked) do
				if title == "Corrupt Tyrant" then
					CorruptTyrant = true; break
				end
			end
		end
		local ItemsSaber = getItem("Items", "Alter Essence") >= 8 and getItem("Items", "Morgan Remnant") >= 15 and
			getItem("Items", "Corruption Core") >= 3 and getItem("Items", "Corrupt Crown") >= 1
		if CorruptTyrant and ItemsSaber then
			if getItem("Items", "Dark Grail") >= 25 and plr.Data.Gems.Value >= 35000 then
				DebugPrint('[Task] SaberMelee | Buying Saber Alter Melee')
				if plr:DistanceFromCharacter(Vector3.new(857, 61, -1015)) >= 300 then Teleport("Boss") end
				tween(Vector3.new(857, 61, -1015), 150).Completed:Wait()
				fireproximityprompt(workspace.ServiceNPCs.SaberAlterBuyerNPC.HumanoidRootPart.BuyerPrompt)
			else
				DebugPrint('[Task] SaberMelee | Farm for purchase requirements')
				BossFarm()
			end
		else
			if CheckB("SaberAlterBoss") then
				NearBoss("SaberAlterBoss")
			else
				if getItem("Items", "Dark Grail") >= 1 and plr.Data.Money.Value >= 650000 and plr.Data.Gems.Value >= 650 then
					DebugPrint('[Task] SaberMelee | Summon SaberAlter Boss')
					pcall(function()
						RS:WaitForChild("Remotes"):WaitForChild("RequestSummonBoss"):FireServer("SaberAlterBoss",
							"Normal")
					end)
				else
					DebugPrint('[Task] SaberMelee | Farm ArenaFighter')
					NearMob("ArenaFighter")
				end
			end
		end
	end

	local BlessedMelee = function()
		if getItem("Melee", "Blessed Maiden") >= 1 then return end
		local titleData = nil
		pcall(function() titleData = RS.Remotes.GetTitlesData:InvokeServer() end)
		local AstralEmpress = false
		if titleData and titleData.unlocked then
			for _, title in ipairs(titleData.unlocked) do
				if title == "Astral Empress" then
					AstralEmpress = true; break
				end
			end
		end
		local ItemsAstral = getItem("Items", "Gale Essence") >= 8 and getItem("Items", "Tide Remnant") >= 14 and
			getItem("Items", "Aero Core") >= 3 and getItem("Items", "Celestial Mark") >= 1
		if AstralEmpress and ItemsAstral then
			if getItem("Items", "Tempest Relic") >= 25 and plr.Data.Gems.Value >= 32500 then
				DebugPrint('[Task] BlessedMelee | Buying Blessed Maiden Melee')
				if plr:DistanceFromCharacter(Vector3.new(909, 9, -1184)) >= 300 then Teleport("Boss") end
				tween(Vector3.new(909, 9, -1184), 150).Completed:Wait()
				fireproximityprompt(workspace.ServiceNPCs.BlessedMaidenBuyerNPC.HumanoidRootPart.BuyerPrompt)
			else
				DebugPrint('[Task] BlessedMelee | Farm for purchase requirements')
				BossFarm()
			end
		else
			if CheckB("BlessedMaidenBoss") then
				NearBoss("BlessedMaidenBoss")
			else
				if getItem("Items", "Tempest Relic") >= 1 and plr.Data.Money.Value >= 600000 and plr.Data.Gems.Value >= 600 then
					DebugPrint('[Task] BlessedMelee | Summon BlessedMaiden Boss')
					pcall(function()
						RS:WaitForChild("Remotes"):WaitForChild("RequestSummonBoss"):FireServer("BlessedMaidenBoss",
							"Normal")
					end)
				else
					DebugPrint('[Task] BlessedMelee | Farm ArenaFighter')
					NearMob("ArenaFighter")
				end
			end
		end
	end

	local IceQueenSword = function()
		if getItem("Sword", "Ice Queen") >= 1 then return end
		local titleData = nil
		pcall(function() titleData = RS.Remotes.GetTitlesData:InvokeServer() end)
		local FrostEmpress = false
		if titleData and titleData.unlocked then
			for _, title in ipairs(titleData.unlocked) do
				if title == "Frost Empress" then
					FrostEmpress = true; break
				end
			end
		end
		local ItemsFrost = getItem("Items", "Glacier Essence") >= 9 and getItem("Items", "Battle Shard") >= 17 and
			getItem("Items", "Frozen Brand") >= 4 and getItem("Items", "Ice Core") >= 1
		if FrostEmpress and ItemsFrost then
			if getItem("Items", "Frost Relic") >= 25 and plr.Data.Gems.Value >= 40000 then
				DebugPrint('[Task] IceQueenSword | Buying Ice Queen Sword')
				if plr:DistanceFromCharacter(Vector3.new(928, 11, -1138)) >= 300 then Teleport("Boss") end
				tween(Vector3.new(928, 11, -1138), 150).Completed:Wait()
				fireproximityprompt(workspace.ServiceNPCs.IceQueenSeller.HumanoidRootPart.BuyerPrompt)
			else
				DebugPrint('[Task] IceQueenSword | Farm for purchase requirements')
				BossFarm()
			end
		else
			if CheckB("IceQueenBoss") then
				NearBoss("IceQueenBoss")
			else
				if getItem("Items", "Frost Relic") >= 1 and plr.Data.Money.Value >= 750000 and plr.Data.Gems.Value >= 750 then
					DebugPrint('[Task] IceQueenSword | Summon IceQueen Boss')
					pcall(function()
						RS:WaitForChild("Remotes"):WaitForChild("RequestSummonBoss"):FireServer("IceQueenBoss", "Normal")
					end)
				else
					DebugPrint('[Task] IceQueenSword | Farm ArenaFighter')
					NearMob("ArenaFighter")
				end
			end
		end
	end

	local GilgameshMelee = function()
		if getItem("Melee", "Gilgamesh") >= 1 then return end
		local titleData = nil
		pcall(function() titleData = RS.Remotes.GetTitlesData:InvokeServer() end)
		local GoldenKing = false
		if titleData and titleData.unlocked then
			for _, title in ipairs(titleData.unlocked) do
				if title == "Golden King" then
					GoldenKing = true; break
				end
			end
		end
		local ItemsGolden = getItem("Items", "Ancient Shard") >= 6 and getItem("Items", "Throne Remnant") >= 12 and
			getItem("Items", "Golden Essence") >= 3 and getItem("Items", "Phantasm Core") >= 1
		if GoldenKing and ItemsGolden then
			if plr.Data.Money.Value >= 25000000 and plr.Data.Gems.Value >= 22500 then
				DebugPrint('[Task] GilgameshMelee | Buying Gilgamesh Melee')
				if plr:DistanceFromCharacter(Vector3.new(843, 65, -1005)) >= 300 then Teleport("Boss") end
				tween(Vector3.new(843, 65, -1005), 150).Completed:Wait()
				fireproximityprompt(workspace.ServiceNPCs.GilgameshBuyerNPC.HumanoidRootPart.BuyerPrompt)
			else
				DebugPrint('[Task] GilgameshMelee | Farm for purchase requirements')
				BossFarm()
			end
		else
			if CheckB("GilgameshBoss") then
				NearBoss("GilgameshBoss")
			else
				if getItem("Items", "Divine Grail") >= 1 and plr.Data.Money.Value >= 500000 and plr.Data.Gems.Value >= 500 then
					DebugPrint('[Task] GilgameshMelee | Summon Gilgamesh Boss')
					pcall(function() RS.Remotes.RequestSummonBoss:FireServer("GilgameshBoss", "Normal") end)
				else
					local broken_sword = getItem("Items", "Broken Sword")
					if broken_sword >= 3 then
						DebugPrint('[Task] GilgameshMelee | Craft Divine Grail')
						pcall(function() RS.Remotes.RequestGrailCraft:InvokeServer("DivineGrail", 1) end)
					else
						DebugPrint('[Task] GilgameshMelee | Farm ArenaFighter for Broken Sword')
						NearMob("ArenaFighter")
					end
				end
			end
		end
	end

	local MoonSlayer = function()
		if getItem("Melee", "Moon Slayer") >= 1 then return end
		local titleData = nil
		pcall(function() titleData = RS.Remotes.GetTitlesData:InvokeServer() end)
		local SixEyedDemon = false
		if titleData and titleData.unlocked then
			for _, title in ipairs(titleData.unlocked) do
				if title == "Six Eyed Demon" then
					SixEyedDemon = true; break
				end
			end
		end
		local ItemsSixEyedDemon = getItem("Items", "Upper Seal") >= 25 and getItem("Items", "Lunar Essence") >= 9 and
			getItem("Items", "Demon Remnant") >= 16 and getItem("Items", "Crescent Shard") >= 4 and
			getItem("Items", "Moon Crest") >= 1
		if SixEyedDemon and ItemsSixEyedDemon then
			if plr.Data.Gems.Value >= 37500 then
				DebugPrint('[Task] MoonSlayer | Buying Moon Slayer Melee')
				if plr:DistanceFromCharacter(Vector3.new(823, 10, -1244)) >= 300 then Teleport("Boss") end
				tween(Vector3.new(823, 10, -1244), 150).Completed:Wait()
				fireproximityprompt(workspace.ServiceNPCs.MoonSlayerSeller.HumanoidRootPart.BuyerPrompt)
			else
				DebugPrint('[Task] MoonSlayer | Farm gems for purchase')
				BossFarm()
			end
		else
			if CheckB("MoonSlayerBoss") then
				NearBoss("MoonSlayerBoss")
			else
				if getItem("Items", "Upper Seal") >= 1 and plr.Data.Money.Value >= 700000 and plr.Data.Gems.Value >= 700 then
					DebugPrint('[Task] MoonSlayer | Summon MoonSlayer Boss')
					pcall(function()
						game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RequestSummonBoss")
							:FireServer("MoonSlayerBoss", "Normal")
					end)
				else
					DebugPrint('[Task] MoonSlayer | Farm ArenaFighter')
					NearMob("ArenaFighter")
				end
			end
		end
	end

	local Alucard = function()
		if getItem("Melee", "Alucard") >= 1 then return end
		local titleData = nil
		pcall(function() titleData = RS.Remotes.GetTitlesData:InvokeServer() end)
		local VampireKing = false
		if titleData and titleData.unlocked then
			for _, title in ipairs(titleData.unlocked) do
				if title == "Vampire King" then
					VampireKing = true; break
				end
			end
		end
		local ItemsVampireKing = getItem("Items", "Soul Amulet") >= 5 and getItem("Items", "Blood Ring") >= 1 and
			getItem("Items", "Casull") >= 1
		if VampireKing and ItemsVampireKing then
			if plr.Data.Gems.Value >= 10000 and plr.Data.Money.Value >= 6500000 then
				DebugPrint('[Task] Alucard | Buying Vampire King Melee')
				if plr:DistanceFromCharacter(Vector3.new(473, 3, 1038)) >= 300 then Teleport("Sailor") end
				tween(Vector3.new(473, 3, 1038), 150).Completed:Wait()
				fireproximityprompt(workspace.ServiceNPCs.AlucardBuyer.HumanoidRootPart.BuyerPrompt)
			else
				DebugPrint('[Task] Alucard | Farm for purchase requirements')
				BossFarm()
			end
		else
			if CheckB("AlucardBoss") then
				NearBoss("AlucardBoss")
			elseif Hop then
				pcall(function() TeleportService:Teleport(77747658251236) end)
			else
				DebugPrint('[Task] Alucard | Farm Academy')
				NearMob("AcademyTeacher")
			end
		end
	end

	local QuestShadowCidv1 = function()
		if getItem("Sword", "Shadow") >= 1 then return end
		local playerRace = nil
		pcall(function()
			local statsData = RemoteEvents:WaitForChild("GetPlayerStats"):InvokeServer()
			if statsData and statsData.Inventory and statsData.Inventory.Equipped then
				playerRace = statsData.Inventory.Equipped.Race
			end
		end)
		local ItemsShadow = getItem("Items", "Shadow Essence") >= 4 and getItem("Items", "Atomic Core") >= 1 and
			getItem("Items", "Umbral Capsule") >= 20 and getItem("Items", "Void Seed") >= 8
		if ItemsShadow then
			if playerRace ~= "Shadowborn" then
				for Y, _ in pairs(QuestData) do NearMob(Y) end
			else
				if plr.Data.Gems.Value >= 15000 and plr.Data.Money.Value >= 10000000 then
					DebugPrint('[Task] ShadowCidv1 | Buying Shadow Sword')
					if plr:DistanceFromCharacter(Vector3.new(1425, 49, -974)) >= 300 then Teleport("Dungeon") end
					tween(Vector3.new(1425, 49, -974), 150).Completed:Wait()
					fireproximityprompt(workspace.ServiceNPCs.CidBuyer.HumanoidRootPart.BuyerPrompt)
				else
					DebugPrint('[Task] ShadowCidv1 | Farm for purchase requirements')
					BossFarm()
				end
			end
		else
			if getItem("Items", "Dungeon Key") >= 1 then
				if plr:DistanceFromCharacter(Vector3.new(1434, 2, -932)) >= 300 then Teleport("Dungeon") end
				if workspace:WaitForChild("ActiveDungeonPortal") then
					tween(Vector3.new(1434, 2, -932), 150, nil, true)
					task.wait(1)
					fireproximityprompt(workspace.ActiveDungeonPortal.JoinPrompt)
					task.wait(60)
				else
					DebugPrint('[Task] ShadowCidv1 | Running Cid Dungeon')
					pcall(function()
						if typeof(writefile) == "function" then writefile(plr.Name .. "Dungeon_Diff.txt", "Hard") end
						Remotes:WaitForChild("RequestDungeonPortal"):FireServer("CidDungeon")
					end)
					task.wait(60)
				end
			else
				DebugPrint('[Task] ShadowCidv1 | Farm ArenaFighter for Dungeon Key')
				NearMob("ArenaFighter")
			end
		end
	end

	local QuestShadowCidv2 = function()
		if getItem("Sword", "Atomic") >= 1 then return end
		local titleData = nil
		pcall(function() titleData = RS.Remotes.GetTitlesData:InvokeServer() end)
		local EminenceIncarnate = false
		if titleData and titleData.unlocked then
			for _, title in ipairs(titleData.unlocked) do
				if title == "Eminence Incarnate" then
					EminenceIncarnate = true; break
				end
			end
		end
		local ItemsEminenceIncarnate = getItem("Items", "Magic Shard") >= 16 and getItem("Items", "Shadow Remnant") >= 9 and
			getItem("Items", "Eminence Essence") >= 3 and getItem("Items", "Atomic Omen") >= 1
		if EminenceIncarnate and ItemsEminenceIncarnate then
			if getItem("Items", "Abyss Sigil") >= 80 then
				if plr.Data.Gems.Value >= 45000 then
					DebugPrint('[Task] ShadowCidv2 | Buying Atomic Sword')
					if plr:DistanceFromCharacter(Vector3.new(-173, 4, 1973)) >= 300 then Teleport("Lawless") end
					tween(Vector3.new(-173, 4, 1973), 150).Completed:Wait()
					fireproximityprompt(workspace.ServiceNPCs.AtomicBuyer.HumanoidRootPart.BuyerPrompt)
				else
					DebugPrint('[Task] ShadowCidv2 | Farm gems for Atomic purchase')
					BossFarm()
				end
			else
				DebugPrint('[Task] ShadowCidv2 | Farm ArenaFighter for Abyss Sigil')
				NearMob("ArenaFighter")
			end
		else
			if CheckB("AtomicBoss") then
				NearBoss("AtomicBoss")
			else
				if getItem("Items", "Abyss Sigil") >= 1 then
					DebugPrint('[Task] ShadowCidv2 | Spawn Atomic Boss')
					pcall(function() RemoteEvents:WaitForChild("RequestSpawnAtomic"):FireServer("Normal") end)
				else
					DebugPrint('[Task] ShadowCidv2 | Farm ArenaFighter for Abyss Sigil')
					NearMob("ArenaFighter")
				end
			end
		end
	end

	local QuestGojov2 = function()
		if getItem("Melee", "Strongest Of Today") >= 1 then return end
		local titleData = nil
		pcall(function() titleData = RS.Remotes.GetTitlesData:InvokeServer() end)
		local StrongestSorcerer = false
		if titleData and titleData.unlocked then
			for _, title in ipairs(titleData.unlocked) do
				if title == "Strongest Sorcerer" then
					StrongestSorcerer = true; break
				end
			end
		end
		local ItemsGojo = getItem("Items", "Reversal Pulse") >= 9 and getItem("Items", "Blue Singularity") >= 3 and
			getItem("Items", "Infinity Essence") >= 1 and getItem("Items", "Six Eye") >= 6
		if StrongestSorcerer and ItemsGojo then
			pcall(function() RS:WaitForChild("Remotes"):WaitForChild("UseItem"):FireServer("Use", "Six Eye", 6, true) end)
			DebugPrint('[Task] QuestGojov2 | Buying Strongest Of Today Melee')
			if plr:DistanceFromCharacter(Vector3.new(95, 152, -2634)) >= 300 then Teleport("Shinjuku") end
			tween(Vector3.new(95, 152, -2634), 150).Completed:Wait()
			fireproximityprompt(workspace.ServiceNPCs.StrongestofTodayBuyerNPC.HumanoidRootPart.BuyerPrompt)
		else
			if CheckB("StrongestofTodayBoss_Normal") then
				NearBoss("StrongestofTodayBoss_Normal")
			else
				if getItem("Items", "Limitless Key") >= 1 then
					DebugPrint('[Task] QuestGojov2 | Spawn StrongestToday Boss')
					pcall(function()
						Remotes:WaitForChild("RequestSpawnStrongestBoss"):FireServer("StrongestToday", "Normal")
					end)
				elseif CheckB("GojoBoss") then
					NearBoss("GojoBoss")
				elseif Hop then
					pcall(function() TeleportService:Teleport(77747658251236) end)
				else
					DebugPrint('[Task] QuestGojov2 | Farm ArenaFighter')
					NearMob("ArenaFighter")
				end
			end
		end
	end

	local QuestSukunav2 = function()
		if getItem("Melee", "Strongest In History") >= 1 then return end
		local titleData = nil
		pcall(function() titleData = RS.Remotes.GetTitlesData:InvokeServer() end)
		local DisgracedOne = false
		if titleData and titleData.unlocked then
			for _, title in ipairs(titleData.unlocked) do
				if title == "Disgraced One" then
					DisgracedOne = true; break
				end
			end
		end
		local ItemsSukuna = getItem("Items", "Vessel Ring") >= 7 and getItem("Items", "Malevolent Soul") >= 3 and
			getItem("Items", "Cursed Flesh") >= 1 and getItem("Items", "Awakened Cursed Finger") >= 20
		if DisgracedOne and ItemsSukuna then
			pcall(function()
				RS:WaitForChild("Remotes"):WaitForChild("UseItem"):FireServer("Use",
					"Awakened Cursed Finger", 20, true)
			end)
			DebugPrint('[Task] QuestSukunav2 | Buying Strongest In History Melee')
			if plr:DistanceFromCharacter(Vector3.new(757, 90, -1957)) >= 300 then Teleport("Shinjuku") end
			tween(Vector3.new(757, 90, -1957), 150).Completed:Wait()
			fireproximityprompt(workspace.ServiceNPCs.StrongestinHistoryBuyerNPC.HumanoidRootPart.BuyerPrompt)
		else
			if CheckB("StrongestinHistoryBoss_Normal") then
				NearBoss("StrongestinHistoryBoss_Normal")
			else
				if getItem("Items", "Malevolent Key") >= 1 then
					DebugPrint('[Task] QuestSukunav2 | Spawn StrongestHistory Boss')
					pcall(function()
						Remotes:WaitForChild("RequestSpawnStrongestBoss"):FireServer("StrongestHistory", "Normal")
					end)
				elseif CheckB("SukunaBoss") then
					NearBoss("SukunaBoss")
				elseif Hop then
					pcall(function() TeleportService:Teleport(77747658251236) end)
				else
					DebugPrint('[Task] QuestSukunav2 | Farm ArenaFighter')
					NearMob("ArenaFighter")
				end
			end
		end
	end

	local Slime = function()
		if getItem("Sword", "Rimuru") >= 1 then return end
		local titleData = nil
		pcall(function() titleData = RS.Remotes.GetTitlesData:InvokeServer() end)
		local DemonLord = false
		if titleData and titleData.unlocked then
			for _, title in ipairs(titleData.unlocked) do
				if title == "Demon Lord" then
					DemonLord = true; break
				end
			end
		end
		local ItemsDemonLord = getItem("Items", "Sage Pulse") >= 9 and getItem("Items", "Tempest Seal") >= 6 and
			getItem("Items", "Slime Remnant") >= 3 and getItem("Items", "Slime Core") >= 1
		if DemonLord and ItemsDemonLord then
			if plr.Data.Money.Value >= 30000000 and plr.Data.Gems.Value >= 20000 then
				DebugPrint('[Task] Slime | Buying Rimuru Sword')
				if plr:DistanceFromCharacter(Vector3.new(-1539, 4, 67)) >= 300 then Teleport("Slime") end
				tween(Vector3.new(-1539, 4, 67), 150).Completed:Wait()
				fireproximityprompt(workspace.ServiceNPCs.RimuruBuyer.HumanoidRootPart.BuyerPrompt)
			else
				DebugPrint('[Task] Slime | Farm for purchase requirements')
				BossFarm()
			end
		else
			if CheckB("RimuruBoss_Normal") then
				NearBoss("RimuruBoss_Normal")
			else
				if getItem("Items", "Slime Key") >= 1 then
					DebugPrint('[Task] Slime | Spawn Rimuru Boss')
					pcall(function() RS.RemoteEvents.RequestSpawnRimuru:FireServer("Normal") end)
				else
					local slime_shard = getItem("Items", "Slime Shard")
					if slime_shard >= 2 then
						DebugPrint('[Task] Slime | Craft Slime Key')
						pcall(function() RS.Remotes.RequestSlimeCraft:InvokeServer("SlimeKey", 1) end)
					else
						DebugPrint('[Task] Slime | Farm Slime mobs')
						NearMob("Slime")
					end
				end
			end
		end
	end

	local Yamato = function()
		if getItem("Sword", "Yamato") >= 1 then return end
		local titleData = nil
		pcall(function() titleData = RS.Remotes.GetTitlesData:InvokeServer() end)
		local BladeSovereign = false
		if titleData and titleData.unlocked then
			for _, title in ipairs(titleData.unlocked) do
				if title == "Blade Sovereign" then
					BladeSovereign = true; break
				end
			end
		end
		local ItemsBladeSovereign = getItem("Items", "Frozen Will") >= 14 and getItem("Items", "Yamato Essence") >= 7 and
			getItem("Items", "Silent Storm") >= 3 and getItem("Items", "Azure Heart") >= 1
		if BladeSovereign and ItemsBladeSovereign then
			if plr.Data.Gems.Value >= 30000 then
				DebugPrint('[Task] Yamato | Buying Yamato Sword')
				if plr:DistanceFromCharacter(Vector3.new(-1285, 92, -1000)) >= 300 then Teleport("Judgement") end
				tween(Vector3.new(-1285, 92, -1000), 150).Completed:Wait()
				fireproximityprompt(workspace.ServiceNPCs.YamatoBuyerNPC.HumanoidRootPart.BuyerPrompt)
			else
				DebugPrint('[Task] Yamato | Farm gems for purchase')
				BossFarm()
			end
		else
			if CheckB("YamatoBoss") then
				NearBoss("YamatoBoss")
			elseif Hop then
				pcall(function() TeleportService:Teleport(77747658251236) end)
			else
				DebugPrint('[Task] Yamato | Farm Swordsman mobs')
				NearMob("Swordsman")
			end
		end
	end

	local GreatMage = function()
		if getItem("Sword", "Great Mage") >= 1 then return end
		local titleData = nil
		pcall(function() titleData = RS.Remotes.GetTitlesData:InvokeServer() end)
		local AncientMage = false
		if titleData and titleData.unlocked then
			for _, title in ipairs(titleData.unlocked) do
				if title == "Ancient Mage" then
					AncientMage = true; break
				end
			end
		end
		local ItemsAncientMage = getItem("Items", "Spell Echo") >= 18 and getItem("Items", "Ancient Fragments") >= 10 and
			getItem("Items", "Magic Essence") >= 5 and getItem("Items", "Mana Core") >= 1
		if AncientMage and ItemsAncientMage then
			pcall(function() RS.RemoteEvents.TitleEquip:FireServer("Ancient Mage") end)
			if getItem("Items", "Easter Eggs") >= 900 then
				DebugPrint('[Task] GreatMage | Buying Great Mage Sword & Outfit')
				if plr:DistanceFromCharacter(Vector3.new(2437, 45, 2383)) >= 300 then Teleport("Easter") end
				tween(Vector3.new(2437, 45, 2383), 150).Completed:Wait()
				pcall(function()
					game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("EasterMerchantRemotes")
						:WaitForChild("PurchaseEasterMerchantItem"):InvokeServer("Mage Outfit", 1)
				end)
				fireproximityprompt(workspace.ServiceNPCs.GreatMageSeller.HumanoidRootPart.BuyerPrompt)
			else
				DebugPrint('[Task] GreatMage | Farm Bunny for Easter Eggs')
				NearMob("Bunny")
			end
		else
			if CheckB("GreatMageBoss") then
				NearBoss("GreatMageBoss")
			else
				if getItem("Items", "Easter Key") >= 1 then
					DebugPrint('[Task] GreatMage | Spawn GreatMage Boss')
					pcall(function()
						game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild(
							"RequestSpawnGreatMage"):FireServer("Normal")
					end)
				else
					DebugPrint('[Task] GreatMage | Farm Bunny for Easter Key')
					NearMob("Bunny")
				end
			end
		end
	end

	local QuestItems = function(v)
		if v == "Katana" then
			if getItem("Sword", "Katana") >= 1 then return true end
			DebugPrint('[Task] QuestItems | Getting Katana')
			tween(Vector3.new(105, 10, -263), 150).Completed:Wait()
			fireproximityprompt(workspace.ServiceNPCs.Katana.HumanoidRootPart.BuyerPrompt)
			return getItem("Sword", "Katana") >= 1
		elseif v == "Dark Blade" then
			if getItem("Sword", "Dark Blade") >= 1 then return true end
			DebugPrint('[Task] QuestItems | Getting Dark Blade')
			tween(Vector3.new(-133, 13, -1089), 150).Completed:Wait()
			fireproximityprompt(workspace.ServiceNPCs.DarkBladeNPC.HumanoidRootPart.BuyerPrompt)
			return getItem("Sword", "Dark Blade") >= 1
		elseif v == "Gryphon" then
			if getItem("Sword", "Gryphon") >= 1 then return true end
			DebugPrint('[Task] QuestItems | Getting Gryphon')
			if plr:DistanceFromCharacter(Vector3.new(1529, 8, 198)) >= 300 then Teleport("Shibuya") end
			tween(Vector3.new(1427, 9, 275), 150).Completed:Wait()
			fireproximityprompt(workspace.ServiceNPCs.GryphonBuyerNPC.HumanoidRootPart.BuyerPrompt)
			return getItem("Sword", "Gryphon") >= 1
		elseif v == "Observation" then
			UpdateObsStatus()
			if StatusCache.Obs then return true end
			DebugPrint('[Task] QuestItems | Getting Observation Haki')
			tween(Vector3.new(-715, 12, -525), 160).Completed:Wait()
			fireproximityprompt(workspace.ServiceNPCs.ObservationBuyer.HumanoidRootPart.ObservationHakiPrompt)
			task.wait(1)
			UpdateObsStatus()
			return StatusCache.Obs
		elseif v == "Yuji" then
			if getItem("Melee", "Yuji") >= 1 then return true end
			if getItem("Items", "Energy Core") >= 7 and getItem("Items", "Flash Impact") >= 3 and getItem("Items", "Divergent Pulse") >= 1 then
				DebugPrint('[Task] QuestItems | Buying Yuji Melee')
				if plr:DistanceFromCharacter(Vector3.new(1529, 8, 198)) >= 300 then Teleport("Shibuya") end
				tween(Vector3.new(1244, 137, 406), 150).Completed:Wait()
				fireproximityprompt(workspace.ServiceNPCs.YujiBuyerNPC.HumanoidRootPart.BuyerPrompt)
				return getItem("Melee", "Yuji") >= 1
			else
				DebugPrint('[Task] QuestItems | Farm for Yuji items')
				BossFarm()
				return false
			end
		elseif v == "Qin Shi" then
			if getItem("Melee", "Qin Shi") >= 1 then return true end
			if getItem("Items", "Boss Ticket") >= 250 then
				DebugPrint('[Task] QuestItems | Exchanging Qin Shi Melee')
				pcall(function() RS:WaitForChild("Remotes"):WaitForChild("ExchangeItem"):InvokeServer("Qin Shi") end)
				return getItem("Melee", "Qin Shi") >= 1
			else
				DebugPrint('[Task] QuestItems | Farm Boss Tickets for Qin Shi')
				BossFarm()
				return false
			end
		elseif v == "Ichigo" then
			if getItem("Sword", "Ichigo") >= 1 then return true end
			if getItem("Items", "Boss Ticket") >= 500 then
				DebugPrint('[Task] QuestItems | Exchanging Ichigo Sword')
				pcall(function() RS:WaitForChild("Remotes"):WaitForChild("ExchangeItem"):InvokeServer("Ichigo") end)
				return getItem("Sword", "Ichigo") >= 1
			else
				DebugPrint('[Task] QuestItems | Farm Boss Tickets for Ichigo')
				BossFarm()
				return false
			end
		elseif v == "Gojo v1" then
			if getItem("Items", "Limitless Ring") >= 3 and getItem("Items", "Infinity Core") >= 1 and getItem("Items", "Void Fragment") >= 6 then
				if plr.Data.Gems.Value >= 4000 and plr.Data.Money.Value >= 750000 then
					DebugPrint('[Task] QuestItems | Running Gojo v1 quest')
					pcall(function()
						RS:WaitForChild("RemoteEvents"):WaitForChild("QuestAbandon"):FireServer(
							"repeatable")
					end)
					QuestGojov1()
					return true
				else
					DebugPrint('[Task] QuestItems | Farm currency for Gojo v1')
					BossFarm()
					return false
				end
			else
				if CheckB("GojoBoss") then
					NearBoss("GojoBoss")
				elseif Hop then
					pcall(function() TeleportService:Teleport(77747658251236) end)
				else
					DebugPrint('[Task] QuestItems | Farm ArenaFighter for Gojo items')
					NearMob("ArenaFighter")
				end
				return false
			end
		elseif v == "Aizen v1" then
			if getItem("Items", "Mirage Pendant") >= 10 and getItem("Items", "Illusion Prism") >= 6 and getItem("Items", "Reiatsu Core") >= 3 and getItem("Items", "Hōgyoku Fragment") >= 1 then
				if plr.Data.Money.Value >= 6000000 and plr.Data.Gems.Value >= 10000 then
					DebugPrint('[Task] QuestItems | Running Aizen v1 quest')
					pcall(function()
						RS:WaitForChild("RemoteEvents"):WaitForChild("QuestAbandon"):FireServer(
							"repeatable")
					end)
					Aizenv1()
				else
					DebugPrint('[Task] QuestItems | Farm Quincy for currency')
					NearMob("Quincy")
				end
			else
				if CheckB("AizenBoss") then
					NearBoss("AizenBoss")
				elseif Hop then
					pcall(function() TeleportService:Teleport(77747658251236) end)
				else
					DebugPrint('[Task] QuestItems | Farm Quincy for Aizen items')
					NearMob("Quincy")
				end
			end
			return false
		elseif v == "Title" then
			local titleData = nil
			pcall(function() titleData = RS.Remotes.GetTitlesData:InvokeServer() end)
			local DestinyMarked = titleData and titleData.unlocked and
				table.find(titleData.unlocked, "Celestial Favor") ~= nil
			if DestinyMarked then
				DebugPrint('[Task] QuestItems | Equipping Celestial Favor title')
				pcall(function() RemoteEvents:WaitForChild("TitleEquip"):FireServer("Celestial Favor") end)
				return true
			else
				DebugPrint('[Task] QuestItems | Farm for Celestial Favor title')
				BossFarm()
				return false
			end
		elseif v == "Upgrading Luck" then
			local tree_data = nil
			pcall(function() tree_data = RS.RemoteEvents.GetSkillTreeData:InvokeServer() end)
			if not tree_data then return end
			local points = { 15, 25, 50, 75, 100 }
			for i, point in next, points do
				if not tree_data.Nodes["Luck_" .. i] then
					if tree_data.SkillPoints >= point then
						DebugPrint('[Task] QuestItems | Upgrading Luck node ' .. i)
						pcall(function() RS.RemoteEvents.SkillTreeUpgrade:FireServer("Luck_" .. i) end)
						break
					end
				end
			end
		elseif v == "Rank" then
			local requirements = nil
			pcall(function() requirements = RS.RemoteEvents.GetAscendData:InvokeServer().requirements end)
			if not requirements then return end
			for _, req in ipairs(requirements) do
				if not req.completed then
					DebugPrint('[Task] QuestItems | Rank req: ' .. req.display)
					if req.display:find("Cid Dungeon") or req.display:find("Atomic Core") then
						if getItem("Items", "Dungeon Key") > 0 then
							Teleport("Dungeon")
							local diff = "Hard"
							for _, z in next, { "Easy", "Medium", "Hard", "Extreme" } do
								if req.display:find(z) then
									diff = z; break
								end
							end
							if typeof(writefile) == "function" then writefile(plr.Name .. "_Dungeon_Diff.txt", diff) end
							pcall(function() Remotes.RequestDungeonPortal:FireServer("CidDungeon") end)
							task.wait(1)
							pcall(function() Remotes.StartDungeonPortal:FireServer() end)
							task.wait(60)
						else
							FarmItem("Dungeon Key", 1)
						end
					elseif req.display:find("Rune Dungeon") then
						if getItem("Items", "Dungeon Key") > 0 then
							Teleport("Dungeon")
							local diff = "Hard"
							for _, z in next, { "Easy", "Medium", "Hard", "Extreme" } do
								if req.display:find(z) then
									diff = z; break
								end
							end
							if typeof(writefile) == "function" then writefile(plr.Name .. "_Dungeon_Diff.txt", diff) end
							pcall(function() Remotes.RequestDungeonPortal:FireServer("RuneDungeon") end)
							task.wait(1)
							pcall(function() Remotes.StartDungeonPortal:FireServer() end)
							task.wait(60)
						else
							FarmItem("Dungeon Key", 1)
						end
					elseif req.display:find("Soul Flame") then
						if CheckB("IchigoBoss") then
							NearBoss("IchigoBoss")
						else
							local boss_key = getItem("Items", "Boss Key")
							if boss_key > 4 then
								if plr.Data.Money.Value >= 350000 then
									if plr.Data.Gems.Value >= 600 then
										if plr:DistanceFromCharacter(Vector3.new(825, 24, -1088)) >= 300 then
											Teleport(
												"Boss")
										end
										pcall(function() Remotes.RequestSummonBoss:FireServer("IchigoBoss") end)
									else
										FarmCurrency("Gems", 600)
									end
								else
									FarmCurrency("Money", 350000)
								end
							else
								local success, stock = pcall(function()
									return Remotes.MerchantRemotes.GetMerchantStock:InvokeServer().stock
								end)
								if success and stock then
									for itemName, itemInfo in pairs(stock) do
										if itemName == "Boss Key" or itemName == "Race Reroll" or itemName == "Passive Shard" or itemName == "Trait Reroll" or itemName == "Clan Reroll" then
											pcall(function()
												Remotes.MerchantRemotes.PurchaseMerchantItem:InvokeServer(itemName,
													math.floor(plr.Data.Gems.Value / itemInfo.price))
											end)
										end
									end
								end
								NearMob("Slime")
							end
						end
					elseif req.display:find("Limitless Ring") or req.display:find("Void Fragment") then
						if CheckB("GojoBoss") then
							NearBoss("GojoBoss")
						elseif Hop then
							pcall(function() TeleportService:Teleport(77747658251236) end)
						end
					elseif req.display:find("Dismantle Fang") then
						if CheckB("SukunaBoss") then
							NearBoss("SukunaBoss")
						elseif Hop then
							pcall(function() TeleportService:Teleport(77747658251236) end)
						end
					elseif req.display:find("Dark Ring") or req.display:find("Blood Ring") then
						if CheckB("JinwooBoss") then
							NearBoss("JinwooBoss")
						elseif CheckB("AlucardBoss") then
							NearBoss("AlucardBoss")
						elseif Hop then
							pcall(function() TeleportService:Teleport(77747658251236) end)
						end
					elseif req.display:find("Infinity Essence") then
						if CheckB("StrongestofTodayBoss_Normal") then
							NearBoss("StrongestofTodayBoss_Normal")
						else
							if getItem("Items", "Limitless Key") >= 1 then
								pcall(function() Remotes.RequestSpawnStrongestBoss:FireServer("StrongestToday", "Normal") end)
							elseif CheckB("GojoBoss") then
								NearBoss("GojoBoss")
							elseif Hop then
								pcall(function() TeleportService:Teleport(77747658251236) end)
							end
						end
					elseif req.display:find("Hōgyoku Fragment") or req.display:find("Reiatsu Core") then
						if CheckB("AizenBoss") then
							NearBoss("AizenBoss")
						elseif Hop then
							pcall(function() TeleportService:Teleport(77747658251236) end)
						end
					elseif req.display:find("Cursed Flesh") then
						if CheckB("StrongestinHistoryBoss_Normal") then
							NearBoss("StrongestinHistoryBoss_Normal")
						else
							if getItem("Items", "Malevolent Key") >= 1 then
								pcall(function()
									Remotes.RequestSpawnStrongestBoss:FireServer("StrongestHistory",
										"Normal")
								end)
							elseif CheckB("SukunaBoss") then
								NearBoss("SukunaBoss")
							elseif Hop then
								pcall(function() TeleportService:Teleport(77747658251236) end)
							end
						end
					elseif req.display:find("Deal") or req.display:find("Use abi") then
						NearMob("Slime")
					elseif req.display:find("Phantasm Core") then
						if CheckB("GilgameshBoss") then
							NearBoss("GilgameshBoss")
						else
							if getItem("Items", "Divine Grail") >= 1 then
								pcall(function() Remotes.RequestSummonBoss:FireServer("GilgameshBoss", "Normal") end)
							else
								local broken_sword = getItem("Items", "Broken Sword")
								if broken_sword >= 3 then
									pcall(function() Remotes.RequestGrailCraft:InvokeServer("DivineGrail", 1) end)
								else
									NearMob("Slime")
								end
							end
						end
					elseif req.display:find("Slime Core") then
						if CheckB("RimuruBoss") then
							NearBoss("RimuruBoss")
						else
							if getItem("Items", "Slime Key") >= 1 then
								pcall(function() RemoteEvents.RequestSpawnRimuru:FireServer("Normal") end)
							else
								local slime_shard = getItem("Items", "Slime Shard")
								if slime_shard >= 2 then
									pcall(function() Remotes.RequestSlimeCraft:InvokeServer("SlimeKey", 1) end)
								else
									NearMob("Slime")
								end
							end
						end
					end
					break
				end
			end
			pcall(function() RS.RemoteEvents.RequestAscend:FireServer() end)
		elseif v == "Farming Drops" then
			pcall(function() RS:WaitForChild("RemoteEvents"):WaitForChild("QuestAbandon"):FireServer("repeatable") end)
			for Y, _ in pairs(QuestData) do NearMob(Y) end
		end
	end

	local QuestBusoHaki = function()
		UpdateBusoStatus()
		if StatusCache.Buso then return true end
		CAN_UPSTAT = false
		local currentQ = GetQ()
		if currentQ == "Path to Haki 1" then
			DebugPrint('[Task] BusoHaki | Path 1 - Reset stats and kill Thieves')
			pcall(function() RemoteEvents:WaitForChild("ResetStats"):FireServer() end)
			task.wait(1)
			pcall(function() RemoteEvents:WaitForChild("AllocateStat"):FireServer("Melee", 500) end)
			task.wait(0.5)
			pcall(function() RemoteEvents:WaitForChild("AllocateStat"):FireServer("Defense", plr.Data.StatPoints.Value) end)
			Teleport("Starter")
			for _, v in next, workspace.NPCs:GetChildren() do
				if v.Name:find("Thief") and v.PrimaryPart and not v:FindFirstChild("Boss") then
					repeat
						targetPos = v.PrimaryPart.CFrame.Position
						task.wait()
						EquipCombat()
						tween(v.PrimaryPart.CFrame * CFrame.new(0, 30, 0), 170)
						if plr:DistanceFromCharacter(v.PrimaryPart.Position) <= 60 then
							pcall(function()
								CombatRemotes:WaitForChild("RequestHit"):FireServer(v.PrimaryPart.CFrame.Position)
							end)
						end
					until not v or not v.PrimaryPart or not v.Humanoid or v.Humanoid.Health == 0 or not plr.PlayerGui.QuestUI.Quest.Visible
					pcall(function() if v then v:Destroy() end end)
				end
			end
		elseif currentQ == "Path to Haki 2" then
			DebugPrint('[Task] BusoHaki | Path 2 - Use ability')
			EquipCombat()
			pcall(function() AbilityRemotes:WaitForChild("RequestAbility"):FireServer(1) end)
		elseif currentQ == "Path to Haki Final" then
			DebugPrint('[Task] BusoHaki | Path Final - Finish quest')
			EquipCombat()
			pcall(function() CombatRemotes:WaitForChild("RequestHit"):FireServer() end)
			task.wait(0.3)
			if not plr.PlayerGui.QuestUI.Quest.Visible then
				tween(Vector3.new(-494, 24, -1255), 150).Completed:Wait()
				fireproximityprompt(workspace.ServiceNPCs.HakiQuestNPC.HumanoidRootPart.HakiQuestPrompt)
				pcall(function() RemoteEvents:WaitForChild("ResetStats"):FireServer() end)
				CAN_UPSTAT = true
				UpdateBusoStatus()
				return StatusCache.Buso
			end
		else
			DebugPrint('[Task] BusoHaki | Accept quest')
			tween(Vector3.new(-494, 24, -1255), 150).Completed:Wait()
			fireproximityprompt(workspace.ServiceNPCs.HakiQuestNPC.HumanoidRootPart.HakiQuestPrompt)
		end
		return false
	end

	local DungeonDiscovery = function()
		UpdateDungeonStatus()
		if StatusCache.Dungeon then return true end
		local currentQ = GetQ()
		local currentT = GetT()
		if currentQ:find("Dungeon Discovery") then
			DebugPrint('[Task] DungeonDiscovery | Collecting puzzle piece: ' .. currentT)
			local puzzlePieces = {
				["0/6 Completed"] = function()
					tween(Vector3.new(89, 9, -138), 150).Completed:Wait(); task.wait(0.5)
					fireproximityprompt(workspace.StarterIsland.DungeonPuzzlePiece.PuzzlePrompt)
				end,
				["1/6 Completed"] = function()
					tween(Vector3.new(-396, 1, 510), 150).Completed:Wait(); task.wait(0.5)
					fireproximityprompt(workspace.JungleIsland.DungeonPuzzlePiece.PuzzlePrompt)
				end,
				["2/6 Completed"] = function()
					tween(Vector3.new(-1057, 6, -307), 150).Completed:Wait(); task.wait(0.5)
					fireproximityprompt(workspace.DesertIsland.DungeonPuzzlePiece.PuzzlePrompt)
				end,
				["3/6 Completed"] = function()
					tween(Vector3.new(-314, -3, -1188), 150).Completed:Wait(); task.wait(0.5)
					fireproximityprompt(workspace.SnowIsland.DungeonPuzzlePiece.PuzzlePrompt)
				end,
				["4/6 Completed"] = function()
					tween(Vector3.new(1717, 139, -26), 150).Completed:Wait(); task.wait(0.5)
					fireproximityprompt(workspace.ShibuyaStation.DungeonPuzzlePiece.PuzzlePrompt)
				end,
				["5/6 Completed"] = function()
					tween(Vector3.new(-684, 99, 1335), 150).Completed:Wait(); task.wait(0.5)
					fireproximityprompt(workspace.HollowIsland.DungeonPuzzlePiece.PuzzlePrompt)
				end,
			}
			if puzzlePieces[currentT] then puzzlePieces[currentT]() end
		elseif currentQ:find("Prove") then
			DebugPrint('[Task] DungeonDiscovery | Prove quest - fight boss')
			local foundBoss = false
			for v, _ in pairs(BossDungeon) do
				if CheckB(v) then
					NearBoss(v); foundBoss = true; break
				end
			end
			if not foundBoss then
				if CheckB("SaberBoss") then
					NearBoss("SaberBoss")
				elseif Hop then
					pcall(function() TeleportService:Teleport(77747658251236) end)
				else
					local boss_key = getItem("Items", "Boss Key")
					if boss_key > 0 then
						if plr.Data.Money.Value >= 100000 then
							if plr.Data.Gems.Value >= 175 then
								if plr:DistanceFromCharacter(Vector3.new(825, 24, -1088)) >= 300 then Teleport("Boss") end
								pcall(function() Remotes:WaitForChild("RequestSummonBoss"):FireServer("SaberBoss") end)
							else
								FarmCurrency("Gems", 350)
							end
						else
							FarmCurrency("Money", 200000)
						end
					else
						local success, stock = pcall(function()
							return Remotes:WaitForChild("MerchantRemotes"):WaitForChild("GetMerchantStock"):InvokeServer()
						end)
						if success and stock then
							for i, v in pairs(stock) do
								if i == "Boss Key" then
									local amount = math.floor(plr.Data.Gems.Value / v.price)
									if amount > 0 then
										pcall(function()
											Remotes:WaitForChild("MerchantRemotes"):WaitForChild("PurchaseMerchantItem")
												:InvokeServer("Boss Key", amount)
										end)
									end
									break
								end
							end
						end
						NearMob("Slime")
					end
				end
			end
			pcall(function() RS.RemoteEvents.QuestAbandon:FireServer("DungeonUnlock") end)
		else
			DebugPrint('[Task] DungeonDiscovery | Accept dungeon quest')
			pcall(function() game.ReplicatedStorage.Remotes.DungeonQuestAccept:FireServer() end)
		end
		return false
	end

	local SlimePuzzle = function()
		UpdateSlimeStatus()
		if StatusCache.Slime then return true end
		local currentQ = GetQ()
		local currentT = GetT()
		if currentQ:find("Slime Collection") then
			DebugPrint('[Task] SlimePuzzle | Collecting slime piece: ' .. currentT)
			local slimePieces = {
				["0/7 Completed"] = function()
					tween(Vector3.new(-852, 1, -322), 150).Completed:Wait(); task.wait(0.5)
					fireproximityprompt(workspace.DesertIsland.SlimePuzzlePiece.ProximityPrompt)
				end,
				["1/7 Completed"] = function()
					tween(Vector3.new(-433, 23, -1186), 150).Completed:Wait(); task.wait(0.5)
					fireproximityprompt(workspace.SnowIsland.SlimePuzzlePiece.ProximityPrompt)
				end,
				["2/7 Completed"] = function()
					tween(Vector3.new(65, 35, -145), 150).Completed:Wait(); task.wait(0.5)
					fireproximityprompt(workspace.StarterIsland.SlimePuzzlePiece.ProximityPrompt)
				end,
				["3/7 Completed"] = function()
					tween(Vector3.new(-584, 57, 318), 150).Completed:Wait(); task.wait(0.5)
					fireproximityprompt(workspace.JungleIsland.SlimePuzzlePiece.ProximityPrompt)
				end,
				["4/7 Completed"] = function()
					tween(Vector3.new(1748, 9, 495), 150).Completed:Wait(); task.wait(0.5)
					fireproximityprompt(workspace.ShibuyaStation.SlimePuzzlePiece.ProximityPrompt)
				end,
				["5/7 Completed"] = function()
					tween(Vector3.new(-434, 24, 1400), 150).Completed:Wait(); task.wait(0.5)
					fireproximityprompt(workspace.HollowIsland.SlimePuzzlePiece.ProximityPrompt)
				end,
				["6/7 Completed"] = function()
					tween(Vector3.new(788, 68, -2309), 150).Completed:Wait()
					task.wait(0.5)
					fireproximityprompt(workspace.ShinjukuIsland.SlimePuzzlePiece.ProximityPrompt)
					pcall(function() Remotes:WaitForChild("RequestSlimeCraft"):InvokeServer("SlimeKey", 1) end)
				end,
			}
			if slimePieces[currentT] then slimePieces[currentT]() end
		else
			DebugPrint('[Task] SlimePuzzle | Accept slime collection quest')
			pcall(function() RemoteEvents:WaitForChild("QuestAccept"):FireServer("SlimeCraftNPC") end)
		end
		return false
	end

	local HogyokuQuest = function()
		UpdateHogyokuStatus()
		if StatusCache.Hogyoku then return true end
		local currentQ = GetQ()
		local currentT = GetT()
		if currentQ:find("Hogyoku Fragments") then
			DebugPrint('[Task] HogyokuQuest | Collecting fragment: ' .. currentT)
			local fragments = {
				["0/6 Completed"] = function()
					tween(Vector3.new(-425, 60, -1236), 150).Completed:Wait(); task.wait(0.5)
					fireproximityprompt(workspace.HogyokuFragment1.HogyokuCollectPrompt)
				end,
				["1/6 Completed"] = function()
					tween(Vector3.new(1637, 90, 246), 150).Completed:Wait(); task.wait(0.5)
					fireproximityprompt(workspace.HogyokuFragment2.HogyokuCollectPrompt)
				end,
				["2/6 Completed"] = function()
					tween(Vector3.new(-636, 26, 1205), 150).Completed:Wait(); task.wait(0.5)
					fireproximityprompt(workspace.HogyokuFragment3.HogyokuCollectPrompt)
				end,
				["3/6 Completed"] = function()
					tween(Vector3.new(649, 138, -2071), 150).Completed:Wait(); task.wait(0.5)
					fireproximityprompt(workspace.HogyokuFragment4.HogyokuCollectPrompt)
				end,
				["4/6 Completed"] = function()
					tween(Vector3.new(-1206, 35, 463), 150).Completed:Wait(); task.wait(0.5)
					fireproximityprompt(workspace.HogyokuFragment5.HogyokuCollectPrompt)
				end,
				["5/6 Completed"] = function()
					tween(Vector3.new(-907, 19, -1260), 150).Completed:Wait(); task.wait(0.5)
					fireproximityprompt(workspace.HogyokuFragment6.HogyokuCollectPrompt)
				end,
			}
			if fragments[currentT] then fragments[currentT]() end
		else
			DebugPrint('[Task] HogyokuQuest | Accept Hogyoku quest')
			pcall(function() RemoteEvents:WaitForChild("QuestAccept"):FireServer("HogyokuQuestNPC") end)
		end
		return false
	end

	local Level = function()
		local quest = getQuest()
		if not quest or not quest.QuestName then return end
		SetStatus('Leveling | ' .. quest.QuestName .. ' | ' .. quest.Teleport)
		DebugPrint('[Status] Leveling | Lv.' ..
			plr.Data.Level.Value .. ' | ' .. quest.QuestName .. ' | ' .. quest.Teleport)
		local questUI = plr.PlayerGui:WaitForChild("QuestUI").Quest
		if questUI.Visible and questUI.Quest.Holder.Content.QuestInfo.QuestTitle.QuestTitle.Text:find(quest.QuestName) then
			local hasMobs = false
			for _, v in next, workspace.NPCs:GetChildren() do
				if v.Name:find(quest.MonsterName) and v.PrimaryPart then
					hasMobs = true; break
				end
			end
			if hasMobs then
				Clear(quest.MonsterName)
			else
				if plr:DistanceFromCharacter(quest.MonsterCFrame) >= 320 then
					Teleport(quest.Teleport)
				else
					tween(quest.MonsterCFrame, 150).Completed:Wait()
				end
				if SPAWN_POINT ~= quest.MonsterName then
					local crystal = nil
					local maxDist = math.huge
					for _, v in next, workspace:GetDescendants() do
						if v:IsA("Model") and v.Name:find("Crystal") and plr:DistanceFromCharacter(v:GetPivot().Position) < maxDist then
							crystal = v
							maxDist = plr:DistanceFromCharacter(v:GetPivot().Position)
						end
					end
					if crystal then
						if plr:DistanceFromCharacter(quest.MonsterCFrame) >= 320 then
							Teleport(quest.Teleport)
						else
							tween(crystal:GetPivot(), 150).Completed:Wait()
						end
						task.wait(1)
						for _, v in next, crystal:GetDescendants() do
							if v.Name:find("Prompt") and typeof(fireproximityprompt) == "function" then
								fireproximityprompt(v)
								SPAWN_POINT = quest.MonsterName
								break
							end
						end
					end
				end
			end
		else
			takeQuest(quest.QuestId)
		end
	end

	local DungeonQuest = function()
		task.spawn(function()
			local diff = "Easy"
			pcall(function()
				if typeof(isfile) == "function" and typeof(readfile) == "function" then
					local path = plr.Name .. "_Dungeon_Diff.txt"
					if isfile(path) then diff = readfile(path) end
				end
			end)
			pcall(function() Remotes:WaitForChild("DungeonWaveVote"):FireServer(diff) end)
			local success, ui = pcall(function()
				return plr.PlayerGui:WaitForChild("DungeonUI"):WaitForChild("ContentFrame"):WaitForChild("InfoFrame")
					:WaitForChild("KillsFrame"):WaitForChild("CurrentAmountOfEnemiesAliveThisWave")
			end)
			if success and ui and ui.Text:find("Victory") then
				SetStatus('Dungeon Victory | Teleporting back')
				DebugPrint('[Status] Dungeon Victory | Teleport back')
				pcall(function() TeleportService:Teleport(77747658251236) end)
			end
		end)
		task.spawn(function()
			for _, v in next, workspace.NPCs:GetChildren() do
				if v.Humanoid and v.Humanoid.Health > 0 then
					if not v.PrimaryPart and v.Humanoid then
						repeat
							task.wait(); tween(v:GetPivot(), 150)
						until v.PrimaryPart
					end
					repeat
						task.wait()
						targetPos = v.PrimaryPart.CFrame.Position
						if Melee and getItem("Melee", "Strongest In History") >= 1 then
							EquipMelee()
						else
							EquipSword()
						end
						pcall(function()
							if StatusCache.Buso and character:FindFirstChild("Right Arm") and character["Right Arm"].Color ~= Color3.new(0, 0, 0) then
								RemoteEvents:WaitForChild("HakiRemote"):FireServer("Toggle")
							end
						end)
						if not v.PrimaryPart then break end
						tween(v.PrimaryPart.CFrame * CFrame.new(0, 0, 5), 150, nil, true)
						if plr:DistanceFromCharacter(v.PrimaryPart.Position) <= 50 then
							pcall(function()
								CombatRemotes:WaitForChild("RequestHit"):FireServer(v.PrimaryPart.CFrame
									.Position)
							end)
							UseSkill(v.PrimaryPart.CFrame.Position, true)
							pcall(function()
								CombatRemotes:WaitForChild("RequestHit"):FireServer(v.PrimaryPart.CFrame
									.Position)
							end)
						end
					until not v or not v.PrimaryPart or not v.Humanoid or v.Humanoid.Health == 0
					break
				end
			end
		end)
	end

	pcall(function()
		Remotes:WaitForChild("UpdateInventory").OnClientEvent:Connect(function(items, data)
			nguoitinhcuae.Inventory[items] = data
			INVENTORY_LOADED = true
			lastInventoryRefresh = os.clock()
		end)
		Remotes:WaitForChild("RequestInventory"):FireServer()
	end)

	plr.CharacterAdded:Connect(function(v) character = v end)

	if typeof(getconnections) == "function" then
		pcall(function()
			for _, v in pairs(getconnections(plr.Idled)) do
				if v.Disable then v.Disable() elseif v.Disconnect then v.Disconnect() end
			end
		end)
	end

	game.NetworkClient.ChildRemoved:Connect(function()
		task.wait(5)
		pcall(function() TeleportService:Teleport(77747658251236) end)
	end)

	local promptOverlay = CoreGui:WaitForChild("RobloxPromptGui"):WaitForChild("promptOverlay")
	promptOverlay.ChildAdded:Connect(function(v)
		if v.Name == "ErrorPrompt" and v:FindFirstChild("MessageArea") and v.MessageArea:FindFirstChild("ErrorFrame") then
			pcall(function() TeleportService:Teleport(77747658251236) end)
		end
	end)

	local NoClip = function(obj)
		if obj:IsA("BasePart") then obj.CanCollide = false end
	end
	local noclipConnection = nil
	local setupNoClip = function()
		if noclipConnection then
			noclipConnection:Disconnect(); noclipConnection = nil
		end
		if character then
			for _, v in ipairs(character:GetDescendants()) do NoClip(v) end
			noclipConnection = character.DescendantAdded:Connect(NoClip)
		end
	end
	setupNoClip()
	plr.CharacterAdded:Connect(function(c)
		character = c; setupNoClip()
	end)

	task.spawn(function()
		while task.wait(0.5) do
			if game.PlaceId ~= 77747658251236 then
				DungeonQuest()
			else
				SPAWN_POINT = nil
				refreshInventory()
				local level = plr.Data.Level.Value
				local gem   = plr.Data.Gems.Value
				local money = plr.Data.Money.Value
				UpdateAllStatus()
				if level < 16000 then
					if getItem("Sword", "Katana") == 0 and money >= 2500 then
						SetStatus('Getting Katana | Lv.' .. level)
						DebugPrint('[Status] Getting Katana | Lv.' .. level)
						QuestItems("Katana")
					elseif getItem("Sword", "Dark Blade") == 0 and money >= 250000 and gem >= 150 then
						SetStatus('Getting Dark Blade | Lv.' .. level)
						DebugPrint('[Status] Getting Dark Blade | Lv.' .. level)
						QuestItems("Dark Blade")
					elseif getItem("Sword", "Gryphon") == 0 and money >= 650000 and gem >= 650 then
						SetStatus('Getting Gryphon | Lv.' .. level)
						DebugPrint('[Status] Getting Gryphon | Lv.' .. level)
						QuestItems("Gryphon")
					elseif not StatusCache.Buso and level >= 500 and money >= 250000 and gem >= 250 then
						SetStatus('Getting Buso Haki | Lv.' .. level)
						DebugPrint('[Status] Getting Buso Haki | Lv.' .. level)
						pcall(function()
							RS:WaitForChild("RemoteEvents"):WaitForChild("QuestAbandon"):FireServer(
								"repeatable")
						end)
						QuestBusoHaki()
					elseif not StatusCache.Obs and gem >= 300 and money >= 250000 then
						SetStatus('Getting Observation Haki | Lv.' .. level)
						DebugPrint('[Status] Getting Observation Haki | Lv.' .. level)
						QuestItems("Observation")
					elseif not StatusCache.Dungeon and level >= 5000 then
						SetStatus('Dungeon Discovery | Lv.' .. level)
						DebugPrint('[Status] Dungeon Discovery | Lv.' .. level)
						pcall(function()
							RS:WaitForChild("RemoteEvents"):WaitForChild("QuestAbandon"):FireServer(
								"repeatable")
						end)
						DungeonDiscovery()
					elseif not StatusCache.Slime and level >= 8000 then
						SetStatus('Slime Puzzle | Lv.' .. level)
						DebugPrint('[Status] Slime Puzzle | Lv.' .. level)
						pcall(function()
							RS:WaitForChild("RemoteEvents"):WaitForChild("QuestAbandon"):FireServer(
								"repeatable")
						end)
						SlimePuzzle()
					elseif not StatusCache.Hogyoku and level >= 8500 then
						SetStatus('Hogyoku Quest | Lv.' .. level)
						DebugPrint('[Status] Hogyoku Quest | Lv.' .. level)
						pcall(function()
							RS:WaitForChild("RemoteEvents"):WaitForChild("QuestAbandon"):FireServer(
								"repeatable")
						end)
						HogyokuQuest()
					else
						Level()
					end
				else
					local skillTreeData = nil
					local powerData     = nil
					local ascendData    = nil
					local titleData     = nil
					pcall(function() skillTreeData = RemoteEvents:WaitForChild("GetSkillTreeData"):InvokeServer() end)
					pcall(function() powerData = RemoteEvents:WaitForChild("PowerGetData"):InvokeServer() end)
					pcall(function() ascendData = RemoteEvents:WaitForChild("GetAscendData"):InvokeServer() end)
					pcall(function() titleData = RS.Remotes.GetTitlesData:InvokeServer() end)
					local skillTreeUnlocked = skillTreeData and skillTreeData.Unlocked
					local powerUnlocked     = powerData and powerData.Unlocked
					local ascendMaxed       = ascendData and ascendData.isMaxed
					if not skillTreeUnlocked and gem >= 1000 then
						SetStatus('Unlocking Skill Tree | Lv.' .. level)
						DebugPrint('[Status] Unlocking Skill Tree | Lv.' .. level)
						pcall(function() RemoteEvents:WaitForChild("SkillTreeUnlock"):FireServer() end)
					elseif not powerUnlocked and level >= 11500 and gem >= 5500 then
						SetStatus('Unlocking Power | Lv.' .. level)
						DebugPrint('[Status] Unlocking Power | Lv.' .. level)
						pcall(function() RemoteEvents:WaitForChild("PowerUnlock"):FireServer() end)
					elseif Maxlvl["Storage Race"] and (function()
							local ok, storage_data = pcall(function()
								return game.ReplicatedStorage.Remotes
									.GetStorageData:InvokeServer()
							end)
							if not ok or not storage_data then return false end
							local s = storage_data.UnlockedSlots
							return not s['RaceStorage1'] or not s['RaceStorage2'] or not s['RaceStorage3'] or
								not s['RaceStorage4']
						end)() and gem >= 10000 then
						SetStatus('Buying Race Storage | Lv.' .. level)
						DebugPrint('[Status] Buying Race Storage Slots | Lv.' .. level)
						pcall(function() game.ReplicatedStorage.Remotes.StorageBuySlot:FireServer("RaceStorage1") end)
						task.wait(1)
						pcall(function() game.ReplicatedStorage.Remotes.StorageBuySlot:FireServer("RaceStorage2") end)
						task.wait(1)
						pcall(function() game.ReplicatedStorage.Remotes.StorageBuySlot:FireServer("RaceStorage3") end)
						task.wait(1)
						pcall(function() game.ReplicatedStorage.Remotes.StorageBuySlot:FireServer("RaceStorage4") end)
					elseif Maxlvl["Storage Clan"] and (function()
							local ok, storage_data = pcall(function()
								return game.ReplicatedStorage.Remotes
									.GetStorageData:InvokeServer()
							end)
							if not ok or not storage_data then return false end
							local s = storage_data.UnlockedSlots
							return not s['ClanStorage1'] or not s['ClanStorage2'] or not s['ClanStorage3'] or
								not s['ClanStorage4']
						end)() and gem >= 50000 then
						SetStatus('Buying Clan Storage | Lv.' .. level)
						DebugPrint('[Status] Buying Clan Storage Slots | Lv.' .. level)
						pcall(function() game.ReplicatedStorage.Remotes.StorageBuySlot:FireServer("ClanStorage1") end)
						task.wait(1)
						pcall(function() game.ReplicatedStorage.Remotes.StorageBuySlot:FireServer("ClanStorage2") end)
						task.wait(1)
						pcall(function() game.ReplicatedStorage.Remotes.StorageBuySlot:FireServer("ClanStorage3") end)
						task.wait(1)
						pcall(function() game.ReplicatedStorage.Remotes.StorageBuySlot:FireServer("ClanStorage4") end)
					elseif getItem("Melee", "Yuji") == 0 and Items["Yuji Melee"] then
						SetStatus('Getting Yuji Melee | Lv.' .. level)
						DebugPrint('[Status] Getting Yuji Melee | Lv.' .. level)
						QuestItems("Yuji")
					elseif getItem("Melee", "Qin Shi") == 0 and Items["Qin Shi Melee"] then
						SetStatus('Getting Qin Shi Melee | Lv.' .. level)
						DebugPrint('[Status] Getting Qin Shi Melee | Lv.' .. level)
						QuestItems("Qin Shi")
					elseif getItem("Sword", "Ichigo") == 0 and Items["Ichigo Sword"] then
						SetStatus('Getting Ichigo Sword | Lv.' .. level)
						DebugPrint('[Status] Getting Ichigo Sword | Lv.' .. level)
						QuestItems("Ichigo")
					elseif titleData and titleData.equipped ~= "Celestial Favor" and Maxlvl["Get Full Title"] then
						SetStatus('Getting Celestial Favor Title | Lv.' .. level)
						DebugPrint('[Status] Getting Title Celestial Favor | Lv.' .. level)
						QuestItems("Title")
					elseif not ascendMaxed and Maxlvl["Upgrade Max Rank"] then
						SetStatus('Rank Up | Lv.' .. level)
						DebugPrint('[Status] Rank Up | Lv.' .. level)
						QuestItems("Rank")
					elseif getItem("Melee", "Strongest In History") == 0 and Items["Sukuna Melee"] then
						SetStatus('Getting Sukuna Melee V2 | Lv.' .. level)
						DebugPrint('[Status] Getting Sukuna Melee V2 | Lv.' .. level)
						QuestSukunav2()
					elseif getItem("Melee", "Gojo") == 0 and Items["Gojo Melee"] then
						SetStatus('Getting Gojo Melee V1 | Lv.' .. level)
						DebugPrint('[Status] Getting Gojo Melee V1 | Lv.' .. level)
						QuestItems("Gojo v1")
					elseif getItem("Melee", "Strongest Of Today") == 0 and getItem("Melee", "Gojo") >= 1 and Items["Gojo Melee"] then
						SetStatus('Getting Gojo Melee V2 | Lv.' .. level)
						DebugPrint('[Status] Getting Gojo Melee V2 | Lv.' .. level)
						QuestGojov2()
					elseif getItem("Sword", "Aizen") == 0 and Items["Aizen Sword"] then
						SetStatus('Getting Aizen Sword V1 | Lv.' .. level)
						DebugPrint('[Status] Getting Aizen Sword V1 | Lv.' .. level)
						QuestItems("Aizen v1")
					elseif getItem("Sword", "True Aizen") == 0 and getItem("Sword", "Aizen") >= 1 and Items["Aizen Sword"] then
						SetStatus('Getting Aizen Sword V2 | Lv.' .. level)
						DebugPrint('[Status] Getting Aizen Sword V2 | Lv.' .. level)
						Aizenv2()
					elseif getItem("Sword", "Shadow") == 0 and Items["Shadow Sword"] and StatusCache.Dungeon then
						SetStatus('Getting Shadow Sword | Lv.' .. level)
						DebugPrint('[Status] Getting Shadow Sword | Lv.' .. level)
						QuestShadowCidv1()
					elseif getItem("Sword", "Atomic") == 0 and getItem("Sword", "Shadow") >= 1 and Items["Shadow Sword"] then
						SetStatus('Getting Atomic Sword | Lv.' .. level)
						DebugPrint('[Status] Getting Atomic Sword | Lv.' .. level)
						QuestShadowCidv2()
					elseif getItem("Melee", "Strongest Shinobi") == 0 and Items["Shinobi Melee"] then
						SetStatus('Getting Shinobi Melee | Lv.' .. level)
						DebugPrint('[Status] Getting Shinobi Melee | Lv.' .. level)
						ShinobiMelee()
					elseif getItem("Melee", "Saber Alter") == 0 and Items["Saber Alter Melee"] then
						SetStatus('Getting Saber Alter Melee | Lv.' .. level)
						DebugPrint('[Status] Getting Saber Alter Melee | Lv.' .. level)
						SaberMelee()
					elseif getItem("Melee", "Blessed Maiden") == 0 and Items["Blessed Maiden Melee"] then
						SetStatus('Getting Blessed Maiden Melee | Lv.' .. level)
						DebugPrint('[Status] Getting Blessed Maiden Melee | Lv.' .. level)
						BlessedMelee()
					elseif getItem("Melee", "Gilgamesh") == 0 and Items["Gilgamesh Melee"] then
						SetStatus('Getting Gilgamesh Melee | Lv.' .. level)
						DebugPrint('[Status] Getting Gilgamesh Melee | Lv.' .. level)
						GilgameshMelee()
					elseif getItem("Melee", "Moon Slayer") == 0 and Items["Moon Slayer Melee"] then
						SetStatus('Getting Moon Slayer Melee | Lv.' .. level)
						DebugPrint('[Status] Getting Moon Slayer Melee | Lv.' .. level)
						MoonSlayer()
					elseif getItem("Sword", "Ice Queen") == 0 and Items["Ice Queen Sword"] then
						SetStatus('Getting Ice Queen Sword | Lv.' .. level)
						DebugPrint('[Status] Getting Ice Queen Sword | Lv.' .. level)
						IceQueenSword()
					elseif getItem("Melee", "Alucard") == 0 and Items["Vampire King Melee"] then
						SetStatus('Getting Vampire King Melee | Lv.' .. level)
						DebugPrint('[Status] Getting Vampire King Melee | Lv.' .. level)
						Alucard()
					elseif getItem("Melee", "Anos") == 0 and Items["Demon King Melee"] then
						SetStatus('Getting Demon King Melee | Lv.' .. level)
						DebugPrint('[Status] Getting Demon King Melee | Lv.' .. level)
						Anos()
					elseif getItem("Sword", "Rimuru") == 0 and Items["Slime Sword"] then
						SetStatus('Getting Slime Sword | Lv.' .. level)
						DebugPrint('[Status] Getting Slime Sword | Lv.' .. level)
						Slime()
					elseif getItem("Sword", "Yamato") == 0 and Items["Yamato Sword"] then
						SetStatus('Getting Yamato Sword | Lv.' .. level)
						DebugPrint('[Status] Getting Yamato Sword | Lv.' .. level)
						Yamato()
					elseif getItem("Sword", "Great Mage") == 0 and Items["Great Mage Sword"] then
						SetStatus('Getting Great Mage Sword | Lv.' .. level)
						DebugPrint('[Status] Getting Great Mage Sword | Lv.' .. level)
						GreatMage()
					elseif Maxlvl["Egg Event"]["Enable"] and getItem("Items", "Easter Eggs") < Maxlvl["Egg Event"]["Value"] then
						SetStatus('Farming Egg Event | Lv.' .. level)
						DebugPrint('[Status] Farming Egg Event | Lv.' .. level)
						NearMob("Bunny")
					else
						if Change then
							Yummytool = Change
						else
							SetStatus('Farming Drops | Lv.' .. level)
							DebugPrint('[Status] Farming Drops | Lv.' .. level)
							QuestItems("Upgrading Luck")
							QuestItems("Farming Drops")
						end
					end
				end
			end
		end
	end)

	task.spawn(function()
		while task.wait(1) do
			local trait_data = nil
			pcall(function() trait_data = RS.RemoteEvents.TraitGetData:InvokeServer() end)
			if trait_data and trait_data.RerollCount > 0 and not table.find(Reroll["Trail"] or {}, trait_data.Trait) then
				pcall(function() RS.RemoteEvents.TraitReroll:FireServer() end)
				task.wait(0.5)
				pcall(function() RS.RemoteEvents.TraitConfirm:FireServer(true) end)
				task.wait(1)
			end
			local power_data = nil
			pcall(function() power_data = RS.RemoteEvents.PowerGetData:InvokeServer() end)
			if power_data and power_data.RollCount > 0 and not table.find(Reroll["Power"] or {}, power_data.Current and power_data.Current.Name) then
				pcall(function() RS.RemoteEvents.PowerReroll:FireServer() end)
				task.wait(0.3)
				pcall(function() RS.RemoteEvents.PowerConfirm:FireServer(true) end)
				task.wait(0.5)
			end
			local playerStats2 = nil
			pcall(function() playerStats2 = RS.RemoteEvents.GetPlayerStats:InvokeServer() end)
			if playerStats2 then
				local current_rune = playerStats2.RuneEquipped
				local cached_rune  = Reroll["Rune"] and Reroll["Rune"][1]
				if cached_rune and current_rune ~= cached_rune then
					if getItem("Runes", cached_rune) > 0 then
						pcall(function() RS.Remotes.EquipRune:FireServer("Equip", cached_rune) end)
					end
				end
			end
		end
	end)

	local StoreRace = function()
		local ok, storage_data = pcall(function() return game.ReplicatedStorage.Remotes.GetStorageData:InvokeServer() end)
		if not ok or not storage_data then return end
		if not storage_data.StoredItems['RaceStorage1'] then
			pcall(function() game.ReplicatedStorage.Remotes.StorageStoreItem:FireServer("RaceStorage1") end)
		elseif not storage_data.StoredItems['RaceStorage2'] then
			pcall(function() game.ReplicatedStorage.Remotes.StorageStoreItem:FireServer("RaceStorage2") end)
		elseif not storage_data.StoredItems['RaceStorage3'] then
			pcall(function() game.ReplicatedStorage.Remotes.StorageStoreItem:FireServer("RaceStorage3") end)
		elseif not storage_data.StoredItems['RaceStorage4'] then
			pcall(function() game.ReplicatedStorage.Remotes.StorageStoreItem:FireServer("RaceStorage4") end)
		end
	end

	local StoreClan = function()
		local ok, storage_data = pcall(function() return game.ReplicatedStorage.Remotes.GetStorageData:InvokeServer() end)
		if not ok or not storage_data then return end
		if not storage_data.StoredItems['ClanStorage1'] then
			pcall(function() game.ReplicatedStorage.Remotes.StorageStoreItem:FireServer("ClanStorage1") end)
		elseif not storage_data.StoredItems['ClanStorage2'] then
			pcall(function() game.ReplicatedStorage.Remotes.StorageStoreItem:FireServer("ClanStorage2") end)
		elseif not storage_data.StoredItems['ClanStorage3'] then
			pcall(function() game.ReplicatedStorage.Remotes.StorageStoreItem:FireServer("ClanStorage3") end)
		elseif not storage_data.StoredItems['ClanStorage4'] then
			pcall(function() game.ReplicatedStorage.Remotes.StorageStoreItem:FireServer("ClanStorage4") end)
		end
	end

	task.spawn(function()
		(function()
			while task.wait(1) do
				local plr_data     = nil
				local stat_data    = nil
				local passive_data = nil
				pcall(function()
					plr_data      = game.ReplicatedStorage.RemoteEvents.GetPlayerStats:InvokeServer()
					passive_data  = game.ReplicatedStorage.RemoteEvents.SpecPassiveGetData:InvokeServer()
					stat_data     = game.ReplicatedStorage.Remotes.GetStatRerollData:InvokeServer()
					CACHED_WEAPON = getBestWeapon()
				end)
				if plr_data and plr_data.Inventory and plr_data.Inventory.Equipped then
					local equippedRace = plr_data.Inventory.Equipped.Race
					local equippedClan = plr_data.Inventory.Equipped.Clan
					if Items["Aizen Sword"] and getItem("Sword", "Aizen") == 0 then
						if table.find(Reroll["Race"], equippedRace) then
							StoreRace()
						else
							if equippedRace ~= 'Shinigami' and getItemNumber('Items', 'Race Reroll') >= 1 then
								pcall(function()
									game.ReplicatedStorage.Remotes.UseItem:FireServer("Use", "Race Reroll",
										1, true)
								end)
								task.wait(0.5)
							end
						end
					elseif Items["Shadow Sword"] and getItem("Sword", "Shadow") == 0 then
						if table.find(Reroll["Race"], equippedRace) then
							StoreRace()
						else
							if equippedRace ~= 'Shadowborn' and getItemNumber('Items', 'Race Reroll') >= 1 then
								pcall(function()
									game.ReplicatedStorage.Remotes.UseItem:FireServer("Use", "Race Reroll",
										1, true)
								end)
								task.wait(0.5)
							end
						end
					elseif Items["Vampire King Melee"] and getItem("Melee", "Alucard") == 0 then
						if table.find(Reroll["Race"], equippedRace) then
							StoreRace()
						else
							if equippedRace ~= 'Vampire' and getItemNumber('Items', 'Race Reroll') >= 1 then
								pcall(function()
									game.ReplicatedStorage.Remotes.UseItem:FireServer("Use", "Race Reroll",
										1, true)
								end)
								task.wait(0.5)
							end
						end
					elseif Items["Yamato Sword"] and getItem("Sword", "Yamato") == 0 then
						if table.find(Reroll["Race"], equippedRace) then
							StoreRace()
						else
							if equippedRace ~= 'Swordblessed' and getItemNumber('Items', 'Race Reroll') >= 1 then
								pcall(function()
									game.ReplicatedStorage.Remotes.UseItem:FireServer("Use", "Race Reroll",
										1, true)
								end)
								task.wait(0.5)
							end
						end
					elseif not table.find(Reroll["Race"], equippedRace) and getItemNumber('Items', 'Race Reroll') >= 1 then
						print('Race Reroll')
						pcall(function() game.ReplicatedStorage.Remotes.UseItem:FireServer("Use", "Race Reroll", 1, true) end)
						task.wait(0.5)
					end
					if Items["Demon King Melee"] and getItem("Melee", "Anos") == 0 then
						if table.find(Reroll["Clan"], equippedClan) then
							StoreClan()
						else
							if equippedClan ~= 'Voldigoat' and getItemNumber('Items', 'Clan Reroll') >= 1 then
								pcall(function()
									game.ReplicatedStorage.Remotes.UseItem:FireServer("Use", "Clan Reroll",
										1, true)
								end)
								task.wait(0.5)
							end
						end
					elseif not table.find(Reroll["Clan"], equippedClan) and getItemNumber('Items', 'Clan Reroll') >= 1 then
						pcall(function() game.ReplicatedStorage.Remotes.UseItem:FireServer("Use", "Clan Reroll", 1, true) end)
						task.wait(0.5)
					end
					if passive_data then
						if not passive_data.Unlocked then
							if plr.Data.Gems.Value >= 5000 and plr.Data.Level.Value >= 10000 then
								pcall(function() game.ReplicatedStorage.RemoteEvents.SpecPassiveUnlock:FireServer() end)
							end
						elseif (not passive_data.Passives[CACHED_WEAPON] or passive_data.Passives[CACHED_WEAPON].Name ~= 'Fortune Chosen') and getItemNumber('Items', 'Passive Shard') > 0 then
							pcall(function()
								game.ReplicatedStorage.RemoteEvents.SpecPassiveReroll:FireServer(
									CACHED_WEAPON)
							end)
							task.wait(0.5)
							pcall(function() game.ReplicatedStorage.RemoteEvents.SpecPassiveConfirm:FireServer(true) end)
						end
						if passive_data.Unlocked and stat_data then
							if plr.Data.Gems.Value >= 1000 then
								if stat_data.Stats.Luck.Value < 10 then
									pcall(function() game.ReplicatedStorage.Remotes.RerollSingleStat:InvokeServer("Luck") end)
								elseif stat_data.Stats.Damage.Value < 20 then
									pcall(function()
										game.ReplicatedStorage.Remotes.RerollSingleStat:InvokeServer(
											"Damage")
									end)
								elseif stat_data.Stats.Defense.Value < 20 then
									pcall(function()
										game.ReplicatedStorage.Remotes.RerollSingleStat:InvokeServer(
											"Defense")
									end)
								elseif stat_data.Stats.CooldownReduction.Value < 8 then
									pcall(function()
										game.ReplicatedStorage.Remotes.RerollSingleStat:InvokeServer(
											"CooldownReduction")
									end)
								elseif stat_data.Stats.CritDamage.Value < 15 then
									pcall(function()
										game.ReplicatedStorage.Remotes.RerollSingleStat:InvokeServer(
											"CritDamage")
									end)
								elseif stat_data.Stats.DamageReduction.Value < 7 then
									pcall(function()
										game.ReplicatedStorage.Remotes.RerollSingleStat:InvokeServer(
											"DamageReduction")
									end)
								end
								task.wait(1)
							end
						end
					end
				end
			end
		end)()
	end)

	task.spawn(function()
		while task.wait(1.5) do
			local currentStats = nil
			pcall(function() currentStats = RemoteEvents:WaitForChild("GetPlayerStats"):InvokeServer().Stats end)
			if currentStats then
				if Melee and getItem("Melee", "Strongest In History") >= 1 then
					if (currentStats.Sword > 0 or currentStats.Melee == 0) and CAN_UPSTAT then
						pcall(function() RemoteEvents:WaitForChild("ResetStats"):FireServer() end)
						task.wait(1)
					end
				else
					if (currentStats.Melee > 0 or currentStats.Sword == 0) and CAN_UPSTAT then
						pcall(function() RemoteEvents:WaitForChild("ResetStats"):FireServer() end)
						task.wait(1)
					end
				end
				if plr.Data.StatPoints.Value > 0 and CAN_UPSTAT then
					if character:FindFirstChild("Combat") then
						pcall(function()
							RemoteEvents:WaitForChild("AllocateStat"):FireServer("Melee", plr.Data.StatPoints.Value)
						end)
					elseif character:FindFirstChildOfClass("Tool") then
						local sword = math.floor(plr.Data.StatPoints.Value / 3 * 2)
						local melee = math.floor(plr.Data.StatPoints.Value / 3 * 2)
						if Melee and getItem("Melee", "Strongest In History") >= 1 then
							pcall(function() RemoteEvents:WaitForChild("AllocateStat"):FireServer("Melee", melee) end)
						else
							pcall(function() RemoteEvents:WaitForChild("AllocateStat"):FireServer("Sword", sword) end)
						end
						task.wait(0.5)
						pcall(function()
							RemoteEvents:WaitForChild("AllocateStat"):FireServer("Defense", plr.Data.StatPoints.Value)
						end)
					end
				end
			end
		end
	end)

	task.spawn(function()
		while true do
			local BEST_EQUIP = { Helmet = nil, Glove = nil, Body = nil, Boots = nil }
			local PRIORITY = {
				["Void Reaver"] = 1,
				["Celestial Rupture"] = 2,
				["Abyssal Crown"] = 3
			}
			local ok, artifact_data = pcall(function()
				return game.ReplicatedStorage.RemoteFunctions.GetArtifactData:InvokeServer()
			end)
			if ok and artifact_data then
				for _, v in next, artifact_data.Inventory do
					local category = v.Category
					local currentBest = BEST_EQUIP[category]
					for setName, prio in pairs(PRIORITY) do
						if v.Set:find(setName) then
							if not currentBest or prio > currentBest.Priority then
								BEST_EQUIP[category] = { Data = v, Priority = prio }
							end
						end
					end
				end
				for category, info in pairs(BEST_EQUIP) do
					if info then
						pcall(function()
							game.ReplicatedStorage.RemoteEvents.ArtifactEquip:FireServer(tostring(info.Data
								.UUID))
						end)
						task.wait(0.5)
					end
				end
			end
			task.wait(30)
		end
	end)

	task.spawn(function()
		while task.wait(1) do
			pcall(function()
				local char = plr.Character
				if not char then return end
				local hrp = char:FindFirstChild("HumanoidRootPart")
				if hrp and not hrp:FindFirstChild("NoFall") then
					local bv = Instance.new("BodyVelocity")
					bv.Name = "NoFall"
					bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
					bv.Velocity = Vector3.new(0, 0, 0)
					bv.P = 1000
					bv.Parent = hrp
				end
			end)
		end
	end)

	task.spawn(function()
		while task.wait(30) do
			for _, v in ipairs(Reroll["Chest"]) do
				pcall(function()
					Remotes:WaitForChild("UseItem"):FireServer("Use", v .. " Chest", 1000000, false, false)
				end)
				task.wait(1)
			end
		end
	end)

	task.spawn(function()
		while task.wait(1) do
			local char = plr.Character
			if char then
				for _, child in ipairs(char:GetDescendants()) do
					if child:IsA("BasePart") and child.CanCollide then child.CanCollide = false end
				end
			end
		end
	end)

	CACHED_WEAPON = getBestWeapon()
	task.spawn(function()
		while task.wait(10) do CACHED_WEAPON = getBestWeapon() end
	end)

	task.spawn(function()
		while task.wait(5) do
			pcall(function() Remotes:WaitForChild("BlessWeapon"):FireServer(CACHED_WEAPON) end)
			pcall(function() Remotes:WaitForChild("BlessWeapon"):FireServer("Strongest In History") end)
		end
	end)

	local codeRemote = RS:WaitForChild("RemoteEvents"):WaitForChild("CodeRedeem")
	task.spawn(function()
		while task.wait(30) do
			for _, code in ipairs(codes) do
				pcall(function() codeRemote:InvokeServer(code) end)
				task.wait(2)
			end
		end
	end)

	task.spawn(function()
		while task.wait(1) do
			if Change then
				if typeof(writefile) == "function" then
					if plr.Data.Level.Value >= 13000 and Yummytool then
						writefile(plr.Name .. ".txt", "Completed-" .. plr.Name)
					else
						writefile(plr.Name .. ".txt", "Yummytool")
					end
				end
			end
		end
	end)

	task.spawn(function()
		while task.wait(1) do
			local char = plr.Character
			if not char then
				task.wait(1)
			else
				local hrp = char:FindFirstChild("HumanoidRootPart")
				if not hrp then
					task.wait(1)
				else
					local oldPos = hrp.Position
					task.wait(Config["Rejoin Time"] * 60)
					local curChar = plr.Character
					if curChar then
						local curHrp = curChar:FindFirstChild("HumanoidRootPart")
						if curHrp and curHrp.Position == oldPos then
							DebugPrint('[Status] Auto Rejoin | Position stuck, teleporting')
							pcall(function() TeleportService:Teleport(75159314259063) end)
							task.wait(10)
						end
					end
				end
			end
		end
	end)

	SetStatus('Script Loaded | Lv.' .. plr.Data.Level.Value)
	DebugPrint('[Status] Script Loaded | Lv.' .. plr.Data.Level.Value)
end)()
