-- Luraph runtime function (from the VM object, not part of the script: not lifted).
-- LPH_ENCFUNC decrypts a function this way: (key, encrypted buffer, ...) -> function.
local function luraph_runtime1(...)
	error("Luraph runtime function, not devirtualized")
end

local p_0, p_1
local v = table.pack(...)

if not ce_like_loadstring_fn then
	if not l_fastload_enabled or not is_from_loader then
		game:GetService("Players").LocalPlayer:Kick("[Luarmor]: Use the loadstring, do not run this directly")
		wait(5)

		while true do
		end
	end
end

local str = "?"
loadstring = ce_like_loadstring_fn or loadstring
local flag = false

pcall(function(...)
	local p_0, p_1, p_2
	flag = true
	local UserGameSettings = UserSettings():GetService("UserGameSettings")

	if not UserGameSettings:GetTutorialState("nil  nil  ") then
		str = ""
		local n = ({ wait() })[1] * 1000000

		local function fn(arg, ...)
			local n2 = 1103515245
			local n3 = 12345
			local n4 = 99999999
			local n5 = arg % 2147483648
			local n6 = 1

			return function(arg2, arg3, ...)
				local v2 = n4
				local n7 = n2 * n5 + n3
				local n8 = n7 % v2 + n6
				n6 += 1
				n5 = n8
				n3 = n7 % 4858 * v2 % 5782
				return arg2 + n8 % arg3 - arg2 + 1
			end
		end

		local v2 = fn(n - n % 1)
		UserGameSettings:SetTutorialState("nil  nil  ", true)
		local n2 = 0
		p_1 = 1

		for i = 1, 16 do
			local n3 = 0
			local n4 = 1
			p_2 = 1

			for i2 = 1, 5 do
				local flag2 = v2(10, 20) > 15
				UserGameSettings:SetTutorialState("nil  nil  " .. n2, flag2)
				n3 += (flag2 and 1 or 0) * n4
				n4 *= 2
				n2 += 1
			end

			p_2 = p_1
			str ..= ("qwertyuiopasdfghjklzxcvbnm098765"):sub(n3 + 1, n3 + 1)
		end

		p_1 = p_0
	else
		str = ""
		local n = 0
		p_1 = 1

		for i = 1, 16 do
			local n2 = 0
			local n3 = 1
			p_2 = 1

			for i2 = 1, 5 do
				n2 += (UserGameSettings:GetTutorialState("nil  nil  " .. n) and 1 or 0) * n3
				n3 *= 2
				n += 1
			end

			p_2 = p_1
			str ..= ("qwertyuiopasdfghjklzxcvbnm098765"):sub(n2 + 1, n2 + 1)
		end

		p_1 = p_0
	end
end)

while not flag do
end

local now = os.clock()

if devsignature_sig then
	print([[        Luarmor - Lua whitelist service
        This is a signature - If you are seeing this, you know what not to do :3
        Have a good day!
        https://luarmor.net/
    ]])
end

local flag2 = nil
local flag3 = nil
local v2 = ({ table.unpack(v, 1, v.n) })[3]

if v2 and v2[1] then
end

local floor = math.floor
local random = math.random
local remove = table.remove
local char = string.char
local n = 0
local n2 = 2
local tbl = {}
local tbl2 = {}
p_1 = 1

for i = 1, 256 do
	tbl2[i] = i
end

p_1 = p_0

repeat
	local v3 = random(1, #tbl2)
	local v4 = remove(tbl2, v3)
	tbl[v4] = char(v4 - 1)
until #tbl2 == 0

local tbl3 = {}

local function fn(...)
	if #tbl3 == 0 then
		n = (n * 149 + 4033097371307) % 35184372088832

		repeat
			n2 = n2 * 37 % 257
		until n2 ~= 1

		local n3 = n2 % 32
		local n4 = floor(n / 2 ^ (13 - (n2 - n3) / 32)) % 4294967296 / 2 ^ n3
		local n5 = floor(n4 % 1 * 4294967296) + floor(n4)
		local n6 = n5 % 65536
		local n7 = (n5 - n6) / 65536
		local n8 = n6 % 256
		local n9 = n7 % 256
		tbl3 = { n8, (n6 - n8) / 256, n9, (n7 - n9) / 256 }
	end

	return table.remove(tbl3)
end

local tbl4 = {}
local v3 = tbl4

local function fn2(arg, arg2, ...)
	local p_0, p_1
	local v4 = tbl4

	if not v4[arg2] then
		tbl3 = {}
		local v5 = tbl
		n = arg2 % 35184372088832
		n2 = arg2 % 255 + 2
		v4[arg2] = ""
		local n3 = 77
		p_1 = 1

		for i = 1, #arg do
			n3 = (string.byte(arg, i) + fn() + n3) % 256
			v4[arg2] = v4[arg2] .. v5[n3 + 1]
		end

		p_1 = p_0
	end

	return arg2
end

local v4 = LUARMOR_SkipAntidebugDevMode
local v5 = LUARMOR_AllowKeyCheckSkip
local flag4 = ff97f23b97f93792992999 and ff97f23b97f93792992999() == v3[fn2("\172", 31126577901884)] or false
local v6 = v3[fn2("6\143K\188=\r\226\146\248&\176;\3\231Æ\133\143\248\204_\184\222\229\157\254\25", 2340828612740)]
local v7 = USE_NON_SSL_NODE
local v8 = l_fastload_enabled
local n3 = os[v3[fn2("(\204\6\168", 4882453074371)]](os[v3[fn2("UC\178}", 12971197083440)]](v3[fn2("\139L", 33012126087192)])) - os[v3[fn2("vܢ\204", 5436520764359)]](os[v3[fn2("f\150\187#", 4318721413046)]](v3[fn2("\209\6D", 24300592814183)]))
local n4

if n3 < 0 then
	n4 = (86400 + -(-n3 % 86400)) % 86400
else
	n4 = n3 % 86400
end

local n5 = n4 / 3600

if n5 >= 21 or n5 < 5 then
	local tbl5 = {}
	local v9 = v3[fn2("\226XO\140q\210K\180:%\205B\254\182.y\229\163\245\219v$\209Y\171\6f", 3448963992716)]
	local v10 = v3[fn2("N\235X\233G\12\243\241ˣ@s\250\190\137\214\t\2267j\174\247\195\241\237\1\160", 16047561292385)]
	tbl5[1] = v9
	tbl5[2] = v10
	v6 = tbl5[math[v3[fn2("\195K\\\173\155:", 14086848885567)]](1, 2)]
elseif n5 >= 5 and n5 < 15 then
	local tbl5 = {}
	local v9 = v3[fn2("\136M\165r\0017j\254\186\147Ds\224x\241\151\231]k\137\28\184\17f,\138\149", 25839311805952)]
	local v10 = v3[fn2("\211:<?S\222\17[!\164Yl\240F\230\"\193\251\128\220a\29\252\133\u{87}\163", 2297877629020)]
	local v11 = v3[fn2("s\146p: \167\177_\228\255\136kW\246\245\253e\146M\245\19T\169IP\21\187", 2572763924828)]
	local v12 = v3[fn2("'\26L\252\146.\25c\151\208\248ϕ\154\r\229I\243\26\149\181\139k`+\16\2", 19333311546965)]
	local v13 = v3[fn2("$\1C\213\234\205?\169\200\"\188@\0\188\128\27C\244\12\203l\224\3p\245\187\233", 21697763200751)]
	local v14 = v3[fn2("\30\197\216\\\25\163\155i\1304i\2af\14\181\15\174MD\174\131\206\208Zã", 15465575462979)]
	local v15 = v3[fn2("\5ڝ_\154\171yf\184\193\138\26T\188\11\16#K\128\144:\7\197m\210\14\252", 30187025133009)]
	local v16 = v3[fn2("\182\186\142\199\t\163\189V 8\195g\230w\148\228\193v\199\\\186\212\246\174\130H\254", 19714501527480)]
	local v17 = v3[fn2("\248~\133\207\196r\178\244G\251 /\n\30\169\154%m\187W\141{\235\246\179\243\240", 7900833455294)]
	local v18 = v3[fn2("*\211\203v\129\12j\218\209A\222\15\186[S\135\165w\1725[tI\n \212\199", 17090196422188)]
	local v19 = v3[fn2("y\193\242QA\127\235\22\"\3\134\159.\0\5\224\130\236\239\27\254.\224\194ż\188", 25925213773392)]
	tbl5[1] = v9
	tbl5[2] = v10
	tbl5[3] = v11
	tbl5[4] = v12
	tbl5[5] = v13
	tbl5[6] = v14
	tbl5[7] = v15
	tbl5[8] = v16
	tbl5[9] = v17
	tbl5[10] = v18
	tbl5[11] = v19
	v6 = tbl5[math[v3[fn2("xԳ\192\182-", 34852575739594)]](1, 11)]
elseif n5 >= 15 and n5 < 21 then
	local tbl5 = {}
	local v9 = v3[fn2("\240\230R\240>\184pcy\16\164\25JH\231\14\235b\3\8\138b\1\249\194\4\255", 13222460338202)]
	local v10 = v3[fn2("\132\141w\195|l\143>'\247n\175\248+\249\226\144<C!*\177\160\233\21\2I", 27390916092837)]
	local v11 = v3[fn2("\rl\1903\128\248l\136-%\192js\153c\179\238b\157\207\209#\200;\238Nt", 14158791783298)]
	tbl5[1] = v9
	tbl5[2] = v10
	tbl5[3] = v11
	v6 = tbl5[math[v3[fn2("\237\238q\243\0025", 446690230688)]](1, 2)]
else
	game:GetService(v3[fn2("\11\19\5\4\2527\137", 10601376556689)])[v3[fn2("6\164p?\177pjs'\184]", 30941888671888)]]:Kick(v3[fn2("XЀ\129\142\231\6\145\130ښz\231[\253\250\28A\140`;m\\\243C\167d_\8뵟\11\24\4̩\172S\rH\235-E\0079\1519lH\149-C3\130)\225\20\162{1\228ܞ", 31900769383437)])
end

pcall(function(...)
	if game:GetService(v3[fn2("Y4\161\128j\n\206\18\4\2551z\235۾\220\26C\148", 26759536632153)]):GetCountryRegionForPlayerAsync(game:GetService(v3[fn2("A\209q\131\160\177\219", 8137063865754)])[v3[fn2("\255\189\244ˢ\218K\216I\131\254", 24768758536731)]]) == v3[fn2(";%", 6519959328696)] then
		local tbl5 = {}
		local v9 = v3[fn2("l\205hnf\2268}\206\25\1781{\11\1981/\224\8\179\240\27-\r\205#\151", 30974101909678)]
		local v10 = v3[fn2("\n\230\168\228\154T\28\183\22\226r\177\0\0042f+\129\184ʟ\193ͤ\166\128i", 12874557370070)]
		local v11 = v3[fn2("\31\140C\234\224\0128'uqF\230\160\26)\210ߣ\139\172\132w\172\181\245\250\246", 25825352736243)]
		local v12 = v3[fn2("Q\t\222t?\167\240\222K|Jn\228\232[\172OO\133\25\130Ϋ\203\24\190&", 1597776594384)]
		local v13 = v3[fn2("w׆z\184Rػ\135\17w\149\1628\245<t\183\218\"9\180&\154\173oS", 24407970273483)]
		tbl5[1] = v9
		tbl5[2] = v10
		tbl5[3] = v11
		tbl5[4] = v12
		tbl5[5] = v13
		v6 = tbl5[math[v3[fn2("\182\163/Pv\178", 434878710165)]](1, 5)]
	end
end)

local tbl5 = { [v3[fn2("$GBp\229(\220", 25758778711477)]] = v3[fn2("\233\191\12", 22757578724042)] }
tbl5[v3[fn2("\168)[\4", 30887126167645)]] = flag4 and LT_R_RRT_H or v3[fn2("\145\199\235ښ\255A\27", 5940121048476)] .. v6
tbl5[v3[fn2("-\187\163M\25\167\217@", 4026654723750)]] = "aff254b05ec8765b7542a06f4a797515"
tbl5[v3[fn2("|\153\251\252\129+\213c\238\189\31]\198", 318911054121)]] = "0023"
tbl5[v3[fn2("\255u\7\188", 2453574945005)]] = "kaitun sab"

if v7 then
	tbl5[v3[fn2("P+\173\t", 11860914154278)]] = v3[fn2("\190\203\210Z\214\212\25ې\173pԼ\146\25\18\18\16\133\139\193獓ݓ\217", 22440815219107)]
	v6 = v3[fn2("_\12\235cw\2309\u{84}\23,d\224NS\22X\5\19p", 20241724852643)]
end

local flag5 = type(({ table.unpack(v, 1, v.n) })[1]) ~= v3[fn2("\242\19\150\29>", 10561646896748)]
local flag6 = false
local fn3 = nil
local n6 = nil
local tbl6 = nil
local tbl7 = nil
local flag7 = nil
local v9 = nil
local tbl8 = nil
local v10 = print
local v11 = next
local v12 = string[v3[fn2("2\2521\5", 29730670930984)]]
local v13 = identifyexecutor
local v14 = game
local v15 = pcall
local v16 = string[v3[fn2("\159\240\254\230\24\28", 19614640490331)]]
local v17 = debug[v3[fn2(";+\25\153&\188\15\128\26", 12781138980479)]]
local v18 = tonumber
local v19 = setmetatable
local v20 = rawget
local v21 = wait
local v22 = debug[v3[fn2("P\221{\181\235n\227", 23381441762575)]]
local v23 = loadstring
local v24 = os[v3[fn2("X\184mZ", 16176414243545)]]
local v25 = string[v3[fn2("U\235\251\154", 32087606162619)]]
local v26 = string[v3[fn2("\175\1522", 25909107154497)]]
local v27 = spawn
local v28 = game:GetService(v3[fn2("`B\166#\255jI\172]^", 4772928065885)])[v3[fn2("\160\129EكZ\5\18\24", 20189109897586)]]
local v29 = os[v3[fn2(">^S\159\159", 3206290934698)]]
local v30 = rconsoleprint
local v31 = math[v3[fn2("\165A7e", 11417445247369)]]
local v32 = tostring
local v33 = pairs
local v34 = string[v3[fn2("\3\155\250\194", 32580468700806)]]
local v35 = getgenv
local flag8 = false

local function fn4(arg, arg2, ...)
	v23(v3[fn2("i\154\24+|X6!\178ڻ\204ηA\11\7\248<\206\28\245\222c\174\5\23\227\240?Iz\250a4S.\240\147t\199\0065\4\145\11\239\203\2.\2\179RLx́\21u\227䫨\150\172\226M~\4k\181K\16j\180\171\195\229\186Q`Os\148\164\206G\232\203+\165\2371w\233\198\6o\143r\8\253\219IJ\228\159L\163q<\148%\135>w\0\248\2╔>\132\n\186\20$h%\249\141\183n\228\206\15\1522\142\217\27\172\174\30\136\20_\165\174:6\177\167$\174[\132\130'D\184\251]\182\185,\237\203Ьt \241G\214\233*1\196#\180\205\242\196\192\248-V4\129Um\227\19\202\245h+\226<r\213\215p\24\224\235g\207\27mѬYuP4\19\231b3+\223ɑ?ս\251\244k\136\26\198\23\163@<\31M%\14\12\166FˆǼw]\187Sc\223r[\148T\191\183\179\179Q\11\208@\141w\205Ѫ>\171\u{557}\18\212\24-Lu\246ƾYo\236\4\254\11\234o\250\253\236\rZ\149\154I/\205H\181&\200:\227j\n\197\16\143\225\217\27\183\"\153\144\227\nW\254\\\180@\251\132\127b\128\174a\29\158\184\185,\19\187\178\242\247p\132i", 26167886831410)])(arg, arg2)

	while v21() do
	end
end

local tbl9 = {}
local flag9 = false
local v36 = string[v3[fn2("\189[J\156\131h", 30415739121318)]]
local v37 = string[v3[fn2("\1510\206", 13348091965583)]]
local v38 = table[v3[fn2("k\188*TG\222", 11500125891030)]]
local v39 = type
local v40 = v33
local v41 = v21
local v42 = coroutine[v3[fn2("\177߽\215", 9666118886186)]]

local fn5 = syn and syn[v3[fn2("Z\185\149\247\174\30\161\141\220", 26705847902503)]] and syn[v3[fn2("\137ҫ\217\r2\137v\146", 25551540215028)]][v3[fn2("fӟ\144\186|\152", 30015221198129)]] or WebSocket and WebSocket[v3[fn2("\202Be\155Q\245>", 758084862658)]] or WebsocketClient and function(arg, ...)
	local v43 = WebsocketClient[v3[fn2("\188m\224", 16394390485924)]](arg)
	v43:Connect()
	return v43
end

local fn6 = nil

fn6 = function(arg, ...)
	local tbl10 = {}
	local v43, v44, v45 = v40(arg)

	for k, v46 in --[[?LTable]], v43, v44, v45 do
		local n7 = #tbl10 + 1
		local v47 = v3[fn2("'\200\247\146 \170_\227", 34886936526570)]
		local v48 = v3
		local flag10 = v39(v46) == v48[fn2("\20/x-\133", 7497094208326)] and fn6(v46)

		if not flag10 then
			local v49 = v3
			flag10 = v3[fn2("=", 18649317131224)] .. v46 .. v49[fn2("Z", 173951484066)]
		end

		tbl10[n7] = v36(v47, k, flag10)
	end

	return v3[fn2("i", 24314551883892)] .. v37(v38(tbl10), 0, -2) .. v3[fn2("\194", 22373167419748)]
end

local function fn7(arg, ...)
	local function fn8(arg2, ...)
		if arg2 == v3[fn2(",\196P\\", 10051603965073)] then
			if flag8 then
				local v43 = v3
				v30(v3[fn2("\188", 31749367165824)] .. os[v3[fn2("\0302\18I\236", 28036254623230)]]() .. v43[fn2("]F\213\251\200_\178F\20\156:\132P\20@C\245\5rT\147\137\228\134\r\254\141{\211", 1801793767054)])
			end

			arg[v3[fn2(",\186lJ\254\246p\224", 16202184833777)]] = tick()
			return
		end

		local v43 = v3
		local v44 = string[v3[fn2("\159\11\208\29\209", 9071247761664)]](arg2, v43[fn2("\188\201\31<\247\150\244\169-\6\18", 23326679258332)])

		if flag8 then
			local v45 = v3
			v30(v3[fn2("\7", 33022863833122)] .. os[v3[fn2("\127>\184\15\133", 17304951340788)]]() .. v3[fn2("\1651f.\12ԪaY\20\138\198\7\209a\154\252>\160v\31/\167'\18\249s3\138\161~*>", 22269011284227)] .. arg2 .. v45[fn2(" ", 17028991270387)])
		end

		if v44 then
			local v45 = arg[v3[fn2("Ƣn!\210\2\204y", 20264274119096)]][v44 + 0]
			local v46 = v3
			v45:Fire(arg2:gsub(v3[fn2("2\186\6u\237\151?\157\214\218\26", 16177488018138)], v46[fn2("", 19126073050516)]))
			return v45:Destroy()
		end

		return arg[v3[fn2("\222Jͮlw\170\t\1\159\242Xx\250i", 33181782472886)]]:Fire(arg2)
	end

	local fn9 = nil

	fn9 = function(...)
		if flag8 then
			local v43 = v3
			v30(v3[fn2("\20", 25372219857997)] .. os[v3[fn2("\31\244\136j\213", 5980924483010)]]() .. v43[fn2("\245\140.:\174\129O1!\183\\", 29455784635176)])
		end

		arg[v3[fn2("\154p\255\171h\15\253<\144\234\187\20\22\154\6", 7238314531413)]] = false

		if arg[v3[fn2("\150\184\188@_\170\153\19\224ڥ5", 8969239175329)]] or flag9 then
			if flag8 then
				v30(v3[fn2("\215̡\147q1\177\167\170\11O\146&\250\134\170g|", 12225997515898)])
			end

			return
		end

		local n7 = 0
		local v43

		while true do
			if flag8 then
				local v44 = v3
				v30(v3[fn2("\8", 25877967691300)] .. os[v3[fn2("\242\131\241\176\153", 32213237790000)]]() .. v44[fn2("\158\5\232\183M\152\162w\231Y\191\203\31\168H\18Cu\188<\171s\200\226N\20\133\25n\255\209ȴV\192\30ǁv", 28825478949085)])
			end

			local v44 = v24()
			local flag10 = false
			local v45 = nil
			v43 = nil

			v27(function(...)
				local v46, v47 = v15(fn5, arg[v3[fn2("\23\20\24", 29848786136214)]])
				v45 = v46
				v43 = v47
				flag10 = true
			end)

			while not flag10 and v24() < v44 + 8 do
				v41()
			end

			if flag8 then
				local v46 = v3
				v30(v3[fn2("\128", 29034864994720)] .. os[v3[fn2("\175\nP\245\156", 12251768106130)]]() .. v3[fn2("z\24ث\148\2523\254\223\1\222Q\227{\241\197\249\\\11_h\181", 34490713701753)] .. v32(flag10) .. v3[fn2("\127\132\31\28g\n", 10375883892159)] .. v32(v45) .. v46[fn2("\12", 27328637166443)])
			end

			if not flag10 then
				flag6 = false
				n7 = 10

				if flag8 then
					warn(v3[fn2("\226\255\210W,\15\226\250ESIn\195\237\222O\184\158,R\173\222\226\25\17\167\176R\229\224\251", 13362051035292)])
				end
			end

			if not v45 then
				n7 += 1

				if n7 > 5 then
					flag6 = false
				end

				v41(n7 < 4 and 10 or 120)
				continue
			end

			break
		end

		if flag8 then
			local v44 = v3
			v30(v3[fn2("\194", 33361102829917)] .. os[v3[fn2("nG\178p\189", 1458185897294)]]() .. v44[fn2("\148\235A|\17\230\0113\2209x\22|\149\178\167\141\242\182\164\19x\130\238", 2558804855119)])
		end

		arg[v3[fn2("\204*c\136֯\156\235c\228#\163\143\18\204", 14980229346943)]] = true
		arg[v3[fn2("\196\28p0\225\186\219]\246", 13544592716102)]] = v43
		flag6 = arg
		local v44 = v3

		v43:Send(fn6({
			[v3[fn2("\144\157\26\202J\143", 30815183269914)]] = v44[fn2("\158\177\19U", 18578448008086)],
			[v3[fn2("\222U\224\t", 256632127727)]] = {},
		}))

		v15(function(...)
			v43[v3[fn2("k(\166.\2433M", 11661192079980)]]:Connect(fn9)
			v43[v3[fn2("\15\210\249~|\227\202\248q", 12796171824781)]]:Connect(fn8)
		end)

		v15(function(...)
			v43[v3[fn2(" URU\22\156\133D\244\18\140\156u\238\15*", 31006315147468)]]:Connect(fn9)
			v43[v3[fn2("v\150P\222B\136';\166\162\1439", 3526275763412)]]:Connect(fn8)
		end)
	end

	v15(function(...)
		local v43 = v3
		arg[v3[fn2("\0Q8\178\17K1\246R", 27593859490914)]][v43[fn2("Q\211s\145*Q?", 8519327620862)]]:Connect(fn9)
		local v44 = v3
		arg[v3[fn2("\197,r \183r\1669N", 8460270018247)]][v44[fn2("Ó@Qd\143\153|\223", 32507452028482)]]:Connect(fn8)
	end)

	v15(function(...)
		local v43 = v3
		arg[v3[fn2("\29i\"\207\r\254\208\235\162", 33601628338749)]][v43[fn2("\127\0\163\179\239\249y\205g\245RE", 27001135915578)]]:Connect(fn8)
		local v44 = v3
		arg[v3[fn2("Z_\28\178_Aͣ8", 23336343229669)]][v44[fn2("h\177\227\15\189\1384\185\128\r\248H7\209\205\244", 11453953583531)]]:Connect(fn9)
	end)

	arg[v3[fn2("U0\18973y\172\177", 26105607905016)]] = tick()

	while v41(10) do
		if flag8 then
			local v43 = v3
			v30(v3[fn2("\145", 14951237432932)] .. os[v3[fn2("\2286\234N\229", 22975554966421)]]() .. v43[fn2("ח\31]\186]\218A}\226[{\251\17t\146էړg\20\toć:\170", 14658096969043)])
		end

		if arg[v3[fn2("\200tK\173\215\207e8\175\212\11Or\171\158", 15693215676695)]] then
			local v43 = v3

			arg[v3[fn2("t\168\177Eņ\218\30\232", 31886810313728)]]:Send(fn6({
				[v3[fn2("+\30H\139\251Z", 29989450607897)]] = v43[fn2("\234\23\201\8", 21721386241797)],
				[v3[fn2("\227o\137\144", 9220502430091)]] = {},
			}))

			if tick() - arg[v3[fn2("\161\183W҉G\174\t", 26743430013258)]] > 20 then
				if flag8 then
					local v44 = v3
					v30(v3[fn2("=", 25162833812362)] .. os[v3[fn2("\2501\245\132\"", 26944225862149)]]() .. v44[fn2("\240\161\251\171\150\228~\247ֶ\166T\188\2\n\31\4\nlA!\3P\242", 20296487356886)])
					warn(v3[fn2("\222\6\189\254ChVJX'\161Kl\129", 21935067385804)])
				end

				arg[v3[fn2("\156\156&\216d,<\149*", 15423698253852)]]:Close()
			end
		end
	end
end

tbl9.new = function(arg, arg2, ...)
	local tbl10 = {}
	v19(tbl10, arg)
	arg[v3[fn2("\227t\243=\230\148\11", 15742609307973)]] = arg
	local v43 = v24()
	local flag10 = false
	local v44 = nil
	local v45 = nil

	v27(function(...)
		local v46, v47 = v15(fn5, arg2)
		v44 = v46
		v45 = v47
		flag10 = true
	end)

	while not flag10 and v24() < v43 + 8 do
		v41()
	end

	if not flag10 then
		flag6 = false
		error(v3[fn2("\184y\139\177~s\r\17\174\255$3ٲv\2472N_\151S\1428", 21285433757039)])
	end

	assert(v44, v45)
	arg[v3[fn2("\232\nl\8\221\198\244\158\162", 15444099971119)]] = v45
	arg[v3[fn2("\212\216b", 32886494459811)]] = arg2
	local v46 = v3
	arg[v3[fn2("\154\254+\5n)\173\161d\163\227\187\2262\186", 7107314031067)]] = Instance[v3[fn2("f̜", 13855987348072)]](v46[fn2("\12\2423\140\203\204q\2223\23\184\t\169", 19879862814802)])
	local v47 = v3
	arg[v3[fn2("\246M\198tb߸\2464", 4490525347926)]] = arg[v3[fn2(">RVz5\150\2A\180;\184ķ\181\202", 26856176345523)]][v47[fn2(">4z\139p", 25648179928398)]]
	arg[v3[fn2("sfê\t\245<\19", 6486672316313)]] = {}
	arg[v3[fn2("U\245\146]\170\143@8N@#\176\212\228\178", 12321563454675)]] = true
	v42(fn7)(arg)

	repeat
		v28:Wait()
	until arg[v3[fn2("\174\181j@\3-\232\22", 34774190194305)]]

	return tbl10
end

tbl9.request = function(arg, arg2, ...)
	if flag8 then
		local v43 = v3
		v30(v3[fn2("v", 34172876422225)] .. os[v3[fn2("\1532\200F\140", 32307729954184)]]() .. v3[fn2("O\221\216+\241\133\255\226;\180\16\22\27\253\203\u{58C}\246l\7\148o\130TO\4\nO\140\200\0u?\140u\183\132J\245hS\144\30<\219\3", 4505558192228)] .. v32(arg[v3[fn2("\239調\168\155^Q\134(\151\189m\150\196", 22259347312890)]]) .. v43[fn2("\200", 12545982344612)])
	end

	local n7 = 0

	while not arg[v3[fn2("\214\240x\235\156NC\182\231{\193cx\215d", 1803941316240)]] do
		n7 += 1
		v41(0.1)
		if not (n7 > 40) then
			continue
		end

		if flag8 then
			warn(v3[fn2("\1950\131r\170\212EȪ\218Bil", 4536697655425)])
		end

		flag6 = false
		return v3[fn2("", 22063920336964)]
	end

	if flag8 then
		local v43 = v3
		v30(v3[fn2("Y", 27805393085735)] .. os[v3[fn2("\207\199us@", 9663971337000)]]() .. v43[fn2("bp\228\206D\24\1659\145\143\129bc\145\235\171\\\3\127[\2340x\247[\199GvH\160Q\147?\225̣w\tC", 19677993191318)])
	end

	local v43 = math[v3[fn2("\158\226\202\\\232\159", 458501751211)]](1, 99999999)
	local v44 = v3
	local v45 = Instance[v3[fn2("J\3\167", 23438351816004)]](v44[fn2("\203%q\241\205e\171\179\26\144\200.v", 12404244098336)])

	if flag8 then
		local v46 = v3
		v30(v3[fn2("o", 27769958524166)] .. os[v3[fn2(">\238W\231\186", 6757263513749)]]() .. v46[fn2("\221O\190w\196!\176\224\7\187#ʮgm\217c", 26137821142806)])
	end

	arg[v3[fn2("\227\197\200eba\232\t", 21769706098482)]][v43] = v45
	local v46 = v3

	arg[v3[fn2("\178\18Q\147\250:[\134\176", 17162139319919)]]:Send(fn6({
		[v3[fn2("~\148\234\238Ɗ", 22738250781368)]] = v46[fn2("\142YQϺ\16\149", 21390663667153)],
		[v3[fn2("s\182\11\31", 24974923258587)]] = arg2,
		[v3[fn2("\183\1", 1700858955312)]] = v43,
	}))

	if flag8 then
		local v47 = v3
		v30(v3[fn2("\215", 27636810474634)] .. os[v3[fn2("-O0\128\243", 26764905505118)]]() .. v47[fn2("\229\171\27\129\190\143\178\29\245<<\251}yL", 15506378897513)])
	end

	local flag10 = false

	v27(function(...)
		v41(30)

		if not flag10 then
			if flag8 then
				local v47 = v3
				v30(v3[fn2("\178", 20659423169320)] .. os[v3[fn2("͗q;\138", 2741346535929)]]() .. v47[fn2("\195wkZ\144wȺ\168\1644\255\201\252U=\131\243\6\174KR!\250\179?ä\203\200\249\131\225<=c\8\216H\2452C\236\245\5\156", 29761810394181)])
			end

			local v47 = arg[v3[fn2("į\140R\1966\251\147", 8061899644244)]][v43]
			v47:Fire(v3[fn2("", 10378031441345)])

			if flag8 then
				local v48 = v3
				v30(v3[fn2("\19", 4223155474269)] .. os[v3[fn2("\138J\234w\251", 2422435481808)]]() .. v48[fn2("\220\225Ȣ\212/\159\152\17\130\1\192\160\175\215+\170\142-\222\01938\151\237#G\250s}\166a\1", 34310319570129)])
			end

			return v47:Destroy()
		end
	end)

	local v47 = v45[v3[fn2("6y\14\152\246", 14892179830317)]]
	flag10 = true
	return (v47:Wait())
end

tbl9.close = function(arg, ...)
	arg[v3[fn2("\241\199\234^{\15\210n\242Θ\147", 28222017627819)]] = true
	arg[v3[fn2("\248Ot\178\26\"\163W\188", 11388453333358)]]:Close()
end

local v43 = script_key or v3[fn2("O8\150\147", 28215574980261)]
local n7 = 0
local flag10 = false

v27(function(...)
	flag10 = true

	while not flag7 do
		n7 += 1
		v28:Wait()
	end
end)

while not flag10 do
	v28:Wait()
end

local function fn8(...)
	local v44 = n7

	while n7 == v44 do
		v28:Wait()
	end
end

local function fn9(arg, ...)
	local P_1, P_2, m_1, m_2, p_0, p_1, p_2

	if arg then
		p_1 = 1

		for i = 1, 99999999 do
			p_2 = 1
			P_2 = 99999999
			m_2 = 1 - p_2
			m_2 = m_2 + p_2

			if p_2 <= 0 then
				if m_2 >= P_2 then
					LPH_CRASH()
				end
			elseif m_2 <= P_2 then
				LPH_CRASH()
			end

			m_2 = m_1
			P_2 = P_1
			p_2 = p_1
		end

		p_1 = p_0
	end

	while v21() do
	end
end

local function fn10(arg, ...)
	local p_0, p_1, p_2
	p_1 = 1

	for i = 1, 2 do
		local n8 = arg % 9915 + 4
		local n9 = nil
		local n10 = nil
		p_2 = 1

		for i2 = 1, 3 do
			n9 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n9 += 522
			end

			n10 = arg % 9996 + 1

			if n10 % 2 ~= 1 then
				n10 *= 3
			end
		end

		p_2 = p_1
		local n11 = arg % 9999995 + 1 + 12946
		local n12 = arg % 1000
		local n13 = fn3((arg - n12) / 1000) % 1000
		local n14 = arg % (n8 * n9 + 9999) + 12946
		arg = (n12 * n13 + n11 + arg % (419824125 - n11 + n12) + (n14 + n12 * n9 + n13) % 999999 * (n11 + n14 % n10)) % 99999999999
	end

	p_1 = p_0
	return arg
end

local n8 = 1
local v44 = syn and syn[v3[fn2("D\180\156f\239S\239", 24172813637616)]] or request or http_request

if v13 and ({ v13() })[1] == v3[fn2("\25\247}t\225\1\187", 7949153311979)] then
	n8 = 9
elseif v13 and ({ v13() })[1] == v3[fn2("\144\144T\182[\138\11\21\232z", 2290361206869)] then
	if ({ v13() })[2] == v3[fn2("@I\129", 19850870900791)] then
		n8 = 5
	else
		n8 = 2
	end
elseif FLUXUS_LOADED or EVON_LOADED or WRD_LOADED or COMET_LOADED or OZONE_LOADED or TRIGON_LOADED then
	n8 = 4
elseif KRNL_LOADED then
	n8 = 3
elseif Electron_Loaded then
	n8 = 6
elseif v13 and ({ v13() })[1] == v3[fn2("\171\192\220JXȜ", 12815499767455)] then
	n8 = 7
elseif v13 and ({ v13() })[1] == v3[fn2("\169\192C<\132\166", 18670792623084)] then
	n8 = 11
elseif v13 and ({ v13() })[1] == v3[fn2("\229\232Z}%\134\210K`", 16058299038315)] then
	n8 = 11
elseif v13 and ({ v13() })[1] == v3[fn2("v\191", 18668645073898)] then
	n8 = 11
elseif v13 and ({ v13() })[1] == v3[fn2("\138\203G|", 30760420765671)] then
	n8 = 11
elseif v13 and ({ v13() })[1] == v3[fn2("y\142\4\231\253", 9953890477110)] then
	n8 = 11
elseif v13 and ({ v13() })[1] == v3[fn2("h\16\196\"\236", 28973659842919)] then
	n8 = 15
end

if v13() == v3[fn2("\236<\200I", 5129421230761)] then
	n8 = 11
end

local function fn11(arg, arg2, ...)
	local p_0, p_1
	tbl7 = {}
	tbl6 = {}
	p_1 = 1

	for i = 0, arg do
		local v45 = v12(i)
		tbl6[i] = v45
		tbl6[v45] = i
	end

	p_1 = p_0
	p_1 = 1

	for i = 1, #arg2 do
		local v45 = arg2[i]
		tbl7[i - 1] = v45
		tbl7[v45] = i - 1
	end

	p_1 = p_0
end

local tbl10 = {}
local v45 = v3[fn2("?", 4071753256656)]
local v46 = v3[fn2("\170", 20685193759552)]
local v47 = v3[fn2("\235", 33316004297011)]
local v48 = v3[fn2(" ", 9831480173508)]
local v49 = v3[fn2(".", 12166939913283)]
local v50 = v3[fn2("\188", 20310446426595)]
local v51 = v3[fn2("\30", 7856808696981)]
local v52 = v3[fn2("J", 30505936187130)]
local v53 = v3[fn2("\22", 31005241372875)]
local v54 = v3[fn2("y", 15134852888335)]
local v55 = v3[fn2("p", 7987809197327)]
local v56 = v3[fn2("\227", 12325858553047)]
local v57 = v3[fn2("M", 14182414824344)]
local v58 = v3[fn2(")", 20544529287869)]
local v59 = v3[fn2("F", 24744061721092)]
local v60 = v3[fn2("\174", 28931782633792)]
tbl10[1] = v45
tbl10[2] = v46
tbl10[3] = v47
tbl10[4] = v48
tbl10[5] = v49
tbl10[6] = v50
tbl10[7] = v51
tbl10[8] = v52
tbl10[9] = v53
tbl10[10] = v54
tbl10[11] = v55
tbl10[12] = v56
tbl10[13] = v57
tbl10[14] = v58
tbl10[15] = v59
tbl10[16] = v60
fn11(255, tbl10)

fn3 = function(arg, ...)
	return arg - arg % 1
end

local function fn12(arg, ...)
	local n9 = 1103515245
	local n10 = 12345
	local n11 = 99999999
	local n12 = arg % 2147483648
	local n13 = 1

	return function(arg2, arg3, ...)
		local v61 = n11
		local n14 = n9 * n12 + n10
		local n15 = n14 % v61 + n13
		n13 += 1
		n12 = n15
		n10 = n14 % 4859 * v61 % 5781
		return arg2 + n15 % arg3 - arg2 + 1
	end
end

local function fn13(arg, ...)
	local p_0, p_1, p_2
	p_1 = 1

	for i = 1, 2 do
		local n9 = arg % 9915 + 4
		local n10 = nil
		local n11 = nil
		p_2 = 1

		for i2 = 1, 3 do
			n10 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n10 += 522
			end

			n11 = arg % 9996 + 1

			if n11 % 2 ~= 1 then
				n11 *= 3
			end
		end

		p_2 = p_1
		local n12 = arg % 9999995 + 1 + 12946
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n9 * n10 + 9999) + 12946
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	p_1 = p_0
	return arg
end

local function fn14(...)
end

local function fn15(arg, ...)
	local p_0, p_1
	local tbl11 = {}
	local tbl12 = {}
	local tbl13 = {}
	p_1 = 1

	for i = 1, 13 do
		local tbl14 = {}
		local tbl15 = {}
		tbl11[tbl14] = tbl15
		tbl12[tbl15] = i
		tbl13[tbl14] = tbl15
	end

	p_1 = p_0

	if arg then
		tbl11 = arg[1]
		tbl12 = arg[2]
		tbl13 = arg[3]
	end

	local n9 = 0
	local n10 = 0
	local n11 = 0

	for k, v61 in --[[?LTable]], v11, tbl11, nil do
		local v62 = tbl12[v61]

		if tbl13[k] == v61 then
			n9 += 1
		end

		n10 += 1
		n11 = n10 % 2 == 0 and n11 * v62 or n11 + v62 + n10
	end

	p_1 = p_0

	if n9 ~= 13 then
		n6 = -1
	end

	tbl8 = { tbl11, tbl12, tbl13 }
	n6 = n11
	return false
end

local function fn16(arg, ...)
	local p_0, p_1, p_2
	p_1 = 1

	for i = 1, 2 do
		local n9 = arg % 9915 + 4
		local n10 = nil
		local n11 = nil
		p_2 = 1

		for i2 = 1, 3 do
			n10 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n10 += 522
			end

			n11 = arg % 9996 + 1

			if n11 % 2 ~= 1 then
				n11 *= 3
			end
		end

		p_2 = p_1
		local n12 = arg % 9999995 + 1 + 12946
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n9 * n10 + 9999) + 12946
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	p_1 = p_0
	return arg
end

local function fn17(arg, ...)
	local p_0, p_1, p_2
	p_1 = 1

	for i = 1, 2 do
		local n9 = arg % 9915 + 4
		local n10 = nil
		local n11 = nil
		p_2 = 1

		for i2 = 1, 3 do
			n10 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n10 += 522
			end

			n11 = arg % 9996 + 1

			if n11 % 2 ~= 1 then
				n11 *= 3
			end
		end

		p_2 = p_1
		local n12 = arg % 9999995 + 1 + 12946
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n9 * n10 + 9999) + 12946
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	p_1 = p_0
	return arg
end

local function fn18(arg, ...)
	local n9 = 1103515245
	local n10 = 12345
	local n11 = 99999999
	local n12 = arg % 2147483648
	local n13 = 1

	return function(arg2, arg3, ...)
		local v61 = n11
		local n14 = n9 * n12 + n10
		local n15 = n14 % v61 + n13
		n13 += 1
		n12 = n15
		n10 = n14 % 4859 * v61 % 5781
		return arg2 + n15 % arg3 - arg2 + 1
	end
end

local n9 = 68
fn14(67, v3[fn2("\132", 3840891719161)], v3[fn2("\148\243v\159\160\235\254v\22\198&3\183[\220h\254qŎJ\25\208K\154\157\246]", 12721007603271)])
n6 = -1
fn15()

while n6 == -1 do
end

local v61 = fn18(n7 + n6)

if n8 == 9 or n8 == 15 then
	local n10 = 0

	v15(function(...)
		local function fn19(arg, ...)
			v32(arg[1])
		end

		fn19(v19({}, { [v3[fn2("\216K\237\155\22XS", 643190981207)]] = function(...)
			local fn20 = nil

			fn20 = function(...)
				n10 += 1
				return fn20()
			end

			fn20()
		end }))
	end)

	local n11 = 0

	v15(function(...)
		v44(v19({}, { [v3[fn2("\192\ra\139\231\195\12", 32549329237609)]] = function(...)
			local fn19 = nil

			fn19 = function(...)
				n11 += 1
				return fn19()
			end

			fn19()
		end }))
	end)

	if n11 + n10 < 20000 then
		n9 = 19
	elseif n11 - n10 ~= 0 then
		n9 = 189
	end
end

local function fn19(arg, arg2, arg3, ...)
	local v62 = v3
	local tbl11 = { [v3[fn2("\242~\242\192\31\156", 25253030878174)]] = v62[fn2("rs\254", 30562846240559)] }

	if arg2 then
		tbl11 = v19(tbl11, { [v3[fn2("\216\21m\142\201m\185", 4427172646939)]] = function(arg4, arg5, ...)
			if arg5 == v3[fn2("6c\17", 29393505708782)] then
				local v63 = v3
				local v64 = v16(v17(), v63[fn2("\1639\5\144\26ǈu&/\184", 32746903762721)])
				local v65 = v64()
				local v66 = v64()
				local n10 = 1

				v15(function(...)
					n10 = v18(v66) - v18(v65)
				end)

				if (n8 == 9 or n8 == 15) and (n10 ~= 0 or v65 ~= v66) then
					n9 = 121

					while arg3 do
					end
				end

				return arg
			end

			return v20(tbl11, arg5)
		end })
	else
		tbl11[v3[fn2("\226\245\174", 16547940252723)]] = arg
	end

	local v63 = v44(tbl11)

	if v63[v3[fn2("\133\\*\136\211ɹ\206\215j", 13445805453546)]] == 0 then
		if flag8 then
			warn(v3[fn2("j-F\128\162\139WIʯ\\хE\181p6\159O\23).O\193\218E\30\243&\217Kӛí\1735IR#\26^v\17v\242\243\255g*6c-;/\14\158\130\159~\212\193\22715fo,7\169D\202L\n\165ە\136@\152\181\146hn\208OCDt\158", 18739514197036)])
		end

		local v64 = v3
		writefile(v3[fn2("\207\249D\240\136>\28\137\129dÐ\214\30\184\231\139\226\150\24\179", 17214754274976)], v64[fn2("\216xc\22ѧ\29\211\253\25&\168\165\162\239_rגm*\250\8\190C\229\197ڊ\1792y\193\3|\21\198)$\183\28\14\127\167}\137 H\206\220J\198tݪ\165/\129\29`$'\176\252{v\185j\163M\160\tCEi\4\196z\255]\n\16zx\167\254\\W\168\181", 24541118323015)])
	end

	return v63[v3[fn2("2\224o\143", 15183172745020)]], v63[v3[fn2("\235\144\243\23326\138", 30737871499218)]]
end

fn8()

local function fn20(arg, ...)
	if v35()[8753563] == 22044 and n8 ~= 11 then
		if flag8 then
			warn(v3[fn2("MI\186Vb\245\221\195>\219۔\228\197\2258:\228<d\249\232\25\157|\139\228q\18寋k\17\11\202\232\154l|\190\2325\144\15\240-\210\234\162\6\158\183\227\237j\165\205W\1\145\189Q\241\233\238&\23\156/\205L꜊\255\134)\132!\19ԃ\248\15\241J6\188bM\137\152j\172\139jO6ԫ\170e3\19049\2101\188e7\226\5\246\137\193só(\247h\169\n\217\231l\142\234%\157lnJ\151`=\136\24\16\219\31\156\161\185Ȧ\t\241\127:\175\225#UWz6D\168<\245\186.ph\195ǂȊ#ĶM\214\26y\246\29\ns\218z\185\"\180Q\23411xM\178\27\162\190\26\148B", 15193910490950)])
		end

		v27(function(...)
			v21(5)
			v35()[8753563] = nil
		end)

		fn9()
	end

	v35()[8753563] = 22044
	local flag11 = false
	local tbl11 = { v22, v19, v32 }

	tbl11[-1] = n8 == 3 and function(...)
	end or v44

	local v62 = v26
	local v63 = v25
	local v64 = v24
	local v65 = v23
	local v66 = v15
	tbl11[4] = v12
	tbl11[5] = v62
	tbl11[6] = v63
	tbl11[7] = v64
	tbl11[8] = v65
	tbl11[9] = v66

	local function fn21(...)
		flag11 = true
		return v3[fn2("9", 805330944750)]:rep(16777215)
	end

	local v67 = v19({}, { [v3[fn2("\2\164\245C\127\213\\\162\31N", 24089059219362)]] = function(...)
		flag11 = true
		return v3[fn2("\n", 12700605886004)]:rep(16777215)
	end })

	for k, v68 in --[[?LTable]], v11, tbl11, nil do
		if k ~= -1 then
			local flag12 = n8 ~= 11

			if flag12 then
				local v69 = v3
				flag12 = v22(v68)[v69[fn2("\183\167\19\142", 33365397928289)]] == v3[fn2("\11h\3", 1198332445788)]
			end

			if flag12 then
				flag11 = true
			end
		end

		if v68 ~= v10 and v68 ~= v32 then
			local v69 = v10
			local v70 = v32
			local v71 = error
			local env = getfenv()
			env[v3[fn2("*\253\137\5\172\129[\220", 22630873322068)]] = fn21
			env[v3[fn2("d0\166\143,", 17147106475617)]] = fn21
			env[v3[fn2("\194\218Gp<", 22071436759115)]] = fn21

			if k == -1 then
				if n8 ~= 5 then
					v15(v68, v3[fn2("", 22141232107660)])
				end
			else
				v15(v68, v67)
			end

			env[v3[fn2("\236\169g\\\154\181>2", 19030507111739)]] = v70
			env[v3[fn2("OH\r\168\171", 146033344648)]] = v69
			env[v3[fn2("n9\171U\136", 23510294713735)]] = v71
		end
	end

	if flag11 and n8 ~= 11 then
		n9 = 85

		if arg then
			fn9(true)
		end
	end

	v35()[8753563] = nil
end

local v62 = n7
local v63 = nil
local flag11 = nil

while true do
	local v64 = v15(function(...)
		local v64 = fn19
		local v65 = v3
		v63 = v64(tbl5[v3[fn2("vx\194#", 12421424491824)]] .. v65[fn2("[O\242\0037\14\186", 5635169064064)], n8 == 9 or n8 == 15)
		local data = v14:GetService(v3[fn2("\14\162\t\231\29\182*\207)\183p", 24734397749755)]):JSONDecode(v63)

		if not data[v3[fn2(",b@\180%\197", 21709574721274)]] then
			warn(data[v3[fn2("#\144\1440\177J_", 15555772528791)]])
			fn9()
		end

		if not data[v3[fn2("'G\8\177li2\202", 6353524266781)]][tbl5[v3[fn2("\\\1927b`\19\180", 2717723494883)]]] then
			warn(v3[fn2("\170\225Ӥ\6t=\31\209\\\128W\254\215\219\217\208\249\214K,\170JOUZ\243o\144F\180\1443|\169+E\162\5\197\239\173\243y\2088$\250\24/7\4q)", 10233071871290)])
			fn9()
		end

		tbl5[v3[fn2("M<\173\140", 25338932845614)]] = flag4 and LT_R_RRT_H or v7 and v3[fn2("U՜\142s`Q\20;\18\198p\167-\154\139]\156\225\206\u{F45E}\2072:\0", 13360977260699)] or v3[fn2("\194\219Κ\2251\176\229", 20587480271589)] .. v6
		local v66 = tbl5
		local v67 = v3
		v9 = data[v3[fn2("\147\208\226r\29\14\12\29", 29417128749828)]][v66[v67[fn2("\234]\254\157\27yP", 25466712022181)]]]
	end)

	fn8()

	if not v64 then
		if flag11 then
			break
		end
		fn14(69, v3[fn2("\132", 5187405058783)], v3[fn2("z\144\199zz\217\30\184 .t\4\248Hc\184\169BB\254G\191\5\223\237t\220i", 2506189900062)])
		v6 = v3[fn2("\185\153\142\14\4\0Q\15~a\234\8\243\250\128\"\185\152v\229Y\160\205Mĸ~", 25562277960958)]
		tbl5[v3[fn2("ѝ\175\188", 12563162738100)]] = flag4 and LT_R_RRT_H or v3[fn2("\137q\219σ\146\245\230B)\11%\rè~\188\254\151Q\214En1?\194h\197p\202>\191\128\188\166", 19243114481153)]
		flag11 = true
	end

	if not v64 then
		continue
	end

	local function fn21(arg, ...)
		local n10 = 1103515245
		local n11 = 12345
		local n12 = 99999999
		local n13 = arg % 2147483648
		local n14 = 1

		return function(arg2, arg3, ...)
			local v65 = n12
			local n15 = n10 * n13 + n11
			local n16 = n15 % v65 + n14
			n14 += 1
			n13 = n16
			n11 = n15 % 4859 * v65 % 5781
			return arg2 + n16 % arg3 - arg2 + 1
		end
	end

	local flag12 = false

	v27(function(...)
		if not v15(function(...)
			local v65 = tbl9
			local new = v65.new
			local str2 = flag4 and LT_R_RRT_W

			if not str2 then
				str2 = v7

				if v7 then
					local v66 = v6
					local v67 = v3
					str2 = v3[fn2("\183b\225(\6", 22124051714172)] .. v66 .. v67[fn2("0Mz'W!\18\31\179uwA\241", 2211975661580)]
				end
			end

			if not str2 then
				local v66 = v6
				local v67 = v3
				str2 = v3[fn2("\146?\180M\218\\", 11448584710566)] .. v66 .. v67[fn2("S\1344\0225\167y%\153\151\160p\17F", 6916182153513)]
			end

			flag6 = new(v65, str2)
		end) then
			local v65 = v3
			fn14(75, v3[fn2("$", 1674014590487)], v65[fn2("\3ER\150\169\174/D\168\171\182\25\\\129i\223kg\5\21\233\248\2127\249՞\184\27\144\31\179\180xO\159\127݀*\28\194TT\189\145\233z\n", 9788529189788)])
			flag6 = false
		end

		flag12 = true
	end)

	local n10 = n7 % 8585 * v62 % 9910
	fn20()

	if flag5 then
		n9 = 146
	end

	fn14(85, v3[fn2("\164", 31753662264196)], v3[fn2("e\249\24\25\161 \251\8\2081\171\141\127Q:\247V\12\157\2432\28\237a\225", 6450163980151)])
	local v65 = fn21(n10 + v61(2, 4096))
	local v66 = v61(1111, 32768)
	local n11 = 12000 + ((1398563873 * ((1398563873 * (1361 + n10 + n6 % 1000 + n6) % 1610612736 + 22491) % 95716599 + 1) + 22491) % 95716599 + 1) % 120000 - 12000 + 1
	local tbl11 = { n11 + v65(100000, 1000000), v66, n11 + v61(3333, 15625) + n7, (v65(10000, 1000000)) }
	n6 = -1
	fn15()
	local flag13 = false

	if n6 == -1 then
		n6 = 100
		flag13 = true
	end

	local n12 = 0
	local n13 = 0
	local n14 = 0
	local n15 = 1
	local tbl12 = { [0] = 0 }

	local function fn22(arg, arg2, arg3, ...)
		arg2 = arg2 and arg or tbl6[arg]

		if not arg3 then
			arg2 = (arg2 + 4096 - tbl12[n12]) % 256
			n14 += arg2
			n12 = (n12 + 1) % n15
		end

		local n16 = arg2 % 16
		return tbl7[(arg2 - n16) / 16] .. tbl7[n16]
	end

	local function fn23(arg, ...)
		local p_0, p_1
		local n16 = 0
		p_1 = 1

		for i = 1, #arg do
			n16 += v25(arg, i)
		end

		p_1 = p_0
		return n16
	end

	local function fn24(arg, arg2, ...)
		local v67 = fn22
		local n16 = (fn22[v26(arg, 1, 1)] * 16 + v67[v26(arg, 2, 2)] + upv3[upv4]) % 256
		upv4 = (upv4 + 1) % upv5
		if arg2 then
			return n16
		end
		return upv6[n16]
	end

	local function fn25(arg, ...)
		local p_0, p_1
		local tbl13 = {}
		n13 = 0
		local n16 = 1

		while true do
			local v67 = fn24(v26(arg, n16, n16 + 1), true)
			n16 += 2
			local v68 = v3[fn2("", 13613314290054)]
			p_1 = 1

			for i = 1, v67 do
				v68 ..= fn24(v26(arg, n16, n16 + 1))
				n16 += 2
			end

			p_1 = p_0
			tbl13[#tbl13 + 1] = v68
			if not (n16 > #arg) then
				continue
			end
			break
		end

		return tbl13
	end

	local function fn26(arg, arg2, ...)
		local p_0, p_1
		local v67 = fn22(#arg, true, arg2)
		p_1 = 1

		for i = 1, #arg do
			v67 ..= fn22(v26(arg, i, i), false, arg2)
		end

		p_1 = p_0
		return v67
	end

	local function fn27(arg, arg2, arg3, ...)
		if arg == 1 then
			tbl12 = arg2
			n15 = arg3
		elseif arg == 2 then
			n12 = 0
			n14 = 0
		elseif arg == 3 then
			return n14
		end
	end

	local v67 = fn18(v61(2, 32768 + v24() % 2000) + n6 % 4096)
	local v68 = fn12(v65(1, 32768) + n7 + v24() % 1000)
	local v69 = v67(111111, 999999)
	local tbl13 = {}
	p_1 = 1

	for i = 1, v69 % 30 + 1 do
		local fn28

		if i == 2 then
			fn28 = v32
		elseif i == 8 then
			fn28 = v10
		elseif i == 17 then
			fn28 = v26
		else
			fn28 = function(...)
			end
		end

		tbl13[i] = fn28
	end

	p_1 = p_0
	local n16 = v68(111111, 999999) + 8900
	local n17 = v67(1, 1234) * v68(2, 1235) + n6 % 80000
	local n18 = 10000 + ((1445613873 * ((1445613873 * (n11 + n6) % 1627389952 + 23515) % 94716599 + 1) + 23515) % 94716599 + 1) % 100000 - 10000 + 1
	local tbl14 = { n18 + v67(100000, 1000000), n18 + v68(100000, 1000000), (v67(100000, 1000000)) }
	v4 = v4 or v5

	if v4 then
		n9 = 218
	end

	if flag13 then
		n9 = 250
	end

	local v70 = tbl14[1]
	local n19 = 11337 + tbl11[4]
	local str2 = (((fn26(v3[fn2("", 26309625077686)] .. n16) .. fn26(v3[fn2("", 16740145904870)] .. fn16(7618 + v69) .. fn13(n9 + n17) .. fn10(n16 - 8900))) .. fn26(n17 .. v3[fn2("", 17472460177296)]) .. fn26(v3[fn2("", 27987934766545)] .. v69)) .. fn26(tbl11[3] + 17755 .. v3[fn2("", 13603650318717)])) .. fn26(v3[fn2("", 32880051812253)] .. v70) .. fn26(v3[fn2("", 16629547121791)] .. n19)
	local n20 = tbl11[2] + 8900
	local str3 = str2 .. fn26(tbl14[3] .. v3[fn2("", 13202058620935)]) .. fn26(v3[fn2("", 15144516859672)] .. n20)
	local n21 = 7618 + tbl11[1]
	local str4 = (str3 .. fn26(tbl14[2] .. v3[fn2("", 18783538955349)]) .. fn26(v3[fn2("", 8523622719234)] .. n21)) .. fn26(str or v3[fn2("\15", 2953953905343)])
	local str5 = fn26(fn17(fn27(3) + 8373) .. v3[fn2("", 3140790684525)], true) .. str4
	local tbl15 = {}
	local v71 = v68(111111, 999999)
	local v72 = n6
	getfenv()[tbl15] = v71
	local v73, v74 = fn19(tbl5[v3[fn2("\209\30p\238", 17011810876899)]] .. v3[fn2("V", 25199342148524)] .. v9 .. v3[fn2("\221\209\n=o\17", 1184373376079)] .. tbl5[v3[fn2("p<\196O\205\0158s", 21268253363551)]] .. v3[fn2("c>\6\3F\162+y", 3976187317879)] .. str5 .. v3[fn2("\167Q\174", 1858703820483)] .. tbl5[v3[fn2("\15s )\130R\2366K\160\146G\162", 33488882006484)]] .. v3[fn2("\142\229\173", 8988567118003)] .. v43, n8 == 9 or n8 == 15)
	n6 = -1
	fn15(tbl8)

	while n6 == -1 do
	end

	while tbl11[2] ~= v66 do
	end

	local v75, v76, v77 = v33(tbl13)
	local n22 = 0

	for k, v78 in --[[?LTable]], v75, v76, v77 do
		if k == 2 and v78 ~= v32 then
			n9 = 147
		end

		if k == 8 and v78 ~= v10 then
			n9 = 147
		end

		if k == 17 and v78 ~= v26 then
			n9 = 147
		end

		n22 = k
	end

	p_1 = p_0

	if n22 ~= v69 % 30 + 1 then
		n9 = 147
	end

	local flag14 = false

	if n9 == 147 then
		flag14 = true
	end

	if n6 ~= v72 then
		n9 = 100
		flag14 = true
	end

	if v73 == v3[fn2("\196\205X", 28147927180902)] then
		while true do
		end
	else
		local fn28, n23, v78, n24, n25, v79, tbl16, n26, n27, n28

		do
			if v34(v73, v3[fn2("\166\222ʞ\1593\166ye\241v\251\148W\162\200<\128\148(ݯ\180\233/p\147\233F襣\136\185\170\1\172\250\235\173k", 1377652802819)]) then
				if v8 then
					v8(v3[fn2("Ҕ~E\164", 19446057879230)])
					return
				end
			end

			if v26(v73, 1, 1) == v3[fn2("\138", 5914350458244)] then
				local v80 = v3[fn2("l\24\178\25+\175\tY\29B갖X\23", 28383083816769)]
				local v81

				if string[v3[fn2("\220eg'", 2761748253196)]](v73, v3[fn2("\23GB\147\212y\236\24\167&\219\243@y;\217", 9639274521361)]) then
					v80 = v3[fn2("LY\1333\11w\134\174FP\194 \4\177,y7\5y", 15260484515716)]
					v81 = v26(v73, 2, #v73 - 17)
				else
					v81 = v26(v73, 2, #v73)
				end

				fn14(100, v3[fn2("\244\159\237\201L\217X\239\180\245$\181G?", 30952626417818)], v3[fn2("N=1MT {!\211Z\191R\207'\140\200\253|3\169\178\183\150U\25c", 27278169760572)], Color3[v3[fn2("\189o`", 30263263129112)]](1, 0, 0), v3[fn2("4\226\14\232\14", 13170919157738)])
				fn4(v80, v81)
				fn9()
			end

			if v74 then
				if not v74[v3[fn2("\2\209\252\2074\186vTX\135", 27265284465456)]] then
					local v80 = v74[v3[fn2("\212/tO\130\27\16ĩ\177", 17419845222239)]]
				end
			end

			local n29 = tbl11[4] % 256
			local tbl17 = { [0] = tbl11[1] % 256, tbl11[2] % 256, tbl11[3] % 256, n29 }
			fn8()

			fn28 = function(arg, ...)
				local n30 = 1103515245
				local n31 = 12345
				local n32 = 99999999
				local n33 = arg % 2147483648
				local n34 = 1

				return function(arg2, arg3, ...)
					local v80 = n32
					local n35 = n30 * n33 + n31
					local n36 = n35 % v80 + n34
					n34 += 1
					n33 = n36
					n31 = n35 % 4859 * v80 % 5781
					return arg2 + n36 % arg3 - arg2 + 1
				end
			end

			if getfenv()[tbl15] ~= v71 then
				n9 = 100
				flag14 = true
			end

			n23 = 1
			p_1 = 1

			for i = 1, 30 do
				local n30

				if v32({}) > v32({}) then
					n30 = n23 + 1
				else
					n30 = n23 * 2
				end

				n23 = n30 % 10000
			end

			p_1 = p_0
			fn27(1, tbl17, 4)
			v78 = fn25(v73)
			n24 = v78[1] - n16
			n25 = v78[4] - v69

			while n29 ~= tbl17[3] do
			end

			fn20()
			v79 = tbl17[3]

			tbl16 = {
				[0] = tbl17[0],
				[2] = tbl17[1],
				[4] = tbl17[2],
				[6] = v79,
				v78[9],
				[3] = v78[7],
				[5] = v78[2],
				[7] = v78[6],
			}

			fn27(1, tbl16, 8)
			n26 = v78[8] - tbl14[1]
			n27 = v78[3] - tbl14[2]
			n28 = v78[5] - tbl14[3]
			local str6 = v3[fn2("", 28654748788798)] .. fn17(tbl14[3] + 12600) .. fn16(tbl14[1] + 31) .. fn13(tbl14[2] + 10490)

			if v78[11] == str6 and ({ [str6] = true })[v78[11]] then
				flag2 = true
			else
				local str7 = v3[fn2("", 6334196324107)] .. fn10(tbl14[3] + 12600) .. fn13(tbl14[1] + 69) .. fn16(tbl14[2] + 10490)

				if v78[11] == str7 and ({ [str7] = true })[v78[11]] then
					flag2 = true
				end
			end
		end

		local n29, v80, str6

		do
			if flag2 then
				local flag15 = v18(v78[14] and v78[14] or v3[fn2("\230v", 11362682743126)]) == -1
				v18(v78[15] and v78[15] or v3[fn2("\8", 1527981245839)])
			end

			n6 = -1
			fn15()

			if n6 == -1 then
				n9 = 250
				n6 = 100
			end

			n29 = n7 + v67(111111, 999999) + v68(1234, 5678) + n6 % 99915 + n23
			tbl14[4] = n7 + n6 % 9951
			v67(100000, 1000000 + n6 % 1000)
			tbl14[5] = n6 % 8005 + n23 + v68(100000, 1000000 + n6 % 5000)
			tbl14[6] = v67(100000, 1000000)
			fn27(2)
			v80 = v78[10]
			local v81 = tbl14[6]
			local str7 = fn26(v3[fn2("", 11551667071494)] .. fn13(v78[13] + 6148) .. fn17(n29 + n9) .. fn16(v78[10] + v69)) .. fn26(tbl14[5] .. v3[fn2("", 33512505047530)]) .. fn26(v3[fn2("", 24280191096916)] .. n29) .. fn26(v3[fn2("", 281328943366)] .. v81) .. fn26(tbl14[4] .. v3[fn2("", 30946183770260)])
			str6 = fn26(fn13(fn27(3) + 8373) .. v3[fn2("", 1284234413228)], true) .. str7
		end

		local v81 = v78[12]
		local response = v14:HttpGet(tbl5[v3[fn2("\204=\165,", 285624041738)]] .. v3[fn2("\215", 34962100748080)] .. v9 .. v3[fn2("\180T}\144E`\233N0\18\159\197", 5342028600175)] .. v81 .. v3[fn2("l4\190", 13551035363660)] .. str6)

		while v79 ~= tbl16[6] do
		end

		if response == v3[fn2("-\n+", 31841711780822)] then
			while true do
			end
		else
			if v26(response, 1, 1) == v3[fn2("\231", 5502021014532)] then
				v14:GetService(v3[fn2("<\165\18]\1795\142", 2067016091525)])[v3[fn2("\135\2218q\250\240\249wOź", 21595754614416)]]:Kick(response)
				fn9()
			end

			do
				local v82 = fn25(response)
				local n30 = 1
				local v83 = fn28(1 + v67(100, 1000 + n23) + v68(500, 5000 + n23) + n7 % 10000)
				local flag15 = false
				local n31 = 0
				local flag16 = false
				p_1 = 1
				local flag17 = false
				local v84 = nil

				for i = 1, 3 do
					local v85 = v82[3]
					local str7 = fn13(tbl14[5] + 8900) .. fn13(tbl14[4] + fn23(flag16 and v3[fn2("\177", 34008588909496)] or v14[v3[fn2("\5fw\137\244", 33146347911317)]])) .. fn13(tbl14[6] + tbl14[2])

					if v85 == str7 and ({ [str7] = true })[v85] then
						flag3 = true

						if not (v82[8] and v82[8] ~= v3[fn2("C", 5343102374768)] and v82[8]) then
							local v86 = v3[fn2("x\138\221<\173~N", 31676350493500)]
						end

						if not (v82[9] and v82[9]) then
							local v86 = v3[fn2("\190;h\148\252\0\245", 23283728274612)]
						end

						v84 = v82[6]

						do
							local n32 = v82[1] - tbl14[4]
							local n33 = v82[7] - tbl14[5]
							local n34 = v82[5] - tbl14[6]
							local v86 = n26
							local v87 = n27
							local v88 = n28

							n26 = function(arg, ...)
								if not (flag15 or n31 < v29() - 8) then
									n30 = (n30 + arg % 66) % 6644
									return v86 * arg % n32 + arg * 3
								end

								while true do
								end
							end

							n27 = function(arg, ...)
								if not (flag15 or n31 < v29() - 8) then
									n30 = (n30 + arg % 50) % 5891
									return v87 * arg % 10000 + arg * n33 % 4
								end

								while true do
								end
							end

							n28 = function(arg, ...)
								if not (flag15 or n31 < v29() - 8) then
									n30 = (n30 + arg % 35) % 6711
									return (arg + n34) % 100 * arg % (v88 % 100 + 1)
								end

								while true do
								end
							end
						end

						flag17 = true
						break
					elseif i == 3 then
						flag17 = false
						v84 = nil
					else
						flag16 = true
						flag17 = false
						v84 = nil
					end
				end

				p_1 = p_0

				if not flag17 then
					while true do
					end
				elseif flag14 then
					while true do
					end
				else
					local v85, fn29, getupvalues_, tbl17, fireproximityprompt, firetouchinterest, getconnections, firesignal, fn30, fn31
					local fn32

					do
						do
							do
								while not flag12 do
									v28:Wait()
								end

								flag7 = true

								do
									local flag18 = false
									local flag19 = false
									local n32 = 0
									local n33 = 0
									local n34 = 0
									local flag20 = false
									local n35 = 0
									local n36 = 0
									local v86 = v78[12]

									v27(function(...)
										flag19 = true

										while not flag9 do
											local n37 = v83(1000, n30 + 10000) + n30
											local n38 = v83(1000, n30 + 10000) + n30
											n35 = n37
											n36 = n38
											fn27(2)
											local v87 = fn26
											local str7 = fn26(n36 .. v3[fn2("", 15363566876644)]) .. v87(fn17(n36 + v80) .. v3[fn2("", 6862493423863)] .. fn16(n35 + n16)) .. fn26(n35 .. v3[fn2("", 13612240515461)])
											local v88 = v3[fn2("", 26792823644536)]
											local v89 = v9
											local v90 = v3
											local str8 = tbl5[v3[fn2("\251k\3\137", 8239072452089)]] .. v3[fn2("\243", 6554320115672)] .. v89 .. v3[fn2("\1716y\6\132\215\1\133#\18\21'\12\146H\155\195\17", 8461343792840)] .. str7 .. v90[fn2("\224\212\238", 27556277380159)] .. v86

											v15(function(...)
												if flag8 then
													local v91 = v3
													v30(v3[fn2("@", 8025391308082)] .. v29() .. v3[fn2("\198\5\158\149\150H\31\14\31\12\163}g\158\31H\4\5\208[", 21377778372037)] .. v32(flag6) .. v91[fn2("\229\215", 957806936956)])
												end

												if flag6 == false then
													v88 = fn19(str8)
												else
													v88 = flag6:request({ [v3[fn2("E\143\147", 17306025115381)]] = str8 })
												end

												if flag8 then
													local v91 = v3
													v30(v3[fn2("\136", 8205785439706)] .. v29() .. v91[fn2("\20N\188+\204\18\227\131`OM\249P=\163n\206\2432", 6507074033580)])
												end

												if v88 and #v88 > 3 then
													if v88 == v3[fn2(",.[\"@+o>\223", 19626452010854)] then
														flag15 = true
														flag2 = false
														flag3 = false
														n25 = 1
														n24 = 2
														local v91 = v3
														v14:GetService(v3[fn2("K\26\21\0193\18\164", 34803182108316)])[v91[fn2("\210\201\222Q\159{D\181\180\253d", 29684498623485)]]:Kick(v3[fn2("\3\174d\163\173\15\196\248\n\148\211g\189\226M\252,\146?T\145^m\161\29J\31mM\158n\1\176D\232\133\t\2291r*\138W\145\0190\29\152I\176\177\147X^3\153O۴", 33049708197947)])
														fn9()
													end

													if v88 == v3[fn2("Ɖ\162J", 30249304059403)] then
														flag15 = true
														flag2 = false
														flag3 = false
														n25 = 1
														n24 = 2
														local v91 = v3
														writefile(v3[fn2("\231\151|(\168\248]\170\254\215\233V\231k\136M\172\129\168", 14824532030958)], v91[fn2("s25z\154\234a\131\145", 15250820544379)])

														while true do
														end
													else
														v88 = fn25(v88)[1]

														if v88 == fn13(n35 * n36 % 100000 + n29 + 7618) .. v3[fn2("", 28489387501476)] then
															n33 += 1
															flag20 = true
															flag18 = true
														elseif v88 == fn10(n35 * n36 % 100000 + n29 + 7618 + 4919) .. v3[fn2("", 15233640150891)] then
															flag20 = true
															flag18 = true
															flag9 = true

															v15(function(...)
																flag6:close()
															end)
														else
															flag15 = true
															flag2 = false
															flag3 = false
															n25 = 1
															n24 = 2
															local v91 = v3
															v14:GetService(v3[fn2("\197>x\169\18fL", 29485850323780)])[v91[fn2("\172\15\203V*\147lM\179R\26", 24838553885276)]]:Kick(v3[fn2("\174\191bRRQ*\193ع'\25\154\n\158j\6\129\242\184\187\21\21D\245\225tL\179\160(", 22159486275741)] .. n33)
														end
													end
												end
											end)

											v21(20)
										end
									end)

									while not flag19 do
										v28:Wait()
									end

									flag19 = false

									v27(function(...)
										flag19 = true
										local n37 = 200

										while true do
											n37 += 1

											if not flag9 and n37 >= 250 then
												if flag20 then
													n32 += 1

													if n32 > 4 then
														n32 = 0

														if n34 < 10 then
															n34 += 1
														end
													end
												else
													n34 -= 1

													if n34 <= 0 then
														flag15 = true
														flag2 = false
														flag3 = false
														n25 = 1
														n24 = 2
														local v87 = n33
														writefile(v3[fn2("\rq\227Ŗ\196C\12d5\169P\130\23\225R%\162/\160\157", 15647043369196)], v3[fn2("\226\254\178K\216\255Z+Z", 8167129554358)] .. v87 .. v3[fn2("\250\193X\28", 24571184011619)] .. v32(flag6))
													end
												end

												flag20 = false
												n37 = 0
											end

											n31 = v29()
											v21(0.18)
											if n31 ~= v29() then
												continue
											end
											flag15 = true
											flag2 = false
											flag3 = false
											n25 = 1
											n24 = 2
											local v87 = n33
											writefile(v3[fn2("\221aK\192\216\12q\174n\167\"\232\6\199\17:\166y\t=)", 26022927261355)], v3[fn2("\206\224\168?\226v\231\19\29", 709765005973)] .. v87 .. v3[fn2("\169d\175m", 10312531191172)] .. v32(flag6))
										end
									end)

									fn14(95, v3[fn2("\132", 22787644412646)], v3[fn2("\"\140\144$Il~ٳz\219Z\206:\t", 447764005281)])

									while not flag19 or not flag18 do
										v21()
									end
								end
							end

							do
								fn14(100, v3[fn2("^\156\160\174\193/5\1494\0U\206\225\165}", 10029054698620)], v3[fn2("[Q7ð=\11x\218~\1302}\200\234/m\228.\159", 31806277219253)] .. v29() - now .. v3[fn2("\252", 21953321553885)], Color3[v3[fn2("wܽ", 20447889574499)]](0, 1, 0), v3[fn2("\211\225ף", 11135042529410)])
								v85 = nil

								do
									local tbl18 = {
										[9] = 203,
										[3] = 20,
										[5] = 127,
										151,
										[8] = 58,
										[12] = 241,
										[10] = 126,
										[6] = 252,
										[4] = 224,
										[11] = 229,
										[7] = 24,
										[13] = 8,
										208,
									}

									luraph_runtime1(v84, buffer.fromstring("_\26\132\249\161\196_\129i\4\162\128\129\212\237\253\159a^\138y\148\236\183z\216\224yO\138\221\208\200\31r.+i\255\23\171\137\t=\147\253\169\255\139k\195\224\149\243\253*ğ2\26'\23\21\136\212\21\2\214US\140\r>\29\175e_P\"\231\192\12\t\162C\249\130\250\131\163\1\150\177:r~\159\7\205\r\214fJ2)\255\219u\28\5\179\162\144\1\14\227t\174\25\153\158\19\nx\141\206\2\182$\193\2031\143\206֤\152\231\156A\193\178s\131\150\245_G۸\228\170\\\250\222K\28/zW\254\183?\197\246\160\7\144\131\219\18-qq\206`x\200Y6߯'M_\251\189HAT\16\t\142k~\150Jj\132O\149\240(\134\143\189\202\230˂\184\149\137\175\186\252Ԗ\1278\246Od\164jR\142\165-\189\28\239\2>\191E\235[c\148~\233\243\156\n\191\186Tb+}\27\142\229\21\247q\228\194\14\219\8\238\29\172-\1I\23.=\161ġq\191\20ۺ\8\27\191\0203\23\193\23TGO\219\29 \1714BW\167\135A\186\163\253%\"\n\137\225\235Oq\134\196\241\173\161Hu\226\250\239\188O\227\162{\17_\186+\2147wy\242\148x\162\148\160D\r\170y\0165\165\203d\142\r~\128?\217\5\178~\221\212\16\155@\220l\133\7\n\199~\19\169]\162(iR<U\26\128䥔\227\249ua\1527Y\181\188vY\157ix\208]\2069<\237\29\156\240x\164\172C\7\179\212\16\174M*\2300\201y-1R\241v\23\237\228og<\132\179\238\205<$\178Vħ\29\136z3\226\200r߮Gx\152OH_-έ\144Ӝ\23\250amj\158\196\200\\֯2\1\1459\1297ԏ\134$\240y\14d\203\19m\158\207\12\152n\229\1402F\131Od\24驡\17*\159\154\18\166+m\27X,k.@\153\233A\254\248R\8G\29\199\r'\133\\Z\142\202-q\137%U\173u\135>W\215~\215ֱ\166\141\193\153`\172!.\27,[\166\6ֲ\147ʓ\251\t\8^sݯ\216ʉ8\130\220\2y\225\133Y#\197b\6j4E\161\172\234\167\236\235\26\27\12\188\154ܑZJ\2083\28\234\127F\217\2080\129Z\19\207\14\130\8j\130\231\30oNiX\15\"\230\2113\11\\-RGB\4\129:\135N\211\23/\27>\23\145\129\132s\138+\179`x\15\20:\192\1705z\211\252yԮD\249\186=\1\28#G\203%?Ǔ]\11\232)\140\30\178.\27\139FaND\226\146R\197\1\253x\147\196Hs̊\184{ez8;q\161\22W\248\165N\n\252\2144\8n\5\25\198\0\228\2447\208\2{\"\30\16\183,\237\219\211\242\158\5k\213\0157\238\192\n\17154\137\207\206ז\248\237\171|?\1642\160\141\27[\26~\237\8\239\28\229\247\188\163\"\135rq\145\142w\180Zg)\157\218D\153\240\na\210\203\228\"\146\160\191\159\253%Q\2003\228\212\195#\224\11\219\t\183\202\243\153.\221zR\187G\216wɤ\237\247\241\25:\22\145\238y\1403\182\188\193\168ٺӧA\222'\1928\212G\148\215\30\131\199\8\187?@ːlI\146z\2412\t\244\188\180\219G\173\164j\210M\18j:\227\128v\156\166\0\185%>\227\155\23m\225]\131s\154R\3\140\11wK\243\28.\237\223\4\232\176\192W3\208\207\234\170 #AP\to\138?\196:\30\130z\185\164\14\4\23s)\188ȗG\136+\211 \172+\163s\231\166r:\177\164\28~O\5\162\3˳\23pW\160\12\168\29I`\220\"\27\157\176\172\241\4J\184\25\166^\133>\179%\150\134o$\128\194>z\251ji\240\248\191 \n\165\220\12WGQd\215H&\156\193W\153\181~LG\244\172\245O\172\240̠֓\133N\229\206\244f\\\145\230F\227\161ɗw\1\240\233\127\187\"\143\2338\"\187bE.5V\12\210\18\205ϕ\240x\146\190\190\219f\"\242/\131h\223\8.\146\215=֯\0\135\176\220\227\148\242B\14p7\254\21\186N\199ޣ\17\183\6\151\27\147\1930*\131\244arE\30\161\143A\206Q\220]\236K\235\135z\165\182\232\218{\2187^HC\\:ua\193M\156<\198ɞ\156:\198b\19[\r\0255\23E\240\129\r\\\18a\218\213\220z\237\2\183|\144\210v\153a\143\190\215Î\6\205\31\161\246n\196P\255 \2476\213Ԅ\192\5ݭ\232\253\227)Ҵ\184V\241\166\r\235+\157\172U\193\219\"\145\147B\188\n\233I\152\253\r\nB0\221s\156ZL\132\197S\241t\31Z\229\251\u{E955}\249g\157\240\235|($\129\149\247V\180`\169\1808\152J,f%\21\164\130|[\242`Q\135\144\138\232\161!w\135\164\24E\170?^\146\255\25\210/\252\155\7\136\238\26M\137I\31\131y\224\19\148\220ekU6v\193\254\19\157ܤ\150\132\146;wl.j\177ܳ\183\151\157\155[c{\5ŝ\251\0\218\29:<\3:\221\14\224\nI1\2295\187 \1802\18\27\174U6\2436+\230\22\168aFU\223_\135G\134\151\248\185+M\251m\246*\191\21\23t\152K\30K>\223W\20\164\136\204\207\231\180L\138\199\19\159\171SV\131\241\222\255&\241\"\209\127\238\147\4\159\229kȝ\152\177\7\24\255\173\161k\127\136xCYP<\175-\153N\164\24\185\230\u{5FC}\136\223\30\221g̚'\26\174'zHF\2\246;\19B\218}\127\1\212\234̞Xz\176\180\206%\138K\247J\154\165H\247\219< e\2440mU\16$\149:\2453\224\231 fbf\197\4g\rBG>6\235\5\226~(~\218\3/\"3\177\217%۪\5w\174_E\154\224QhQ\173+M\182\1oy\158\24@\239\247NwF\15\155]\130\236e\128\"\3\220#\1682\28\244\223wE\245\155Q\2\224M\137\196l%\164۶\218'\145*\186`\163\141S\210\229ژ\21\137cS}@c\170\138\193\245\239\30\20\193\143|\195xЈtFK\1\235qڮ\u{E7A3}\145\246\146őS\212+\129\208\30\224\129\250\144\"V\29\249\19E\1954\27:\186v\6\138G\188\151\172.\190\157B\145\3\246-\247\243\186U\234\31\177\247\155\169I\18K\223?I\169\1619(a\211\16\223\4\197\224L\27 <\25X\141\187\25Ǩ\148\26A\26\179\8\188\1538\7\251\\\252}\30\133j\215i\206\204\238\16\230\253)W\154}\245\141=\243\3gL\168\155e\195_\24\209\2\154\172\189^\n\143\4\168\242\"\1673\138k\237\145^\240(9\196J\156w\149l]Vck/\11>\158l\228'+t\200ۜmy\247J\216\249!mxO9\148\164\224\234\185b~\183\129!\156N\171\220EP\138\243q\218\251\140V=\1621\4\4\135O\253\252N\222\214\2193c]=\246\168(\227@\181-xߗ\233\242\236ȶ+֦,\240\249k~\161\251\160\215\255Ψ\196k/(*A\171s\193_\156\143\220B\165\224\24)\166}\249u\236\218\0272\248g\169\184\2213\3+na\8\168\179p\0284\140\28s\204}[\18vE\218k\244ӡH\206\207~+\17$\1ĭSM\230q\186\177-\2\20I\191R\201\r\225C\204j\181di)\252YC\146x\215\18iĲ\4O\16\17\181\137\176^\5Ƙ\192\171f\254?yi9\225\246\251\161\145\136S\242\228!\147\28\147\189\157\143\152\6\135<\11B<\203,\245\185u\18|&\172\173\172>ϟ1T\180\149\240\181\177\228\251\134\143*\12p\225W\1\223+\188\r\169*c\235\224s\199a\135@D\240\142\246Ԟ5\203\220%\140\246\212\31Q\201\27\31\208;.\1\255\232\161Cm\8'j\230e\248\157#\188Q\156pm\238\5\171\212\n\221\216n\15ڨ#)</\150\"\150\242\27\0175\221\240P\194V\146\226\159M=\229~\149\24$ʔ\1532\145\190\178\169?I\27iZ\139<:4I7\u{5CA}\212\31̒K\186\225\188D\254\220k\225\28\141\189'.\195_)~~\233\209R\199\200z\1W\0\186\19\150)\226=\221R\182\3\138\130\4\145\221\193\226\166@\149\2\1325B8̡՝\130}\6\224\16\177R\187m\31A\0237_\\\231=?\188\190\184\202\11\224{\195\251\249\25\20\244\189o\160\147\247\244j\235%cO\160\147\224Ź\200dn*\238\15\165\167\5\176;\152\215Wuw\169\145/\147\242\253\213A\185\16\127\245\201\248~\198\24\218\6\1˲\232\201\20M\142\222n4g;\146ӎ.k`\187\193oP\149\248\138\167\235\178]\129\208\255\2280)\202N\254T\143\12\147?T*\"j*\174g\29\243RN\183\161\0\136\183\142\209\245\229\219Ja\224F\137#\170\2\179u6\7\30F\138\127\181\148Sh\149\142\28\136\182~\171\160FzX\4\208\8/\229-\133S\235\233,8\128o\146\232|rw\132\30\n5\227yqu\203\211c\r\203\"\250M>!:\"\144\228i0\28\131\170\24=\179\156\t\197;\248-\t\129\178\n\198\11\24K\169\155?\234PRݖ-\201\0\19\237\204S\n\0\174T9\157\235\140j\4#\244\185n\28r\215\251\159W/C\174\230O\152G#\u{EDDF}\154P\201:\127\171DG^p(\159\179^ŭ\236ܟNs\4\196y\243\238v;W\199\213>RR}^D2\2240\218k߃\145\t\180/ @\212.\132\2015\2350v\236\21Y6\179\22=\145X\233.ґ\140\5\236Pm\194\220r\162\177\223\241\u{9F}NVc\29\172\215^\255\12\205of\12+dV[S3\254f!\15Yב\254\134\3O\u{7B2}\152\2402\237k\6\239\232Ք\133\249̊\16p\226OpH?b\8]\145\14P\151\145\243\185\150\28\164}{\0\172\214\225Ig\230&\141\18\151\167\139\127j\148\11d#8\169J*I\148lK\180\181d\242Uy\187n\1\0058\128\0310\161\28\201\192}ː\178\149\220~=\132\29\168\190T\153\155\174\138\217\201+E\205aA\190Lh\158\229]\152\142\175\253\25\174\3 \210uM\231mx\254\127\229\186Rm\5\25\229\230-GS\22N;?bw\232U4i\250b\163\169\255\12=\220\211F\160E\128i~\2k\139&\160\0\187\19ۜ\234L\150\19T\131\"\2279\17'H\214\4\247:\227;\160\179F\179ȥ\131V'o5\2542\11\249\165T+\182\156\2064H\224\234h\154G\228O\200Χ\210\233\238\181\245\187-\192S\155kH(ψ|\20\150\162\175\134\171R\231\194\29\195\231g\151N\30m$J;\215\192j\152<k\0012\160T(\190\1573\243\12\151\220\1H\244\149&ޛ\14\244F\229kYI\230x\25\172\31\216\255\183\201\208+Kv\127!Z\246\23K\11\216\28\182\0216\8\180\129\212.\141\193\192\180b\20\191\131i\224\\(\171\171u\170Ԡ\168`\12}ը\225O:\168\176\229\220؊\168\158\14\223R2\172\t(\157\211E\1728F꒚\20\21\187\241pe<$\171\212\251%\231\168Xj\144#(E\174\150\200\204(\239`\197\255\184Bř\199\25`\138\0\21\208\232\191\7C\198\16\225uL\244\29\tܻ%\238!\176`A\19b,S\160\162\180\241ň\167\148J\29\157\157j\250\134-\211OnER*t1\147\149ۻ\178\162t\145\150u\130\164\158Z\180Ha\145e3{\131\1732\164\1\228\252\6\173U\30\128g\149\21\241\195&\156Va\241xz\255\31\233\201\248\213:L\189E\193\218b\143\187\143\170\236!Zm\174\231c\186ͦ\167\246Vih\1\129\8vs<\129>\199X\2533?\0194sց&};\235\143$p\167rT\0266/^\233y\20\219H\11\218~\167\153_a\176\191\245g\140\181A6\2\1986ʬ\18\29\214\253U\7\192\185\11\241\133-Qx\157\148\216\7\183\229\209\19\249\164\u{74B}\242\147]1\4\228Ȅ.\5\167\12\243qt\234\209IOW\158\145\r\205\12R\22H\158+\19\"\214'\134\180f1\131\188.\223Yf#\22\239:\131\21M\195^\136\190K\180&\254\3yfS\0\0002\131\250\225ç\4\202\203\223꺙\207\0\153>\28\197\21s\159d\225\20\183J\24\225K\t\216n\245 !>\228\140t7m\1558\149\167\147\22\245\173\1760uA\137\225\175\221\246\21\251\146\213f\164y\134\127H\143\218\17\245\128\31ﭔ\231\127\228\190Yp#zP\134vn\u{603}J\186\200\197wW\230bA&\189DB\218c.\127%ko\221\5ݗ\15\192*w'.\216xӏ\160\147\149V\208\25q\193\174OA\21\176\243B\156\220wK\235SO\148F\209\234 \n\228W\192P\188RfZ\188\8\148v\218\216\217^\253o\26\127"), tbl18, 554)()
								end
							end

							if getgenv().__SAB_Running then
								warn("[sab] script da chay trong session nay roi - REJOIN roi execute lai.")
								warn("[sab] chay chong hai lan trong mot session da tung gay kick.")
								return
							end

							getgenv().__SAB_Running = true
							getgenv().__SAB_Gen = (getgenv().__SAB_Gen or v85[18]) + v85[39]

							do
								local sabGen = getgenv().__SAB_Gen

								fn29 = function(...)
									return sabGen == getgenv().__SAB_Gen
								end
							end
						end

						do
							local v86, tbl18

							do
								do
									getupvalues_ = debug and debug.getupvalues or getupvalues
									v86 = nil
									tbl17 = { level = 4, noIdentity = false }

									pcall(function(...)
										local config = getgenv().Config

										if config then
											local v87 = v85[91]
											config = getgenv().Config[v87]
										end

										local v87 = v85[134]
										if type(config) ~= v87 then
											return
										end

										if tonumber(config[v85[146]]) then
											if n28(v85[127]) <= 464 then
												tbl17.level = tonumber(config["Test Level"])
											else
												while true do
												end
											end
										end

										if config["No Identity"] == true then
											tbl17.noIdentity = true
										end
									end)

									do
										local misc = getgenv().Config and getgenv().Config.Misc

										local function fn33(arg, ...)
											if type(misc) ~= "table" then
												return "?"
											end
											local v87 = misc[arg]
											if v87 == nil then
												return "-"
											end
											return tostring(v87)
										end

										print(("[sab] build %s | config: TestLevel=%s NoIdentity=%s Optimization=%s ServerType=%s"):format("2026-08-23-l", fn33("Test Level"), fn33("No Identity"), fn33("Optimization"), fn33("Server Type")))
									end
								end

								print(("[sab] hieu luc: TEST=%d identity=%s"):format(tbl17.level, tbl17.noIdentity and "TAT" or "bat"))

								do
									local tbl19 = {
										"fireproximityprompt",
										"firetouchinterest",
										v85[120],
										v85[34],
										"firesignal",
										"setthreadidentity",
										"set_thread_identity",
										"setidentity",
										"getthreadidentity",
										"get_thread_identity",
										"getidentity",
									}

									local function fn33(arg, arg2, ...)
										local ok, result = pcall(function(...)
											return arg[arg2]
										end)

										if ok then
											return result
										end
										return nil
									end

									tbl18 = {}

									local function fn34(arg, ...)
										if type(arg) ~= "table" then
											return
										end

										for _, v87 in --[[?LTable]], tbl19, nil, nil do
											if tbl18[v87] == nil then
												local v88 = fn33(arg, v87)

												if v88 ~= nil and v88 ~= false then
													tbl18[v87] = v88
												end
											end
										end
									end

									pcall(function(...)
										fn34(getfenv(0))
									end)

									pcall(function(...)
										fn34(getfenv(v85[39]))
									end)

									pcall(function(...)
										if getgenv then
											fn34(getgenv())
										end
									end)

									pcall(function(...)
										if getrenv then
											fn34(getrenv())
										end
									end)
								end
							end

							fireproximityprompt = tbl18.fireproximityprompt
							firetouchinterest = tbl18.firetouchinterest or tbl18.firetouch
							getconnections = tbl18.getconnections
							firesignal = tbl18.firesignal

							do
								local setthreadidentity = tbl18.setthreadidentity or tbl18.set_thread_identity or tbl18.setidentity
								local getthreadidentity = tbl18.getthreadidentity or tbl18.get_thread_identity or tbl18.getidentity

								pcall(function(...)
									v86 = getrenv()
								end)

								local flag18 = false

								local function fn33(...)
									if tbl17.noIdentity then
										return nil
									end

									if v86 then
										pcall(setfenv, 0, v86)
									end

									if not (setthreadidentity and getthreadidentity) then
										return nil
									end
									local ok, result = pcall(getthreadidentity)
									if not ok then
										return nil
									end

									if not pcall(setthreadidentity, v85[42]) then
										return nil
									end
									return result
								end

								local function fn34(arg, ...)
									if arg and setthreadidentity then
										pcall(setthreadidentity, arg)
									end
								end

								fn30 = function(arg, ...)
									local spawn_ = task.spawn

									local function fn35(...)
										local v87 = fn33()
										arg(...)
										fn34(v87)
									end

									local v87 = table.pack(...)
									return spawn_(fn35, table.unpack(v87, 1, v87.n))
								end

								fn31 = function(arg, ...)
									local v87 = table.pack(...)
									local flag19 = false
									local v88 = v85[41]
									local v89 = nil

									task.spawn(function(...)
										local v90 = fn33()
										local ok, result = pcall(arg, table.unpack(v87, 1, v87.n))
										v88 = ok
										v89 = result
										fn34(v90)
										flag19 = true
									end)

									local now2 = os.clock()

									while true do
										local flag20 = not flag19

										if flag20 then
											local v90 = v85[102]
											flag20 = os.clock() - now2 < v90
										end

										if flag20 then
											task.wait()
											continue
										end
										break
									end

									return v88, v89
								end

								fn32 = function(arg, ...)
									local v87 = table.pack(...)
									local flag19 = false
									local v88 = v85[41]
									local v89 = nil

									task.spawn(function(...)
										if v86 and not tbl17.noIdentity then
											pcall(setfenv, v85[18], v86)
										end

										local ok, result = pcall(arg, table.unpack(v87, v85[39], v87.n))
										v88 = ok
										v89 = result
										flag19 = true
									end)

									local now2 = os.clock()

									while not flag19 and os.clock() - now2 < 10 do
										task.wait()
									end

									return v88, v89
								end

								if tbl17.level >= 1 then
									do
										local function fn35(arg, ...)
											local p_0, p_1

											if n25 > 6371 then
												while v85[145] do
												end
											end

											p_1 = 1

											for i = 1, 7 do
												local ok, result = pcall(function(...)
													return getfenv(i)
												end)

												if ok then
													local v87 = v85[134]
													ok = type(result) == v87
												end

												if ok then
													local ok2, result2 = pcall(function(...)
														return result.writefile
													end)

													if ok2 and result2 then
														print(("[sab] env (%s): writefile lo o getfenv(%d) - %s"):format(arg, i, flag18 and "BAT THUONG, wipe dang bat ma van lo" or "binh thuong, wipe dang tat"))
														return false
													end
												end
											end

											p_1 = p_0
											print(("[sab] env (%s): getfenv(1..7) khong thay writefile"):format(arg))
											return true
										end

										task.spawn(function(...)
											fn35(v85[29])
										end)

										fn30(fn35, "thread sach")
									end

									print("[sab] getrenv: " .. (v86 and "co" or "KHONG CO - lop global vo hieu"))

									if setthreadidentity and getthreadidentity then
										fn31(function(...)
											local ok, result = pcall(getthreadidentity)
											print("[sab] identity trong thread goi code game: " .. (ok and tostring(result) or "?"))
										end)

										if n24 >= 4551 then
											while true do
											end
										end
									else
										warn("[sab] executor khong co setthreadidentity - KHONG ha duoc identity xuong 2, moi lan cham code game deu chay o identity cua executor")
									end
								end

								if flag18 and not getgenv().__SAB_Queued then
									local queueOnTeleport = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport or fluxus and fluxus.queue_on_teleport

									if queueOnTeleport and pcall(queueOnTeleport, [[do
	local A = {}
	do
		local q = "777269746566696c652c7265616466696c652c617070656e6466696c652c697366696c652c64656c66696c652c6973666f6c6465722c6d616b65666f6c6465722c64656c666f6c6465722c6c69737466696c6573"
		local b = {}
		for i = 1, #q, 2 do b[#b + 1] = string.char(tonumber(q:sub(i, i + 1), 16)) end
		for _, n in string.split(table.concat(b), ",") do A[#A + 1] = n end
	end
	local m, r = getrawmetatable, setreadonly
	local function g(e, n)
		local o, v = pcall(function() return e[n] end)
		if o then return v end
		return nil
	end
	local function h(e, n)
		if g(e, n) == nil then return end
		pcall(rawset, e, n, false)
		if not g(e, n) then return end
		if r then
			pcall(r, e, false)
			pcall(rawset, e, n, false)
			if not g(e, n) then return end
		end
		if not m then return end
		local o, t = pcall(m, e)
		if not o or type(t) ~= "table" then return end
		local x = rawget(t, "__index")
		if type(x) ~= "table" then return end
		if r then pcall(r, x, false) end
		pcall(rawset, x, n, false)
	end
	local s = {}
	local function v(e)
		if type(e) ~= "table" or s[e] then return end
		s[e] = true
		for _, n in A do h(e, n) end
	end
	for i = 0, 20 do
		local o, e = pcall(getfenv, i)
		if o then v(e) end
	end
	pcall(function() if getgenv then v(getgenv()) end end)
	pcall(function() if getrenv then v(getrenv()) end end)
	task.spawn(function()
		while true do
			task.wait(5)
			for e in s do
				for _, n in A do h(e, n) end
			end
		end
	end)
end
]]) then
										local v87 = v85[145]
										getgenv().__SAB_Queued = v87
									end
								end
							end
						end
					end

					local flag18, tbl18, tbl19, tbl20, tbl21, v86, str7, tbl22, num, num2
					local num3, tbl23, n32, collectCashCap, num4, serverType, flag19, v87

					do
						flag18 = false
						tbl18 = {}
						tbl19 = {}
						tbl20 = {}
						tbl21 = {}
						v86 = nil
						str7 = nil
						tbl22 = {}
						num = nil
						num2 = nil
						num3 = nil
						tbl23 = { spin = true, coil = true, reset = true }

						do
							local config = getgenv().Config
							n32 = 0
							collectCashCap = nil
							num4 = nil
							serverType = nil
							flag19 = nil
							v87 = nil

							if type(config) == "table" then
								local fn33

								do
									do
										local rebirth = config.Rebirth
										n32 = 0

										if type(rebirth) == "table" then
											flag18 = rebirth[v85[45]] == true
											n32 = tonumber(rebirth["Max Rebirth"]) or 0
										end
									end

									fn33 = function(arg, arg2, ...)
										if type(arg2) ~= "table" then
											return
										end
										local v88, v89, v90 = pairs(arg2)

										for k, v91 in --[[?LTable]], v88, v89, v90 do
											local v92 = v85[152]

											if type(k) == v92 then
												arg[k] = v91 ~= false
											elseif type(v91) == "string" then
												arg[v91] = v85[145]
											end
										end
									end

									do
										local v88 = config[v85[25]]
										collectCashCap = nil
										v87 = nil

										if type(v88) == "table" then
											collectCashCap = v88["Collect Cash Cap"]
											v87 = v88[v85[72]]
											fn33(tbl18, v88["Ignore Secret"])
										end
									end
								end

								do
									local v88 = config[v85[6]]
									local v89 = v85[134]

									if type(v88) == v89 then
										fn33(tbl19, v88[v85[139]])
										fn33(tbl20, v88["Open Lucky Block"])
										fn33(tbl21, v88["Rare Lucky Block"])
									end
								end

								do
									local webhook = config.Webhook

									if type(webhook) == "table" then
										do
											local v88 = v85[152]

											if type(webhook.Url) == v88 and webhook.Url ~= "" then
												v86 = webhook[v85[59]]
											end
										end

										if webhook["Discord id"] ~= nil and tostring(webhook[v85[112]]) ~= "" then
											str7 = tostring(webhook["Discord id"])
										end

										fn33(tbl22, webhook["Ignore Notify"])
									end
								end

								local misc = config.Misc
								num4 = nil
								serverType = nil
								flag19 = nil

								if type(misc) == "table" then
									serverType = misc["Server Type"]
									num = tonumber(misc["Kick if Ping above"])
									num2 = tonumber(misc["Kick if FPS below"])
									num3 = tonumber(misc[v85[142]])
									flag19 = misc.Optimization == true
									num4 = nil

									if misc["Test Level"] ~= nil then
										num4 = tonumber(misc["Test Level"])
									end
								end
							end
						end
					end

					do
						local n33 = math.clamp(math.floor(num4 or 4), 0, 4)

						if n33 < v85[17] then
							warn(("[sab] TEST LEVEL %d - dang o che do bisect, KHONG farm day du"):format(n33))
						end

						if not (n33 <= 0) then
							local tbl24, fn33, fn34, serverType2, CollectionService, localPlayer, flag20, vector, n34, fn35
							local v88, v89, tbl25, secret, fn36, v90, v91, fn37, fn38, fn39
							local fn40, fn41, fn42, fn43, fn44, fn45, tbl26, tbl27, flag21, fn46
							local fn47, fn48, fn49, fn50, fn51, fn52, tbl28, fn53

							do
								local PathfindingService, n35, fn54, fn55, n36

								do
									local tbl29, v92, tbl30, fn56

									do
										do
											do
												local getServerType

												do
													tbl24 = {}

													fn33 = function(arg, ...)
														local v93 = table.pack(...)
														tbl24.task = select("#", ...) > 0 and arg:format(table.unpack(v93, 1, v93.n)) or arg
													end

													fn34 = function(...)
														print("[sab]", ...)
													end

													print("[sab] starting...")
													serverType2 = { Kind = "unknown", Raw = nil }

													do
														local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
														getServerType = RobloxReplicatedStorage:FindFirstChild("GetServerType") or RobloxReplicatedStorage:WaitForChild("GetServerType", 8)
													end
												end

												local function fn57(arg, ...)
													local flag22 = false
													local v93 = nil

													task.spawn(function(...)
														local ok, result = pcall(function(...)
															return getServerType:InvokeServer()
														end)

														if ok then
															local v94 = v85[13]

															if n26(1124) < v94 then
																v93 = result
															else
																while true do
																end
															end
														end

														flag22 = true
													end)

													local now2 = os.clock()

													while not flag22 and os.clock() - now2 < arg do
														task.wait(0.2)
													end

													return flag22, v93
												end

												if getServerType then
													p_1 = 1

													for i = 1, v85[123] do
														local v93, v94 = fn57(v85[106])

														if v93 and v94 ~= nil and v94 ~= "" then
															serverType2.Raw = v94

															if v94 == "VIPServer" then
																serverType2.Kind = v85[40]
															elseif v94 == "ReservedServer" then
																serverType2.Kind = v85[62]
															elseif v94 == "StandardServer" then
																serverType2.Kind = "public"
															end

															break
														else
															fn34(("server: attempt %d, no result yet"):format(i))
															task.wait(2)
														end
													end

													p_1 = p_0
												else
													warn("[sab] GetServerType remote not found")
												end
											end

											do
												local ReplicatedStorage

												do
													local Players, fn57

													do
														serverType2.IsPublic = serverType2.Kind == "public"
														serverType2.IsPrivate = serverType2.Kind == "private"
														serverType2.IsReserved = serverType2.Kind == v85[62]
														serverType2.Want = type(serverType) == "string" and serverType:lower() or nil
														serverType2.Match = serverType2.Want == nil or serverType2.Want == serverType2.Kind
														getgenv().ServerType = serverType2
														fn34(("server: %s (%s)"):format(serverType2.Kind, tostring(serverType2.Raw)))

														if not serverType2.Match then
															warn(("[sab] server is %s but config says %s"):format(serverType2.Kind, serverType2.Want))
														end

														Players = game:GetService("Players")
														CollectionService = game:GetService("CollectionService")
														ReplicatedStorage = game:GetService("ReplicatedStorage")
														PathfindingService = game:GetService("PathfindingService")
														localPlayer = Players.LocalPlayer
														fn33("Waiting for game to load...")

														if not game:IsLoaded() then
															game.Loaded:Wait()
														end

														while true do
															do
																local flag22 = fn29()

																if flag22 then
																	flag22 = not (localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart"))
																end

																if flag22 then
																	task.wait(v85[76])
																	continue
																end
															end

															break
														end

														do
															local function fn58(...)
																local v93 = getgc
																local v94 = getconstants
																local getconstants_

																if v94 then
																	getconstants_ = v94
																else
																	getconstants_ = debug and debug.getconstants
																end

																local getupvalues_2 = getupvalues or debug and debug.getupvalues
																local v95 = getprotos
																local getprotos_

																if v95 then
																	getprotos_ = v95
																else
																	getprotos_ = debug and debug.getprotos
																end

																if not (v93 and getconstants_ and getupvalues_2) then
																	return nil
																end
																local fn59 = nil

																fn59 = function(arg, arg2, ...)
																	local ok, result = pcall(getconstants_, arg)

																	if ok and type(result) == "table" then
																		local v96, v97, v98 = pairs(result)

																		for _, v99 in --[[?LTable]], v96, v97, v98 do
																			if v99 == "OnMouseLeftBegan" then
																				return true
																			end
																		end
																	end

																	local flag22 = not getprotos_

																	if not flag22 then
																		flag22 = (arg2 or v85[18]) >= 4
																	end

																	if flag22 then
																		return false
																	end
																	local ok2, result2 = pcall(getprotos_, arg)
																	if not ok2 or type(result2) ~= "table" then
																		return false
																	end
																	local v96, v97, v98 = pairs(result2)

																	for _, v99 in --[[?LTable]], v96, v97, v98 do
																		local flag23 = type(v99) == "function"

																		if flag23 then
																			flag23 = fn59(v99, (arg2 or 0) + 1)
																		end

																		if flag23 then
																			return v85[145]
																		end
																	end

																	return false
																end

																local ok, result = pcall(v93)

																if not (ok and type(result) == "table" and next(result) ~= nil) then
																	local ok2
																	ok2, result = pcall(v93, v85[145])

																	if ok2 then
																		local v96 = v85[134]
																		ok2 = type(result) == v96
																	end

																	if not ok2 then
																		return nil
																	end
																end

																local v96, v97, v98 = pairs(result)
																local n37 = 0

																for _, v99 in --[[?LTable]], v96, v97, v98 do
																	n37 += v85[39]

																	if n37 % 400 == 0 then
																		task.wait()
																	end

																	local v100 = v85[43]
																	if type(v99) ~= v100 then
																		continue
																	end
																	local ok2, result2 = pcall(getupvalues_2, v99)
																	if not ok2 or type(result2) ~= "table" then
																		continue
																	end
																	local v101, v102, v103 = pairs(result2)
																	local v104 = nil

																	for _, v105 in --[[?LTable]], v101, v102, v103 do
																		if typeof(v105) == "Instance" and v105:IsA("RemoteEvent") and v105.Name ~= "RE/TeleportService/Reconnect" then
																			v104 = v105
																			break
																		else
																			v104 = nil
																		end
																	end

																	if v104 and fn59(v99) then
																		return v104
																	end
																end

																return nil
															end

															fn57 = function(...)
																local v93 = fn58()
																if not v93 then
																	warn("[sab] reconnect remote not found")
																	return false
																end

																if v93.Name == "RE/TeleportService/Reconnect" then
																	warn("[sab] honeypot detected, not firing")
																	return false
																end
																fn34("hop: firing reconnect")

																local ok, result = pcall(function(...)
																	v93:FireServer()
																end)

																if not ok then
																	warn("[sab] hop failed: " .. tostring(result))
																	return false
																end
																return v85[145]
															end
														end
													end

													local want = serverType2.Want

													if want == "private" and serverType2.IsPublic then
														warn("[sab] config says Private but this is a public server, leaving")
														localPlayer:Kick("Wrong server type: need Private, currently in Public")
														flag20 = true
													else
														flag20 = false

														if want == "private (dupe)" then
															local n37 = #Players:GetPlayers() - 1
															local flag22 = not serverType2.IsReserved

															if flag22 or n37 > 0 then
																if flag22 then
																	warn(("[sab] need a dupe (reserved) server but currently in %s (%s)"):format(serverType2.Kind, tostring(serverType2.Raw)))
																end

																do
																	local sabHopCount = (tonumber(getgenv().SAB_HopCount) or 0) + 1
																	getgenv().SAB_HopCount = sabHopCount

																	if sabHopCount > 5 then
																		localPlayer:Kick(("Hopped %d times without finding an empty server"):format(5))
																	else
																		warn(("[sab] %s, hopping server (%d/%d)"):format(flag22 and v85[132] .. serverType2.Kind or n37 .. v85[93], sabHopCount, 5))

																		task.spawn(function(...)
																			local queueOnTeleport = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport or fluxus and fluxus.queue_on_teleport

																			if queueOnTeleport then
																				local str8 = "getgenv().SAB_HopCount = " .. sabHopCount .. "\n"
																				local sabLoader = getgenv().SAB_Loader

																				if type(sabLoader) == "string" then
																					str8 ..= sabLoader
																				end

																				local ok, result = pcall(queueOnTeleport, str8)

																				if not ok then
																					if n24 <= 4528 then
																						while true do
																						end
																					else
																						warn("[sab] queueonteleport failed: " .. tostring(result))
																					end
																				end
																			else
																				warn("[sab] executor has no queueonteleport, hop counter will reset")
																			end

																			fn57()
																		end)
																	end
																end

																flag20 = true
															elseif v85[141] <= n26(4786) then
																getgenv().SAB_HopCount = 0
																fn34("dupe (reserved) server, alone in here, starting farm")
															else
																while true do
																end
															end
														end
													end
												end

												vector = Vector3.new(-411.34, -6.5, 228.74)
												tbl29 = {}
												n34 = flag18 and math.floor(n32) or 0

												do
													local v93 = require

													fn35 = function(arg, ...)
														local flag22, v94 = fn31(v93, arg)

														if flag22 then
															local v95 = v85[134]
															flag22 = type(v94) == v95
														end

														if flag22 then
															return v94
														end
														local ok, result = pcall(v93, arg)
														return ok and result or {}
													end
												end

												v88 = ReplicatedStorage:WaitForChild(v85[19])
											end
										end

										do
											local v93

											do
												local v94, v95

												do
													v89 = fn35(v88.Animals)
													v94 = fn35(v88.Game)
													v95 = fn35(v88.Mutations)
													v93 = fn35(v88.Traits)
													v92 = fn35(v88.Rebirth)

													do
														local v96 = fn35(v88.Rarities)
														tbl25 = {}
														local v97, v98, v99 = pairs(v96)

														for k, v100 in --[[?LTable]], v97, v98, v99 do
															local flag22 = type(v100) == "table"

															if flag22 then
																local v101 = v85[107]
																flag22 = type(v100.Weight) == v101
															end

															if flag22 then
																tbl25[k] = v100.Weight
															end
														end
													end
												end

												p_1 = p_0

												if not (tbl25.Secret and tbl25.OG) then
													warn("[sab] cannot read Datas/Rarities, using fallback table")

													tbl25 = {
														Common = v85[39],
														Rare = 2,
														Epic = v85[126],
														Legendary = v85[17],
														Mythic = 5,
														[v85[122]] = 6,
														Secret = 7,
														OG = 8,
														Admin = v85[47],
													}
												end

												secret = tbl25.Secret
												tbl30 = { ["Spyder Elephant"] = true }

												do
													local tbl31 = {
														K = 1000,
														M = 1000000,
														B = 1e9,
														T = 1e12,
														Qa = v85[92],
														Qi = v85[53],
														Sx = 1e21,
														Sp = 1e24,
														Oc = 1e27,
														No = 1e30,
													}

													local tbl32 = {
														{ "T", 1e12 },
														{ v85[73], 1e9 },
														{ "M", v85[136] },
														{ v85[21], 1000 },
													}

													fn36 = function(arg, ...)
														local n37 = tonumber(arg) or 0

														for _, v96 in --[[?LTable]], tbl32, nil, nil do
															if n37 >= v96[2] then
																return ("%.4g%s"):format(n37 / v96[v85[42]], v96[1])
															end
														end

														return tostring(n37)
													end

													fn56 = function(arg, ...)
														if type(arg) ~= "string" then
															return nil
														end
														local match, v96 = arg:gsub("[%$,%s]", ""):match("^(%-?[%d%.]+)(%a*)$")
														match = match and tonumber(match)
														if not match then
															return nil
														end

														if v96 ~= "" then
															match *= tbl31[v96] or v85[39]
														end

														return match
													end
												end

												v90 = fn56(collectCashCap)
												v91 = fn56(v87)

												fn37 = function(...)
													local playerGui = localPlayer:FindFirstChild("PlayerGui")
													playerGui = playerGui and playerGui:FindFirstChild("LeftBottom")
													playerGui = playerGui and playerGui:FindFirstChild("LeftBottom")
													playerGui = playerGui and playerGui:FindFirstChild("Currency")

													if playerGui and playerGui:IsA("TextLabel") then
														if not flag3 then
															return
														end
														return fn56(playerGui.Text) or math.huge
													end

													return math.huge
												end

												fn38 = function(arg, arg2, arg3, ...)
													local v96 = v89[arg]
													if not v96 then
														return 0
													end
													local generation = v96.Generation

													if not generation then
														generation = (v96.Price or 0) * (v94.Game and v94.Game.AnimalGanerationModifier or v85[63])
													end

													local v97 = v85[39]

													if arg2 and v95[arg2] then
														v97 += v95[arg2].Modifier or v85[18]
													end

													local flag22 = false

													if type(arg3) == "table" then
														for _, v98 in --[[?LTable]], arg3, nil, nil do
															local v99 = v93[v98]

															if v99 then
																if v98 == "Sleepy" then
																	flag22 = true
																else
																	v97 += v99.MultiplierModifier or v85[18]
																end
															end
														end
													end

													local n37 = generation * v97

													if flag22 then
														n37 *= v85[159]
													end

													return math.round(n37)
												end
											end

											local tbl31, tbl32

											do
												tbl31 = { t = v85[18], list = {} }
												tbl32 = {}

												do
													local v94, v95, v96 = pairs(v93)

													for k, v97 in --[[?LTable]], v94, v95, v96 do
														if type(v97) == "table" and type(v97.Icon) == "string" then
															tbl32[v97.Icon] = k
														end
													end
												end
											end

											p_1 = p_0

											do
												local function fn57(...)
													local t = tbl31.t
													if os.clock() - t < 1 then
														return tbl31.list
													end
													local list = {}
													local debris = workspace:FindFirstChild("Debris")

													if debris then
														local children, v94, v95 = debris:GetChildren()

														for _, v96 in --[[?LTable]], children, v94, v95 do
															if v96:IsA(v85[10]) then
																local children2, v97, v98 = v96:GetChildren()

																for _, v99 in --[[?LTable]], children2, v97, v98 do
																	if v99:IsA("BillboardGui") then
																		table.insert(list, { part = v96, gui = v99 })
																	end
																end
															end
														end
													end

													local v94 = tbl31
													tbl31.t = os.clock()
													v94.list = list
													return list
												end

												local function fn58(arg, arg2, ...)
													local n37 = arg2 or 12
													local v94, v95, v96 = fn57()
													local v97 = nil
													local gui = nil

													for _, v98 in --[[?LTable]], v94, v95, v96 do
														if v98.part.Parent then
															local magnitude = (v98.part.Position - arg).Magnitude

															if magnitude < n37 and (not v97 or magnitude < v97) then
																gui = v98.gui
																v97 = magnitude
															end
														end
													end

													return gui
												end

												fn39 = function(arg, arg2, ...)
													local generation = fn58(arg, arg2)
													generation = generation and generation:FindFirstChild("Generation", v85[145])
													if not (generation and generation:IsA("TextLabel")) then
														return nil
													end
													local match = generation.Text:match("^%s*([%d%.,]+%s*%a*)%s*/s%s*$")
													return match and fn56(match) or nil
												end

												fn40 = function(arg, arg2, ...)
													local traits = fn58(arg, arg2)
													traits = traits and traits:FindFirstChild("Traits", v85[145])
													if not traits then
														return {}
													end
													local tbl33 = {}
													local descendants, v94, v95 = traits:GetDescendants()

													for _, v96 in --[[?LTable]], descendants, v94, v95 do
														if v96:IsA(v85[148]) and v96.Visible and v96.Image ~= "" then
															local v97 = tbl32[v96.Image]

															if v97 and not table.find(tbl33, v97) then
																table.insert(tbl33, v97)
															end
														end
													end

													return tbl33
												end
											end
										end
									end

									do
										do
											local fn57, fn58

											do
												do
													fn41 = function(arg, arg2, arg3, arg4, ...)
														local tbl31 = { arg }

														if arg2 and arg2 ~= "" then
															table.insert(tbl31, "[" .. tostring(arg2) .. "]")
														end

														if arg3 and #arg3 > v85[18] then
															table.insert(tbl31, "{" .. table.concat(arg3, "+") .. "}")
														end

														table.insert(tbl31, ("%d/s"):format(arg4 or 0))
														return table.concat(tbl31, " ")
													end

													fn57 = function(arg, ...)
														local v93 = v89[arg]
														return v93 and tbl25[v93.Rarity] or nil
													end

													do
														local tbl31 = { OG = 200, Secret = 100 }

														fn42 = function(arg, ...)
															local v93 = v89[arg]
															if not v93 then
																return 0
															end

															if v93.LuckyBlock then
																return 10 + (tbl25[v93.Rarity] or 0)
															end
															return tbl31[v93.Rarity] or 0
														end
													end
												end

												fn58 = function(...)
													local tagged, v93, v94 = CollectionService:GetTagged("PlotSign")

													for _, v95 in --[[?LTable]], tagged, v93, v94 do
														local yourBase = v95:FindFirstChild("YourBase")
														if not (yourBase and yourBase.Enabled) then
															continue
														end

														while v95 do
															if CollectionService:HasTag(v95, v85[83]) then
																return v95
															end
															v95 = v95.Parent
														end
													end
												end

												do
													local function fn59(arg, ...)
														if arg:IsA("PathfindingModifier") and arg.PassThrough ~= true then
															pcall(function(...)
																arg.PassThrough = v85[145]
															end)
														end
													end

													local plots = workspace:FindFirstChild("Plots") or workspace
													local descendants, v93, v94 = plots:GetDescendants()

													for _, v95 in --[[?LTable]], descendants, v93, v94 do
														fn59(v95)
													end

													p_1 = p_0

													plots.DescendantAdded:Connect(function(descendant, ...)
														task.defer(fn59, descendant)
													end)
												end
											end

											do
												do
													local v93 = nil

													fn43 = function(...)
														if v93 and v93.Parent and v93:IsDescendantOf(workspace) then
															return v93
														end
														v93 = fn58()
														return v93
													end
												end
											end

											do
												fn44 = function(arg, ...)
													if not arg then
														return 0, 0, {}, 0
													end
													local animalPodiums = arg:FindFirstChild("AnimalPodiums")
													if not animalPodiums then
														return 0, 0, {}, 0
													end
													local huge = arg:FindFirstChild(v85[113])
													huge = huge and huge.Position.Y + v85[71] or math.huge
													local v93 = v85[18]
													local tbl31 = {}
													local children, v94, v95 = animalPodiums:GetChildren()
													local n37 = 0
													local n38 = 0

													for _, v96 in --[[?LTable]], children, v94, v95 do
														local num5 = tonumber(v96.Name)

														if num5 then
															local base = v96:FindFirstChild("Base")
															base = base and base:FindFirstChild("Spawn")

															if not (base and base.Position.Y >= huge) then
																local v97 = base and base:FindFirstChild(v85[87])

																if v97 then
																	local children2, v98, v99 = v97:GetChildren()
																	local flag22 = nil
																	local v100 = nil
																	local flag23 = nil

																	for _, v101 in --[[?LTable]], children2, v98, v99 do
																		if v101:IsA("ProximityPrompt") then
																			local attribute = v101:GetAttribute("State")

																			if attribute == v85[31] then
																				flag22 = true
																				flag23 = true
																				v100 = v101
																			else
																				local flag24 = attribute == "Grab" or attribute == "Open" or attribute == "Return"
																				flag22 = true

																				if flag24 then
																					flag23 = v85[145]
																				end
																			end
																		end
																	end

																	if flag22 then
																		n37 += 1

																		if flag23 then
																			v93 += 1
																			table.insert(tbl31, { slot = num5, prompt = v100, spawn = base })
																		else
																			n38 += 1
																		end
																	end
																end
															end
														end
													end

													return v93, n38, tbl31, n37
												end

												fn45 = function(arg, arg2, ...)
													local tbl31 = {}
													local children, v93, v94 = arg:GetChildren()

													for _, v95 in --[[?LTable]], children, v93, v94 do
														if v95:IsA("Model") then
															local ok, result = pcall(v95.GetPivot, v95)

															if ok then
																table.insert(tbl31, { model = v95, pos = result.Position })
															end
														end
													end

													local tbl32 = {}

													for _, v95 in --[[?LTable]], arg2, nil, nil do
														if v95.spawn then
															local position = v95.spawn.Position
															local model = nil

															for _, v96 in --[[?LTable]], tbl31, nil, nil do
																if (v96.pos - position).Magnitude < 4 then
																	model = v96.model
																	break
																else
																	model = nil
																end
															end

															if model then
																local name = model.Name
																local v96 = v89[name]

																if v96 then
																	local v97 = fn39(v95.spawn.Position, v85[123])

																	table.insert(tbl32, {
																		slot = v95.slot,
																		prompt = v95.prompt,
																		index = name,
																		data = v96,
																		rank = fn57(name),
																		gen = v97 or fn38(name, model:GetAttribute("Mutation"), nil),
																	})
																end
															end
														end
													end

													return tbl32
												end

												tbl26 = {}
												tbl27 = {}
												flag21 = n34 <= 0

												fn46 = function(...)
													local playerGui = localPlayer:FindFirstChild("PlayerGui")
													playerGui = playerGui and playerGui:FindFirstChild(v85[52])
													playerGui = playerGui and playerGui:FindFirstChild("Rebirth")
													playerGui = playerGui and playerGui:FindFirstChild("Content")
													if not playerGui then
														return nil
													end
													local holderImage = playerGui:FindFirstChild(v85[27])
													holderImage = holderImage and holderImage:FindFirstChild("HolderImage")
													if not holderImage then
														return nil
													end
													return playerGui, holderImage
												end

												fn47 = function(...)
													local v93, v94 = fn46()

													if not v93 then
														local v95 = v85[110]
														if n26(v85[28]) <= v95 then
															return nil
														end

														while v85[145] do
														end
													end

													local v95 = v94:FindFirstChild(v85[156])
													local bar = v94:FindFirstChild(v85[24])
													bar = bar and bar:FindFirstChild("Bar")
													bar = bar and bar:FindFirstChild("ProgressText")
													if not (v95 and bar) then
														return nil
													end
													local tbl31 = {}
													local children, v96, v97 = v95:GetChildren()

													for _, v98 in --[[?LTable]], children, v96, v97 do
														if not (v98.Name == "Template" or not v98:IsA("GuiObject")) then
															local characterName = v98:FindFirstChild("CharacterName")
															local checkImage = v98:FindFirstChild("CheckImage")

															if characterName and characterName:IsA("TextLabel") and characterName.Text ~= "" then
																table.insert(tbl31, { name = characterName.Text, have = checkImage and checkImage.Visible or false })
															end
														end
													end

													local text = bar.Text
													if text == "Completed!" then
														return { chars = tbl31, maxed = true, cashOK = true, level = #v92 }
													end
													local match, v98 = text:match("^%$%s*(.-)%s*/%s*%$%s*(.+)$")
													local v99 = match and v98
													local flag22 = false

													if v99 then
														local v100 = fn56(match)
														local v101 = fn56(v98)
														flag22 = v100 ~= nil and v101 ~= nil and v100 >= v101
													end

													local v100 = nil

													for k, v101 in --[[?LTable]], v92, nil, nil do
														local requiredCharacters = v101.Requirements and v101.Requirements.RequiredCharacters
														local v102 = v85[134]

														if type(requiredCharacters) ~= v102 or #requiredCharacters ~= #tbl31 then
															v100 = nil
														else
															local flag23 = true

															for _, v103 in --[[?LTable]], requiredCharacters, nil, nil do
																local flag24 = false

																for _, v104 in --[[?LTable]], tbl31, nil, nil do
																	if v104.name == v103 then
																		flag24 = true
																		break
																	end
																end

																if not flag24 then
																	flag23 = false
																	break
																end
															end

															if flag23 then
																v100 = k
																break
															else
																v100 = nil
															end
														end
													end

													return { chars = tbl31, cashOK = flag22, level = v100, maxed = false }
												end

												fn48 = function(arg, ...)
													if not arg.prompt then
														return v85[41]
													end

													if arg.data.LuckyBlock or arg.data.Egg then
														return false
													end

													if tbl27[arg.index] then
														if not flag2 then
															return
														end
														return false
													end

													if tbl30[arg.index] then
														return false
													end

													if table.find(tbl29, arg.index) then
														return false
													end

													if v91 then
														return (arg.data.Generation or 0) < v91
													end

													if arg.rank == nil then
														return false
													end

													if secret <= arg.rank then
														return false
													end
													return v85[145]
												end

												fn49 = function(...)
													local tbl31 = {}
													local tagged, v93, v94 = CollectionService:GetTagged("AnimalPurchasePrompt")

													for _, v95 in --[[?LTable]], tagged, v93, v94 do
														if not (not v95:IsA("ProximityPrompt") or not v95.Parent) then
															if not v95:GetAttribute("Disabled") then
																if v95:GetAttribute("TargetPlayer") == nil then
																	local parent = v95.Parent.Parent and v95.Parent.Parent.Parent

																	if parent and parent:IsA("Model") then
																		local attribute = parent:GetAttribute(v85[111])
																		local v96 = attribute and v89[attribute]

																		if v96 then
																			local primaryPart = parent.PrimaryPart
																			local attribute2 = parent:GetAttribute("Mutation")

																			table.insert(tbl31, {
																				index = attribute,
																				data = v96,
																				prompt = v95,
																				model = parent,
																				price = v96.Price or 0,
																				mutation = attribute2,
																				gen = primaryPart and fn39(primaryPart.Position) or fn38(attribute, attribute2, nil),
																			})
																		end
																	end
																end
															end
														end
													end

													return tbl31
												end

												n35 = 0
												n36 = 0

												do
													local now2 = v85[18]

													fn54 = function(arg, ...)
														if not tbl23.reset then
															return false
														end

														if os.clock() - now2 < 45 then
															return false
														end
														local character = localPlayer.Character
														local humanoid = character and character:FindFirstChildOfClass("Humanoid")
														if not (humanoid and humanoid.Health > 0) then
															return false
														end
														now2 = os.clock()
														print("[sab] reset nhan vat: " .. tostring(arg))
														fn33("Ket - reset nhan vat")

														pcall(function(...)
															humanoid.Health = v85[18]
														end)

														local now3 = os.clock()

														while true do
															local flag22 = fn29()

															if flag22 then
																local v93 = v85[23]
																flag22 = os.clock() - now3 < v93
															end

															if flag22 then
																local character2 = localPlayer.Character
																local humanoid2 = character2 and character2:FindFirstChildOfClass("Humanoid")
																character2 = character2 and character2:FindFirstChild(v85[133])
																if humanoid2 and character2 and humanoid2.Health > v85[18] then
																	task.wait(1)
																	return true
																end
																task.wait(0.2)
																continue
															end

															break
														end

														return v85[145]
													end
												end
											end
										end

										do
											local tbl31 = {}

											fn55 = function(arg, ...)
												for _, v93 in --[[?LTable]], tbl31, nil, nil do
													if v93.Parent and (v93.Position - arg).Magnitude < 5 then
														return
													end
												end

												local part = Instance.new("Part")
												part.Size = Vector3.new(v85[30], 10, 7)
												part.CFrame = CFrame.new(arg)
												part.Anchored = true
												part.CanCollide = false
												part.CanQuery = false
												part.CanTouch = false
												part.Transparency = 1
												local instance = Instance.new(v85[149])
												instance.PassThrough = false
												instance.Parent = part
												part.Parent = workspace
												table.insert(tbl31, part)

												if #tbl31 > v85[71] then
													local v93 = table.remove(tbl31, 1)

													if v93 then
														v93:Destroy()
													end
												end

												task.delay(120, function(...)
													if part.Parent then
														part:Destroy()
													end
												end)
											end
										end
									end
								end

								do
									local fn56, fn57, raycastParams, fn58, fn59

									do
										fn50 = function(...)
											local character = localPlayer.Character
											if not character then
												return nil
											end
											local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
											local v92 = character:FindFirstChildOfClass(v85[8])
											if not humanoidRootPart or not v92 or v92.Health <= 0 then
												return nil
											end
											return humanoidRootPart, v92
										end

										fn56 = function(...)
											local character = localPlayer.Character

											if not character or not character:FindFirstChild("HumanoidRootPart") then
												localPlayer.CharacterAdded:Wait()
												localPlayer.Character:WaitForChild("HumanoidRootPart")
											end
										end

										fn57 = function(arg, arg2, arg3, ...)
											local flag22 = ((arg - arg2) * Vector3.new(1, 0, 1)).Magnitude <= arg3

											if flag22 then
												local v92 = v85[30]
												flag22 = math.abs(arg.Y - arg2.Y) <= v92
											end

											return flag22
										end

										raycastParams = RaycastParams.new()
										raycastParams.FilterType = Enum.RaycastFilterType.Exclude
										raycastParams.RespectCanCollide = true

										fn58 = function(arg, arg2, arg3, ...)
											local character = localPlayer.Character
											if not character then
												return false
											end
											local filterDescendantsInstances = { character }

											if arg3 then
												table.insert(filterDescendantsInstances, arg3)
											end

											raycastParams.FilterDescendantsInstances = filterDescendantsInstances
											local n37 = arg2 - arg
											if workspace:Raycast(arg, n37, raycastParams) then
												return false
											end

											if workspace:Raycast(arg - Vector3.new(0, 2, v85[18]), n37, raycastParams) then
												return v85[41]
											end
											return true
										end

										do
											local tbl29 = {
												{
													AgentRadius = 2,
													AgentHeight = 5,
													AgentCanJump = true,
													AgentCanClimb = true,
													WaypointSpacing = v85[17],
												},
												{
													AgentRadius = v85[143],
													AgentHeight = v85[17],
													AgentCanJump = v85[145],
													AgentCanClimb = true,
													WaypointSpacing = 3,
												},
												{
													AgentRadius = v85[126],
													AgentHeight = 6,
													AgentCanJump = true,
													AgentCanClimb = v85[145],
													WaypointSpacing = v85[100],
												},
												{
													AgentRadius = v85[42],
													AgentHeight = 3,
													AgentCanJump = false,
													AgentCanClimb = true,
													WaypointSpacing = v85[106],
												},
											}

											local tbl30 = {
												{
													AgentRadius = 3,
													AgentHeight = 5,
													AgentCanJump = v85[145],
													AgentCanClimb = true,
													WaypointSpacing = v85[126],
												},
												{
													AgentRadius = 2.5,
													AgentHeight = 5,
													AgentCanJump = true,
													AgentCanClimb = true,
													WaypointSpacing = 3,
												},
												{
													AgentRadius = v85[42],
													AgentHeight = 5,
													AgentCanJump = v85[145],
													AgentCanClimb = true,
													WaypointSpacing = 2.5,
												},
												{
													AgentRadius = 1.5,
													AgentHeight = 4,
													AgentCanJump = true,
													AgentCanClimb = true,
													WaypointSpacing = 2,
												},
											}

											local function fn60(arg, arg2, arg3, arg4, ...)
												local n37 = 0.15 - os.clock() - n36

												if n37 > v85[18] then
													task.wait(n37)
												end

												n36 = os.clock()
												local v92 = PathfindingService:CreatePath(arg3)
												if not pcall(v92.ComputeAsync, v92, arg, arg2) then
													return nil
												end
												local status = v92.Status
												if status == Enum.PathStatus.Success then
													return v92
												end

												if arg4 then
													return nil
												end

												if status == Enum.PathStatus.ClosestNoPath or status == Enum.PathStatus.ClosestOutOfRange then
													return v92
												end
												return nil
											end

											local function fn61(arg, ...)
												if not arg then
													return v85[41]
												end
												local ok, result = pcall(arg.GetWaypoints, arg)
												return ok and result ~= nil and #result >= 2
											end

											fn59 = function(arg, arg2, arg3, ...)
												local flag22 = math.abs(arg.Y - arg2.Y) > 2 and tbl30 or tbl29

												for _, v92 in --[[?LTable]], flag22, nil, nil do
													local v93 = fn60(arg, arg2, v92, arg3)
													if fn61(v93) then
														return v93
													end
												end

												if arg3 then
													local v92 = fn60(arg, arg2, flag22[1], v85[41])
													return fn61(v92) and v92 or nil
												end
												return nil
											end
										end
									end

									do
										do
											local function fn60(arg, arg2, ...)
												local p_0, p_1
												local character = localPlayer.Character
												if not character then
													return arg
												end
												local filterDescendantsInstances = { character }

												if arg2 then
													table.insert(filterDescendantsInstances, arg2)
												end

												raycastParams.FilterDescendantsInstances = filterDescendantsInstances

												local function fn61(arg3, ...)
													return workspace:Raycast(arg3 + Vector3.new(v85[18], 2, 0), Vector3.new(0, -v85[100], 0), raycastParams) ~= nil
												end

												p_1 = 1

												for i = 2, #arg do
													local position = arg[i].Position
													local n37 = (position - arg[i - 1].Position) * Vector3.new(1, v85[18], 1)

													if not (n37.Magnitude < 0.5) then
														local vector2 = Vector3.new(-n37.Unit.Z, 0, n37.Unit.X)
														local v92 = fn61(position + vector2 * 2.6)
														local v93 = fn61(position - vector2 * 2.6)

														if v92 and not v93 then
															arg[i].Position = position + vector2 * 2.2
														elseif v93 and not v92 then
															arg[i].Position = position - vector2 * 2.2
														end
													end
												end

												p_1 = p_0
												return arg
											end

											local function fn61(arg, arg2, arg3, arg4, ...)
												while arg2 < #arg do
													local position = arg[arg2].Position
													local magnitude = ((arg3 - position) * Vector3.new(1, 0, 1)).Magnitude

													if arg4 then
														if magnitude <= 2.6 and math.abs(arg3.Y - position.Y) <= 4 then
															arg2 += 1
															continue
														end
													else
														local flag22 = magnitude < v85[106] and (arg[arg2 + 1].Position - position):Dot(arg3 - position) > 0
														if magnitude <= v85[82] or flag22 then
															arg2 += 1
															continue
														end
													end

													break
												end

												return arg2
											end

											fn51 = function(arg, arg2, arg3, arg4, arg5, ...)
												local p_0, p_1
												fn56()
												n35 += v85[39]
												local v92 = n35
												local n37 = os.clock() + arg3
												local flag22 = v85[41]
												local huge = math.huge
												local now2 = os.clock()
												local tbl29 = {}
												local v93 = v85[18]
												local n38 = 0
												local tbl30 = nil
												local v94 = nil
												local n39 = 0
												local n40 = 0
												local n41 = 2
												local n42 = 0
												local n43 = 0
												local v95 = nil
												local flag23 = nil

												while os.clock() < n37 do
													if v92 ~= n35 then
														return v85[41]
													end

													if arg4 and arg4() then
														return false
													end
													local v96, v97 = fn50()
													if not v96 then
														return false
													end
													local position = v96.Position
													local v98 = arg()
													if not v98 then
														return v85[41]
													end

													if fn57(position, v98, arg2) then
														return v85[145]
													end

													if os.clock() - n38 > 0.3 then
														n38 = os.clock()
														table.insert(tbl29, position)

														if #tbl29 > 24 then
															table.remove(tbl29, v85[39])
														end
													end

													local magnitude = ((v98 - position) * Vector3.new(1, 0, v85[39])).Magnitude
													local flag24 = math.abs(v98.Y - position.Y) <= 8
													local position2

													if flag24 and magnitude <= 120 and fn58(position, v98 + Vector3.new(0, 2, 0), arg5) then
														tbl30 = nil
														flag22 = false
														position2 = v98
													else
														local magnitude2 = v94 and ((v98 - v94) * Vector3.new(1, 0, 1)).Magnitude or math.huge
														local flag25 = not tbl30 and not flag22 or magnitude2 > 24
														local n44 = tbl30 and 1.2 or 0.7

														if flag25 and os.clock() - n39 >= n44 then
															n39 = os.clock()
															n40 += 1
															if n40 > 12 then
																fn34("nav: too many replans, giving up")
																return false
															end

															if flag24 then
																v97:MoveTo(v98)
															else
																local n45 = (v98 - position) * Vector3.new(1, 0, 1)

																if v85[63] < n45.Magnitude then
																	v97:MoveTo(position + n45.Unit * 8)
																end
															end

															local v99 = fn59(position, v98, not flag24)

															if v99 then
																tbl30 = {}
																local waypoints, v100, v101 = v99:GetWaypoints()

																for _, v102 in --[[?LTable]], waypoints, v100, v101 do
																	table.insert(tbl30, { Position = v102.Position, Action = v102.Action })
																end

																p_1 = p_0

																if not flag24 then
																	fn60(tbl30, arg5)
																end

																flag22 = v85[41]
																n41 = v85[42]
																huge = math.huge
																now2 = os.clock()
																v94 = v98
															else
																if not flag24 then
																	fn34(("nav: no path (cross floor) y=%.0f->%.0f"):format(position.Y, v98.Y))
																	local n45 = (v98 - position) * Vector3.new(v85[39], 0, v85[39])

																	if n45.Magnitude <= 0.1 then
																		v97:MoveTo(v98)
																	elseif n40 % 2 == v85[39] then
																		v97:MoveTo(position + n45.Unit * v85[100])
																	else
																		local vector2 = Vector3.new(-n45.Unit.Z, v85[18], n45.Unit.X)

																		if n40 % 4 == v85[18] then
																			vector2 = -vector2
																		end

																		v97:MoveTo(position + vector2 * 10)
																	end

																	task.wait(0.45)
																	tbl30 = nil
																	v94 = v98
																	continue
																end

																fn34("nav: no path (same floor), walking raw")
																tbl30 = nil
																flag22 = true
																v94 = v98
															end
														end

														if tbl30 then
															local v99 = fn61(tbl30, n41, position, not flag24)
															local v100 = tbl30[v99]

															if v100 and v100.Position.Y - position.Y > v85[106] and ((v100.Position - position) * Vector3.new(1, 0, 1)).Magnitude < 8 then
																tbl30 = nil
																n39 = 0
																v100 = nil
															end

															if v100 then
																if v100.Action == Enum.PathWaypointAction.Jump then
																	v97.Jump = true
																end

																position2 = v100.Position
																n41 = v99
															else
																tbl30 = nil
																position2 = v98
																n41 = v99
															end
														else
															if not flag24 then
																task.wait(0.15)
																continue
															end
															position2 = v98
														end
													end

													if not (position2.Y - position.Y > 0.9) then
														local n44 = (position2 - position) * Vector3.new(1, 0, 1)

														if v85[159] < n44.Magnitude then
															local filterDescendantsInstances = { localPlayer.Character }

															if arg5 then
																table.insert(filterDescendantsInstances, arg5)
															end

															raycastParams.FilterDescendantsInstances = filterDescendantsInstances
															local n45 = n44.Unit * math.min(n44.Magnitude, 4)
															local hit = workspace:Raycast(position, n45, raycastParams)
															local hit2 = hit and workspace:Raycast(position + Vector3.new(v85[18], 2, 0), n45, raycastParams)

															if hit and hit2 and math.abs(hit.Normal.Y) < 0.5 and math.abs(hit2.Normal.Y) < 0.5 then
																local vector2 = Vector3.new(hit.Normal.X, v85[18], hit.Normal.Z)

																if vector2.Magnitude > 0.1 then
																	local unit = vector2.Unit
																	local n46 = n44 - unit * n44:Dot(unit)

																	if n46.Magnitude > 0.5 then
																		position2 = position + n46.Unit * math.clamp(n44.Magnitude, 4, 8) + Vector3.new(v85[18], position2.Y - position.Y, v85[18])
																	end
																end
															end

															local n46 = (position2 - position) * Vector3.new(1, v85[18], v85[39])

															if n46.Magnitude > 0.5 then
																local unit = n46.Unit
																local vector2 = Vector3.new(-unit.Z, 0, unit.X)
																local hit3 = workspace:Raycast(position, vector2 * 2.4, raycastParams)
																local hit4 = workspace:Raycast(position, -vector2 * 2.4, raycastParams)

																if hit3 and not hit4 then
																	position2 -= vector2 * 1.8
																elseif hit4 and not hit3 then
																	position2 += vector2 * 1.8
																end
															end
														end
													end

													v97:MoveTo(position2)

													if not (magnitude < huge - 1) then
														magnitude = huge
													else
														now2 = os.clock()
														n42 = v85[18]
													end

													local n44 = os.clock() - now2
													local flag25 = position2.Y - position.Y > 0.9
													local flag26 = flag25 and n44 > 0.5 and v97.FloorMaterial ~= Enum.Material.Air

													if flag26 then
														local v99 = v85[65]
														flag26 = os.clock() - n43 > v99
													end

													if flag26 then
														v97.Jump = v85[145]
														n43 = os.clock()
													end

													if n44 > v85[39] and n42 == 0 then
														v97.Jump = v85[145]
														n42 = 1
														huge = magnitude
													elseif n44 > 1.6 and n42 == 1 and tbl30 and n41 < #tbl30 then
														if v95 ~= n41 then
															local n45 = (position - position2) * Vector3.new(v85[39], v85[18], 1)

															if not (n45.Magnitude > 0.1) then
																v95 = n41
															else
																v97:MoveTo(position + n45.Unit * 4)
																task.wait(0.35)
																v95 = n41
															end
														else
															n41 += 1
														end

														huge = math.huge
														now2 = os.clock()
														n42 = 0
													elseif n44 > 2 and n42 == 1 then
														if flag25 then
															v97.Jump = true
														else
															local n45 = (v98 - position) * Vector3.new(v85[39], 0, 1)

															if v85[63] < n45.Magnitude then
																local vector2 = Vector3.new(-n45.Unit.Z, 0, n45.Unit.X)

																if not fn58(position, position + vector2 * v85[123]) then
																	vector2 = -vector2
																end

																v97:MoveTo(position + vector2 * 5)
																task.wait(v85[65])
															end
														end

														n42 = 2
														huge = magnitude
													elseif not (n44 > 3) then
														huge = magnitude
													else
														flag23 = flag23 and (position - flag23).Magnitude < v85[106]

														if flag23 then
															v93 += v85[39]
														else
															v93 = v85[39]
														end

														if v85[42] <= v93 then
															fn34("nav: marking stuck zone")
															fn55(position + (v98 - position).Unit * 2)
														end

														if v93 >= 3 then
															if fn54("navigate ket " .. v93 .. " vong") then
																return false
															end
															fn34("nav: cornered with no exit, letting go")
															return false
														end

														if v93 == 2 then
															local n45 = -v85[39]
															p_1 = n45 + 0
															local v99 = nil

															for i = #tbl29, 1, n45 do
																if (tbl29[i] - position).Magnitude >= 10 then
																	v99 = tbl29[i]
																	break
																else
																	v99 = nil
																end
															end

															p_1 = p_0

															if v99 then
																fn34("nav: backing out of corner")
																local n46 = os.clock() + 2.5
																local exitTo = nil

																while true do
																	if os.clock() < n46 then
																		if v92 ~= n35 then
																			exitTo = 2
																			break
																		else
																			local v100, v101 = fn50()

																			if v100 then
																				if (v100.Position - v99).Magnitude < 4 then
																					exitTo = 1
																					break
																				else
																					v101:MoveTo(v99)
																					task.wait(0.1)
																					continue
																				end
																			end
																		end

																		break
																	else
																		exitTo = 1
																		break
																	end
																end

																if exitTo ~= 1 then
																	if exitTo == 2 then
																		return false
																	end
																	return false
																end
															end
														end

														flag22 = v85[41]
														huge = math.huge
														now2 = os.clock()
														n42 = v85[18]
														tbl30 = nil
														n39 = 0
														flag23 = position
													end

													task.wait(v85[63])
												end

												local v96 = fn50()
												local v97 = arg()
												return v96 ~= nil and v97 ~= nil and fn57(v96.Position, v97, arg2)
											end
										end
									end
								end

								fn52 = function(arg, arg2, arg3, arg4, ...)
									if arg then
										return fn51(function(...)
											return arg
										end, arg2, arg3, nil, arg4)
									end

									if n24 <= 4523 then
										while true do
										end
									else
										if v85[137] >= n28(v85[68]) then
											if not flag2 then
												return
											end
											return false
										end

										while true do
										end
									end
								end

								tbl28 = {}

								do
									local overlapParams = OverlapParams.new()
									overlapParams.FilterType = Enum.RaycastFilterType.Exclude

									fn53 = function(arg, arg2, ...)
										local p_0, p_1, p_2
										local n37 = math.min(arg.Y, arg2.Y)
										local n38 = math.max(arg.Y, arg2.Y)
										local n39 = (arg + arg2) / 2
										local floor2 = math.floor
										local n40 = n38 / v85[17]
										local str8 = ("%d:%d:%d"):format(math.floor(n39.X / 8), math.floor(n39.Z / 8), floor2(n40))
										local v92 = tbl28[str8]
										local flag22

										if v92 then
											local t = v92.t
											flag22 = os.clock() - t < 45
										else
											flag22 = v92
										end

										if flag22 then
											return v92.route
										end
										local decorations = fn43()
										decorations = decorations and decorations:FindFirstChild("Decorations")
										local tbl29 = nil

										if decorations then
											tbl29 = {}
											local children, v93, v94 = decorations:GetChildren()

											for _, v95 in --[[?LTable]], children, v93, v94 do
												if v95:IsA("BasePart") then
													table.insert(tbl29, v95)
												end
											end

											p_1 = p_0
										end

										if not tbl29 or #tbl29 < 4 then
											local character = localPlayer.Character
											overlapParams.FilterDescendantsInstances = character and { character } or {}
											tbl29 = workspace:GetPartBoundsInBox(CFrame.new(n39.X, (n37 + n38) / 2, n39.Z), Vector3.new(v85[14], n38 - n37 + 12, 100), overlapParams)
										end

										local tbl30 = {}

										for _, v93 in --[[?LTable]], tbl29, nil, nil do
											if v93.CanCollide then
												local size = v93.Size

												if not (size.Y > 12) then
													local v94 = v85[115]

													if not (math.min(size.X, size.Z) < v94) then
														local n41 = size.X * size.Z

														if not (n41 < 3.5 or n41 > 400) then
															local n42 = v93.Position.Y + size.Y / v85[42]

															if n42 > n37 + v85[90] and n42 < n38 + 3 then
																table.insert(tbl30, { part = v93, top = n42 })
															end
														end
													end
												end
											end
										end

										p_1 = p_0

										table.sort(tbl30, function(arg3, arg4, ...)
											return arg3.top < arg4.top
										end)

										local v93 = nil
										local v94 = nil
										p_1 = 1

										for i = 1, math.min(#tbl30, 20) do
											local v95 = tbl30[i]
											local tbl31 = { v95 }
											local v96 = v85[18]
											local unit = nil
											p_2 = 1

											for i2 = i + 1, #tbl30 do
												local v97 = tbl30[i2]
												local n41 = v97.top - v95.top

												if n41 > 0.2 and n41 <= 3.5 then
													local n42 = (v97.part.Position - v95.part.Position) * Vector3.new(1, v85[18], v85[39])
													local magnitude = n42.Magnitude

													if magnitude >= 0.4 and magnitude <= v85[106] then
														local flag23 = v85[145]

														if unit then
															flag23 = n42.Unit:Dot(unit) >= 0.65
														end

														if flag23 then
															table.insert(tbl31, v97)
															v96 += magnitude
															unit = unit and (unit + n42.Unit).Unit

															if unit then
																v95 = v97
															else
																unit = n42.Unit
																v95 = v97
															end
														end
													end
												end
											end

											p_2 = p_1
											local n41 = tbl31[#tbl31].top - tbl31[1].top

											if #tbl31 >= 4 and n41 >= (n38 - n37) * 0.55 then
												local n42 = v96 / (#tbl31 - 1)
												local n43 = #tbl31 - n42

												if n42 <= 4.5 and (not v93 or n43 > v93) then
													v93 = n43
													v94 = tbl31
												end
											end
										end

										p_1 = p_0
										local tbl31

										if v94 then
											tbl31 = {}

											for _, v95 in --[[?LTable]], v94, nil, nil do
												local position = v95.part.Position
												table.insert(tbl31, Vector3.new(position.X, v95.top + 2.4, position.Z))
											end

											p_1 = p_0
											local v95 = tbl31[1]
											local v96 = tbl31[#tbl31]
											fn34(("nav: route %d steps (%.0f,%.0f,%.0f)->(%.0f,%.0f,%.0f)"):format(#tbl31, v95.X, v95.Y, v95.Z, v96.X, v96.Y, v96.Z))
										elseif n24 <= 4523 then
											while true do
											end
										else
											fn34(("nav: no stairs found (%d candidates)"):format(#tbl30))
											local now2 = os.clock()
											local lastDump = tbl28.lastDump or 0
											tbl31 = nil

											if now2 - lastDump > 10 then
												tbl28.lastDump = os.clock()
												p_1 = 1

												for i = 1, math.min(#tbl30, v85[71]) do
													local v95 = tbl30[i]
													local size = v95.part.Size
													fn34(("  uv %s sz(%.1f,%.1f,%.1f) top %.1f (%.0f,%.0f)"):format(v95.part.Name, size.X, size.Y, size.Z, v95.top, v95.part.Position.X, v95.part.Position.Z))
												end

												p_1 = p_0
												tbl31 = nil
											end
										end

										tbl28[str8] = { t = os.clock(), route = tbl31 }
										return tbl31
									end
								end
							end

							local fn54, fn55, obj, n35, n36, n37, obj2, fn56, fn57, fn58
							local fn59, fn60, fn61

							do
								local fn62

								do
									local n38, fn63

									do
										local tbl29

										do
											do
												do
													local function fn64(arg, arg2, ...)
														local p_0, p_1
														local n39 = #arg
														local n40 = v85[39]
														local n41 = 1

														if arg2 then
															n41 = #arg
															n40 = -1
															n39 = 1
														end

														p_1 = n40 + 0

														for i = n41, n39, n40 do
															local v92 = arg[i]
															local now2 = os.clock()
															local now3 = v85[18]

															while v85[145] do
																local v93, v94 = fn50()
																if not v93 then
																	return v85[41]
																end

																if ((v93.Position - v92) * Vector3.new(1, 0, 1)).Magnitude <= 2.2 and math.abs(v93.Position.Y - v92.Y) <= 4 then
																	break
																end

																if os.clock() - now2 > 4 then
																	return false
																end
																v94:MoveTo(v92)

																if v93.AssemblyLinearVelocity.Magnitude < v85[90] and os.clock() - now2 > 0.5 and os.clock() - now3 > 0.35 then
																	v94.Jump = v85[145]
																	now3 = os.clock()
																end

																task.wait(v85[67])
															end
														end

														p_1 = p_0
														return true
													end

													local function fn65(...)
														local spawn_ = fn43()
														spawn_ = spawn_ and spawn_:FindFirstChild("Spawn")
														if spawn_ and spawn_:IsA("BasePart") then
															return spawn_
														end
														return nil
													end

													fn62 = function(arg, arg2, arg3, arg4, ...)
														local p_0, p_1
														if not (arg and arg.Parent) then
															return false
														end
														arg4 = arg4 or arg

														local function fn66(...)
															if not arg.Parent then
																return nil
															end
															return arg.Position
														end

														local flag22 = fn50()

														if flag22 then
															local v92 = v85[100]
															flag22 = math.abs(arg.Position.Y - flag22.Position.Y) > v92
														end

														if flag22 then
															p_1 = 1
															local exitTo = nil

															for i = 1, v85[42] do
																local v92 = fn50()

																if not v92 then
																	exitTo = 1
																	break
																else
																	local v93 = fn53(v92.Position, arg.Position)

																	if not (not v93 or #v93 < 2) then
																		local flag23 = arg.Position.Y > v92.Position.Y
																		local n39

																		if flag23 then
																			n39 = (v93[2] - v93[v85[39]]) * Vector3.new(1, 0, 1)
																		else
																			n39 = (v93[#v93] - v93[#v93 - 1]) * Vector3.new(v85[39], v85[18], 1)
																		end

																		local unit = n39.Magnitude > 0.1 and n39.Unit or nil
																		local v94 = flag23 and v93[v85[39]] or v93[#v93]

																		if unit then
																			unit = flag23 and v93[1] - unit * 4.5 or v93[#v93] + unit * v85[70]
																		end

																		local v95 = unit or v94

																		fn51(function(...)
																			return v95
																		end, 3, math.min(arg3, v85[100]))

																		local v96 = fn50()

																		if v96 and ((v96.Position - v95) * Vector3.new(1, 0, 1)).Magnitude <= 5 and fn64(v93, not flag23) then
																			exitTo = 2
																			break
																		else
																			local v97, v98, v99 = pairs(tbl28)

																			for k in --[[?LTable]], v97, v98, v99 do
																				tbl28[k] = nil
																			end

																			fn34("nav: climb failed, retry " .. i)
																			continue
																		end
																	end
																end

																break
															end

															if exitTo == 1 then
																return false
															end

															if exitTo == 2 then
																fn34("nav: climbing via stair route")
																if fn51(fn66, arg2, arg3, nil, arg4) then
																	return true
																end
															end

															p_1 = p_0
														end

														local v92 = fn50()

														if v92 and arg.Position.Y < v92.Position.Y - 8 then
															local v93 = fn65()

															if v93 and math.abs(v93.Position.Y - arg.Position.Y) <= 8 then
																fn51(function(...)
																	return v93.Position
																end, v85[100], arg3 * v85[90], nil, v93)
															end
														end

														if fn51(fn66, arg2, arg3, nil, arg4) then
															return true
														end
														local v93 = fn50()
														if not v93 or not arg.Parent then
															return v85[41]
														end

														if math.abs(arg.Position.Y - v93.Position.Y) > 8 then
															if n25 < 6330 then
																while true do
																end
															else
																local v94 = fn65()

																if v94 and math.abs(v94.Position.Y - v93.Position.Y) > 8 then
																	fn51(function(...)
																		return v94.Position
																	end, 10, v85[100], nil, v94)

																	return fn51(fn66, arg2, arg3, nil, arg4)
																end
															end
														end

														return false
													end
												end
											end

											fn54 = function(arg, ...)
												local m_1
												local v92 = table.pack(...)
												if not getconnections then
													return v85[41]
												end
												local ok, result = pcall(getconnections, arg)
												if not ok or type(result) ~= "table" then
													return false
												end
												local flag22 = false
												local exitTo = nil
												local function_

												for _, v93 in --[[?LTable]], result, nil, nil do
													if v93.Enabled ~= false then
														function_ = v93.Function

														if type(function_) == "function" then
															exitTo = 1
															break
														elseif v93.Fire then
															exitTo = 2
															break
														end
													end
												end

												local exitTo2, v93, function_2

												if exitTo == 1 then
													fn30(function_, ...)

													while true do
														flag22 = true
														exitTo2 = nil

														while true do
															local v94 = table.pack(m_1())

															if v94[1] then
																v93 = v94[3]

																if v93.Enabled ~= false then
																	function_2 = v93.Function

																	if type(function_2) == "function" then
																		exitTo2 = 1
																		break
																	elseif v93.Fire then
																		fn30(v93.Fire, v93, table.unpack(v92, 1, v92.n))
																		flag22 = v85[145]
																	end
																end
															else
																break
															end
														end

														if exitTo2 == 1 then
															fn30(function_2, table.unpack(v92, 1, v92.n))
															continue
														end
														break
													end
												elseif exitTo == 2 then
													fn30(s5.Fire, s5, ...)
													local exitTo4 = nil

													while true do
														flag22 = v85[145]
														local exitTo3 = nil

														while true do
															local v94 = table.pack(m_1())

															if v94[1] then
																v93 = v94[3]

																if v93.Enabled ~= false then
																	function_2 = v93.Function

																	if type(function_2) == "function" then
																		exitTo3 = 1
																		break
																	elseif v93.Fire then
																		exitTo3 = 2
																		break
																	end
																end
															else
																break
															end
														end

														if exitTo3 == 1 then
															exitTo4 = 1
															break
														elseif exitTo3 == 2 then
															fn30(v93.Fire, v93, table.unpack(v92, 1, v92.n))
															continue
														end

														break
													end

													if exitTo4 == 1 then
														fn30(function_2, table.unpack(v92, 1, v92.n))

														while true do
															flag22 = true
															exitTo2 = nil

															while true do
																local v94 = table.pack(m_1())

																if v94[1] then
																	v93 = v94[3]

																	if v93.Enabled ~= false then
																		function_2 = v93.Function

																		if type(function_2) == "function" then
																			exitTo2 = 1
																			break
																		elseif v93.Fire then
																			fn30(v93.Fire, v93, table.unpack(v92, 1, v92.n))
																			flag22 = v85[145]
																		end
																	end
																else
																	break
																end
															end

															if exitTo2 == 1 then
																fn30(function_2, table.unpack(v92, 1, v92.n))
																continue
															end
															break
														end
													end
												end

												return flag22
											end

											do
												local function fn64(arg, arg2, ...)
													local holdDuration = arg.HoldDuration
													local requiresLineOfSight = arg.RequiresLineOfSight
													local maxActivationDistance = arg.MaxActivationDistance
													local enabled = arg.Enabled

													pcall(function(...)
														arg.HoldDuration = 0
														arg.RequiresLineOfSight = false
														arg.MaxActivationDistance = 1000
														arg.Enabled = true
													end)

													local v92 = fn32(arg2)

													pcall(function(...)
														arg.HoldDuration = holdDuration
														arg.RequiresLineOfSight = requiresLineOfSight
														arg.MaxActivationDistance = maxActivationDistance
														arg.Enabled = enabled
													end)

													return v92
												end

												local tbl30 = {
													name = v85[12],
													run = function(arg, ...)
														if not fireproximityprompt then
															return v85[41]
														end

														return fn64(arg, function(...)
															fireproximityprompt(arg)
														end)
													end,
												}

												local tbl31 = {
													name = v85[78],
													run = function(arg, ...)
														return fn64(arg, function(...)
															arg:InputHoldBegin()
															arg:InputHoldEnd()
														end)
													end,
												}

												tbl29 = {
													{
														name = "connections",
														run = function(arg, ...)
															return fn54(arg.Triggered, localPlayer)
														end,
													},
													{
														name = "firesignal",
														run = function(arg, ...)
															if not firesignal then
																return false
															end
															return pcall(firesignal, arg.Triggered, localPlayer)
														end,
													},
													tbl30,
													{
														name = "fireprompt+dur",
														run = function(arg, ...)
															if not fireproximityprompt then
																return false
															end

															return fn64(arg, function(...)
																fireproximityprompt(arg, 0)
															end)
														end,
													},
													tbl31,
												}
											end
										end

										fn55 = function(...)
											return getconnections ~= nil or firesignal ~= nil or fireproximityprompt ~= nil
										end

										do
											local function fn64(arg, ...)
												local model = arg.model
												local prompt = arg.prompt
												if not (model and prompt) then
													return v85[41]
												end
												local max = math.max
												local maxActivationDistance = prompt.MaxActivationDistance or v85[102]
												local v92, v93

												return fn51(function(...)
													if not model.Parent or not prompt.Parent then
														return nil
													end

													if prompt:GetAttribute("TargetPlayer") ~= nil then
														return nil
													end
													local primaryPart = model.PrimaryPart
													if not primaryPart then
														return nil
													end
													local position = primaryPart.Position
													local now2 = os.clock()
													local vector2 = Vector3.zero

													if v92 and now2 > v93 then
														local n39 = (position - v92) / (now2 - v93)
														local v94 = v85[119]
														vector2 = Vector3.new(n39.X, 0, n39.Z) * v94

														if vector2.Magnitude > v85[71] then
															vector2 = vector2.Unit * 12
														end
													end

													v92 = position
													v93 = now2
													local v94 = fn50()
													if v94 and ((position - v94.Position) * Vector3.new(1, 0, 1)).Magnitude < 15 then
														return position
													end
													return position + vector2
												end, max(maxActivationDistance - v85[42], 4), 12, nil, model)
											end

											local function fn65(arg, arg2, ...)
												local n39 = os.clock() + arg2

												while os.clock() < n39 do
													if not arg.Parent then
														return false
													end
													local userId = localPlayer.UserId
													if arg:GetAttribute(v85[55]) == userId then
														return true
													end
													task.wait(0.1)
												end

												return false
											end

											obj = setmetatable({}, { __mode = "k" })
											n35 = 0
											n36 = 0
											n38 = 0
											n37 = 0
											obj2 = setmetatable({}, { __mode = "k" })
											local v92 = nil

											local function fn66(arg, ...)
												local v93 = fn50()
												local parent = arg.Parent

												if parent and parent:IsA("Attachment") then
													parent = parent.Parent
												end

												if not (v93 and parent and parent:IsA("BasePart")) then
													return v85[41]
												end
												return ((parent.Position - v93.Position) * Vector3.new(1, 0, 1)).Magnitude > (arg.MaxActivationDistance or v85[102]) + v85[17]
											end

											local function fn67(arg, ...)
												if arg:GetAttribute(v85[55]) == nil then
													if v92 then
														if fn66(arg) then
															return false
														end
														v92.run(arg)
														return fn65(arg, 1.2)
													end

													for _, v93 in --[[?LTable]], tbl29, nil, nil do
														if not arg.Parent then
															return false
														end

														if arg:GetAttribute("TargetPlayer") ~= nil then
															return false
														end
														local v94 = v93.run(arg)

														if v94 and fn65(arg, v85[115]) then
															v92 = v93
															print("buy: " .. v93.name)
															return true
														end

														fn34(("buy: %s %s"):format(v93.name, v94 and "fired ok, server silent" or "could not fire"))
														if fn66(arg) then
															fn34("buy: pet ran off, chasing")
															return false
														end
													end

													return false
												end

												if n28(2742) < 4163 then
													return v85[41]
												end

												while true do
												end
											end

											fn63 = function(arg, arg2, ...)
												if arg2 then
													return fn67(arg.prompt)
												end

												if not fn64(arg) then
													return v85[41]
												end
												return fn67(arg.prompt)
											end
										end
									end

									do
										do
											do
												local function fn64(arg, ...)
													local v92 = fn43()
													local animalPodiums = v92 and v92:FindFirstChild("AnimalPodiums")
													if not animalPodiums then
														return 0
													end
													local tbl29 = {}
													local children, v93, v94 = animalPodiums:GetChildren()

													for _, v95 in --[[?LTable]], children, v93, v94 do
														local base = v95:FindFirstChild("Base")
														base = base and base:FindFirstChild("Spawn")

														if base then
															table.insert(tbl29, base.Position)
														end
													end

													local children2, v95, v96 = v92:GetChildren()
													local n39 = 0

													for _, v97 in --[[?LTable]], children2, v95, v96 do
														if v97:IsA(v85[79]) and v97.Name == arg then
															local ok, result = pcall(v97.GetPivot, v97)

															if ok then
																for _, v98 in --[[?LTable]], tbl29, nil, nil do
																	if (result.Position - v98).Magnitude < 4 then
																		n39 += 1
																		break
																	end
																end
															end
														end
													end

													return n39
												end

												fn56 = function(arg, arg2, ...)
													local index = arg.index
													fn33("Buying %s", index)
													local v92 = fn64(index)
													if not fn63(arg, arg2) then
														return v85[41]
													end

													task.spawn(function(...)
														local now2 = os.clock()

														while true do
															local v93 = v85[99]

															if os.clock() - now2 < v93 then
																if fn64(index) > v92 then
																	print(("%s arrived at base"):format(index))
																	return
																end
																task.wait(v85[39])
															else
																break
															end
														end

														warn(("[sab] %s never arrived after 90s, probably stolen"):format(index))
													end)

													return true
												end
											end
										end

										do
											local fn64

											do
												fn57 = function(...)
													if flag21 then
														return
													end
													local v92 = fn47()

													if not v92 then
														if v85[157] <= n27(2921) then
															return
														end

														while v85[145] do
														end
													end

													if v92.maxed or v92.level and v92.level - 1 >= n34 then
														flag21 = true
														tbl26 = {}
														tbl27 = {}
														print("rebirth: target reached, back to normal farming")
														return
													end

													tbl26 = {}
													tbl27 = {}
													local flag22 = true

													for _, v93 in --[[?LTable]], v92.chars, nil, nil do
														tbl27[v93.name] = true

														if not v93.have then
															tbl26[v93.name] = v85[145]
															flag22 = v85[41]
														end
													end

													if flag22 and v92.cashOK then
														local rebirth = fn46()
														rebirth = rebirth and rebirth:FindFirstChild("Rebirth")

														if rebirth and fn54(rebirth.Activated, Enum.UserInputType.MouseButton1, 1) then
															fn33("Rebirthing to level %s", tostring(v92.level))
															print("rebirth: level " .. tostring(v92.level))
															task.wait(v85[126])
														end
													end
												end

												do
													local v92 = nil

													fn64 = function(arg, ...)
														if v92 and v92.Parent then
															return v92
														end

														if not (getconnections and getupvalues_ and arg) then
															return nil
														end
														local ok, result = pcall(getconnections, arg.Triggered)
														if not ok or type(result) ~= "table" then
															return nil
														end

														for _, v93 in --[[?LTable]], result, nil, nil do
															local function_ = v93.Function
															local v94 = v85[43]
															if type(function_) ~= v94 then
																continue
															end
															local ok2, result2 = pcall(getupvalues_, function_)
															if not ok2 or type(result2) ~= "table" then
																continue
															end

															for _, v95 in --[[?LTable]], result2, nil, nil do
																if type(v95) ~= "table" then
																	continue
																end

																local ok3, result3 = pcall(function(...)
																	return v95.TargetCallback
																end)

																local flag22 = not ok3

																if not flag22 then
																	local v96 = v85[43]
																	flag22 = type(result3) ~= v96
																end

																if flag22 then
																	continue
																end
																local ok4, result4 = pcall(getupvalues_, result3)
																if not ok4 or type(result4) ~= "table" then
																	continue
																end

																for _, v96 in --[[?LTable]], result4, nil, nil do
																	if typeof(v96) == "Instance" and v96:IsA("RemoteEvent") then
																		v92 = v96
																		return v96
																	end
																end
															end
														end

														return nil
													end
												end
											end

											do
												local function fn65(arg, ...)
													local animalPodiums = fn43()
													animalPodiums = animalPodiums and animalPodiums:FindFirstChild("AnimalPodiums")
													animalPodiums = animalPodiums and animalPodiums:FindFirstChild(tostring(arg))
													animalPodiums = animalPodiums and animalPodiums:FindFirstChild(v85[7])
													animalPodiums = animalPodiums and animalPodiums:FindFirstChild(v85[113])
													animalPodiums = animalPodiums and animalPodiums:FindFirstChild("PromptAttachment")
													if not animalPodiums then
														return nil
													end
													local children, v92, v93 = animalPodiums:GetChildren()

													for _, v94 in --[[?LTable]], children, v92, v93 do
														if v94:IsA("ProximityPrompt") and v94:GetAttribute("State") == "Sell" then
															return v94
														end
													end

													return nil
												end

												fn58 = function(arg, arg2, ...)
													if arg2 and arg2:GetAttribute("State") ~= "Sell" then
														arg2 = nil
													end

													local v92 = fn64(arg2 or fn65(arg))
													if not v92 then
														return false
													end

													return pcall(function(...)
														v92:FireServer(arg)
													end)
												end
											end
										end
									end

									do
										do
											local function fn64(arg, arg2, ...)
												if tbl21[arg] then
													return v85[41]
												end

												if arg2 then
													return true
												end
												return tbl20[arg] == true
											end

											fn59 = function(arg, ...)
												local v92 = fn43()
												local animalPodiums = v92 and v92:FindFirstChild("AnimalPodiums")
												if not animalPodiums then
													return v85[41]
												end
												local spawn_ = v92:FindFirstChild("Spawn")
												spawn_ = spawn_ and spawn_.Position.Y + 12 or math.huge
												local children, v93, v94 = animalPodiums:GetChildren()
												local flag22

												for _, v95 in --[[?LTable]], children, v93, v94 do
													local base = v95:FindFirstChild("Base")
													base = base and base:FindFirstChild("Spawn")
													if base and base.Position.Y >= spawn_ then
														continue
													end
													local v96 = base and base:FindFirstChild(v85[87])
													if not v96 then
														continue
													end
													local children2, v97, v98 = v96:GetChildren()
													local v99 = nil

													for _, v100 in --[[?LTable]], children2, v97, v98 do
														if v100:IsA("ProximityPrompt") and v100:GetAttribute("State") == "Open" then
															v99 = v100
															break
														else
															v99 = nil
														end
													end

													if not v99 then
														continue
													end
													local children3, v100, v101 = v92:GetChildren()
													local name = nil

													for _, v102 in --[[?LTable]], children3, v100, v101 do
														if not v102:IsA("Model") then
															name = nil
														else
															local ok, result = pcall(v102.GetPivot, v102)

															if ok and (result.Position - base.Position).Magnitude < 4 then
																name = v102.Name
																break
															else
																name = nil
															end
														end
													end

													local v102 = name and v89[name]
													if not (v102 and v102.LuckyBlock) then
														continue
													end

													if not fn64(name, arg) then
														if v85[140] < os.clock() - (n38 or 0) then
															n38 = os.clock()
															fn34(("open: %s is ready but %s"):format(name, tbl21[name] and "sealed (Rare Lucky Block)" or v85[11]))
														end

														continue
													end

													fn33("Opening %s", name)
													if not fn54(v99.Triggered, localPlayer) then
														continue
													end
													local now2 = os.clock()

													while true do
														local v103 = v85[126]
														flag22 = false

														if not (os.clock() - now2 < v103) then
															break
														elseif not v99.Parent or v99:GetAttribute(v85[95]) ~= "Open" then
															flag22 = true
															break
														else
															task.wait(0.05)
														end
													end

													if not flag22 then
														fn34(("open: fired %s but server stayed silent"):format(name))
														continue
													end
													local now3 = os.clock()
													local name2 = nil

													while os.clock() - now3 < 8 do
														local children4, v103, v104 = v92:GetChildren()

														for _, v105 in --[[?LTable]], children4, v103, v104 do
															if v105:IsA(v85[79]) then
																local ok, result = pcall(v105.GetPivot, v105)
																if ok and (result.Position - base.Position).Magnitude < 4 and v105.Name ~= name and v89[v105.Name] then
																	name2 = v105.Name
																	break
																end
															end
														end

														if not name2 then
															task.wait(v85[63])
															continue
														end
														break
													end

													if name2 then
														local rarity = v89[name2]
														local generation = rarity and rarity.Generation or 0
														local flag23

														if v91 then
															flag23 = generation >= v91
														else
															flag23 = (tbl25[rarity and rarity.Rarity] or v85[18]) >= secret
														end

														local v103 = print
														local str8 = "opened %s -> %s (%s | %s/s base) - %s"
														local format = str8.format
														rarity = rarity and rarity.Rarity or "?"
														local v104 = fn36(generation)
														flag23 = flag23 and "KEEP" or "below threshold, will sell when space is needed"
														v103(format(str8, name, name2, rarity, v104, flag23))
													else
														print(("opened %s (podium %s), result not readable yet"):format(name, v95.Name))
													end

													return true
												end

												return false
											end
										end
									end
								end

								local fn63

								do
									fn60 = function(...)
										local v92 = fn43()
										if not v92 then
											return false
										end
										local v93, v94 = fn44(v92)
										if v94 >= 1 then
											return false
										end
										return fn59()
									end

									do
										local v92 = nil
										local v93 = nil

										fn63 = function(arg, ...)
											if v93 == arg and v92 then
												for _, v94 in --[[?LTable]], v92, nil, nil do
													if not v94.part.Parent then
														v92 = nil
														break
													end
												end

												if v92 then
													return v92
												end
											end

											local huge = arg:FindFirstChild(v85[113])
											huge = huge and huge.Position.Y + v85[71] or math.huge
											local tbl29 = {}
											local tagged, v94, v95 = CollectionService:GetTagged("PlotClaimHitbox")

											for _, v96 in --[[?LTable]], tagged, v94, v95 do
												if v96:IsDescendantOf(arg) then
													if not (v96.Position.Y >= huge) then
														local parent = v96.Parent and v96.Parent.Parent
														local num5 = tonumber(parent and parent.Name)

														if num5 then
															table.insert(tbl29, { part = v96, slot = num5, podium = parent })
														end
													end
												end
											end

											table.sort(tbl29, function(arg2, arg3, ...)
												return arg2.slot < arg3.slot
											end)

											v92 = tbl29
											v93 = arg
											return tbl29
										end
									end
								end

								do
									local function fn64(arg, arg2, ...)
										local v92 = fn50()
										if not v92 then
											return
										end

										for k, v93 in --[[?LTable]], arg, nil, nil do
											if not arg2[k] then
												local part = v93.part

												if not part.Parent then
													arg2[k] = v85[145]
												elseif (v92.Position - part.Position).Magnitude <= v85[66] then
													arg2[k] = true

													if firetouchinterest then
														fn32(firetouchinterest, v92, part, 0)
														task.wait(0.05)
														fn32(firetouchinterest, v92, part, 1)
													end
												end
											end
										end
									end

									fn61 = function(...)
										local v92 = fn43()
										if not v92 then
											return
										end
										local v93, v94, v95 = fn44(v92)
										if #v95 == 0 then
											return
										end
										fn33("Collecting cash from pods")
										local tbl29 = {}

										for _, v96 in --[[?LTable]], v95, nil, nil do
											tbl29[v96.slot] = true
										end

										local tbl30 = {}
										local v96, v97, v98 = fn63(v92)

										for _, v99 in --[[?LTable]], v96, v97, v98 do
											if tbl29[v99.slot] and v99.part.Parent then
												table.insert(tbl30, v99)
											end
										end

										if #tbl30 == v85[18] then
											return
										end
										fn34(("claim: %d pads"):format(#tbl30))
										local vector2 = Vector3.zero

										for _, v99 in --[[?LTable]], tbl30, nil, nil do
											vector2 += v99.part.Position
										end

										local n38 = vector2 / #tbl30

										for _, v99 in --[[?LTable]], tbl30, nil, nil do
											local position = v99.part.Position
											local n39 = (n38 - position) * Vector3.new(v85[39], 0, v85[39])

											if n39.Magnitude > 1 then
												v99.approach = position + n39.Unit * 1.5
											else
												v99.approach = position
											end
										end

										local tbl31 = {}
										local n39 = #tbl30
										local n40 = 0

										while n39 > 0 do
											local v99 = fn50()
											if not v99 then
												return
											end
											local y = v99.Position.Y
											local v100 = nil
											local v101 = nil

											for k, v102 in --[[?LTable]], tbl30, nil, nil do
												if not (tbl31[k] or not v102.part.Parent) then
													local position = v102.part.Position
													local position2 = v99.Position
													local magnitude = (position * Vector3.new(1, 0, 1) - position2 * Vector3.new(v85[39], 0, 1)).Magnitude
													local v103 = v85[100]
													local n41 = magnitude + (math.abs(position.Y - y) > v103 and 1000000 or 0)

													if not v100 or n41 < v100 then
														v100 = n41
														v101 = k
													end
												end
											end

											if not v101 then
												return
											end
											tbl31[v101] = v85[145]
											local y2 = tbl30[v101].part.Position.Y
											local v102 = v85[100]
											local flag22 = math.abs(y2 - y) > v102

											if flag22 then
												fn34(("claim: changing floor (y %.0f -> %.0f) pad slot %d"):format(y, y2, tbl30[v101].slot))
											end

											local v103

											if flag22 then
												v103 = fn62(tbl30[v101].part, 4, v85[102], tbl30[v101].podium) or fn52(tbl30[v101].approach, 4, 10, tbl30[v101].podium)
											else
												v103 = fn52(tbl30[v101].approach, v85[17], 10, tbl30[v101].podium) or fn62(tbl30[v101].part, v85[17], 10, tbl30[v101].podium)
											end

											if v103 then
												task.wait(0.15)
												local v104 = fn50()

												if v104 and firetouchinterest and tbl30[v101].part.Parent then
													fn32(firetouchinterest, v104, tbl30[v101].part, v85[18])
													task.wait(0.05)
													fn32(firetouchinterest, v104, tbl30[v101].part, 1)
												end

												fn64(tbl30, tbl31)
												n40 = 0
											else
												fn34(("claim: skipping pad slot %d"):format(tbl30[v101].slot))
												n40 += 1
												if n40 >= 3 then
													return
												end
											end

											n39 = v85[18]
											local v104, v105, v106 = ipairs(tbl30)

											for k in --[[?LTable]], v104, v105, v106 do
												if not tbl31[k] then
													n39 += 1
												end
											end
										end
									end
								end
							end

							local fn62, fn63, fn64

							do
								do
									local request_, fn65

									do
										do
											do
												local request_2 = request or http_request or syn and syn.request

												if request_2 then
													request_ = request_2
												else
													request_ = fluxus and fluxus.request
												end
											end

											do
												local v92 = fn35(v88.LuckIcons)

												fn62 = function(...)
													local playerGui = localPlayer:FindFirstChild("PlayerGui")
													playerGui = playerGui and playerGui:FindFirstChild("ActiveEvents")
													playerGui = playerGui and playerGui:FindFirstChild("ActiveEvents")
													if not playerGui then
														return "1x"
													end
													local v93 = playerGui:FindFirstChild(v85[88])
													local tbl29 = v93 and { v93 } or {}
													local children, v94, v95 = playerGui:GetChildren()

													for _, v96 in --[[?LTable]], children, v94, v95 do
														if v96 ~= v93 then
															table.insert(tbl29, v96)
														end
													end

													for _, v96 in --[[?LTable]], tbl29, nil, nil do
														if not (v96:IsA("GuiObject") and v96.Visible) then
															continue
														end
														local main = v96:FindFirstChild("Main")
														local image = main and main:IsA("ImageLabel") and main.Image
														if not image then
															continue
														end
														local v97, v98, v99 = pairs(v92)

														for k, v100 in --[[?LTable]], v97, v98, v99 do
															if v100 == image then
																return k
															end
														end
													end

													return "1x"
												end
											end
										end

										do
											local tbl29 = {
												Gold = "🪙",
												Diamond = "💎",
												Bloodrot = "🩸",
												Rainbow = "🌈",
												Candy = "🍬",
												Lava = "🌋",
												Galaxy = "🌌",
												YinYang = "☯️",
												Radioactive = "☢️",
												Cursed = "😈",
												Divine = "😇",
												Cyber = "🤖",
												Phantom = "👻",
												Crystal = "🔮",
											}

											local tbl30 = {
												Ball = "⚽",
												Taco = "🌮",
												Burger = "🍔",
												["Job Application"] = "📋",
												Nyan = "🐈",
												Galactic = "🌌",
												[v85[116]] = "🎆",
												Zombie = "🧟",
												[v85[75]] = "🐾",
												Glitched = "👾",
												Bubblegum = "🫧",
												Fire = "🔥",
												Wet = "💧",
												Snowy = "❄️",
												[v85[118]] = "☄️",
												Explosive = "💥",
												[v85[16]] = "🪩",
												["10B"] = "🏆",
												[v85[3]] = "🦈",
												["Matteo Hat"] = "🎩",
												Sleepy = "😴",
												[v85[50]] = "⚡",
												UFO = "🛸",
												Spider = "🕷️",
												[v85[22]] = "🍓",
												[v85[38]] = "🎨",
												Skeleton = "💀",
												Sombrero = "🪅",
												Tie = "👔",
												["Witch Hat"] = "🧙",
												Sun = "☀️",
												Meowl = "🦉",
												["RIP Gravestone"] = "🪦",
												["Jackolantern Pet"] = "🎃",
												[v85[150]] = "🎅",
												[v85[37]] = "🦌",
												Skibidi = "🚽",
												[v85[77]] = "🎇",
												[v85[9]] = "🎂",
												Rose = "🌹",
												[":3"] = "😺",
												Chocolate = "🍫",
												Halo = "😇",
												[v85[96]] = "🍀",
												Granny = "👵",
												["Bunny Ears"] = "🐰",
												["John Pork"] = "🐷",
												["Aura Shades"] = "🕶️",
												[v85[151]] = "🐂",
												["Orange Balloon"] = "🎈",
												["Green Balloon"] = "🎈",
												["Blue Balloon"] = "🎈",
												["Red Balloon"] = "🎈",
												["Pink Balloon"] = "🎈",
												["Rainbow Balloon"] = "🌈",
												["Orange Egg"] = "🥚",
												["Green Egg"] = "🥚",
												["Blue Egg"] = "🥚",
												["Pink Egg"] = "🥚",
												Bee = "🐝",
												["Fire Bee"] = "🔥",
												["Ice Bee"] = "❄️",
												[v85[56]] = "👑",
												Algeria = "🇩🇿",
												Argentina = "🇦🇷",
												Australia = "🇦🇺",
												Austria = "🇦🇹",
												Belgium = "🇧🇪",
												["Bosnia and Herzegovina"] = "🇧🇦",
												[v85[74]] = "🇧🇷",
												Canada = "🇨🇦",
												["Cape Verde"] = "🇨🇻",
												Colombia = "🇨🇴",
												Croatia = "🇭🇷",
												Curacao = "🇨🇼",
												[v85[57]] = "🇨🇿",
												["DR Congo"] = "🇨🇩",
												[v85[80]] = "🇪🇨",
												[v85[32]] = "🇪🇬",
												[v85[4]] = "🏴\u{E0067}\u{E0062}\u{E0065}\u{E006E}\u{E0067}\u{E007F}",
												France = "🇫🇷",
												Germany = "🇩🇪",
												[v85[131]] = "🇬🇭",
												Haiti = "🇭🇹",
												Indonesia = "🇮🇩",
												Iran = "🇮🇷",
												Iraq = "🇮🇶",
												["Ivory Coast"] = "🇨🇮",
												Japan = "🇯🇵",
												Jordan = "🇯🇴",
												Mexico = "🇲🇽",
												Morocco = "🇲🇦",
												Netherlands = "🇳🇱",
												["New Zealand"] = "🇳🇿",
												Norway = "🇳🇴",
												[v85[138]] = "🇵🇦",
												Paraguay = "🇵🇾",
												Portugal = "🇵🇹",
												Qatar = "🇶🇦",
												[v85[48]] = "🇸🇦",
												Scotland = "🏴\u{E0067}\u{E0062}\u{E0073}\u{E0063}\u{E0074}\u{E007F}",
												[v85[69]] = "🇸🇳",
												[v85[98]] = "🇿🇦",
												[v85[114]] = "🇰🇷",
												Spain = "🇪🇸",
												Sweden = "🇸🇪",
												[v85[124]] = "🇨🇭",
												Tunisia = "🇹🇳",
												Turkey = "🇹🇷",
												[v85[5]] = "🇺🇸",
												[v85[84]] = "🇺🇾",
												[v85[35]] = "🇺🇿",
											}

											local function fn66(arg, ...)
												return tbl30[arg] or "✨"
											end

											fn65 = function(arg, ...)
												if not (v86 and request_) then
													return
												end
												local tbl31 = {}

												if str7 then
													table.insert(tbl31, ("<@%s> (%s)"):format(str7, str7))
												end

												table.insert(tbl31, "━━━━━━━━━━━━━━━━━━━━━━━")
												table.insert(tbl31, ("**%s** %s"):format(arg.name, arg.isBlock and "🎁" or "🧠"))
												table.insert(tbl31, "⭐ **Rarity:** " .. arg.rarity)

												if arg.mutation then
													table.insert(tbl31, ("🧪 **Mutation:** %s %s"):format(arg.mutation, tbl29[arg.mutation] or "✨"))
												end

												if arg.traits and #arg.traits > 0 then
													local tbl32 = {}

													for _, v92 in --[[?LTable]], arg.traits, nil, nil do
														table.insert(tbl32, ("%s %s"):format(fn66(v92), v92))
													end

													table.insert(tbl31, "🧬 **Trait:** " .. table.concat(tbl32, ", "))
												end

												local gen = arg.gen
												table.insert(tbl31, ("💰 **Price:** $%s (**$%s/s**)"):format(fn36(arg.price), fn36(gen)))
												table.insert(tbl31, "🍀 **Server Luck:** " .. fn62())
												table.insert(tbl31, "━━━━━━━━━━━━━━━━━━━━━━━")

												local json = game:GetService("HttpService"):JSONEncode({
													embeds = {
														{
															title = "Steal a Brainrot",
															description = table.concat(tbl31, "\n"),
															color = 4915330,
															footer = { text = "discord.gg/34y6PnZ443" },
															timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
														},
													},
												})

												task.spawn(function(...)
													local ok, result = pcall(request_, { Url = v86, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = json })

													if not ok then
														warn("[sab] webhook error: " .. tostring(result))
													else
														local v92 = v85[134]

														if type(result) == v92 and tonumber(result.StatusCode) and result.StatusCode >= 300 then
															if n24 < 4522 then
																while true do
																end
															else
																warn(("[sab] webhook returned %s"):format(tostring(result.StatusCode)))
															end
														end
													end
												end)
											end
										end
									end

									do
										do
											local function fn66(arg, arg2, ...)
												local name = arg.Name
												local v92 = v89[name]
												if not v92 then
													return
												end

												if v92.Rarity ~= "Secret" and v92.Rarity ~= "OG" then
													return
												end

												if tbl22[name] then
													return
												end
												task.wait(v85[143])
												if not arg.Parent then
													return
												end
												local attribute = arg:GetAttribute(v85[101])

												if attribute == "" or attribute == v85[97] or attribute == v85[46] then
													attribute = nil
												end

												local tbl29 = fn40(arg2.Position, 5) or {}
												local v93 = fn39(arg2.Position, 5) or fn38(name, attribute, tbl29)

												fn65({
													name = v92.DisplayName or name,
													rarity = v92.Rarity,
													mutation = attribute and tostring(attribute) or nil,
													traits = tbl29,
													price = v92.Price or 0,
													gen = v93,
													isBlock = v92.LuckyBlock ~= nil,
												})

												print(("webhook: notified %s (%s)"):format(v92.DisplayName or name, v92.Rarity))
											end

											if v86 then
												if not request_ then
													warn("[sab] webhook url set but executor has no request function")
												end

												task.spawn(function(...)
													local obj3 = setmetatable({}, { __mode = "k" })
													local flag22 = true

													while fn29() do
														pcall(function(...)
															local v92 = fn43()
															local animalPodiums = v92 and v92:FindFirstChild("AnimalPodiums")
															if not animalPodiums then
																return
															end
															local tbl29 = {}
															local children, v93, v94 = v92:GetChildren()

															for _, v95 in --[[?LTable]], children, v93, v94 do
																if v95:IsA("Model") then
																	local ok, result = pcall(v95.GetPivot, v95)

																	if ok then
																		table.insert(tbl29, { model = v95, pos = result.Position })
																	end
																end
															end

															local children2, v95, v96 = animalPodiums:GetChildren()

															for _, v97 in --[[?LTable]], children2, v95, v96 do
																local base = v97:FindFirstChild("Base")
																base = base and base:FindFirstChild("Spawn")

																if base then
																	local model = nil

																	for _, v98 in --[[?LTable]], tbl29, nil, nil do
																		if (v98.pos - base.Position).Magnitude < 4 then
																			model = v98.model
																			break
																		else
																			model = nil
																		end
																	end

																	if not (not model or obj3[model]) then
																		obj3[model] = true

																		if not flag22 then
																			task.spawn(fn66, model, base)
																		end
																	end
																end
															end
														end)

														flag22 = v85[41]
														task.wait(v85[126])
													end
												end)
											end
										end
									end
								end

								fn63 = function(...)
									local v92 = fn43()
									if not v92 then
										return false
									end
									local v93, v94, v95, v96 = fn44(v92)
									if v96 == 0 then
										return false
									end
									local n38 = math.max(v96 - v85[39], v85[39])
									if v93 <= n38 then
										return false
									end
									local n39 = 0
									local v97 = nil

									for _, v98 in --[[?LTable]], fn45(v92, v95), nil, nil do
										if v98.data.LuckyBlock or v98.data.Egg then
											n39 += 1
										end

										if fn48(v98) then
											if not v97 or v98.gen < v97.gen then
												v97 = v98
											end
										end
									end

									if v93 - n39 <= n38 then
										return false
									end

									if not v97 then
										if os.clock() - (n36 or 0) > 30 then
											n36 = os.clock()
											fn34(("trim: %d/%d slots used (%d cooking), nothing sellable"):format(v93, n38, n39))
										end

										return false
									end

									fn33("Selling %s (freeing slot)", v97.index)
									if fn58(v97.slot, v97.prompt) then
										print(("sold %s %d/s (kept a slot free: %d/%d)"):format(v97.index, v97.gen, v93 - 1, n38))
										return v85[145]
									end
									return false
								end

								fn64 = function(...)
									if not fn55() then
										return false
									end
									local v92 = fn37()
									if v92 <= v85[18] then
										return false
									end
									local now2 = os.clock()
									local v93 = fn50()
									local v94 = v85[18]
									local flag22 = v93 and ((v93.Position - vector) * Vector3.new(1, v85[18], 1)).Magnitude <= 11
									local v95, v96, v97 = fn49()
									local n38 = 0
									local n39 = 0
									local n40 = 0
									local n41 = 0
									local v98 = nil
									local v99 = nil
									local v100 = nil
									local exitTo3 = nil
									local v101, str8, format, index, v102, str9, flag23, primaryPart, v103, magnitude, flag24, max, maxActivationDistance, flag25, v104, flag26

									for _, v105 in --[[?LTable]], v95, v96, v97 do
										n38 += 1

										if tbl18[v105.index] then
											n39 += 1
										elseif v105.data.LuckyBlock then
											if not obj2[v105.prompt] then
												obj2[v105.prompt] = true
												v101 = fn34
												str8 = "lucky: %s on the road (%s) - %s"
												format = str8.format
												index = v105.index
												v102 = fn36(v105.price)
												str9 = tbl19[v105.index] and "WILL BUY" or "not in buy list"
												v101(format(str8, index, v102, str9))
											end

											if not tbl19[v105.index] then
												n39 += 1
											elseif v105.price > v92 then
												n40 += 1
											else
												flag23 = obj[v105.prompt]
												flag23 = flag23 and now2 < flag23

												if flag23 then
													n41 += v85[39]
												else
													primaryPart = v105.model.PrimaryPart
													v103 = v93 and primaryPart

													if v103 then
														magnitude = ((primaryPart.Position - v93.Position) * Vector3.new(1, 0, 1)).Magnitude
														flag24 = not v98 or magnitude < v98

														if flag24 then
															v98 = magnitude
														end

														max = math.max
														maxActivationDistance = v105.prompt.MaxActivationDistance or 10

														if max(maxActivationDistance - 1, 4) < magnitude then
															v94 += 1
														else
															exitTo3 = 1
															break
														end
													else
														flag25 = tbl26[v105.index] and (not v99 or v105.price < v99.price)

														if flag25 then
															v99 = v105
														end

														v104 = fn42(v105.index)
														flag26 = not v100 or v104 > v100.tier or v104 == v100.tier and v105.gen > v100.gen

														if flag26 then
															v105.tier = v104
															v100 = v105
														end
													end
												end
											end
										elseif v105.price > v92 then
											n40 += 1
										else
											flag23 = obj[v105.prompt]
											flag23 = flag23 and now2 < flag23

											if flag23 then
												n41 += v85[39]
											else
												primaryPart = v105.model.PrimaryPart
												v103 = v93 and primaryPart

												if v103 then
													magnitude = ((primaryPart.Position - v93.Position) * Vector3.new(1, 0, 1)).Magnitude
													flag24 = not v98 or magnitude < v98

													if flag24 then
														v98 = magnitude
													end

													max = math.max
													maxActivationDistance = v105.prompt.MaxActivationDistance or 10

													if max(maxActivationDistance - 1, 4) < magnitude then
														v94 += 1
													else
														flag25 = tbl26[v105.index] and (not v99 or v105.price < v99.price)

														if flag25 then
															v99 = v105
														end

														v104 = fn42(v105.index)
														flag26 = not v100 or v104 > v100.tier or v104 == v100.tier and v105.gen > v100.gen

														if flag26 then
															v105.tier = v104
															v100 = v105
														end
													end
												else
													flag25 = tbl26[v105.index] and (not v99 or v105.price < v99.price)

													if flag25 then
														v99 = v105
													end

													v104 = fn42(v105.index)
													flag26 = not v100 or v104 > v100.tier or v104 == v100.tier and v105.gen > v100.gen

													if flag26 then
														v105.tier = v104
														v100 = v105
													end
												end
											end
										end
									end

									local flag27

									if exitTo3 == 1 then
										local exitTo4 = nil

										while true do
											flag25 = tbl26[s6_1.index] and (not v99 or s6_1.price < v99.price)

											if flag25 then
												v99 = s6_1
											end

											v104 = fn42(s6_1.index)
											flag26 = not v100 or v104 > v100.tier or v104 == v100.tier and s6_1.gen > v100.gen

											if flag26 then
												s6_1.tier = v104
												v100 = s6_1
												local exitTo = nil

												for _, v105 in --[[?LTable]], v95, v96, v97 do
													n38 += 1

													if tbl18[v105.index] then
														n39 += 1
													elseif v105.data.LuckyBlock then
														if not obj2[v105.prompt] then
															obj2[v105.prompt] = true
															v101 = fn34
															str8 = "lucky: %s on the road (%s) - %s"
															format = str8.format
															index = v105.index
															v102 = fn36(v105.price)
															str9 = tbl19[v105.index] and "WILL BUY" or "not in buy list"
															v101(format(str8, index, v102, str9))
														end

														if not tbl19[v105.index] then
															n39 += 1
														elseif v105.price > v92 then
															n40 += 1
														else
															flag23 = obj[v105.prompt]
															flag23 = flag23 and now2 < flag23

															if flag23 then
																n41 += v85[39]
															else
																primaryPart = v105.model.PrimaryPart
																v103 = v93 and primaryPart

																if v103 then
																	magnitude = ((primaryPart.Position - v93.Position) * Vector3.new(1, 0, 1)).Magnitude
																	flag24 = not v98 or magnitude < v98

																	if flag24 then
																		v98 = magnitude
																	end

																	max = math.max
																	maxActivationDistance = v105.prompt.MaxActivationDistance or 10

																	if max(maxActivationDistance - 1, 4) < magnitude then
																		v94 += 1
																	else
																		exitTo = 1
																		break
																	end
																else
																	flag25 = tbl26[v105.index] and (not v99 or v105.price < v99.price)

																	if flag25 then
																		v99 = v105
																	end

																	v104 = fn42(v105.index)
																	flag26 = not v100 or v104 > v100.tier or v104 == v100.tier and v105.gen > v100.gen

																	if flag26 then
																		v105.tier = v104
																		v100 = v105
																	end
																end
															end
														end
													elseif v105.price > v92 then
														n40 += 1
													else
														flag23 = obj[v105.prompt]
														flag23 = flag23 and now2 < flag23

														if flag23 then
															n41 += v85[39]
														else
															primaryPart = v105.model.PrimaryPart
															v103 = v93 and primaryPart

															if v103 then
																magnitude = ((primaryPart.Position - v93.Position) * Vector3.new(1, 0, 1)).Magnitude
																flag24 = not v98 or magnitude < v98

																if flag24 then
																	v98 = magnitude
																end

																max = math.max
																maxActivationDistance = v105.prompt.MaxActivationDistance or 10

																if max(maxActivationDistance - 1, 4) < magnitude then
																	v94 += 1
																else
																	flag25 = tbl26[v105.index] and (not v99 or v105.price < v99.price)

																	if flag25 then
																		v99 = v105
																	end

																	v104 = fn42(v105.index)
																	flag26 = not v100 or v104 > v100.tier or v104 == v100.tier and v105.gen > v100.gen

																	if flag26 then
																		v105.tier = v104
																		v100 = v105
																	end
																end
															else
																flag25 = tbl26[v105.index] and (not v99 or v105.price < v99.price)

																if flag25 then
																	v99 = v105
																end

																v104 = fn42(v105.index)
																flag26 = not v100 or v104 > v100.tier or v104 == v100.tier and v105.gen > v100.gen

																if flag26 then
																	v105.tier = v104
																	v100 = v105
																end
															end
														end
													end
												end

												if exitTo == 1 then
													continue
												else
													exitTo4 = 1
													break
												end
											else
												local exitTo2 = nil

												for _, v105 in --[[?LTable]], v95, v96, v97 do
													n38 += 1

													if tbl18[v105.index] then
														n39 += 1
													elseif v105.data.LuckyBlock then
														if not obj2[v105.prompt] then
															obj2[v105.prompt] = true
															v101 = fn34
															str8 = "lucky: %s on the road (%s) - %s"
															format = str8.format
															index = v105.index
															v102 = fn36(v105.price)
															str9 = tbl19[v105.index] and "WILL BUY" or "not in buy list"
															v101(format(str8, index, v102, str9))
														end

														if not tbl19[v105.index] then
															n39 += 1
														elseif v105.price > v92 then
															n40 += 1
														else
															flag23 = obj[v105.prompt]
															flag23 = flag23 and now2 < flag23

															if flag23 then
																n41 += v85[39]
															else
																primaryPart = v105.model.PrimaryPart
																v103 = v93 and primaryPart

																if v103 then
																	magnitude = ((primaryPart.Position - v93.Position) * Vector3.new(1, 0, 1)).Magnitude
																	flag24 = not v98 or magnitude < v98

																	if flag24 then
																		v98 = magnitude
																	end

																	max = math.max
																	maxActivationDistance = v105.prompt.MaxActivationDistance or 10

																	if max(maxActivationDistance - 1, 4) < magnitude then
																		v94 += 1
																	else
																		exitTo2 = 1
																		break
																	end
																else
																	flag25 = tbl26[v105.index] and (not v99 or v105.price < v99.price)

																	if flag25 then
																		v99 = v105
																	end

																	v104 = fn42(v105.index)
																	flag26 = not v100 or v104 > v100.tier or v104 == v100.tier and v105.gen > v100.gen

																	if flag26 then
																		v105.tier = v104
																		v100 = v105
																	end
																end
															end
														end
													elseif v105.price > v92 then
														n40 += 1
													else
														flag23 = obj[v105.prompt]
														flag23 = flag23 and now2 < flag23

														if flag23 then
															n41 += v85[39]
														else
															primaryPart = v105.model.PrimaryPart
															v103 = v93 and primaryPart

															if v103 then
																magnitude = ((primaryPart.Position - v93.Position) * Vector3.new(1, 0, 1)).Magnitude
																flag24 = not v98 or magnitude < v98

																if flag24 then
																	v98 = magnitude
																end

																max = math.max
																maxActivationDistance = v105.prompt.MaxActivationDistance or 10

																if max(maxActivationDistance - 1, 4) < magnitude then
																	v94 += 1
																else
																	flag25 = tbl26[v105.index] and (not v99 or v105.price < v99.price)

																	if flag25 then
																		v99 = v105
																	end

																	v104 = fn42(v105.index)
																	flag26 = not v100 or v104 > v100.tier or v104 == v100.tier and v105.gen > v100.gen

																	if flag26 then
																		v105.tier = v104
																		v100 = v105
																	end
																end
															else
																flag25 = tbl26[v105.index] and (not v99 or v105.price < v99.price)

																if flag25 then
																	v99 = v105
																end

																v104 = fn42(v105.index)
																flag26 = not v100 or v104 > v100.tier or v104 == v100.tier and v105.gen > v100.gen

																if flag26 then
																	v105.tier = v104
																	v100 = v105
																end
															end
														end
													end
												end

												if exitTo2 == 1 then
													continue
												end
											end

											break
										end

										if exitTo4 == 1 then
											flag27 = v100 and v100.tier > 0
										else
											flag27 = v100 and v100.tier > 0
										end
									else
										flag27 = v100 and v100.tier > 0
									end

									if flag27 then
										fn34(("buy: prioritizing %s (%s)"):format(v100.index, v89[v100.index].Rarity))
									else
										v100 = v99 or v100
									end

									if not v100 then
										if os.clock() - (n35 or 0) > 5 then
											n35 = os.clock()
											fn34(("buy: %d seen | ignored %d | too poor %d | skip %d | far %d | nearest %s"):format(n38, n39, n40, n41, v94, v98 and ("%.0f studs"):format(v98) or "-"))
										end

										return false
									end

									local v105 = fn43()
									if not v105 then
										return false
									end
									local v106, v107, v108, v109 = fn44(v105)
									if v109 == v85[18] then
										return false
									end
									local n42 = math.max(v109 - 1, 1)

									if v106 < n42 then
										fn34(("buy: %s %s (%d$)"):format(flag22 and "firing in place" or "chasing", v100.index, v100.price))
										local primaryPart2 = v100.model.PrimaryPart
										primaryPart2 = primaryPart2 and fn40(primaryPart2.Position) or {}

										if fn56(v100, flag22) then
											local price = v100.price
											print(("bought %s | %d$"):format(fn41(v100.index, v100.mutation, primaryPart2, v100.gen), price))
										else
											fn34("buy: missed, skipping 8s")
											obj[v100.prompt] = os.clock() + 8
										end

										return v85[145]
									end

									if v100.data.LuckyBlock then
										if v107 >= 1 then
											if fn56(v100, flag22) then
												print(("bought %s | %s | counting down on podium"):format(v100.index, fn36(v100.price)))
											else
												local v110 = v85[100]
												obj[v100.prompt] = os.clock() + v110
											end

											return true
										end

										local v110, v111, v112 = fn45(v105, v108)
										local v113 = nil

										for _, v114 in --[[?LTable]], v110, v111, v112 do
											if fn48(v114) then
												if not v113 or v114.gen < v113.gen then
													v113 = v114
												end
											end
										end

										if not v113 then
											if os.clock() - (n37 or 0) > 30 then
												n37 = os.clock()
												fn34(("lucky: skipping %s, no sellable brainrot left"):format(v100.index))
											end

											return false
										end

										if not fn58(v113.slot, v113.prompt) then
											return v85[41]
										end
										task.wait(0.5)

										if fn56(v100, flag22) then
											print(("sold %s %d/s to make room for %s | counting down on podium"):format(v113.index, v113.gen, v100.index))
										else
											obj[v100.prompt] = os.clock() + 8
										end

										return true
									end

									local v110 = fn45(v105, v108)
									local v111 = nil

									for _, v112 in --[[?LTable]], v110, nil, nil do
										if fn48(v112) then
											if not v111 or v112.gen < v111.gen then
												v111 = v112
											end
										end
									end

									local flag28 = (v100.tier or 0) > 0 or v99 ~= nil

									if not flag28 then
										local v112 = v91

										if v91 then
											flag28 = v100.gen >= v91
										else
											flag28 = v112
										end
									end

									if not flag28 and v111 and v100.gen < v111.gen * 1.15 then
										return v85[41]
									end

									if not v111 and not flag28 then
										return false
									end

									if v107 >= 1 then
										fn34(("buy: %s %s (%d$)"):format(flag22 and "firing in place" or "chasing", v100.index, v100.price))
										local primaryPart2 = v100.model.PrimaryPart
										primaryPart2 = primaryPart2 and fn40(primaryPart2.Position) or {}

										if fn56(v100, flag22) then
											local price = v100.price
											print(("bought %s | %d$"):format(fn41(v100.index, v100.mutation, primaryPart2, v100.gen), price))
										else
											obj[v100.prompt] = os.clock() + 8
										end

										return true
									end

									if v111 then
										fn34(("buy: hard full, selling %s %d/s first"):format(v111.index, v111.gen))
										local primaryPart2 = v100.model.PrimaryPart
										primaryPart2 = primaryPart2 and fn40(primaryPart2.Position) or {}
										if not fn58(v111.slot, v111.prompt) then
											return false
										end
										task.wait(v85[159])

										if fn56(v100, flag22) then
											print(("swapped %s %d/s -> %s"):format(v111.index, v111.gen, fn41(v100.index, v100.mutation, primaryPart2, v100.gen)))
										else
											obj[v100.prompt] = os.clock() + 8
										end

										return true
									end

									if flag28 and fn59(true) then
										return true
									end

									if v85[123] < os.clock() - (n35 or 0) then
										n35 = os.clock()
										fn34(("buy: full (%d used / %d limit / %d unlocked) nothing sellable | read %d/%d"):format(v106, n42, v109, #v110, #v108))
									end

									return false
								end

								if not fn55() then
									warn("cannot trigger prompts, buying will not work")
								end

								if not (getconnections and getupvalues_) then
									warn("missing getconnections/getupvalues, selling will not work")
								end

								do
									local function fn65(...)
										pcall(function(...)
											local UserGameSettings = UserSettings():GetService("UserGameSettings")
											UserGameSettings.GraphicsQualityLevel = Enum.GraphicsQualityLevel.Level01
											UserGameSettings.SavedQualityLevel = Enum.SavedQualitySetting.QualityLevel1
											UserGameSettings.MasterVolume = 0
										end)

										pcall(function(...)
											local Lighting = game:GetService("Lighting")
											Lighting.GlobalShadows = false
											Lighting.Technology = Enum.Technology.Compatibility
											Lighting.Brightness = 0
											Lighting.EnvironmentDiffuseScale = 0
											Lighting.EnvironmentSpecularScale = 0
										end)

										pcall(function(...)
											local terrain = workspace:FindFirstChildOfClass("Terrain")

											if terrain then
												terrain.WaterWaveSize = 0
												terrain.WaterReflectance = 0
												terrain.WaterWaveSpeed = v85[18]
											end
										end)

										pcall(function(...)
											local rendering = settings().Rendering
											rendering.QualityLevel = Enum.QualityLevel.Level01
											rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level04
										end)

										pcall(function(...)
											local tbl29 = { LeftBottom = true, Rebirth = true, CrystalWheel = true, CoinsShop = v85[145] }
											local playerGui = localPlayer:FindFirstChild("PlayerGui")

											if playerGui then
												local children, v92, v93 = playerGui:GetChildren()

												for _, v94 in --[[?LTable]], children, v92, v93 do
													if v94:IsA("ScreenGui") and not tbl29[v94.Name] then
														pcall(function(...)
															v94.Enabled = false
														end)
													end
												end
											end
										end)

										pcall(function(...)
											local children, v92, v93 = game:GetService("Lighting"):GetChildren()

											for _, v94 in --[[?LTable]], children, v92, v93 do
												if v94:IsA(v85[61]) then
													pcall(function(...)
														v94.Enabled = false
													end)
												end
											end
										end)

										pcall(function(...)
											local descendants, v92, v93 = workspace:GetDescendants()

											for _, v94 in --[[?LTable]], descendants, v92, v93 do
												local ok, result = pcall(function(...)
													return v94:IsA("ParticleEmitter") or v94:IsA(v85[60]) or v94:IsA("Beam") or v94:IsA(v85[94]) or v94:IsA("Smoke") or v94:IsA("Sparkles")
												end)

												if ok and result then
													pcall(function(...)
														v94.Enabled = false
													end)
												end
											end
										end)

										pcall(function(...)
											local descendants, v92, v93 = workspace:GetDescendants()

											for _, v94 in --[[?LTable]], descendants, v92, v93 do
												if v94:IsA("Sound") and v94.Playing then
													pcall(function(...)
														v94:Stop()
													end)
												end
											end

											local descendants2, v94, v95 = game:GetService("SoundService"):GetDescendants()

											for _, v96 in --[[?LTable]], descendants2, v94, v95 do
												if v96:IsA(v85[26]) and v96.Playing then
													pcall(function(...)
														v96:Stop()
													end)
												end
											end
										end)

										pcall(function(...)
											local plots = workspace:FindFirstChild("Plots")
											local debris = workspace:FindFirstChild("Debris")
											local currentCamera = workspace.CurrentCamera
											local tbl29 = {}
											local players, v92, v93 = game:GetService("Players"):GetPlayers()

											for _, v94 in --[[?LTable]], players, v92, v93 do
												if v94.Character then
													tbl29[v94.Character] = true
												end
											end

											local descendants, v94, v95 = workspace:GetDescendants()

											for _, v96 in --[[?LTable]], descendants, v94, v95 do
												if v96:IsA("BasePart") then
													if not v96:IsA(v85[109]) then
														local name = v96.Name
														local v97 = v85[89]

														if name:sub(1, v85[103]) ~= v97 then
															if not (plots and v96:IsDescendantOf(plots)) then
																if not (debris and v96:IsDescendantOf(debris)) then
																	if not (currentCamera and v96:IsDescendantOf(currentCamera)) then
																		local flag22 = false

																		for k in --[[?LTable]], tbl29, nil, nil do
																			if v96:IsDescendantOf(k) then
																				flag22 = true
																				break
																			end
																		end

																		if not flag22 then
																			pcall(function(...)
																				if v96.CanCollide then
																					v96.Transparency = 1
																				else
																					v96:Destroy()
																				end
																			end)
																		end
																	end
																end
															end
														end
													end
												end
											end
										end)

										pcall(function(...)
											local plots = workspace:FindFirstChild("Plots")
											if not plots then
												return
											end
											local v92 = fn43()
											if not v92 then
												return
											end
											local children, v93, v94 = plots:GetChildren()

											for _, v95 in --[[?LTable]], children, v93, v94 do
												if v95 ~= v92 then
													pcall(function(...)
														v95:Destroy()
													end)
												end
											end
										end)

										pcall(function(...)
											local tagged, v92, v93 = CollectionService:GetTagged("EmitLoop")

											for _, v94 in --[[?LTable]], tagged, v92, v93 do
												pcall(function(...)
													CollectionService:RemoveTag(v94, "EmitLoop")
												end)
											end
										end)

										fn34("optimize: full applied")
									end

									fn33("Waiting for plot...")
									local now2 = os.clock()

									while fn29() and not fn43() and os.clock() - now2 < 60 do
										task.wait(0.5)
									end

									if flag19 and n33 >= 2 then
										fn33("Optimizing graphics...")

										do
											local ok, result = pcall(fn65)

											if not ok then
												warn("[sab] optimize error: " .. tostring(result))
											end
										end
									end
								end
							end

							local tbl29

							do
								if num3 and num3 > 0 and n33 >= 2 then
									local v92 = setfpscap or set_fps_cap
									local setFpsCap

									if v92 then
										setFpsCap = v92
									else
										setFpsCap = syn and syn.set_fps_cap
									end

									if setFpsCap then
										pcall(setFpsCap, num3)
										fn34(("fps cap: %d"):format(num3))

										task.spawn(function(...)
											while fn29() do
												task.wait(60)
												pcall(setFpsCap, num3)
											end
										end)
									else
										warn("[sab] executor has no setfpscap")
									end
								end

								if flag19 and n33 >= 2 then
									task.spawn(function(...)
										local v92 = workspace:FindFirstChild(v85[121])
										local debris = workspace:FindFirstChild("Debris")
										local currentCamera = workspace.CurrentCamera

										while fn29() do
											task.wait(30)

											pcall(function(...)
												local v93 = fn43()
												local tbl30 = {}
												local players, v94, v95 = game:GetService("Players"):GetPlayers()

												for _, v96 in --[[?LTable]], players, v94, v95 do
													if v96.Character then
														tbl30[v96.Character] = true
													end
												end

												local descendants, v96, v97 = workspace:GetDescendants()

												for _, v98 in --[[?LTable]], descendants, v96, v97 do
													pcall(function(...)
														if v98:IsA("ParticleEmitter") or v98:IsA("Trail") or v98:IsA("Beam") or v98:IsA("Fire") or v98:IsA("Smoke") or v98:IsA(v85[117]) then
															v98.Enabled = false
															return
														end

														if v98:IsA("Sound") and v98.Playing then
															v98:Stop()
															return
														end

														if v98:IsA(v85[10]) and not v98:IsA("Terrain") and v98.Transparency < 1 and v98.Name:sub(v85[39], 13) ~= "DO_NOT_REMOVE" then
															if v92 and v98:IsDescendantOf(v92) then
																if not v93 or v98:IsDescendantOf(v93) then
																	return
																end
																v98:Destroy()
																return
															end

															if debris and v98:IsDescendantOf(debris) then
																return
															end

															if currentCamera and v98:IsDescendantOf(currentCamera) then
																return
															end
															local flag22 = false

															for k in --[[?LTable]], tbl30, nil, nil do
																if v98:IsDescendantOf(k) then
																	flag22 = true
																	break
																end
															end

															if flag22 then
																return
															end

															if v98.CanCollide then
																v98.Transparency = 1
															else
																v98:Destroy()
															end
														end
													end)
												end
											end)

											pcall(function(...)
												local tagged, v93, v94 = CollectionService:GetTagged("EmitLoop")

												for _, v95 in --[[?LTable]], tagged, v93, v94 do
													pcall(function(...)
														CollectionService:RemoveTag(v95, "EmitLoop")
													end)
												end
											end)
										end
									end)
								end

								if n33 >= 3 then
									local function fn65(...)
										local n38 = 0

										if getconnections then
											local ok, result = pcall(getconnections, localPlayer.Idled)

											if ok and type(result) == "table" then
												for _, v92 in --[[?LTable]], result, nil, nil do
													if pcall(function(...)
														v92:Disable()
													end) then
														n38 += 1
													end
												end
											end
										end

										local function fn66(arg, ...)
											local ok, result = pcall(function(...)
												return game:FindService(arg)
											end)

											if ok and typeof(result) == "Instance" then
												return result
											end
											return nil
										end

										local v92 = v85[43]
										local flag22 = type(keytap) == v92 and keytap
										local flag23

										if flag22 then
											flag23 = flag22
										else
											local v93 = v85[43]
											flag23 = type(keyclick) == v93 and keyclick
										end

										local flag24 = type(keypress) == "function" and keypress
										local flag25 = type(keyrelease) == "function" and keyrelease
										local str8 = "none"

										local function fn67(...)
											local VirtualUser = fn66("VirtualUser")
											local VirtualInputManager = fn66("VirtualInputManager")
											local flag26 = VirtualInputManager ~= nil

											if VirtualUser ~= nil then
												str8 = "VU"

												pcall(function(...)
													local cFrame = workspace.CurrentCamera.CFrame
													VirtualUser:Button2Down(Vector2.new(0, v85[18]), cFrame)
													task.wait(0.2)
													VirtualUser:Button2Up(Vector2.new(v85[18], 0), cFrame)
												end)

												return
											end

											if flag26 then
												str8 = "VIM"
												pcall(VirtualInputManager.SendKeyEvent, VirtualInputManager, true, Enum.KeyCode.F13, v85[41], game)
												task.wait(0.05)
												pcall(VirtualInputManager.SendKeyEvent, VirtualInputManager, v85[41], Enum.KeyCode.F13, false, game)
												return
											end

											if flag23 then
												str8 = "keytap"
												pcall(flag23, 39)
												return
											end

											if flag24 and flag25 then
												str8 = "keypress"
												pcall(flag24, 39)
												task.wait(0.05)
												pcall(flag25, v85[54])
												return
											end

											str8 = "move"

											pcall(function(...)
												local character = localPlayer.Character
												local v93 = character and character:FindFirstChildOfClass(v85[8])
												character = character and character:FindFirstChild("HumanoidRootPart")

												if v93 and character then
													v93:MoveTo(character.Position + Vector3.new(0, 0, 1))
												end
											end)
										end

										local flag26 = v85[145]

										pcall(function(...)
											local config = getgenv().Config

											if config then
												local v93 = v85[91]
												config = getgenv().Config[v93]
											end

											local v93 = v85[134]

											if type(config) == v93 and config[v85[33]] == false then
												flag26 = false
											end
										end)

										local function fn68(...)
											local v93 = getgc
											local getconstants_ = getconstants or debug and debug.getconstants
											local setupvalue_ = setupvalue or debug and debug.setupvalue
											if not (v93 and getconstants_ and setupvalue_ and getupvalues_) then
												return false, "executor thieu getgc/getconstants/getupvalues/setupvalue"
											end
											local ok, result = pcall(v93)

											if not (ok and type(result) == "table" and next(result) ~= nil) then
												local ok2
												ok2, result = pcall(v93, true)

												if ok2 then
													local v94 = v85[134]
													ok2 = type(result) == v94
												end

												if not ok2 then
													return false, "getgc khong tra ve gi"
												end
											end

											local v94 = v85[18]
											local v95, v96, v97 = pairs(result)

											for _, v98 in --[[?LTable]], v95, v96, v97 do
												v94 += 1

												if v94 % 400 == 0 then
													task.wait()
												end

												if type(v98) ~= "function" then
													continue
												end
												local ok2, result2 = pcall(getconstants_, v98)
												if not ok2 or type(result2) ~= "table" then
													continue
												end
												local v99 = v85[41]
												local v100, v101, v102 = pairs(result2)
												local flag27 = false
												local flag28 = false

												for _, v103 in --[[?LTable]], v100, v101, v102 do
													if v103 == "FireServer" then
														flag27 = true
													elseif v103 == "clock" then
														flag28 = true
													elseif v103 == v85[51] then
														v99 = v85[145]
													end
												end

												if not (flag27 and flag28 and v99) then
													continue
												end
												local ok3, result3 = pcall(getupvalues_, v98)
												local flag29 = not ok3

												if not flag29 then
													local v103 = v85[134]
													flag29 = type(result3) ~= v103
												end

												if flag29 then
													continue
												end
												local v103, v104, v105 = pairs(result3)
												local v106 = nil
												local v107 = nil
												local name = nil

												for k, v108 in --[[?LTable]], v103, v104, v105 do
													local v109 = v85[107]

													if type(v108) == v109 then
														v106 = k
													else
														local v110 = v85[104]

														if typeof(v108) == v110 and v108:IsA(v85[125]) then
															name = v108.Name
															v107 = k
														end
													end
												end

												if not (v106 and v107) then
													continue
												end
												local instance = Instance.new(v85[125])
												if pcall(setupvalue_, v98, v107, instance) then
													return true, ("da trao remote '%s'"):format(#name > 16 and name:sub(v85[39], 14) .. "..." or name)
												end
												return false, "setupvalue that bai"
											end

											return false, "khong tim thay closure vong idle"
										end

										if flag26 then
											task.spawn(function(...)
												local p_0, p_1
												task.wait(10)
												p_1 = 1

												for i = 1, 3 do
													if not fn29() then
														return
													end
													local v93, v94 = fn68()
													if v93 then
														fn34("anti-hop: " .. v94)
														return
													end
													fn34("anti-hop: " .. v94 .. ", thu lai")
													task.wait(v85[102])
												end

												p_1 = p_0
												warn("[sab] anti-hop: khong chan duoc - sau ~19 phut server se doi server")
											end)
										end

										if n38 > 0 then
											fn34(("anti-afk: disabled %d Idled conns, khong dung input gia"):format(n38))
										else
											localPlayer.Idled:Connect(function(...)
												if not fn29() then
													return
												end
												fn67()
												fn34("anti-afk: Idled fired, used " .. str8)
											end)

											warn("[sab] anti-afk: khong tat duoc Idled conn, se phai dung input gia khi AFK")
										end
									end

									fn65()
								end

								if n33 >= v85[17] and (num and num > 0 or num2 and num2 > 0) then
									task.spawn(function(...)
										local RunService = game:GetService("RunService")
										local Stats = game:GetService("Stats")
										local n38 = 0

										RunService.Heartbeat:Connect(function(...)
											n38 += v85[39]
										end)

										local n39 = v85[18]
										task.wait(v85[2])
										local n40 = 0

										while fn29() do
											n38 = v85[18]
											task.wait(1)
											local v92 = n38
											local value = nil

											pcall(function(...)
												value = Stats.Network.ServerStatsItem[v85[158]]:GetValue()
											end)

											if num and num > 0 and value and value > num then
												n39 += 1
												fn34(("misc: ping %.0f > %d (%d/%d)"):format(value, num, n39, v85[123]))
											else
												n39 = 0
											end

											if num2 and num2 > 0 and v92 < num2 then
												n40 += 1
												fn34(("misc: fps %d < %d (%d/%d)"):format(v92, num2, n40, 5))
											else
												n40 = v85[18]
											end

											if n39 >= 5 then
												localPlayer:Kick(("Ping qua cao: %.0fms"):format(value))
												return
											end

											if n40 >= 5 then
												localPlayer:Kick(("FPS qua thap: %d"):format(v92))
												return
											end
										end
									end)
								end

								do
									local function fn65(...)
										local crystalWheel = localPlayer:FindFirstChild(v85[130])
										crystalWheel = crystalWheel and crystalWheel:FindFirstChild("CrystalWheel")
										crystalWheel = crystalWheel and crystalWheel:FindFirstChild(v85[36])
										crystalWheel = crystalWheel and crystalWheel:FindFirstChild("Buttons")
										crystalWheel = crystalWheel and crystalWheel:FindFirstChild("Spin")
										if not crystalWheel then
											return nil
										end
										local main = crystalWheel:FindFirstChild("Main")
										main = main and main:FindFirstChild(v85[153])
										if not (main and main:IsA("TextLabel")) then
											return nil
										end

										if main.Text ~= "SPIN NOW" then
											return nil
										end
										return crystalWheel
									end

									local n38 = 0

									local function fn66(arg, ...)
										local coinsShop = localPlayer:FindFirstChild(v85[130])
										coinsShop = coinsShop and coinsShop:FindFirstChild("CoinsShop")
										coinsShop = coinsShop and coinsShop:FindFirstChild(v85[128])
										coinsShop = coinsShop and coinsShop:FindFirstChild("Content")
										coinsShop = coinsShop and coinsShop:FindFirstChild("Items")
										return coinsShop and coinsShop:FindFirstChild(arg) or nil
									end

									local function fn67(...)
										local backpack = localPlayer:FindFirstChild("Backpack")
										if backpack and backpack:FindFirstChild(v85[155]) then
											return true
										end
										local character = localPlayer.Character
										return character ~= nil and character:FindFirstChild("Speed Coil") ~= nil
									end

									local n39 = 0

									tbl29 = {
										spin = function(...)
											if not tbl23.spin then
												return false
											end

											if os.clock() - n38 < 20 then
												return false
											end
											local v92 = fn65()
											if not v92 then
												return false
											end
											n38 = os.clock()
											if fn54(v92.Activated) then
												print("[sab] spin: da quay")
												return v85[145]
											end
											return false
										end,
										coil = function(...)
											if not tbl23.coil then
												return false
											end

											if os.clock() - n39 < 30 then
												return false
											end
											n39 = os.clock()
											local speedCoil = fn66("Speed Coil")
											if not speedCoil then
												return false
											end
											local auto = speedCoil:FindFirstChild("Auto")
											local v92 = auto and auto:FindFirstChild(v85[85])

											if auto and v92 and auto.Visible and v92.Visible ~= true then
												if fn54(auto.Activated) then
													fn34("coil: bat AutoBuy cua game")
												end
											end

											if fn67() then
												return false
											end
											local buy = speedCoil:FindFirstChild("Buy")
											local price = buy and buy:FindFirstChild("Price")
											if not (buy and buy.Visible and price and price:IsA("TextLabel")) then
												return false
											end

											if price.Text == v85[81] then
												return false
											end

											if fn54(buy.Activated) then
												print("[sab] coil: dang mua Speed Coil")
												return v85[145]
											end
											return v85[41]
										end,
										equip = function(...)
											if not tbl23.coil then
												return v85[41]
											end
											local character = localPlayer.Character
											local humanoid = character and character:FindFirstChildOfClass("Humanoid")
											if not (character and humanoid) then
												return false
											end

											if character:FindFirstChild("Speed Coil") then
												return false
											end
											local v92 = localPlayer:FindFirstChild(v85[154])
											local speedCoil = v92 and v92:FindFirstChild("Speed Coil")

											if speedCoil and speedCoil:IsA("Tool") then
												pcall(function(...)
													humanoid:EquipTool(speedCoil)
												end)

												return true
											end

											return v85[41]
										end,
									}
								end
							end

							do
								local tbl30 = {}

								local function fn65(...)
									local v92, v93 = fn50()
									if not v92 then
										return v85[41]
									end
									local magnitude = ((v92.Position - vector) * Vector3.new(v85[39], 0, 1)).Magnitude
									if magnitude <= 6 then
										return true
									end

									if magnitude <= 30 then
										v93:MoveTo(vector)
										task.wait(0.5)
										local v94 = fn50()
										return v94 ~= nil and ((v94.Position - vector) * Vector3.new(1, 0, 1)).Magnitude <= 6
									end

									fn52(vector, 6, 20)
									local v94 = fn50()
									return v94 ~= nil and ((v94.Position - vector) * Vector3.new(1, 0, 1)).Magnitude <= 6
								end

								local function fn66(arg, arg2, ...)
									local ok, result = pcall(arg2)

									if not ok then
										if os.clock() - (tbl30[arg] or 0) > 5 then
											tbl30[arg] = os.clock()
											warn(arg .. ": " .. tostring(result))
										end

										return v85[41]
									end

									return result
								end

								if flag20 then
									return
								end

								if n33 >= v85[39] then
									local function fn67(...)
										pcall(function(...)
											getgenv().__SAB_UI:Destroy()
										end)

										local function fn68(arg, parent, arg2, ...)
											local instance = Instance.new(arg)
											local v92, v93, v94 = pairs(arg2)

											for k, v95 in --[[?LTable]], v92, v93, v94 do
												instance[k] = v95
											end

											instance.Parent = parent
											return instance
										end

										local v92 = gethui or get_hidden_gui
										local parent = nil

										if v92 then
											local ok
											ok, parent = pcall(v92)
											ok = ok and parent
											local v93 = nil

											if not ok then
												parent = v93
											end
										end

										if not parent then
											local ok, result = pcall(game.GetService, game, "CoreGui")

											if ok and result then
												parent = result
											end
										end

										local screenGui = Instance.new("ScreenGui")
										screenGui.Name = "Interface"
										screenGui.DisplayOrder = v85[15]
										screenGui.IgnoreGuiInset = true
										screenGui.ResetOnSpawn = v85[41]
										local protectGui = syn and syn.protect_gui or protect_gui

										if protectGui then
											pcall(protectGui, screenGui)
										end

										screenGui.Parent = parent
										getgenv().__SAB_UI = screenGui

										local v93 = fn68(v85[58], screenGui, {
											Size = UDim2.fromScale(v85[39], 1),
											BackgroundColor3 = Color3.fromRGB(10, 10, 11),
											BorderSizePixel = 0,
										})

										local flag22 = true

										local TextButton = fn68("TextButton", screenGui, {
											AnchorPoint = Vector2.new(v85[39], 0),
											Position = UDim2.new(1, -12, v85[18], 12),
											Size = UDim2.fromOffset(96, 34),
											BackgroundColor3 = Color3.fromRGB(32, 32, 36),
											BorderSizePixel = 0,
											AutoButtonColor = v85[145],
											Font = Enum.Font.FredokaOne,
											Text = "HIDE UI",
											TextColor3 = Color3.fromRGB(v85[108], 240, v85[108]),
											TextSize = 16,
											ZIndex = 50,
										})

										fn68("UICorner", TextButton, { CornerRadius = UDim.new(0, 6) })

										local function fn69(visible, ...)
											flag22 = visible
											v93.Visible = visible
											local children, v94, v95 = screenGui:GetChildren()

											for _, v96 in --[[?LTable]], children, v94, v95 do
												if v96 ~= TextButton and v96 ~= v93 and v96:IsA("GuiObject") then
													v96.Visible = visible
												end
											end

											TextButton.Text = visible and "HIDE UI" or v85[20]
											TextButton.BackgroundTransparency = visible and 0 or 0.45
										end

										TextButton.Activated:Connect(function(...)
											fn69(not flag22)
										end)

										local function fn70(arg, arg2, arg3, arg4, arg5, ...)
											return fn68("TextLabel", screenGui, {
												AnchorPoint = Vector2.new(0.5, 0),
												Position = UDim2.fromScale(0.5, arg),
												Size = UDim2.fromScale(0.9, arg2),
												BackgroundTransparency = 1,
												Font = Enum.Font.FredokaOne,
												Text = arg3,
												TextColor3 = arg4,
												TextScaled = true,
												TextSize = arg5 or 40,
												ZIndex = 2,
											})
										end

										fn70(0.05, 0.12, "SAB", Color3.fromRGB(224, v85[126], 3))
										fn70(0.17, 0.04, "discord.gg/34y6PnZ443", Color3.fromRGB(248, 250, 255))
										local session = fn70(0.28, v85[1], "Session: 0s", Color3.fromRGB(222, 222, 222))
										local v94 = fn70(0.37, 0.06, "Cash: ...", Color3.fromRGB(120, 255, 120))
										local v95 = fn70(0.46, 0.05, "...", Color3.fromRGB(222, 222, 222))
										local v96 = fn70(0.53, 0.05, "Rebirth: ...", Color3.fromRGB(190, v85[105], 255))
										local v97 = fn70(0.62, v85[63], "Task: starting up", Color3.fromRGB(255, 220, v85[135]))
										v97.TextYAlignment = Enum.TextYAlignment.Top
										fn70(0.92, 0.05, localPlayer.Name, Color3.fromRGB(150, 150, 150))
										tbl24.gui = screenGui
										local now2 = os.clock()

										task.spawn(function(...)
											local v98 = v85[18]

											while fn29() and screenGui.Parent do
												local n38 = os.clock() - now2
												session.Text = ("Session: %dh %02dm %02ds"):format(n38 / 3600, n38 / 60 % v85[140], n38 % v85[140])

												pcall(function(...)
													v94.Text = "Cash: $" .. fn36(fn37())
												end)

												pcall(function(...)
													v95.Text = ("Server: %s | Luck: %s"):format(serverType2.Kind, fn62())
												end)

												if v98 % 5 == 0 then
													pcall(function(...)
														local v99 = fn47()
														local level = v99 and v99.level and (v99.maxed and v99.level or v99.level - 1)
														v96.Text = ("Rebirth: %s / %s"):format(level and tostring(level) or "?", flag18 and tostring(n34) or "-")
													end)
												end

												if tbl24.task then
													v97.Text = "Task: " .. tbl24.task
												end

												v98 += v85[39]
												task.wait(1)
											end
										end)
									end

									fn67()
								end

								if n33 < 4 then
									fn33(("Bisect: TEST LEVEL %d, khong farm"):format(n33))
									print("[sab] TEST < 4: ngoi im, khong di chuyen / mua / ban / claim")
									return
								end

								task.spawn(function(...)
									local flag22 = v85[41]
									local n38 = 0

									while fn29() do
										fn66("rebirth", fn57)
										fn66("spin", tbl29.spin)
										fn66("coil", tbl29.coil)
										fn66("equip", tbl29.equip)

										if v90 and not flag22 and fn37() >= v90 then
											fn34("farm: cash cap reached, no more pod claiming")
											flag22 = true
										end

										if not flag22 and os.clock() - n38 >= 60 then
											fn66("claim", fn61)
											n38 = os.clock()
										end

										fn66(v85[129], fn60)
										fn66(v85[49], fn63)
										local flag23 = false

										if not fn66("buy", fn64) then
											flag23 = fn66("camp", fn65)
											fn33(flag23 and "Waiting for brainrots" or v85[147])
										end

										task.wait(flag23 and 0.12 or 0.4)
									end
								end)
							end

							return
						end
					end

					if not (v85[64] < n25) then
						print("[sab] TEST 0: chi khoi bypass, dung ngay tai day")
						print("[sab]   identity layer: " .. (tbl17.noIdentity and "TAT" or "bat"))
						return
					end

					while true do
					end
				end
			end
		end
	end
end

fn14(100, v3[fn2("n\218\192\176\129w\151\190\193\1756", 21845944094585)], v3[fn2("-\209 \r\161\128\30\181)\162\169\194\240\156\19Ȣs\0212\188p\207(\188\240\176\157\230\2\142\167\11\226\159&\233", 10693721171687)] .. v32(v63), Color3[v3[fn2("\211\207k", 18772801209419)]](1, 0, 0), v3[fn2(" `\4\162\157", 18561267614598)])
