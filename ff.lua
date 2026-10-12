-- Luraph runtime function (from the VM object, not part of the script: not lifted).
-- LPH_ENCFUNC decrypts a function this way: (key, encrypted buffer, ...) -> function.
local function luraph_runtime1(...)
	error("Luraph runtime function, not devirtualized")
end

local R_0, R_1
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
	local R_0, R_1, R_2
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
		R_1 = 1

		for i = 1, 16 do
			local n3 = 0
			local n4 = 1
			R_2 = 1

			for i2 = 1, 5 do
				local flag2 = v2(10, 20) > 15
				UserGameSettings:SetTutorialState("nil  nil  " .. n2, flag2)
				n3 += (flag2 and 1 or 0) * n4
				n4 *= 2
				n2 += 1
			end

			R_2 = R_1
			str ..= ("qwertyuiopasdfghjklzxcvbnm098765"):sub(n3 + 1, n3 + 1)
		end

		R_1 = R_0
	else
		str = ""
		local n = 0
		R_1 = 1

		for i = 1, 16 do
			local n2 = 0
			local n3 = 1
			R_2 = 1

			for i2 = 1, 5 do
				n2 += (UserGameSettings:GetTutorialState("nil  nil  " .. n) and 1 or 0) * n3
				n3 *= 2
				n += 1
			end

			R_2 = R_1
			str ..= ("qwertyuiopasdfghjklzxcvbnm098765"):sub(n2 + 1, n2 + 1)
		end

		R_1 = R_0
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
local v3

if v2 and v2[1] then
	v3 = v2[1]
else
	v3 = nil
end

local floor = math.floor
local random = math.random
local remove = table.remove
local char = string.char
local n = 0
local n2 = 2
local tbl = {}
local tbl2 = {}
R_1 = 1

for i = 1, 256 do
	tbl2[i] = i
end

R_1 = R_0

repeat
	local v4 = random(1, #tbl2)
	local v5 = remove(tbl2, v4)
	tbl[v5] = char(v5 - 1)
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
local v4 = tbl4

local function fn2(arg, arg2, ...)
	local R_0, R_1
	local v5 = tbl4

	if not v5[arg2] then
		tbl3 = {}
		local v6 = tbl
		n = arg2 % 35184372088832
		n2 = arg2 % 255 + 2
		v5[arg2] = ""
		local n3 = 77
		R_1 = 1

		for i = 1, #arg do
			n3 = (string.byte(arg, i) + fn() + n3) % 256
			v5[arg2] = v5[arg2] .. v6[n3 + 1]
		end

		R_1 = R_0
	end

	return arg2
end

local v5 = LUARMOR_SkipAntidebugDevMode
local v6 = LUARMOR_AllowKeyCheckSkip
local flag4 = ff97f23b97f93792992999 and ff97f23b97f93792992999() == v4[fn2("\172", 31126577901884)] or false
local v7 = v4[fn2("6\143K\188=\r\226\146\248&\176;\3\231Æ\133\143\248\204_\184\222\229\157\254\25", 2340828612740)]
local v8 = USE_NON_SSL_NODE
local v9 = l_fastload_enabled
local n3 = os[v4[fn2("(\204\6\168", 4882453074371)]](os[v4[fn2("UC\178}", 12971197083440)]](v4[fn2("\139L", 33012126087192)])) - os[v4[fn2("vܢ\204", 5436520764359)]](os[v4[fn2("f\150\187#", 4318721413046)]](v4[fn2("\209\6D", 24300592814183)]))
local n4

if n3 < 0 then
	n4 = (86400 + -(-n3 % 86400)) % 86400
else
	n4 = n3 % 86400
end

local n5 = n4 / 3600

if n5 >= 21 or n5 < 5 then
	local tbl5 = {}
	local v10 = v4[fn2("\226XO\140q\210K\180:%\205B\254\182.y\229\163\245\219v$\209Y\171\6f", 3448963992716)]
	local v11 = v4[fn2("N\235X\233G\12\243\241ˣ@s\250\190\137\214\t\2267j\174\247\195\241\237\1\160", 16047561292385)]
	tbl5[1] = v10
	tbl5[2] = v11
	v7 = tbl5[math[v4[fn2("\195K\\\173\155:", 14086848885567)]](1, 2)]
elseif n5 >= 5 and n5 < 15 then
	local tbl5 = {}
	local v10 = v4[fn2("\136M\165r\0017j\254\186\147Ds\224x\241\151\231]k\137\28\184\17f,\138\149", 25839311805952)]
	local v11 = v4[fn2("\211:<?S\222\17[!\164Yl\240F\230\"\193\251\128\220a\29\252\133\u{87}\163", 2297877629020)]
	local v12 = v4[fn2("s\146p: \167\177_\228\255\136kW\246\245\253e\146M\245\19T\169IP\21\187", 2572763924828)]
	local v13 = v4[fn2("'\26L\252\146.\25c\151\208\248ϕ\154\r\229I\243\26\149\181\139k`+\16\2", 19333311546965)]
	local v14 = v4[fn2("$\1C\213\234\205?\169\200\"\188@\0\188\128\27C\244\12\203l\224\3p\245\187\233", 21697763200751)]
	local v15 = v4[fn2("\30\197\216\\\25\163\155i\1304i\2af\14\181\15\174MD\174\131\206\208Zã", 15465575462979)]
	local v16 = v4[fn2("\5ڝ_\154\171yf\184\193\138\26T\188\11\16#K\128\144:\7\197m\210\14\252", 30187025133009)]
	local v17 = v4[fn2("\182\186\142\199\t\163\189V 8\195g\230w\148\228\193v\199\\\186\212\246\174\130H\254", 19714501527480)]
	local v18 = v4[fn2("\248~\133\207\196r\178\244G\251 /\n\30\169\154%m\187W\141{\235\246\179\243\240", 7900833455294)]
	local v19 = v4[fn2("*\211\203v\129\12j\218\209A\222\15\186[S\135\165w\1725[tI\n \212\199", 17090196422188)]
	local v20 = v4[fn2("y\193\242QA\127\235\22\"\3\134\159.\0\5\224\130\236\239\27\254.\224\194ż\188", 25925213773392)]
	tbl5[1] = v10
	tbl5[2] = v11
	tbl5[3] = v12
	tbl5[4] = v13
	tbl5[5] = v14
	tbl5[6] = v15
	tbl5[7] = v16
	tbl5[8] = v17
	tbl5[9] = v18
	tbl5[10] = v19
	tbl5[11] = v20
	v7 = tbl5[math[v4[fn2("xԳ\192\182-", 34852575739594)]](1, 11)]
elseif n5 >= 15 and n5 < 21 then
	local tbl5 = {}
	local v10 = v4[fn2("\240\230R\240>\184pcy\16\164\25JH\231\14\235b\3\8\138b\1\249\194\4\255", 13222460338202)]
	local v11 = v4[fn2("\132\141w\195|l\143>'\247n\175\248+\249\226\144<C!*\177\160\233\21\2I", 27390916092837)]
	local v12 = v4[fn2("\rl\1903\128\248l\136-%\192js\153c\179\238b\157\207\209#\200;\238Nt", 14158791783298)]
	tbl5[1] = v10
	tbl5[2] = v11
	tbl5[3] = v12
	v7 = tbl5[math[v4[fn2("\237\238q\243\0025", 446690230688)]](1, 2)]
else
	game:GetService(v4[fn2("\11\19\5\4\2527\137", 10601376556689)])[v4[fn2("6\164p?\177pjs'\184]", 30941888671888)]]:Kick(v4[fn2("XЀ\129\142\231\6\145\130ښz\231[\253\250\28A\140`;m\\\243C\167d_\8뵟\11\24\4̩\172S\rH\235-E\0079\1519lH\149-C3\130)\225\20\162{1\228ܞ", 31900769383437)])
end

pcall(function(...)
	if game:GetService(v4[fn2("Y4\161\128j\n\206\18\4\2551z\235۾\220\26C\148", 26759536632153)]):GetCountryRegionForPlayerAsync(game:GetService(v4[fn2("A\209q\131\160\177\219", 8137063865754)])[v4[fn2("\255\189\244ˢ\218K\216I\131\254", 24768758536731)]]) == v4[fn2(";%", 6519959328696)] then
		local tbl5 = {}
		local v10 = v4[fn2("l\205hnf\2268}\206\25\1781{\11\1981/\224\8\179\240\27-\r\205#\151", 30974101909678)]
		local v11 = v4[fn2("\n\230\168\228\154T\28\183\22\226r\177\0\0042f+\129\184ʟ\193ͤ\166\128i", 12874557370070)]
		local v12 = v4[fn2("\31\140C\234\224\0128'uqF\230\160\26)\210ߣ\139\172\132w\172\181\245\250\246", 25825352736243)]
		local v13 = v4[fn2("Q\t\222t?\167\240\222K|Jn\228\232[\172OO\133\25\130Ϋ\203\24\190&", 1597776594384)]
		local v14 = v4[fn2("w׆z\184Rػ\135\17w\149\1628\245<t\183\218\"9\180&\154\173oS", 24407970273483)]
		tbl5[1] = v10
		tbl5[2] = v11
		tbl5[3] = v12
		tbl5[4] = v13
		tbl5[5] = v14
		v7 = tbl5[math[v4[fn2("\182\163/Pv\178", 434878710165)]](1, 5)]
	end
end)

local tbl5 = { [v4[fn2("$GBp\229(\220", 25758778711477)]] = v4[fn2("\233\191\12", 22757578724042)] }
tbl5[v4[fn2("\168)[\4", 30887126167645)]] = flag4 and LT_R_RRT_H or v4[fn2("\145\199\235ښ\255A\27", 5940121048476)] .. v7
tbl5[v4[fn2("-\187\163M\25\167\217@", 4026654723750)]] = "6d1d42f1a622306f0c177c220a85ef47"
tbl5[v4[fn2("|\153\251\252\129+\213c\238\189\31]\198", 318911054121)]] = "0000"
tbl5[v4[fn2("\255u\7\188", 2453574945005)]] = "GPOLevel"

if v8 then
	tbl5[v4[fn2("P+\173\t", 11860914154278)]] = v4[fn2("\190\203\210Z\214\212\25ې\173pԼ\146\25\18\18\16\133\139\193獓ݓ\217", 22440815219107)]
	v7 = v4[fn2("_\12\235cw\2309\u{84}\23,d\224NS\22X\5\19p", 20241724852643)]
end

local flag5 = type(({ table.unpack(v, 1, v.n) })[1]) ~= v4[fn2("\242\19\150\29>", 10561646896748)]
local flag6 = false
local fn3 = nil
local n6 = nil
local tbl6 = nil
local tbl7 = nil
local flag7 = nil
local v10 = nil
local tbl8 = nil
local v11 = print
local v12 = next
local v13 = string[v4[fn2("2\2521\5", 29730670930984)]]
local v14 = identifyexecutor
local v15 = game
local v16 = pcall
local v17 = string[v4[fn2("\159\240\254\230\24\28", 19614640490331)]]
local v18 = debug[v4[fn2(";+\25\153&\188\15\128\26", 12781138980479)]]
local v19 = tonumber
local v20 = setmetatable
local v21 = rawget
local v22 = wait
local v23 = debug[v4[fn2("P\221{\181\235n\227", 23381441762575)]]
local v24 = loadstring
local v25 = os[v4[fn2("X\184mZ", 16176414243545)]]
local v26 = string[v4[fn2("U\235\251\154", 32087606162619)]]
local v27 = string[v4[fn2("\175\1522", 25909107154497)]]
local v28 = spawn
local v29 = game:GetService(v4[fn2("`B\166#\255jI\172]^", 4772928065885)])[v4[fn2("\160\129EكZ\5\18\24", 20189109897586)]]
local v30 = os[v4[fn2(">^S\159\159", 3206290934698)]]
local v31 = rconsoleprint
local v32 = math[v4[fn2("\165A7e", 11417445247369)]]
local v33 = tostring
local v34 = pairs
local v35 = string[v4[fn2("\3\155\250\194", 32580468700806)]]
local v36 = getgenv
local flag8 = false

local function fn4(arg, arg2, ...)
	v24(v4[fn2("i\154\24+|X6!\178ڻ\204ηA\11\7\248<\206\28\245\222c\174\5\23\227\240?Iz\250a4S.\240\147t\199\0065\4\145\11\239\203\2.\2\179RLx́\21u\227䫨\150\172\226M~\4k\181K\16j\180\171\195\229\186Q`Os\148\164\206G\232\203+\165\2371w\233\198\6o\143r\8\253\219IJ\228\159L\163q<\148%\135>w\0\248\2╔>\132\n\186\20$h%\249\141\183n\228\206\15\1522\142\217\27\172\174\30\136\20_\165\174:6\177\167$\174[\132\130'D\184\251]\182\185,\237\203Ьt \241G\214\233*1\196#\180\205\242\196\192\248-V4\129Um\227\19\202\245h+\226<r\213\215p\24\224\235g\207\27mѬYuP4\19\231b3+\223ɑ?ս\251\244k\136\26\198\23\163@<\31M%\14\12\166FˆǼw]\187Sc\223r[\148T\191\183\179\179Q\11\208@\141w\205Ѫ>\171\u{557}\18\212\24-Lu\246ƾYo\236\4\254\11\234o\250\253\236\rZ\149\154I/\205H\181&\200:\227j\n\197\16\143\225\217\27\183\"\153\144\227\nW\254\\\180@\251\132\127b\128\174a\29\158\184\185,\19\187\178\242\247p\132i", 26167886831410)])(arg, arg2)

	while v22() do
	end
end

local tbl9 = {}
local flag9 = false
local v37 = string[v4[fn2("\189[J\156\131h", 30415739121318)]]
local v38 = string[v4[fn2("\1510\206", 13348091965583)]]
local v39 = table[v4[fn2("k\188*TG\222", 11500125891030)]]
local v40 = type
local v41 = v34
local v42 = v22
local v43 = coroutine[v4[fn2("\177߽\215", 9666118886186)]]

local fn5 = syn and syn[v4[fn2("Z\185\149\247\174\30\161\141\220", 26705847902503)]] and syn[v4[fn2("\137ҫ\217\r2\137v\146", 25551540215028)]][v4[fn2("fӟ\144\186|\152", 30015221198129)]] or WebSocket and WebSocket[v4[fn2("\202Be\155Q\245>", 758084862658)]] or WebsocketClient and function(arg, ...)
	local v44 = WebsocketClient[v4[fn2("\188m\224", 16394390485924)]](arg)
	v44:Connect()
	return v44
end

local fn6 = nil

fn6 = function(arg, ...)
	local tbl10 = {}
	local v44, v45, v46 = v41(arg)

	for k, v47 in --[[?LTable]], v44, v45, v46 do
		local n7 = #tbl10 + 1
		local v48 = v4[fn2("'\200\247\146 \170_\227", 34886936526570)]
		local v49 = v4
		local flag10 = v40(v47) == v49[fn2("\20/x-\133", 7497094208326)] and fn6(v47)
		local str2

		if flag10 then
			str2 = flag10
		else
			local v50 = v4
			str2 = v4[fn2("=", 18649317131224)] .. v47 .. v50[fn2("Z", 173951484066)]
		end

		tbl10[n7] = v37(v48, k, str2)
	end

	return v4[fn2("i", 24314551883892)] .. v38(v39(tbl10), 0, -2) .. v4[fn2("\194", 22373167419748)]
end

local function fn7(arg, ...)
	local function fn8(arg2, ...)
		if arg2 == v4[fn2(",\196P\\", 10051603965073)] then
			if flag8 then
				local v44 = v4
				v31(v4[fn2("\188", 31749367165824)] .. os[v4[fn2("\0302\18I\236", 28036254623230)]]() .. v44[fn2("]F\213\251\200_\178F\20\156:\132P\20@C\245\5rT\147\137\228\134\r\254\141{\211", 1801793767054)])
			end

			arg[v4[fn2(",\186lJ\254\246p\224", 16202184833777)]] = tick()
			return
		end

		local v44 = v4
		local v45 = string[v4[fn2("\159\11\208\29\209", 9071247761664)]](arg2, v44[fn2("\188\201\31<\247\150\244\169-\6\18", 23326679258332)])

		if flag8 then
			local v46 = v4
			v31(v4[fn2("\7", 33022863833122)] .. os[v4[fn2("\127>\184\15\133", 17304951340788)]]() .. v4[fn2("\1651f.\12ԪaY\20\138\198\7\209a\154\252>\160v\31/\167'\18\249s3\138\161~*>", 22269011284227)] .. arg2 .. v46[fn2(" ", 17028991270387)])
		end

		if v45 then
			local v46 = arg[v4[fn2("Ƣn!\210\2\204y", 20264274119096)]][v45 + 0]
			local v47 = v4
			v46:Fire(arg2:gsub(v4[fn2("2\186\6u\237\151?\157\214\218\26", 16177488018138)], v47[fn2("", 19126073050516)]))
			return v46:Destroy()
		end

		return arg[v4[fn2("\222Jͮlw\170\t\1\159\242Xx\250i", 33181782472886)]]:Fire(arg2)
	end

	local fn9 = nil

	fn9 = function(...)
		if flag8 then
			local v44 = v4
			v31(v4[fn2("\20", 25372219857997)] .. os[v4[fn2("\31\244\136j\213", 5980924483010)]]() .. v44[fn2("\245\140.:\174\129O1!\183\\", 29455784635176)])
		end

		arg[v4[fn2("\154p\255\171h\15\253<\144\234\187\20\22\154\6", 7238314531413)]] = false

		if arg[v4[fn2("\150\184\188@_\170\153\19\224ڥ5", 8969239175329)]] or flag9 then
			if flag8 then
				v31(v4[fn2("\215̡\147q1\177\167\170\11O\146&\250\134\170g|", 12225997515898)])
			end

			return
		end

		local n7 = 0
		local v44

		while true do
			if flag8 then
				local v45 = v4
				v31(v4[fn2("\8", 25877967691300)] .. os[v4[fn2("\242\131\241\176\153", 32213237790000)]]() .. v45[fn2("\158\5\232\183M\152\162w\231Y\191\203\31\168H\18Cu\188<\171s\200\226N\20\133\25n\255\209ȴV\192\30ǁv", 28825478949085)])
			end

			local v45 = v25()
			local flag10 = false
			local v46 = nil
			v44 = nil

			v28(function(...)
				local v47, v48 = v16(fn5, arg[v4[fn2("\23\20\24", 29848786136214)]])
				v46 = v47
				v44 = v48
				flag10 = true
			end)

			while not flag10 and v25() < v45 + 8 do
				v42()
			end

			if flag8 then
				local v47 = v4
				v31(v4[fn2("\128", 29034864994720)] .. os[v4[fn2("\175\nP\245\156", 12251768106130)]]() .. v4[fn2("z\24ث\148\2523\254\223\1\222Q\227{\241\197\249\\\11_h\181", 34490713701753)] .. v33(flag10) .. v4[fn2("\127\132\31\28g\n", 10375883892159)] .. v33(v46) .. v47[fn2("\12", 27328637166443)])
			end

			if not flag10 then
				flag6 = false
				n7 = 10

				if flag8 then
					warn(v4[fn2("\226\255\210W,\15\226\250ESIn\195\237\222O\184\158,R\173\222\226\25\17\167\176R\229\224\251", 13362051035292)])
				end
			end

			if not v46 then
				n7 += 1

				if n7 > 5 then
					flag6 = false
				end

				v42(n7 < 4 and 10 or 120)
				continue
			end

			break
		end

		if flag8 then
			local v45 = v4
			v31(v4[fn2("\194", 33361102829917)] .. os[v4[fn2("nG\178p\189", 1458185897294)]]() .. v45[fn2("\148\235A|\17\230\0113\2209x\22|\149\178\167\141\242\182\164\19x\130\238", 2558804855119)])
		end

		arg[v4[fn2("\204*c\136֯\156\235c\228#\163\143\18\204", 14980229346943)]] = true
		arg[v4[fn2("\196\28p0\225\186\219]\246", 13544592716102)]] = v44
		flag6 = arg
		local v45 = v4

		v44:Send(fn6({
			[v4[fn2("\144\157\26\202J\143", 30815183269914)]] = v45[fn2("\158\177\19U", 18578448008086)],
			[v4[fn2("\222U\224\t", 256632127727)]] = {},
		}))

		v16(function(...)
			v44[v4[fn2("k(\166.\2433M", 11661192079980)]]:Connect(fn9)
			v44[v4[fn2("\15\210\249~|\227\202\248q", 12796171824781)]]:Connect(fn8)
		end)

		v16(function(...)
			v44[v4[fn2(" URU\22\156\133D\244\18\140\156u\238\15*", 31006315147468)]]:Connect(fn9)
			v44[v4[fn2("v\150P\222B\136';\166\162\1439", 3526275763412)]]:Connect(fn8)
		end)
	end

	v16(function(...)
		local v44 = v4
		arg[v4[fn2("\0Q8\178\17K1\246R", 27593859490914)]][v44[fn2("Q\211s\145*Q?", 8519327620862)]]:Connect(fn9)
		local v45 = v4
		arg[v4[fn2("\197,r \183r\1669N", 8460270018247)]][v45[fn2("Ó@Qd\143\153|\223", 32507452028482)]]:Connect(fn8)
	end)

	v16(function(...)
		local v44 = v4
		arg[v4[fn2("\29i\"\207\r\254\208\235\162", 33601628338749)]][v44[fn2("\127\0\163\179\239\249y\205g\245RE", 27001135915578)]]:Connect(fn8)
		local v45 = v4
		arg[v4[fn2("Z_\28\178_Aͣ8", 23336343229669)]][v45[fn2("h\177\227\15\189\1384\185\128\r\248H7\209\205\244", 11453953583531)]]:Connect(fn9)
	end)

	arg[v4[fn2("U0\18973y\172\177", 26105607905016)]] = tick()

	while v42(10) do
		if flag8 then
			local v44 = v4
			v31(v4[fn2("\145", 14951237432932)] .. os[v4[fn2("\2286\234N\229", 22975554966421)]]() .. v44[fn2("ח\31]\186]\218A}\226[{\251\17t\146էړg\20\toć:\170", 14658096969043)])
		end

		if arg[v4[fn2("\200tK\173\215\207e8\175\212\11Or\171\158", 15693215676695)]] then
			local v44 = v4

			arg[v4[fn2("t\168\177Eņ\218\30\232", 31886810313728)]]:Send(fn6({
				[v4[fn2("+\30H\139\251Z", 29989450607897)]] = v44[fn2("\234\23\201\8", 21721386241797)],
				[v4[fn2("\227o\137\144", 9220502430091)]] = {},
			}))

			if tick() - arg[v4[fn2("\161\183W҉G\174\t", 26743430013258)]] > 20 then
				if flag8 then
					local v45 = v4
					v31(v4[fn2("=", 25162833812362)] .. os[v4[fn2("\2501\245\132\"", 26944225862149)]]() .. v45[fn2("\240\161\251\171\150\228~\247ֶ\166T\188\2\n\31\4\nlA!\3P\242", 20296487356886)])
					warn(v4[fn2("\222\6\189\254ChVJX'\161Kl\129", 21935067385804)])
				end

				arg[v4[fn2("\156\156&\216d,<\149*", 15423698253852)]]:Close()
			end
		end
	end
end

tbl9.new = function(arg, arg2, ...)
	local tbl10 = {}
	v20(tbl10, arg)
	arg[v4[fn2("\227t\243=\230\148\11", 15742609307973)]] = arg
	local v44 = v25()
	local flag10 = false
	local v45 = nil
	local v46 = nil

	v28(function(...)
		local v47, v48 = v16(fn5, arg2)
		v45 = v47
		v46 = v48
		flag10 = true
	end)

	while not flag10 and v25() < v44 + 8 do
		v42()
	end

	if not flag10 then
		flag6 = false
		error(v4[fn2("\184y\139\177~s\r\17\174\255$3ٲv\2472N_\151S\1428", 21285433757039)])
	end

	assert(v45, v46)
	arg[v4[fn2("\232\nl\8\221\198\244\158\162", 15444099971119)]] = v46
	arg[v4[fn2("\212\216b", 32886494459811)]] = arg2
	local v47 = v4
	arg[v4[fn2("\154\254+\5n)\173\161d\163\227\187\2262\186", 7107314031067)]] = Instance[v4[fn2("f̜", 13855987348072)]](v47[fn2("\12\2423\140\203\204q\2223\23\184\t\169", 19879862814802)])
	local v48 = v4
	arg[v4[fn2("\246M\198tb߸\2464", 4490525347926)]] = arg[v4[fn2(">RVz5\150\2A\180;\184ķ\181\202", 26856176345523)]][v48[fn2(">4z\139p", 25648179928398)]]
	arg[v4[fn2("sfê\t\245<\19", 6486672316313)]] = {}
	arg[v4[fn2("U\245\146]\170\143@8N@#\176\212\228\178", 12321563454675)]] = true
	v43(fn7)(arg)

	repeat
		v29:Wait()
	until arg[v4[fn2("\174\181j@\3-\232\22", 34774190194305)]]

	return tbl10
end

tbl9.request = function(arg, arg2, ...)
	if flag8 then
		local v44 = v4
		v31(v4[fn2("v", 34172876422225)] .. os[v4[fn2("\1532\200F\140", 32307729954184)]]() .. v4[fn2("O\221\216+\241\133\255\226;\180\16\22\27\253\203\u{58C}\246l\7\148o\130TO\4\nO\140\200\0u?\140u\183\132J\245hS\144\30<\219\3", 4505558192228)] .. v33(arg[v4[fn2("\239調\168\155^Q\134(\151\189m\150\196", 22259347312890)]]) .. v44[fn2("\200", 12545982344612)])
	end

	local n7 = 0

	while not arg[v4[fn2("\214\240x\235\156NC\182\231{\193cx\215d", 1803941316240)]] do
		n7 += 1
		v42(0.1)
		if not (n7 > 40) then
			continue
		end

		if flag8 then
			warn(v4[fn2("\1950\131r\170\212EȪ\218Bil", 4536697655425)])
		end

		flag6 = false
		return v4[fn2("", 22063920336964)]
	end

	if flag8 then
		local v44 = v4
		v31(v4[fn2("Y", 27805393085735)] .. os[v4[fn2("\207\199us@", 9663971337000)]]() .. v44[fn2("bp\228\206D\24\1659\145\143\129bc\145\235\171\\\3\127[\2340x\247[\199GvH\160Q\147?\225̣w\tC", 19677993191318)])
	end

	local v44 = math[v4[fn2("\158\226\202\\\232\159", 458501751211)]](1, 99999999)
	local v45 = v4
	local v46 = Instance[v4[fn2("J\3\167", 23438351816004)]](v45[fn2("\203%q\241\205e\171\179\26\144\200.v", 12404244098336)])

	if flag8 then
		local v47 = v4
		v31(v4[fn2("o", 27769958524166)] .. os[v4[fn2(">\238W\231\186", 6757263513749)]]() .. v47[fn2("\221O\190w\196!\176\224\7\187#ʮgm\217c", 26137821142806)])
	end

	arg[v4[fn2("\227\197\200eba\232\t", 21769706098482)]][v44] = v46
	local v47 = v4

	arg[v4[fn2("\178\18Q\147\250:[\134\176", 17162139319919)]]:Send(fn6({
		[v4[fn2("~\148\234\238Ɗ", 22738250781368)]] = v47[fn2("\142YQϺ\16\149", 21390663667153)],
		[v4[fn2("s\182\11\31", 24974923258587)]] = arg2,
		[v4[fn2("\183\1", 1700858955312)]] = v44,
	}))

	if flag8 then
		local v48 = v4
		v31(v4[fn2("\215", 27636810474634)] .. os[v4[fn2("-O0\128\243", 26764905505118)]]() .. v48[fn2("\229\171\27\129\190\143\178\29\245<<\251}yL", 15506378897513)])
	end

	local flag10 = false

	v28(function(...)
		v42(30)

		if not flag10 then
			if flag8 then
				local v48 = v4
				v31(v4[fn2("\178", 20659423169320)] .. os[v4[fn2("͗q;\138", 2741346535929)]]() .. v48[fn2("\195wkZ\144wȺ\168\1644\255\201\252U=\131\243\6\174KR!\250\179?ä\203\200\249\131\225<=c\8\216H\2452C\236\245\5\156", 29761810394181)])
			end

			local v48 = arg[v4[fn2("į\140R\1966\251\147", 8061899644244)]][v44]
			v48:Fire(v4[fn2("", 10378031441345)])

			if flag8 then
				local v49 = v4
				v31(v4[fn2("\19", 4223155474269)] .. os[v4[fn2("\138J\234w\251", 2422435481808)]]() .. v49[fn2("\220\225Ȣ\212/\159\152\17\130\1\192\160\175\215+\170\142-\222\01938\151\237#G\250s}\166a\1", 34310319570129)])
			end

			return v48:Destroy()
		end
	end)

	local v48 = v46[v4[fn2("6y\14\152\246", 14892179830317)]]
	flag10 = true
	return (v48:Wait())
end

tbl9.close = function(arg, ...)
	arg[v4[fn2("\241\199\234^{\15\210n\242Θ\147", 28222017627819)]] = true
	arg[v4[fn2("\248Ot\178\26\"\163W\188", 11388453333358)]]:Close()
end

local v44 = script_key or v4[fn2("O8\150\147", 28215574980261)]
local n7 = 0
local flag10 = false

v28(function(...)
	flag10 = true

	while not flag7 do
		n7 += 1
		v29:Wait()
	end
end)

while not flag10 do
	v29:Wait()
end

local function fn8(...)
	local v45 = n7

	while n7 == v45 do
		v29:Wait()
	end
end

local function fn9(arg, ...)
	local R_0, R_1, R_2, Z_1, Z_2, r_1, r_2

	if arg then
		R_1 = 1

		for i = 1, 99999999 do
			R_2 = 1
			Z_2 = 99999999
			r_2 = 1 - R_2
			r_2 = r_2 + R_2

			if R_2 <= 0 then
				if r_2 >= Z_2 then
					LPH_CRASH()
				end
			elseif r_2 <= Z_2 then
				LPH_CRASH()
			end

			r_2 = r_1
			Z_2 = Z_1
			R_2 = R_1
		end

		R_1 = R_0
	end

	while v22() do
	end
end

local function fn10(arg, ...)
	local R_0, R_1, R_2
	R_1 = 1

	for i = 1, 2 do
		local n8 = arg % 9915 + 4
		local n9 = nil
		local n10 = nil
		R_2 = 1

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

		R_2 = R_1
		local n11 = arg % 9999995 + 1 + 7333
		local n12 = arg % 1000
		local n13 = fn3((arg - n12) / 1000) % 1000
		local n14 = arg % (n8 * n9 + 9999) + 7333
		arg = (n12 * n13 + n11 + arg % (419824125 - n11 + n12) + (n14 + n12 * n9 + n13) % 999999 * (n11 + n14 % n10)) % 99999999999
	end

	R_1 = R_0
	return arg
end

local n8 = 1
local v45 = syn and syn[v4[fn2("D\180\156f\239S\239", 24172813637616)]] or request or http_request

if v14 and ({ v14() })[1] == v4[fn2("\25\247}t\225\1\187", 7949153311979)] then
	n8 = 9
elseif v14 and ({ v14() })[1] == v4[fn2("\144\144T\182[\138\11\21\232z", 2290361206869)] then
	if ({ v14() })[2] == v4[fn2("@I\129", 19850870900791)] then
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
elseif v14 and ({ v14() })[1] == v4[fn2("\171\192\220JXȜ", 12815499767455)] then
	n8 = 7
elseif v14 and ({ v14() })[1] == v4[fn2("\169\192C<\132\166", 18670792623084)] then
	n8 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("\229\232Z}%\134\210K`", 16058299038315)] then
	n8 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("v\191", 18668645073898)] then
	n8 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("\138\203G|", 30760420765671)] then
	n8 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("y\142\4\231\253", 9953890477110)] then
	n8 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("h\16\196\"\236", 28973659842919)] then
	n8 = 15
end

if v14() == v4[fn2("\236<\200I", 5129421230761)] then
	n8 = 11
end

local function fn11(arg, arg2, ...)
	local R_0, R_1
	tbl7 = {}
	tbl6 = {}
	R_1 = 1

	for i = 0, arg do
		local v46 = v13(i)
		tbl6[i] = v46
		tbl6[v46] = i
	end

	R_1 = R_0
	R_1 = 1

	for i = 1, #arg2 do
		local v46 = arg2[i]
		tbl7[i - 1] = v46
		tbl7[v46] = i - 1
	end

	R_1 = R_0
end

local tbl10 = {}
local v46 = v4[fn2("?", 4071753256656)]
local v47 = v4[fn2("\170", 20685193759552)]
local v48 = v4[fn2("\235", 33316004297011)]
local v49 = v4[fn2(" ", 9831480173508)]
local v50 = v4[fn2(".", 12166939913283)]
local v51 = v4[fn2("\188", 20310446426595)]
local v52 = v4[fn2("\30", 7856808696981)]
local v53 = v4[fn2("J", 30505936187130)]
local v54 = v4[fn2("\22", 31005241372875)]
local v55 = v4[fn2("y", 15134852888335)]
local v56 = v4[fn2("p", 7987809197327)]
local v57 = v4[fn2("\227", 12325858553047)]
local v58 = v4[fn2("M", 14182414824344)]
local v59 = v4[fn2(")", 20544529287869)]
local v60 = v4[fn2("F", 24744061721092)]
local v61 = v4[fn2("\174", 28931782633792)]
tbl10[1] = v46
tbl10[2] = v47
tbl10[3] = v48
tbl10[4] = v49
tbl10[5] = v50
tbl10[6] = v51
tbl10[7] = v52
tbl10[8] = v53
tbl10[9] = v54
tbl10[10] = v55
tbl10[11] = v56
tbl10[12] = v57
tbl10[13] = v58
tbl10[14] = v59
tbl10[15] = v60
tbl10[16] = v61
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
		local v62 = n11
		local n14 = n9 * n12 + n10
		local n15 = n14 % v62 + n13
		n13 += 1
		n12 = n15
		n10 = n14 % 4859 * v62 % 5781
		return arg2 + n15 % arg3 - arg2 + 1
	end
end

local function fn13(arg, ...)
	local R_0, R_1, R_2
	R_1 = 1

	for i = 1, 2 do
		local n9 = arg % 9915 + 4
		local n10 = nil
		local n11 = nil
		R_2 = 1

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

		R_2 = R_1
		local n12 = arg % 9999995 + 1 + 7333
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n9 * n10 + 9999) + 7333
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	R_1 = R_0
	return arg
end

if v3 then
	local v62 = v3
	v62(60, v4[fn2("*", 18734145324071)], v4[fn2("\221\232\7\215\12\156WP\246\153@4=\31", 22257199763704)])

	local function fn14(arg, ...)
		local R_0, R_1
		local tbl11 = {}
		local tbl12 = {}
		local tbl13 = {}
		R_1 = 1

		for i = 1, 13 do
			local tbl14 = {}
			local tbl15 = {}
			tbl11[tbl14] = tbl15
			tbl12[tbl15] = i
			tbl13[tbl14] = tbl15
		end

		R_1 = R_0

		if arg then
			tbl11 = arg[1]
			tbl12 = arg[2]
			tbl13 = arg[3]
		end

		local n9 = 0
		local n10 = 0
		local n11 = 0

		for k, v63 in --[[?LTable]], v12, tbl11, nil do
			local v64 = tbl12[v63]

			if tbl13[k] == v63 then
				n9 += 1
			end

			n10 += 1
			n11 = n10 % 2 == 0 and n11 * v64 or n11 + v64 + n10
		end

		R_1 = R_0

		if n9 ~= 13 then
			n6 = -1
		end

		tbl8 = { tbl11, tbl12, tbl13 }
		n6 = n11
		return false
	end

	local function fn15(arg, ...)
		local R_0, R_1, R_2
		R_1 = 1

		for i = 1, 2 do
			local n9 = arg % 9915 + 4
			local n10 = nil
			local n11 = nil
			R_2 = 1

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

			R_2 = R_1
			local n12 = arg % 9999995 + 1 + 7333
			local n13 = arg % 1000
			local n14 = fn3((arg - n13) / 1000) % 1000
			local n15 = arg % (n9 * n10 + 9999) + 7333
			arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
		end

		R_1 = R_0
		return arg
	end

	local function fn16(arg, ...)
		local R_0, R_1, R_2
		R_1 = 1

		for i = 1, 2 do
			local n9 = arg % 9915 + 4
			local n10 = nil
			local n11 = nil
			R_2 = 1

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

			R_2 = R_1
			local n12 = arg % 9999995 + 1 + 7333
			local n13 = arg % 1000
			local n14 = fn3((arg - n13) / 1000) % 1000
			local n15 = arg % (n9 * n10 + 9999) + 7333
			arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
		end

		R_1 = R_0
		return arg
	end

	local function fn17(arg, ...)
		local n9 = 1103515245
		local n10 = 12345
		local n11 = 99999999
		local n12 = arg % 2147483648
		local n13 = 1

		return function(arg2, arg3, ...)
			local v63 = n11
			local n14 = n9 * n12 + n10
			local n15 = n14 % v63 + n13
			n13 += 1
			n12 = n15
			n10 = n14 % 4859 * v63 % 5781
			return arg2 + n15 % arg3 - arg2 + 1
		end
	end

	local n9 = 68
	v62(67, v4[fn2("\132", 3840891719161)], v4[fn2("\148\243v\159\160\235\254v\22\198&3\183[\220h\254qŎJ\25\208K\154\157\246]", 12721007603271)])
	n6 = -1
	fn14()

	while n6 == -1 do
	end

	local v63 = fn17(n7 + n6)

	if n8 == 9 or n8 == 15 then
		local n10 = 0

		v16(function(...)
			local function fn18(arg, ...)
				v33(arg[1])
			end

			fn18(v20({}, { [v4[fn2("\216K\237\155\22XS", 643190981207)]] = function(...)
				local fn19 = nil

				fn19 = function(...)
					n10 += 1
					return fn19()
				end

				fn19()
			end }))
		end)

		local n11 = 0

		v16(function(...)
			v45(v20({}, { [v4[fn2("\192\ra\139\231\195\12", 32549329237609)]] = function(...)
				local fn18 = nil

				fn18 = function(...)
					n11 += 1
					return fn18()
				end

				fn18()
			end }))
		end)

		if n11 + n10 < 20000 then
			n9 = 19
		elseif n11 - n10 ~= 0 then
			n9 = 189
		end
	end

	local function fn18(arg, arg2, arg3, ...)
		local v64 = v4
		local tbl11 = { [v4[fn2("\242~\242\192\31\156", 25253030878174)]] = v64[fn2("rs\254", 30562846240559)] }

		if arg2 then
			tbl11 = v20(tbl11, { [v4[fn2("\216\21m\142\201m\185", 4427172646939)]] = function(arg4, arg5, ...)
				if arg5 == v4[fn2("6c\17", 29393505708782)] then
					local v65 = v4
					local v66 = v17(v18(), v65[fn2("\1639\5\144\26ǈu&/\184", 32746903762721)])
					local v67 = v66()
					local v68 = v66()
					local n10 = 1

					v16(function(...)
						n10 = v19(v68) - v19(v67)
					end)

					if (n8 == 9 or n8 == 15) and (n10 ~= 0 or v67 ~= v68) then
						n9 = 121

						while arg3 do
						end
					end

					return arg
				end

				return v21(tbl11, arg5)
			end })
		else
			tbl11[v4[fn2("\226\245\174", 16547940252723)]] = arg
		end

		local v65 = v45(tbl11)

		if v65[v4[fn2("\133\\*\136\211ɹ\206\215j", 13445805453546)]] == 0 then
			if flag8 then
				warn(v4[fn2("j-F\128\162\139WIʯ\\хE\181p6\159O\23).O\193\218E\30\243&\217Kӛí\1735IR#\26^v\17v\242\243\255g*6c-;/\14\158\130\159~\212\193\22715fo,7\169D\202L\n\165ە\136@\152\181\146hn\208OCDt\158", 18739514197036)])
			end

			local v66 = v4
			writefile(v4[fn2("\207\249D\240\136>\28\137\129dÐ\214\30\184\231\139\226\150\24\179", 17214754274976)], v66[fn2("\216xc\22ѧ\29\211\253\25&\168\165\162\239_rגm*\250\8\190C\229\197ڊ\1792y\193\3|\21\198)$\183\28\14\127\167}\137 H\206\220J\198tݪ\165/\129\29`$'\176\252{v\185j\163M\160\tCEi\4\196z\255]\n\16zx\167\254\\W\168\181", 24541118323015)])
		end

		return v65[v4[fn2("2\224o\143", 15183172745020)]], v65[v4[fn2("\235\144\243\23326\138", 30737871499218)]]
	end

	fn8()

	local function fn19(arg, ...)
		if v36()[8753563] == 22044 and n8 ~= 11 then
			if flag8 then
				warn(v4[fn2("MI\186Vb\245\221\195>\219۔\228\197\2258:\228<d\249\232\25\157|\139\228q\18寋k\17\11\202\232\154l|\190\2325\144\15\240-\210\234\162\6\158\183\227\237j\165\205W\1\145\189Q\241\233\238&\23\156/\205L꜊\255\134)\132!\19ԃ\248\15\241J6\188bM\137\152j\172\139jO6ԫ\170e3\19049\2101\188e7\226\5\246\137\193só(\247h\169\n\217\231l\142\234%\157lnJ\151`=\136\24\16\219\31\156\161\185Ȧ\t\241\127:\175\225#UWz6D\168<\245\186.ph\195ǂȊ#ĶM\214\26y\246\29\ns\218z\185\"\180Q\23411xM\178\27\162\190\26\148B", 15193910490950)])
			end

			v28(function(...)
				v22(5)
				v36()[8753563] = nil
			end)

			fn9()
		end

		v36()[8753563] = 22044
		local flag11 = false
		local tbl11 = { v23, v20, v33 }

		tbl11[-1] = n8 == 3 and function(...)
		end or v45

		local v64 = v27
		local v65 = v26
		local v66 = v25
		local v67 = v24
		local v68 = v16
		tbl11[4] = v13
		tbl11[5] = v64
		tbl11[6] = v65
		tbl11[7] = v66
		tbl11[8] = v67
		tbl11[9] = v68

		local function fn20(...)
			flag11 = true
			return v4[fn2("9", 805330944750)]:rep(16777215)
		end

		local v69 = v20({}, { [v4[fn2("\2\164\245C\127\213\\\162\31N", 24089059219362)]] = function(...)
			flag11 = true
			return v4[fn2("\n", 12700605886004)]:rep(16777215)
		end })

		for k, v70 in --[[?LTable]], v12, tbl11, nil do
			if k ~= -1 then
				local flag12 = n8 ~= 11

				if flag12 then
					local v71 = v4
					flag12 = v23(v70)[v71[fn2("\183\167\19\142", 33365397928289)]] == v4[fn2("\11h\3", 1198332445788)]
				end

				if flag12 then
					flag11 = true
				end
			end

			if v70 ~= v11 and v70 ~= v33 then
				local v71 = v11
				local v72 = v33
				local v73 = error
				local env = getfenv()
				env[v4[fn2("*\253\137\5\172\129[\220", 22630873322068)]] = fn20
				env[v4[fn2("d0\166\143,", 17147106475617)]] = fn20
				env[v4[fn2("\194\218Gp<", 22071436759115)]] = fn20

				if k == -1 then
					if n8 ~= 5 then
						v16(v70, v4[fn2("", 22141232107660)])
					end
				else
					v16(v70, v69)
				end

				env[v4[fn2("\236\169g\\\154\181>2", 19030507111739)]] = v72
				env[v4[fn2("OH\r\168\171", 146033344648)]] = v71
				env[v4[fn2("n9\171U\136", 23510294713735)]] = v73
			end
		end

		if flag11 and n8 ~= 11 then
			n9 = 85

			if arg then
				fn9(true)
			end
		end

		v36()[8753563] = nil
	end

	local v64 = n7
	local v65 = nil
	local flag11 = nil
	local tbl11

	while true do
		local v66 = v16(function(...)
			local v66 = fn18
			local v67 = v4
			v65 = v66(tbl5[v4[fn2("vx\194#", 12421424491824)]] .. v67[fn2("[O\242\0037\14\186", 5635169064064)], n8 == 9 or n8 == 15)
			local data = v15:GetService(v4[fn2("\14\162\t\231\29\182*\207)\183p", 24734397749755)]):JSONDecode(v65)

			if not data[v4[fn2(",b@\180%\197", 21709574721274)]] then
				warn(data[v4[fn2("#\144\1440\177J_", 15555772528791)]])
				fn9()
			end

			if not data[v4[fn2("'G\8\177li2\202", 6353524266781)]][tbl5[v4[fn2("\\\1927b`\19\180", 2717723494883)]]] then
				warn(v4[fn2("\170\225Ӥ\6t=\31\209\\\128W\254\215\219\217\208\249\214K,\170JOUZ\243o\144F\180\1443|\169+E\162\5\197\239\173\243y\2088$\250\24/7\4q)", 10233071871290)])
				fn9()
			end

			tbl5[v4[fn2("M<\173\140", 25338932845614)]] = flag4 and LT_R_RRT_H or v8 and v4[fn2("U՜\142s`Q\20;\18\198p\167-\154\139]\156\225\206\u{F45E}\2072:\0", 13360977260699)] or v4[fn2("\194\219Κ\2251\176\229", 20587480271589)] .. v7
			local v68 = tbl5
			local v69 = v4
			v10 = data[v4[fn2("\147\208\226r\29\14\12\29", 29417128749828)]][v68[v69[fn2("\234]\254\157\27yP", 25466712022181)]]]
		end)

		fn8()

		if not v66 then
			if flag11 then
				break
			end
			v62(69, v4[fn2("\132", 5187405058783)], v4[fn2("z\144\199zz\217\30\184 .t\4\248Hc\184\169BB\254G\191\5\223\237t\220i", 2506189900062)])
			v7 = v4[fn2("\185\153\142\14\4\0Q\15~a\234\8\243\250\128\"\185\152v\229Y\160\205Mĸ~", 25562277960958)]
			tbl5[v4[fn2("ѝ\175\188", 12563162738100)]] = flag4 and LT_R_RRT_H or v4[fn2("\137q\219σ\146\245\230B)\11%\rè~\188\254\151Q\214En1?\194h\197p\202>\191\128\188\166", 19243114481153)]
			flag11 = true
		end

		if not v66 then
			continue
		end

		local function fn20(arg, ...)
			local n10 = 1103515245
			local n11 = 12345
			local n12 = 99999999
			local n13 = arg % 2147483648
			local n14 = 1

			return function(arg2, arg3, ...)
				local v67 = n12
				local n15 = n10 * n13 + n11
				local n16 = n15 % v67 + n14
				n14 += 1
				n13 = n16
				n11 = n15 % 4859 * v67 % 5781
				return arg2 + n16 % arg3 - arg2 + 1
			end
		end

		local flag12 = false

		v28(function(...)
			if not v16(function(...)
				local v67 = tbl9
				local new = v67.new
				local str2 = flag4 and LT_R_RRT_W

				if not str2 then
					str2 = v8

					if v8 then
						local v68 = v7
						local v69 = v4
						str2 = v4[fn2("\183b\225(\6", 22124051714172)] .. v68 .. v69[fn2("0Mz'W!\18\31\179uwA\241", 2211975661580)]
					end
				end

				local str3

				if str2 then
					str3 = str2
				else
					local v68 = v7
					local v69 = v4
					str3 = v4[fn2("\146?\180M\218\\", 11448584710566)] .. v68 .. v69[fn2("S\1344\0225\167y%\153\151\160p\17F", 6916182153513)]
				end

				flag6 = new(v67, str3)
			end) then
				local v67 = v4
				v62(75, v4[fn2("$", 1674014590487)], v67[fn2("\3ER\150\169\174/D\168\171\182\25\\\129i\223kg\5\21\233\248\2127\249՞\184\27\144\31\179\180xO\159\127݀*\28\194TT\189\145\233z\n", 9788529189788)])
				flag6 = false
			end

			flag12 = true
		end)

		local n10 = n7 % 8585 * v64 % 9910
		fn19()

		if flag5 then
			n9 = 146
		end

		v62(85, v4[fn2("\164", 31753662264196)], v4[fn2("e\249\24\25\161 \251\8\2081\171\141\127Q:\247V\12\157\2432\28\237a\225", 6450163980151)])
		local v67 = fn20(n10 + v63(2, 4096))
		local v68 = v63(1111, 32768)
		local n11 = 12000 + ((1398563873 * ((1398563873 * (1361 + n10 + n6 % 1000 + n6) % 1610612736 + 22491) % 95716599 + 1) + 22491) % 95716599 + 1) % 120000 - 12000 + 1

		local tbl12 = {
			n11 + v67(100000, 1000000),
			v68,
			n11 + v63(3333, 15625) + n7,
			(v67(10000, 1000000)),
		}

		n6 = -1
		fn14()
		local flag13 = false

		if n6 == -1 then
			n6 = 100
			flag13 = true
		end

		local n12 = 0
		local n13 = 0
		local n14 = 0
		local n15 = 1
		local tbl13 = { [0] = 0 }

		local function fn21(arg, arg2, arg3, ...)
			arg2 = arg2 and arg or tbl6[arg]

			if not arg3 then
				arg2 = (arg2 + 4096 - tbl13[n12]) % 256
				n14 += arg2
				n12 = (n12 + 1) % n15
			end

			local n16 = arg2 % 16
			return tbl7[(arg2 - n16) / 16] .. tbl7[n16]
		end

		local function fn22(arg, ...)
			local R_0, R_1
			local n16 = 0
			R_1 = 1

			for i = 1, #arg do
				n16 += v26(arg, i)
			end

			R_1 = R_0
			return n16
		end

		local function fn23(arg, arg2, ...)
			local v69 = tbl7
			local n16 = (tbl7[v27(arg, 1, 1)] * 16 + v69[v27(arg, 2, 2)] + tbl13[n13]) % 256
			n13 = (n13 + 1) % n15
			if arg2 then
				return n16
			end
			return tbl6[n16]
		end

		local function fn24(arg, ...)
			local R_0, R_1
			local tbl14 = {}
			n13 = 0
			local n16 = 1

			while true do
				local v69 = fn23(v27(arg, n16, n16 + 1), true)
				n16 += 2
				local v70 = v4[fn2("", 13613314290054)]
				R_1 = 1

				for i = 1, v69 do
					v70 ..= fn23(v27(arg, n16, n16 + 1))
					n16 += 2
				end

				R_1 = R_0
				tbl14[#tbl14 + 1] = v70
				if not (n16 > #arg) then
					continue
				end
				break
			end

			return tbl14
		end

		local function fn25(arg, arg2, ...)
			local R_0, R_1
			local v69 = fn21(#arg, true, arg2)
			R_1 = 1

			for i = 1, #arg do
				v69 ..= fn21(v27(arg, i, i), false, arg2)
			end

			R_1 = R_0
			return v69
		end

		local function fn26(arg, arg2, arg3, ...)
			if arg == 1 then
				tbl13 = arg2
				n15 = arg3
			elseif arg == 2 then
				n12 = 0
				n14 = 0
			elseif arg == 3 then
				return n14
			end
		end

		local v69 = fn17(v63(2, 32768 + v25() % 2000) + n6 % 4096)
		local v70 = fn12(v67(1, 32768) + n7 + v25() % 1000)
		local v71 = v69(111111, 999999)
		local tbl14 = {}
		R_1 = 1

		for i = 1, v71 % 30 + 1 do
			local fn27

			if i == 2 then
				fn27 = v33
			elseif i == 8 then
				fn27 = v11
			elseif i == 17 then
				fn27 = v27
			else
				fn27 = function(...)
				end
			end

			tbl14[i] = fn27
		end

		R_1 = R_0
		local n16 = v70(111111, 999999) + 2353
		local n17 = v69(1, 1234) * v70(2, 1235) + n6 % 80000
		local n18 = 10000 + ((1445613873 * ((1445613873 * (n11 + n6) % 1627389952 + 23515) % 94716599 + 1) + 23515) % 94716599 + 1) % 100000 - 10000 + 1
		local tbl15 = { n18 + v69(100000, 1000000), n18 + v70(100000, 1000000), (v69(100000, 1000000)) }

		if v5 or v6 then
			n9 = 218
		end

		if flag13 then
			n9 = 250
		end

		local v72 = tbl15[1]
		local n19 = 6512 + tbl12[4]
		local str2 = (((fn25(v4[fn2("", 26309625077686)] .. n16) .. fn25(v4[fn2("", 16740145904870)] .. fn15(11304 + v71) .. fn13(n9 + n17) .. fn10(n16 - 2353))) .. fn25(n17 .. v4[fn2("", 17472460177296)]) .. fn25(v4[fn2("", 27987934766545)] .. v71)) .. fn25(tbl12[3] + 16601 .. v4[fn2("", 13603650318717)])) .. fn25(v4[fn2("", 32880051812253)] .. v72) .. fn25(v4[fn2("", 16629547121791)] .. n19)
		local n20 = tbl12[2] + 2353
		local str3 = str2 .. fn25(tbl15[3] .. v4[fn2("", 13202058620935)]) .. fn25(v4[fn2("", 15144516859672)] .. n20)
		local n21 = 11304 + tbl12[1]
		local str4 = (str3 .. fn25(tbl15[2] .. v4[fn2("", 18783538955349)]) .. fn25(v4[fn2("", 8523622719234)] .. n21)) .. fn25(str or v4[fn2("\15", 2953953905343)])
		local str5 = fn25(fn16(fn26(3) + 7628) .. v4[fn2("", 3140790684525)], true) .. str4
		local tbl16 = {}
		local v73 = v70(111111, 999999)
		local v74 = n6
		getfenv()[tbl16] = v73
		local v75, v76 = fn18(tbl5[v4[fn2("\209\30p\238", 17011810876899)]] .. v4[fn2("V", 25199342148524)] .. v10 .. v4[fn2("\221\209\n=o\17", 1184373376079)] .. tbl5[v4[fn2("p<\196O\205\0158s", 21268253363551)]] .. v4[fn2("c>\6\3F\162+y", 3976187317879)] .. str5 .. v4[fn2("\167Q\174", 1858703820483)] .. tbl5[v4[fn2("\15s )\130R\2366K\160\146G\162", 33488882006484)]] .. v4[fn2("\142\229\173", 8988567118003)] .. v44, n8 == 9 or n8 == 15)
		n6 = -1
		fn14(tbl8)

		while n6 == -1 do
		end

		while tbl12[2] ~= v68 do
		end

		local v77, v78, v79 = v34(tbl14)
		local n22 = 0

		for k, v80 in --[[?LTable]], v77, v78, v79 do
			if k == 2 and v80 ~= v33 then
				n9 = 147
			end

			if k == 8 and v80 ~= v11 then
				n9 = 147
			end

			if k == 17 and v80 ~= v27 then
				n9 = 147
			end

			n22 = k
		end

		R_1 = R_0

		if n22 ~= v71 % 30 + 1 then
			n9 = 147
		end

		local flag14 = false

		if n9 == 147 then
			flag14 = true
		end

		if n6 ~= v74 then
			n9 = 100
			flag14 = true
		end

		if v75 == v4[fn2("\196\205X", 28147927180902)] then
			while true do
			end
		else
			local fn27, n23, v80, n24, n25, v81, tbl17, n26, n27, n28

			do
				if v35(v75, v4[fn2("\166\222ʞ\1593\166ye\241v\251\148W\162\200<\128\148(ݯ\180\233/p\147\233F襣\136\185\170\1\172\250\235\173k", 1377652802819)]) then
					if v9 then
						v9(v4[fn2("Ҕ~E\164", 19446057879230)])
						return
					end
				end

				if v27(v75, 1, 1) == v4[fn2("\138", 5914350458244)] then
					local v82 = v4[fn2("l\24\178\25+\175\tY\29B갖X\23", 28383083816769)]
					local v83

					if string[v4[fn2("\220eg'", 2761748253196)]](v75, v4[fn2("\23GB\147\212y\236\24\167&\219\243@y;\217", 9639274521361)]) then
						v82 = v4[fn2("LY\1333\11w\134\174FP\194 \4\177,y7\5y", 15260484515716)]
						v83 = v27(v75, 2, #v75 - 17)
					else
						v83 = v27(v75, 2, #v75)
					end

					v62(100, v4[fn2("\244\159\237\201L\217X\239\180\245$\181G?", 30952626417818)], v4[fn2("N=1MT {!\211Z\191R\207'\140\200\253|3\169\178\183\150U\25c", 27278169760572)], Color3[v4[fn2("\189o`", 30263263129112)]](1, 0, 0), v4[fn2("4\226\14\232\14", 13170919157738)])
					fn4(v82, v83)
					fn9()
				end

				if v76 then
					if not v76[v4[fn2("\2\209\252\2074\186vTX\135", 27265284465456)]] then
						local v82 = v76[v4[fn2("\212/tO\130\27\16ĩ\177", 17419845222239)]]
					end
				end

				local n29 = tbl12[4] % 256
				local tbl18 = { [0] = tbl12[1] % 256, tbl12[2] % 256, tbl12[3] % 256, n29 }
				fn8()

				fn27 = function(arg, ...)
					local n30 = 1103515245
					local n31 = 12345
					local n32 = 99999999
					local n33 = arg % 2147483648
					local n34 = 1

					return function(arg2, arg3, ...)
						local v82 = n32
						local n35 = n30 * n33 + n31
						local n36 = n35 % v82 + n34
						n34 += 1
						n33 = n36
						n31 = n35 % 4859 * v82 % 5781
						return arg2 + n36 % arg3 - arg2 + 1
					end
				end

				if getfenv()[tbl16] ~= v73 then
					n9 = 100
					flag14 = true
				end

				n23 = 1
				R_1 = 1

				for i = 1, 30 do
					local v82 = v33({})
					local n30

					if v33({}) < v82 then
						n30 = n23 + 1
					else
						n30 = n23 * 2
					end

					n23 = n30 % 10000
				end

				R_1 = R_0
				fn26(1, tbl18, 4)
				v80 = fn24(v75)
				n24 = v80[1] - n16
				n25 = v80[4] - v71

				while n29 ~= tbl18[3] do
				end

				fn19()
				v81 = tbl18[3]

				tbl17 = {
					[0] = tbl18[0],
					[2] = tbl18[1],
					[4] = tbl18[2],
					[6] = v81,
					v80[9],
					[3] = v80[7],
					[5] = v80[2],
					[7] = v80[6],
				}

				fn26(1, tbl17, 8)
				n26 = v80[8] - tbl15[1]
				n27 = v80[3] - tbl15[2]
				n28 = v80[5] - tbl15[3]
				local str6 = v4[fn2("", 28654748788798)] .. fn16(tbl15[3] + 11483) .. fn15(tbl15[1] + 31) .. fn13(tbl15[2] + 19725)

				if v80[11] == str6 and ({ [str6] = true })[v80[11]] then
					flag2 = true
				else
					local str7 = v4[fn2("", 6334196324107)] .. fn10(tbl15[3] + 11483) .. fn13(tbl15[1] + 69) .. fn15(tbl15[2] + 19725)

					if v80[11] == str7 and ({ [str7] = true })[v80[11]] then
						flag2 = true
					end
				end
			end

			local n29, v82, str6

			do
				if flag2 then
					local flag15 = v19(v80[14] and v80[14] or v4[fn2("\230v", 11362682743126)]) == -1
					v19(v80[15] and v80[15] or v4[fn2("\8", 1527981245839)])
				end

				n6 = -1
				fn14()

				if n6 == -1 then
					n9 = 250
					n6 = 100
				end

				n29 = n7 + v69(111111, 999999) + v70(1234, 5678) + n6 % 99915 + n23
				tbl15[4] = n7 + n6 % 9951
				v69(100000, 1000000 + n6 % 1000)
				tbl15[5] = n6 % 8005 + n23 + v70(100000, 1000000 + n6 % 5000)
				tbl15[6] = v69(100000, 1000000)
				fn26(2)
				v82 = v80[10]

				do
					local v83 = tbl15[6]
					local str7 = fn25(v4[fn2("", 11551667071494)] .. fn13(v80[13] + 12682) .. fn16(n29 + n9) .. fn15(v80[10] + v71)) .. fn25(tbl15[5] .. v4[fn2("", 33512505047530)]) .. fn25(v4[fn2("", 24280191096916)] .. n29) .. fn25(v4[fn2("", 281328943366)] .. v83) .. fn25(tbl15[4] .. v4[fn2("", 30946183770260)])
					str6 = fn25(fn13(fn26(3) + 7628) .. v4[fn2("", 1284234413228)], true) .. str7
				end
			end

			local v83 = v80[12]
			local response = v15:HttpGet(tbl5[v4[fn2("\204=\165,", 285624041738)]] .. v4[fn2("\215", 34962100748080)] .. v10 .. v4[fn2("\180T}\144E`\233N0\18\159\197", 5342028600175)] .. v83 .. v4[fn2("l4\190", 13551035363660)] .. str6)

			while v81 ~= tbl17[6] do
			end

			if response == v4[fn2("-\n+", 31841711780822)] then
				while true do
				end
			else
				if v27(response, 1, 1) == v4[fn2("\231", 5502021014532)] then
					v15:GetService(v4[fn2("<\165\18]\1795\142", 2067016091525)])[v4[fn2("\135\2218q\250\240\249wOź", 21595754614416)]]:Kick(response)
					fn9()
				end

				do
					local v84 = fn24(response)
					local n30 = 1
					local v85 = fn27(1 + v69(100, 1000 + n23) + v70(500, 5000 + n23) + n7 % 10000)
					local flag15 = false
					local n31 = 0
					local flag16 = false
					R_1 = 1
					local flag17 = false
					local v86 = nil

					for i = 1, 3 do
						local v87 = v84[3]
						local str7 = fn13(tbl15[5] + 2353) .. fn13(tbl15[4] + fn22(flag16 and v4[fn2("\177", 34008588909496)] or v15[v4[fn2("\5fw\137\244", 33146347911317)]])) .. fn13(tbl15[6] + tbl15[2])

						if v87 == str7 and ({ [str7] = true })[v87] then
							flag3 = true

							if not (v84[8] and v84[8] ~= v4[fn2("C", 5343102374768)] and v84[8]) then
								local v88 = v4[fn2("x\138\221<\173~N", 31676350493500)]
							end

							if not (v84[9] and v84[9]) then
								local v88 = v4[fn2("\190;h\148\252\0\245", 23283728274612)]
							end

							v86 = v84[6]

							do
								local n32 = v84[7] - tbl15[5]
								local n33 = v84[5] - tbl15[6]
								local v88 = n27
								local v89 = n28

								n26 = function(arg, ...)
									if not (flag15 or n31 < v30() - 8) then
										n30 = (n30 + arg % 66) % 6644
										return n33 * arg % v89 + arg * 3
									end

									while true do
									end
								end

								n27 = function(arg, ...)
									if not (flag15 or n31 < v30() - 8) then
										n30 = (n30 + arg % 50) % 5891
										return v88 * arg % 10000 + arg * n32 % 4
									end

									while true do
									end
								end

								n28 = function(arg, ...)
									if not (flag15 or n31 < v30() - 8) then
										n30 = (n30 + arg % 35) % 6711
										return (arg + n33) % 100 * arg % (v89 % 100 + 1)
									end

									while true do
									end
								end
							end

							flag17 = true
							break
						elseif i == 3 then
							flag17 = false
							v86 = nil
						else
							flag16 = true
							flag17 = false
							v86 = nil
						end
					end

					R_1 = R_0

					if not flag17 then
						while true do
						end
					elseif flag14 then
						while true do
						end
					else
						do
							while not flag12 do
								v29:Wait()
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
								local v87 = v80[12]

								v28(function(...)
									flag19 = true

									while not flag9 do
										local n37 = v85(1000, n30 + 10000) + n30
										local n38 = v85(1000, n30 + 10000) + n30
										n35 = n37
										n36 = n38
										fn26(2)
										local v88 = fn25
										local str7 = fn25(n36 .. v4[fn2("", 15363566876644)]) .. v88(fn16(n36 + v82) .. v4[fn2("", 6862493423863)] .. fn15(n35 + n16)) .. fn25(n35 .. v4[fn2("", 13612240515461)])
										local v89 = v4[fn2("", 26792823644536)]
										local v90 = v10
										local v91 = v4
										local str8 = tbl5[v4[fn2("\251k\3\137", 8239072452089)]] .. v4[fn2("\243", 6554320115672)] .. v90 .. v4[fn2("\1716y\6\132\215\1\133#\18\21'\12\146H\155\195\17", 8461343792840)] .. str7 .. v91[fn2("\224\212\238", 27556277380159)] .. v87

										v16(function(...)
											if flag8 then
												local v92 = v4
												v31(v4[fn2("@", 8025391308082)] .. v30() .. v4[fn2("\198\5\158\149\150H\31\14\31\12\163}g\158\31H\4\5\208[", 21377778372037)] .. v33(flag6) .. v92[fn2("\229\215", 957806936956)])
											end

											if flag6 == false then
												v89 = fn18(str8)
											else
												v89 = flag6:request({ [v4[fn2("E\143\147", 17306025115381)]] = str8 })
											end

											if flag8 then
												local v92 = v4
												v31(v4[fn2("\136", 8205785439706)] .. v30() .. v92[fn2("\20N\188+\204\18\227\131`OM\249P=\163n\206\2432", 6507074033580)])
											end

											if v89 and #v89 > 3 then
												if v89 == v4[fn2(",.[\"@+o>\223", 19626452010854)] then
													flag15 = true
													flag2 = false
													flag3 = false
													n25 = 1
													n24 = 2
													local v92 = v4
													v15:GetService(v4[fn2("K\26\21\0193\18\164", 34803182108316)])[v92[fn2("\210\201\222Q\159{D\181\180\253d", 29684498623485)]]:Kick(v4[fn2("\3\174d\163\173\15\196\248\n\148\211g\189\226M\252,\146?T\145^m\161\29J\31mM\158n\1\176D\232\133\t\2291r*\138W\145\0190\29\152I\176\177\147X^3\153O۴", 33049708197947)])
													fn9()
												end

												if v89 == v4[fn2("Ɖ\162J", 30249304059403)] then
													flag15 = true
													flag2 = false
													flag3 = false
													n25 = 1
													n24 = 2
													local v92 = v4
													writefile(v4[fn2("\231\151|(\168\248]\170\254\215\233V\231k\136M\172\129\168", 14824532030958)], v92[fn2("s25z\154\234a\131\145", 15250820544379)])

													while true do
													end
												else
													v89 = fn24(v89)[1]

													if v89 == fn13(n35 * n36 % 100000 + n29 + 11304) .. v4[fn2("", 28489387501476)] then
														n33 += 1
														flag20 = true
														flag18 = true
													elseif v89 == fn10(n35 * n36 % 100000 + n29 + 11304 + 4919) .. v4[fn2("", 15233640150891)] then
														flag20 = true
														flag18 = true
														flag9 = true

														v16(function(...)
															flag6:close()
														end)
													else
														flag15 = true
														flag2 = false
														flag3 = false
														n25 = 1
														n24 = 2
														local v92 = v4
														v15:GetService(v4[fn2("\197>x\169\18fL", 29485850323780)])[v92[fn2("\172\15\203V*\147lM\179R\26", 24838553885276)]]:Kick(v4[fn2("\174\191bRRQ*\193ع'\25\154\n\158j\6\129\242\184\187\21\21D\245\225tL\179\160(", 22159486275741)] .. n33)
													end
												end
											end
										end)

										v22(20)
									end
								end)

								while not flag19 do
									v29:Wait()
								end

								flag19 = false

								v28(function(...)
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
													local v88 = n33
													writefile(v4[fn2("\rq\227Ŗ\196C\12d5\169P\130\23\225R%\162/\160\157", 15647043369196)], v4[fn2("\226\254\178K\216\255Z+Z", 8167129554358)] .. v88 .. v4[fn2("\250\193X\28", 24571184011619)] .. v33(flag6))
												end
											end

											flag20 = false
											n37 = 0
										end

										n31 = v30()
										v22(0.18)
										if n31 ~= v30() then
											continue
										end
										flag15 = true
										flag2 = false
										flag3 = false
										n25 = 1
										n24 = 2
										local v88 = n33
										writefile(v4[fn2("\221aK\192\216\12q\174n\167\"\232\6\199\17:\166y\t=)", 26022927261355)], v4[fn2("\206\224\168?\226v\231\19\29", 709765005973)] .. v88 .. v4[fn2("\169d\175m", 10312531191172)] .. v33(flag6))
									end
								end)

								v62(95, v4[fn2("\132", 22787644412646)], v4[fn2("\"\140\144$Il~ٳz\219Z\206:\t", 447764005281)])

								while not flag19 or not flag18 do
									v22()
								end
							end
						end

						v62(100, v4[fn2("^\156\160\174\193/5\1494\0U\206\225\165}", 10029054698620)], v4[fn2("[Q7ð=\11x\218~\1302}\200\234/m\228.\159", 31806277219253)] .. v30() - now .. v4[fn2("\252", 21953321553885)], Color3[v4[fn2("wܽ", 20447889574499)]](0, 1, 0), v4[fn2("\211\225ף", 11135042529410)])

						do
							local v87 = nil

							local tbl18 = {
								66,
								[8] = 176,
								[12] = 157,
								[13] = 8,
								[4] = 87,
								[3] = 228,
								[6] = 63,
								177,
								[14] = 101,
								[5] = 184,
								[10] = 95,
								[11] = 154,
								[9] = 108,
								[7] = 72,
							}

							luraph_runtime1(v86, buffer.fromstring("\205\22\3\255I\1721Kw\224\149e\128\142\19\28\229\2<\17\242\182k\199j\25\2195\242\200?\233\20!AԽ\152\241\191ЙuKZ\203F>\157\15\"\246\209\5\129\203A\182\143\155\146D\173jI|\167\138,EC\162f\172e\165\232X\196\\A\236\218\20\248\148\127eY=b$\173\193.\191\27\252\15\2\231\205\238P<\147\188\160\128\242Z2YF\221~c\30\255N\247\205\254\31v\234\242˰\244-y\138H_%\207Hw'G\180\1903\4!\178\252xIP=\139\129\t\214\5\28\161\230&i\8\187\180\179\203\5\198#;zc\149\28fⅰ\211\254\7\240\19V|O\189\5\170\255<\168u\170{\2\144\236H}\255O\24\248\181j\187f\239%r\206ʇ\179\153w\166\177\210&\139\176\142rp<S\185\130ѳ\157\168k\215D\134)\242L\207-\181\255\24\218w\133\249\161\239<\0\141\225\2ͬ\244\231\1279\252\218\208\244|VTC\241\174\161\246\19`\163\22\224A\204Q\12\31\174\18a\210$̺۳\161.]S\170\0\205\248\140+\172\25\152A\246\206n\134\242\215Y\172\223\205\239\209\213z<m\160s\2263\28\29\136\172\20\170\168\15p[\217h\1633\137\165\154\22\220f\169y<\245\r\23\nC\150\210X\239Ǎ\191ɬR\239?\148Md\133\166\205\254X\25\192\8z\163fM\184\169\150x\134\228\238\147\127\229\226\230؝\26Y\2272}\22\242\20L-\190\3\0126\143\149\182H+(@kީ\207\247\174\136\179%vH;\211)\211@\14\228,)9\216\234\182\204\212HJ\155\25v\149\0ņJ^\30\187\191d\203g\142cl.6\150f\220\5wy,(\136(`\244\151Jm\228\140MP}\nU\197\242v\135\239h]\142a*\17\30*\214\222\197\244I\183\248\142\212sٰlB*\5\206k\149\191\132VBjE{}\1480\12y.3a=o\226q\178R5.\217\233<\169\226J\190]\3бO\150\197.a\213'\140ݱ:q\240\204\206\25\12\202T\192\0234Fr\24\195J\170\132n\147\8\237ŻZu\229\188\254\139\192\235\253\214Ԏa\191?B\142\190GK\149֦\151\6\236\188kO)\162Vq\182\237Q\145\235\192vh\209.ḣh\216<\31S\254\180\178<<?嚟\6\1749\"\8F\202SC\192\1939㱱\23w\16\188\1395\253Ԫg\245\132\183>\193>\2386\249z\138\242ys˾v\168\0060/R\188ֺ\151d\178v\164\">j\187]գU\179y\3F\195\5\1629\2182\168\242\246ޯ\241\138\127\226\173E\242\246\240\t\225]\132\135\158(v\131\159#8_\147\132\193vF\189\178\194\250\232\163;m\154\31\1472\131\199\3\3[B4w\197et\209lrg\160\u{5F7}\228\180\2\209-%tW\170SA/\31\189\189\136}\"\td\236\26\8\3\240>\186Jc\196)\206\19v+\180\161\0\244\145b\219`\139\2394\255\254\28\229\r,[\205\226@\248w\251\220\20\148\191\217\230\212v\247<\243\198厣\248\214\0180V\t0u+;\130\153h\242\237K_\208\200\192\149a\139:\203.\253\0012\178ŵ\14\r\230\248\211N\3B\147\1\196?\229\228\138\250\172{\253\241\227be\253\171\177yպ\143\7=\248\r\230C\134\174\222\201\27\177\158\225\171 \"\173\152l[\226\238\254\18\231[Asn\143\11\131T~L\\\29\169B\218\236\2073\173.C\144\230\167\2215\198A \8\133\8A\213\24\246\243a\7Ѱi\12\238\225\244\235\165m%\194>*\251d\193\137\130\179\172\146i\139aB\218\199\236m,t\219\231.\t.\144Q\\3܊L\184\205ȮK\20\12xk;\209^ٿn\251OL\246\138\156\150\172\20\127dn\27\147\228\169ۧ\2402\244\173!\189@;\138\231bgy\143\157\141U\216X\166n\167\157%\247;\140H'\221J9<N\138\1-\209X\170k\r\4^\241\1363\132F\132\15\216\252\188.\251\tS\165\"\142u\250g[\200\6Ma\7T\149\2398\7\27O\162\153ïyԐJ\0!ޠ\205p\14R\159\145a\243pԟ\227|C\157ה\176\128]\210\12\225\178<\140\146\186+\223h\189\172\174\246B\188\250HO\1527\166\247\160i\191\28\237ְcS\214e<\219\254g\0046\157*\8\183\251(\203D\2\140\253\1275x+\199\2075\195=f\136\136\16lMM\165\204\4\229\231\00290\8\136\197\2176Ꚅc38h2|\162\29K:\157\169u<\161\17j\204\t\27<\26\t\247z\175g\235\234\238\156\27\2354\237\213qLhm`\161\153C\219{\164ë\172\222W\4\201\206\n$2I\157\210\19\143\25i\133\2345\25lm\253\3A)\187M\174\208$\156\206\26t\137\204\27\1556\152 \231\4~zbI\236xs\"wT-u\132\143\195\252آ\248&W\225^\2310\129e\249\1274O4\170X!\148/\11\3\226\137\214/\236*L\198\253\206\239H\232\187\239\14\234\244\253\147\151\1499>=\245\n\20lW\167\222\207\254f\223W\29\17\14\247\142g\249\187GA6\246\129\1631\252\1\217\240Iq\21\234\170\5\211$ph\199/M\214O\8 t\242\n)\151`Þ5\231J#\1494\2114\241қSB\237\165\143\163D2R~\25*\162k\160S\183p\128z6\26\1522\1322\144\249\248\168u\\ˁ|\28\\Kh\156\174\223\196\u{5EC}\193\219\196t\230\25\192`\5N7\136e~<\178\210 D\226C\18/9J\207\19r!\223'\213\207\6\1j\162\216\20M\189\231\243\231\216\11\29H;\167DuTNڪ\188\168$\165\179>\158\1676Iљ!U<7o\138:\"g\151KO'Wu\18\221m\193\150\25\162>\250\249\251-ϲ\157\144Ņ\163\174C\16'\180\246\159\203\\A\0256\4K\243+\195g\1490\6\r\162\25\0\2482\23\245M[4a\17\21B0\25K\159\211?M\21\"\136RY\0\154\234ۯ`(X\28K\180\246\27{\222\"x\2484L\166\221\29\251\251\195\201\235j\157\141:\202\244\30\209ӥ\129\214k\231\238\5\189\0b\238\26\146\142K{\2270\154#\0[I\142\174\132\251\163\199\2394\148\u{C21AC}\230b\240S\30\144W\234w\"\190\202\25\166N\190\232\146m\150\187\22&\154\165R\211\203\r\207\\\162<\2\236\6\0304\19\192%\184\239R\18\164/\6\149?^\174Q\176b\176\11M\157\190\212\211\233\210\12\196\19\234Nm\236\255\19n\0259BD\152a\210{\133@\162Kթg\138?\233\224\235\1A\199T\27\156\29\\\255z\191\22`dq\252+\204.oZ\201k\234\171\200,\173I*\246~\130\159B\19۪\1606)^\154\240\232i\215Fd\3w\217\230V#;\22\193\203X\170QA\29\241n\233%?\215O\196\203@\2529\190\220P\1761O\162\250\137\170\243G\215U\167\164\179\5\154\22\22\242\167\\x:\17}Q\252\244\23\0\179|\131\226\155W\150\169\143l\u{5CB}\138\215\30\250\253\4\186\1387\208\235\231\tOѭ\156\128\179x\173\2253\175\144)\135\201ĿW\26*\186`\172}\252\29\135\210J\247\160\17\148{gH\0\178,\12\131p;\30Joǩ\233!V\254\218!\237.\184\140\26=\"\241J\131Cw\131\21\137\190f\146tzRQ\178\25\190\159\255N\14\24\31h\209:{\7j\3\132\251\250\153\192mD\152\"\231w\173\31\242w\224\188P\1924\221\197ƛ\136\238?\149E\182\179+\161\166\21\12xг1 \"\139\218\14\211*\21@\253\183\201|\16\127nؖ.D\1610\rs\140Ӭl\230\249\167\5?\141\241@\169\214\197\236ؒ\212\232\208\201]\231\14\166\135\4t\184\172\199G\229<|\218\245>\143\227\20\132\1605TE\147p*\1\127\150\163\228\26\139\1848B\132\185G\218oJ\200u:5\135g,)\15\150\152]J\147\226\164+\0\17&[$\235\166\249K\171\232a\20\164[^d\128p\240\226\193Rх\202mS\169\153b\19\203\3\248\228\218}\24٭'\185#P\184\133o\247\222\210v\209\17\245\t?8\165?\1390\217)\180ᐁB\225%C*{U-\240\233\28-\155\220|\7\168L\253\148\5\241\220[\r\"\0112\221?\171.\140t\246\239\161c`\255\233\25\2348\222\194x\140\220v\204\255\170\130|\165F\242r\182QBa\238W@\241\30\182J\225\16\171?\172\29\1459\145\224\153\231i\188\22\244\228r\143}\177\189\137\7\17\130MŪ\19vr\164\243l\27\214fE\218\222\8t\153?&3\252\5^\181\170}@\209\248N\28\179ꪗ<\212\1973\203F\177+\196\2096\191Pe\7\255\167\4\168\20\198\25\179j\\\249\137\1727\186\239\18\237\r\1918\131\133\189\247\137\172\209\231h/+Ю\138\146\250S4ޖ\198&\227-M\15I\245\237܍\15w0q\22\220{\253Ѧ\226\177^X!\139'k兾\215A\12\200\253LQN\254)\226\152\218IY\166\215\230uƊS\5\146\190\210*\165v\24nI\234/\208\203v\234\15/\2377\25wvS\183%:S`\11\192["), tbl18, 609)()

							if n26(3656) >= 11267 then
								local localPlayer, ReplicatedStorage, fishingShopRemote, Blueprints, ToolDescUtils, GameUtils, events, v88, stats, peli
								local level, travelingMerchant, tbl19, fn28, fn29, fn30, fn31, fn32

								do
									local service

									do
										do
											do
												repeat
													task.wait(0.5)
												until game:IsLoaded()

												if game.PlaceId == 1730877806 then
													local v89 = v87[98]

													while game.PlaceId == 1730877806 do
														if not v89 then
															pcall(function(...)
																game:GetService("ReplicatedStorage"):WaitForChild("Events", 10):WaitForChild("playgame", v87[15]):FireServer("Main Game")
															end)

															v89 = v87[18]
														end

														task.wait(v87[58])

														if v89 then
															pcall(function(...)
																game:GetService(v87[3]):WaitForChild(v87[92], 10):WaitForChild("playgame", v87[15]):FireServer("Main Game")
															end)
														end
													end
												end

												do
													local psCode = getgenv().NovaHub and getgenv().NovaHub.PSCode or ""
													local str7 = ""

													if type(psCode) == "table" then
														str7 = psCode[game:GetService("Players").LocalPlayer.Name] or ""
													elseif type(psCode) == "string" then
														str7 = psCode
													end

													if str7 ~= "" then
														local service2

														do
															service2 = game:GetService(v87[22])

															do
																local ReplicatedStorage2 = game:GetService("ReplicatedStorage")

																if game.PlaceId == 1730877806 then
																	warn("[Kaitun] Acc: " .. game:GetService(v87[14]).LocalPlayer.Name .. " | Đang ở Main Menu. Chuẩn bị Join PS: " .. str7)

																	task.spawn(function(...)
																		while task.wait(2) do
																			pcall(function(...)
																				ReplicatedStorage2:WaitForChild("Events"):WaitForChild(v87[48]):FireServer("PrivateServer", str7)
																			end)
																		end
																	end)

																	return
																end
															end
														end

														repeat
															task.wait()
														until game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")

														do
															local str8 = ""

															pcall(function(...)
																str8 = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Settings", 5).Main.Code.Text
															end)

															if str8 ~= str7 then
																warn("[Kaitun] Acc: " .. game:GetService("Players").LocalPlayer.Name .. " | Sai Server! Hiện tại: " .. str8 .. " | Cần vào: " .. str7)
																warn("[Kaitun] Đang Teleport về Main Menu để nhập lại Code...")
																service2:Teleport(1730877806, game:GetService("Players").LocalPlayer)
															else
																warn("[Kaitun] Acc: " .. game:GetService("Players").LocalPlayer.Name .. " | Đã ở đúng Server: " .. str7)
															end
														end
													elseif v87[69] <= n24 then
														while true do
														end
													else
														warn("[Kaitun] Acc: " .. game:GetService("Players").LocalPlayer.Name .. " | Không có PS Code định sẵn -> Bỏ qua Auto Join!")
													end
												end
											end

											CombatRegister = game:GetService("ReplicatedStorage").Events.CombatRegister

											do
												local Players = game:GetService("Players")
												service = game:GetService(v87[81])
												localPlayer = Players.LocalPlayer
											end
										end

										do
											ReplicatedStorage = game:GetService("ReplicatedStorage")
											fishingShopRemote = ReplicatedStorage:WaitForChild("FishingShopRemote")
											GameGlobal = getrenv()._G

											do
												local modules = ReplicatedStorage:WaitForChild("Modules")
												local v89 = modules:WaitForChild(v87[97])
												local toolDesc = v89:FindFirstChild(v87[33]) or modules:FindFirstChild("ToolDesc")
												Blueprints = require(ReplicatedStorage.Modules.Blueprints)
												ToolDescUtils = require(toolDesc:WaitForChild("ToolDescUtils"))
												GameUtils = require(v89:WaitForChild("GameUtils"))
											end
										end

										do
											events = ReplicatedStorage:WaitForChild("Events")
											v88 = ReplicatedStorage:FindFirstChild(v87[43] .. localPlayer.Name)
											stats = v88.Stats
											peli = stats.Peli
											level = stats.Level
											travelingMerchant = ReplicatedStorage.CompassGuider:FindFirstChild("Traveling Merchant")

											while true do
												task.wait(v87[45])

												do
													local flag18 = localPlayer:FindFirstChild("Loaded") and localPlayer.Loaded.Value == true
													local flag19

													if flag18 then
														flag19 = localPlayer.Character and localPlayer:FindFirstChild("Backpack") and localPlayer.Character:FindFirstChild("Humanoid") and localPlayer:FindFirstChild("PlayerGui") and localPlayer.PlayerGui:FindFirstChild("Notifications") and #localPlayer.Backpack:GetChildren() ~= 0
													else
														flag19 = flag18
													end

													if not flag19 then
														continue
													end
												end

												break
											end

											repeat
												task.wait()
											until game:GetService("ReplicatedStorage"):FindFirstChild("Stats" .. game.Players.LocalPlayer.Name)

											do
												local function fn33(...)
													pcall(function(...)
														local function fn34(arg, ...)
															local v89, v90, v91 = pairs(arg:GetDescendants())

															for _, v92 in --[[?LTable]], v89, v90, v91 do
																if v92 and v92.Parent and (v92.Name:lower():match("adonis") or v92.Name == v87[80] or v92.Name:match(v87[56])) then
																	v92:Destroy()
																end
															end
														end

														fn34(game:GetService("CoreGui"))
														fn34(game:GetService("ReplicatedStorage"))
													end)

													pcall(function(...)
														if getnilinstances then
															local v89, v90, v91 = ipairs(getnilinstances())

															for _, v92 in --[[?LTable]], v89, v90, v91 do
																if v92 and (v92:IsA("RemoteEvent") or v92:IsA("RemoteFunction")) and (v92.Name:match("ClientMover") or v92.Name == "__FUNCTION") then
																	v92:Destroy()
																end
															end
														end
													end)
												end

												fn33()
											end
										end

										game.Players.LocalPlayer:GetAttributeChangedSignal("banned"):Connect(function(...)
											if game.Players.LocalPlayer:GetAttribute(v87[115]) == true then
												game.Players.LocalPlayer:SetAttribute("banned", false)
											end
										end)

										do
											local function fn33(...)
												local Players = game:GetService("Players")

												return { new = function(arg, ...)
													local tbl20 = arg or {}
													local v89 = Players.LocalPlayer.PlayerGui:FindFirstChild(tbl20.name or "Akiki")

													if v89 then
														if n28(v87[62]) <= 180 then
															v89:Destroy()
														else
															while true do
															end
														end
													end

													local screenGui = Instance.new("ScreenGui")
													screenGui.Name = tbl20.name or "Akiki"
													screenGui.DisplayOrder = tbl20.displayOrder or 999
													screenGui.ResetOnSpawn = v87[98]
													screenGui.IgnoreGuiInset = v87[18]
													screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
													screenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
													local instance = Instance.new(v87[79])
													instance.Name = "MainFrame"
													instance.AnchorPoint = Vector2.new(0.5, 0.5)
													instance.BackgroundTransparency = v87[61]
													instance.Position = UDim2.new(0.5, 0, 0.5, 0)
													instance.AutomaticSize = Enum.AutomaticSize.XY
													instance.ZIndex = 5
													instance.Parent = screenGui
													local uiListLayout = Instance.new("UIListLayout")
													uiListLayout.Parent = instance
													uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
													uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
													uiListLayout.Padding = UDim.new(0, tbl20.padding or v87[15])
													local tbl21 = { _gui = screenGui, _frame = instance, _layout = uiListLayout, _labels = {}, _order = v87[73] }
													local header = tbl20.header or {}

													if header.enabled ~= false then
														local textLabel = Instance.new("TextLabel")
														local uiStroke = Instance.new("UIStroke")
														textLabel.Name = "Header"
														textLabel.Parent = instance
														textLabel.LayoutOrder = 0
														textLabel.BackgroundTransparency = v87[61]
														textLabel.Font = header.font or Enum.Font.FredokaOne
														textLabel.Text = header.text or ""
														textLabel.TextColor3 = header.color or Color3.fromRGB(244, 63, 94)
														textLabel.TextSize = header.textSize or 40
														textLabel.AutomaticSize = Enum.AutomaticSize.XY
														uiStroke.Parent = textLabel
														uiStroke.Color = header.strokeColor or Color3.fromRGB(v87[73], 0, 0)
														uiStroke.Thickness = header.strokeThickness or 2
														tbl21._header = textLabel
													end

													tbl21.add = function(arg2, name, arg3, arg4, ...)
														tbl21._order = tbl21._order + 1
														local textLabel = Instance.new("TextLabel")
														local uiStroke = Instance.new("UIStroke")
														textLabel.Name = name
														textLabel.Parent = instance
														textLabel.LayoutOrder = tbl21._order
														textLabel.BackgroundTransparency = 1
														textLabel.Font = Enum.Font.FredokaOne
														textLabel.Text = arg3 .. tostring(arg4)
														textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
														textLabel.TextSize = 25
														textLabel.AutomaticSize = Enum.AutomaticSize.XY
														uiStroke.Parent = textLabel
														uiStroke.Color = Color3.fromRGB(0, v87[73], 0)
														uiStroke.Thickness = 1.5
														tbl21._labels[name] = { instance = textLabel, prefix = arg3 }
														return textLabel
													end

													tbl21.update = function(arg2, arg3, arg4, ...)
														local v90 = tbl21._labels[arg3]

														if v90 then
															v90.instance.Text = v90.prefix .. tostring(arg4)
														end
													end

													if tbl20.items then
														if n27(v87[25]) <= 9335 then
															local v90, v91, v92 = ipairs(tbl20.items)

															for _, v93 in --[[?LTable]], v90, v91, v92 do
																tbl21:add(v93.name, v93.prefix, v93.value)
															end
														else
															while v87[18] do
															end
														end
													end

													return tbl21
												end }
											end

											local v89 = fn33()
											game:GetService("HttpService")

											v89.new({
												name = v87[96],
												displayOrder = 2147483647,
												header = {
													enabled = true,
													text = v87[12],
													color = Color3.fromRGB(128, 0, 128),
													textSize = v87[41],
												},
												items = {
													{
														name = "Name",
														prefix = "Username:",
														value = localPlayer.Name,
													},
													{
														name = v87[64],
														prefix = "Level: ",
														value = v87[7],
													},
													{
														name = v87[59],
														prefix = "Peli: ",
														value = "Loading...",
													},
												},
											})
										end
									end

									local tbl20, fn33

									do
										do
											do
												local function fn34(arg, ...)
													if not arg then
														return "0"
													end
													local str7 = tostring(arg)
													local v89

													while true do
														local v90
														v89, v90 = string.gsub(str7, "^(-?%d+)(%d%d%d)", "%1,%2")

														if v90 ~= 0 then
															str7 = v89
														else
															break
														end
													end

													return v89
												end
											end

											local function fn34(...)
												local v89 = ReplicatedStorage:FindFirstChild("Stats" .. localPlayer.Name)
												if not v89 then
													return 0, 0
												end
												local v90 = v87[73]
												local n32 = 0

												if v89:FindFirstChild("Stats") then
													local n33 = v89.Stats:FindFirstChild("Level") and v89.Stats.Level.Value or 0
													local value = v89.Stats:FindFirstChild("Peli") and v89.Stats.Peli.Value

													if value then
														v90 = n33
														n32 = value
													else
														v90 = n33
														n32 = v87[73]
													end
												end

												return v90, n32
											end
										end

										if getgenv().NovaHub and getgenv().NovaHub.Optimized then
											local Workspace, Lighting, terrain

											do
												game:GetService("RunService"):Set3dRenderingEnabled(false)
												Workspace = game:GetService("Workspace")
												Lighting = game:GetService("Lighting")
												terrain = Workspace.Terrain
												Lighting:ClearAllChildren()

												do
													local function fn34(arg, ...)
														if arg:IsA("BasePart") then
															arg.Material = Enum.Material.Plastic
															arg.Reflectance = v87[73]
															arg.Transparency = 1
															arg.CastShadow = false
														end

														if arg:IsA("Decal") or arg:IsA(v87[84]) then
															arg.Transparency = 1
														elseif arg:IsA("ParticleEmitter") or arg:IsA(v87[72]) then
															arg.Lifetime = NumberRange.new(0)
															arg.Enabled = false
														elseif arg:IsA("Explosion") then
															arg.BlastPressure = v87[61]
															arg.BlastRadius = 1
														elseif arg:IsA("Fire") or arg:IsA("Smoke") or arg:IsA("Sparkles") or arg:IsA("SpotLight") then
															arg.Enabled = v87[98]
														elseif arg:IsA("MeshPart") then
															arg.Material = Enum.Material.Plastic
															arg.Reflectance = 0
															arg.TextureID = ""
															arg.Transparency = v87[61]
														elseif arg:IsA(v87[29]) then
															arg.TextureId = ""
														elseif arg:IsA("SurfaceAppearance") then
															if not flag3 then
																return
															end

															if v87[2] <= n26(3452) then
																arg:Destroy()
															else
																while true do
																end
															end
														elseif arg:IsA("Sound") then
															arg.Volume = 0
														elseif arg:IsA("Animator") then
															local v89, v90, v91 = ipairs(arg:GetPlayingAnimationTracks())

															for _, v92 in --[[?LTable]], v89, v90, v91 do
																v92:Stop()
															end

															arg.AnimationPlayed:Connect(function(arg2, ...)
																if 1789 > n28(4491) then
																	arg2:Stop()
																else
																	while v87[18] do
																	end
																end
															end)
														elseif arg:IsA("Humanoid") or arg:IsA("AnimationController") then
															local animator = arg:FindFirstChildOfClass("Animator")

															if animator then
																local v89, v90, v91 = ipairs(animator:GetPlayingAnimationTracks())

																for _, v92 in --[[?LTable]], v89, v90, v91 do
																	v92:Stop()
																end

																animator.AnimationPlayed:Connect(function(arg2, ...)
																	arg2:Stop()
																end)
															end
														end
													end

													local v89, v90, v91 = ipairs(Workspace:GetDescendants())

													for _, v92 in --[[?LTable]], v89, v90, v91 do
														pcall(fn34, v92)
													end

													R_1 = R_0

													Workspace.DescendantAdded:Connect(function(descendant, ...)
														pcall(fn34, descendant)
													end)
												end
											end

											do
												Lighting.GlobalShadows = false
												Lighting.FogEnd = 9e9
												Lighting.Brightness = v87[73]
												Lighting.EnvironmentDiffuseScale = 0
												Lighting.EnvironmentSpecularScale = 0

												do
													local children, v89, v90 = Lighting:GetChildren()

													for _, v91 in --[[?LTable]], children, v89, v90 do
														if v91:IsA("PostEffect") then
															v91.Enabled = false
														end
													end
												end
											end

											R_1 = R_0

											Lighting.ChildAdded:Connect(function(child, ...)
												if child:IsA("PostEffect") then
													child.Enabled = false
												end
											end)

											terrain.WaterWaveSize = 0
											terrain.WaterWaveSpeed = 0
											terrain.WaterReflectance = 0
											terrain.WaterTransparency = v87[73]
											Workspace.ClientAnimatorThrottling = Enum.ClientAnimatorThrottlingMode.Enabled
											Workspace.InterpolationThrottling = Enum.InterpolationThrottlingMode.Enabled
											Workspace.LevelOfDetail = Enum.ModelLevelOfDetail.Disabled
											settings():GetService("RenderSettings").EagerBulkExecution = false

											do
												local level01 = Enum.QualityLevel.Level01
												settings().Rendering.QualityLevel = level01
											end
										end

										if getgenv().NovaHub.LockFPS then
											task.spawn(function(...)
												while true do
													setfpscap(getgenv().NovaHub.FpsCap)
													task.wait(v87[15])
												end
											end)

											if n24 <= 9671 then
												while true do
												end
											end
										end

										tbl19 = {
											Speed = v87[17],
											Step = 1,
											FallSpeed = 2,
											HipHeight = 3.5,
											WallTPHeight = v87[93],
											WallCheckRange = 1,
											ForceWaterHeight = 1,
											PROMPT_OFFSET = Vector3.new(v87[73], 4, 0),
											FishmanGate = Vector3.new(1793.72681, 40, -12327.4541),
											FismanGate2 = Vector3.new(8585.81640625, -2136.123046875, -17087.814453125),
											MaxLevel = v87[87],
											WorldScroll = Vector3.new(-7350.17, 4.76, -14949.49),
											ReverseMountain = Vector3.new(-8077, 18, -10787),
											GatekeeperPuff = Vector3.new(-8007, 52, -8540),
										}

										if not flag2 then
											return
										end

										do
											local n32 = 0
											local now2 = tick()

											GetChar = function(...)
												local character = localPlayer.Character

												if not (character and character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("Humanoid")) then
													local playerCharacters = workspace:FindFirstChild("PlayerCharacters")

													if playerCharacters and playerCharacters:FindFirstChild(localPlayer.Name) then
														character = playerCharacters[localPlayer.Name]
													end
												end

												if character then
													local findFirstChild = character.FindFirstChild
													local v89 = v87[24]
													return character, character:FindFirstChild(v87[112]), findFirstChild(character, v89)
												end

												return nil, nil, nil
											end

											IsMobAlive = function(arg, ...)
												if arg and arg.Parent and arg:FindFirstChild("Humanoid") and arg.Humanoid.Health > v87[73] and arg:FindFirstChild("HumanoidRootPart") then
													return true
												end
												return v87[98]
											end

											FireDash = function(...)
												local service2 = game:GetService(v87[3])
												local events2 = service2:FindFirstChild("Events") and service2.Events:FindFirstChild(v87[89])
												if not events2 then
													return
												end
												local maxValue = v88.Stamina.MaxValue
												print(maxValue)
												print(0.005)
												local v89, v90 = GetChar()
												events2:FireServer(maxValue * 0.005, v87[94], v90 and v90.CFrame)
												print(maxValue * 0.005)
											end

											AllToVector = function(arg, ...)
												local position = nil

												if arg then
													if typeof(arg) == "CFrame" then
														position = arg.Position
													elseif type(arg) == "vector" then
														position = arg
													elseif typeof(arg) == "Instance" and arg:IsA("BasePart") then
														if not flag2 then
															return
														end
														position = arg.Position
													else
														position = nil

														if arg:FindFirstChild(v87[112]) then
															position = arg:FindFirstChild("HumanoidRootPart").Position
														end
													end
												end

												return position
											end

											IsFishMan = function(arg, ...)
												return arg.Y < -2000
											end

											GetDistance = function(arg, arg2, ...)
												local character = arg2 or localPlayer.Character
												local v89 = AllToVector(arg)
												local v90 = AllToVector(character)
												if v89 and v90 then
													return (v89 - v90).magnitude
												end
												return print(v87[8], debug.traceback())
											end

											getTargets = function(arg, ...)
												local tbl21 = {}
												arg = arg or 150
												local v89, v90, v91 = pairs(workspace.NPCs:GetChildren())

												for _, v92 in --[[?LTable]], v89, v90, v91 do
													if IsMobAlive(v92) then
														if GetDistance(v92.HumanoidRootPart) <= arg then
															table.insert(tbl21, v92.HumanoidRootPart)
														end
													end
												end

												return tbl21
											end

											tbl20 = {
												Debounce = 0,
												ComboDebounce = 0,
												M1Combo = 0,
												GetCombo = function(arg, ...)
													local comboDebounce = arg.ComboDebounce
													local m1Combo = tick() - comboDebounce <= 1.25 and arg.M1Combo or 0
													local m1Combo2

													if m1Combo >= 4 or m1Combo < 1 then
														m1Combo2 = v87[61]
													else
														m1Combo2 = m1Combo + 1
													end

													arg.ComboDebounce = tick()
													arg.M1Combo = m1Combo2
													return m1Combo2
												end,
												Hit = function(arg, ...)
													local debounce = arg.Debounce

													if v87[45] <= tick() - debounce then
														local combo = arg:GetCombo()
														arg.Debounce = combo >= 4 and tick() + 1.2 or tick()
														local v89 = getTargets()

														if v87[73] < #v89 then
															CombatRegister:InvokeServer({
																v87[36],
																"Melee",
																combo,
																"Air",
																false,
																[v87[75]] = game.ReplicatedStorage:WaitForChild("CombatAnimations"):WaitForChild(v87[110]):WaitForChild("Punch1"),
																[7] = 1,
																[v87[57]] = 5,
															})

															CombatRegister:InvokeServer({
																"damage",
																v89,
																v87[110],
																{ combo, "Ground", "Melee" },
																true,
																CFrame.new(v87[73], 0, v87[73], 1, 0, 0, 0, v87[61], 0, 0, 0, 1),
																aircombo = v87[108],
															})
														end
													end
												end,
											}

											fn33 = function(arg, ...)
												local v89, v90, v91 = GetChar()
												if not v89 or not v90 or not v91 then
													return
												end

												if arg then
													if not v90:FindFirstChild("VelocityBody") then
														local bodyVelocity = Instance.new("BodyVelocity")
														bodyVelocity.Name = "VelocityBody"
														bodyVelocity.Parent = v90
														bodyVelocity.Velocity = Vector3.new(v87[73], 0, 0)
													end
												elseif v90:FindFirstChild("VelocityBody") then
													if n28(1641) >= 336 then
														if not flag2 then
															return
														end
														game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityBody:Destroy()

														if n25 >= 7977 then
															while true do
															end
														end
													else
														while true do
														end
													end
												end
											end

											fn28 = nil

											fn28 = function(arg, arg2, arg3, arg4, ...)
												local v89, v90, v91 = GetChar()
												if not v90 or not v91 then
													return
												end
												local speed = tbl19.Speed
												local v92 = AllToVector(arg)
												local raycastParams = RaycastParams.new()
												raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
												raycastParams.FilterDescendantsInstances = { v89 }
												raycastParams.IgnoreWater = v87[18]

												arg2 = arg2 or function(...)
													return v87[18]
												end

												if not IsFishMan(arg) and IsFishMan(v90.CFrame) then
													fn28(Vector3.new(v87[82], -2136.12305, -17087.8145), arg2)
													task.wait(1)
													return fn28(arg, arg2)
												end

												local v93 = v87[19]

												if GetDistance(AllToVector(arg)) > v93 then
													arg3 = 600
												end

												local y = arg3 and v90.Position.Y + arg3 or v90.Position.Y
												local v94 = task.wait()

												if arg3 then
													if math.abs(arg3 - v90.Position.Y) > 30 then
														FireDash()
													end

													print(CFrame.new(v90.Position.X, arg3, v90.Position.Z))
													v90.CFrame = CFrame.new(v90.Position.X, v90.Position.Y + arg3, v90.Position.Z)
												end

												while true do
													if GetDistance(v92) > 1 and arg2() then
														if arg4 then
															print(v87[113])
															fn33(true)
														end

														if v90.Parent then
															local position = v90.Position
															local n33 = v92 - position
															local magnitude = Vector3.new(n33.X, 0, n33.Z).Magnitude
															local unit = magnitude > 0 and Vector3.new(n33.X, v87[73], n33.Z).Unit or Vector3.zero
															local n34 = speed * v94

															if magnitude < n34 then
																n34 = magnitude
															end

															local n35 = position + unit * n34

															if magnitude <= 1 then
																if math.abs(v92.Y - position.Y) > 10 then
																	FireDash()
																end

																v90.CFrame = CFrame.new(v92)
																break
															else
																local hit = service:Raycast(position, unit * v87[40], raycastParams)
																local canCollide = hit and hit.Instance and hit.Instance:IsA("BasePart") and hit.Instance.CanCollide
																local v95 = nil

																if not canCollide then
																	hit = v95
																end

																local flag18

																if hit then
																	local v96 = v87[78]
																	flag18 = tick() - n32 > v96
																else
																	flag18 = hit
																end

																if flag18 then
																	print(1)
																	n32 = tick()

																	if tick() - now2 >= 2 then
																		now2 = tick()
																		FireDash()
																	end

																	local n36 = hit.Position + unit
																	local hit2 = service:Raycast(n36 + Vector3.new(0, tbl19.WallTPHeight, 0), Vector3.new(0, -tbl19.WallTPHeight * v87[37], 0), raycastParams)
																	local vector = Vector3.new(n36.X, hit2 and hit2.Position.Y + tbl19.HipHeight or position.Y + 2, n36.Z)
																	v90.CFrame = CFrame.new(vector)
																	v94 = task.wait()
																else
																	if not arg3 and not arg4 then
																		if v91.FloorMaterial == Enum.Material.Air and v90.Position.Y > 15 then
																			print("bam dat")
																			local attachment = Instance.new("Attachment", v90)
																			attachment.Name = "hihihihi"
																			local vectorForce = Instance.new("VectorForce")
																			vectorForce.Attachment0 = attachment
																			vectorForce.Force = Vector3.new(0, -100000, 0)
																			vectorForce.RelativeTo = Enum.ActuatorRelativeTo.World
																			vectorForce.Parent = attachment

																			while true do
																				wait()
																				if not (v91.FloorMaterial ~= Enum.Material.Air or v90.Position.Y < v87[73]) then
																					continue
																				end
																				break
																			end

																			if v90:FindFirstChild("hihihihi") then
																				v90.hihihihi:Destroy()
																			end
																		end
																	end

																	local vector = Vector3.new(n35.X, arg3 and y or v90.Position.Y, n35.Z)

																	if vector.Y < 0 and position.Y > -v87[107] then
																		vector = Vector3.new(vector.X, tbl19.ForceWaterHeight, vector.Z)
																	end

																	FireDash()
																	v90.CFrame = CFrame.new(vector)
																	v94 = task.wait()
																end

																continue
															end
														end
													end

													break
												end
											end
										end
									end

									do
										fn29 = function(arg, ...)
											if v87[103] <= n28(658) then
												return game:GetService("HttpService"):JSONDecode(v88.Inventory.Inventory.Value)[arg] or v87[73]
											end

											while true do
											end
										end

										fn30 = function(...)
											return tostring(v88.Quest.CurrentQuest.Value)
										end

										do
											local function fn34(arg, ...)
												if not arg then
													return nil
												end
												local v89, v90, v91 = pairs(getconnections(arg.Equipped))

												for _, v92 in --[[?LTable]], v89, v90, v91 do
													local function_ = v92.Function

													if function_ then
														local v93 = debug.getupvalues(function_)
														local v94, v95, v96 = pairs(v93)

														for _, v97 in --[[?LTable]], v94, v95, v96 do
															if type(v97) == "table" and v97.Reloaded ~= nil then
																return v97
															end
														end
													end
												end

												return nil
											end

											Shoot = function(arg, ...)
												local rifle = localPlayer.Character:FindFirstChild("Rifle") or localPlayer.Backpack:FindFirstChild("Rifle")

												if rifle and rifle.Parent == localPlayer.Backpack then
													if n27(4317) < 10765 then
														localPlayer.Character.Humanoid:EquipTool(rifle)
													else
														while true do
														end
													end
												end

												GunObject = GunObject or fn34(rifle)
												if not GunObject then
													return
												end
												local name = localPlayer.Name
												local rifleGun = workspace.PlayerCharacters:FindFirstChild(name) and workspace.PlayerCharacters[name]:FindFirstChild("RifleGun")

												if rifleGun and rifleGun:FindFirstChild("Hole") then
													local tbl21 = {}

													local tbl22 = {
														Start = rifleGun.Hole.CFrame,
														Gun = v87[91],
														joe = "true",
														Position = arg[hitbox_limb[math.random(#hitbox_limb)]].Position + arg.HumanoidRootPart.Velocity / 3,
													}

													tbl21[1] = "fire"
													tbl21[2] = tbl22
													ReplicatedStorage.Events.CIcklcon:FireServer(unpack(tbl21))
													game:GetService("ReplicatedStorage").Events.CIcklcon.gunFunctions:InvokeServer("reload", { Gun = v87[91] })

													table.foreach(GunObject, function(...)
														if not flag3 then
															return
														end
													end)
												end
											end
										end
									end

									do
										local function fn34(arg, ...)
											local vector = Vector3.new(0, 0, 0)
											local v89, v90, v91 = ipairs(workspace.NPCs:GetChildren())
											local n32 = 0

											for _, v92 in --[[?LTable]], v89, v90, v91 do
												if v92.Name == arg and IsMobAlive(v92) then
													vector += v92.HumanoidRootPart.Position
													n32 += 1
												end
											end

											if n32 > 0 then
												return vector / n32
											end
											return nil
										end

										local function fn35(arg, ...)
											if n28(v87[1]) <= 1629 then
												local v89, v90, v91 = ipairs(workspace.NPCs:GetChildren())

												for _, v92 in --[[?LTable]], v89, v90, v91 do
													if v92.Name == arg and IsMobAlive(v92) then
														if v92:FindFirstChild("Info") and v92.Info:FindFirstChild("Target") and v92.Info.Target.Value == nil then
															fn28(v92.HumanoidRootPart.Position + Vector3.new(0, 8, 0), nil, nil, true)
															tbl20:Hit()
															return true
														end
													end
												end

												return v87[98]
											end

											while true do
											end
										end

										local function fn36(...)
											local children, v89, v90 = game.Players.LocalPlayer.Backpack:GetChildren()

											for _, v91 in --[[?LTable]], children, v89, v90 do
												if v91:IsA(v87[11]) and v91:GetAttribute("MeleeTool") then
													game.Players.LocalPlayer.Character.Humanoid:EquipTool(v91)
													return
												end
											end
										end

										fn31 = function(arg, ...)
											local v89, v90, v91 = ipairs(workspace.NPCs:GetChildren())

											for _, v92 in --[[?LTable]], v89, v90, v91 do
												if v92.Name == arg and IsMobAlive(v92) then
													return true
												end
											end

											return false
										end

										fn32 = function(arg, arg2, arg3, ...)
											if IsMobAlive(arg) then
												arg2 = arg2 or function(...)
													return true
												end

												if arg3 then
													GatherPos = Vector3.new(7720, -2176, -17309)
													if not flag2 then
														return
													end
												else
													GatherPos = fn34(arg.Name) or arg.HumanoidRootPart.Position

													if n25 >= 7975 then
														while true do
														end
													end
												end

												local flag18 = true

												task.spawn(function(...)
													while flag18 and task.wait() do
														local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")

														if not tool or not tool:GetAttribute(v87[66]) then
															fn36()
														end

														tbl20:Hit()
														local v89, v90, v91 = ipairs(workspace.NPCs:GetChildren())

														for _, v92 in --[[?LTable]], v89, v90, v91 do
															if v92.Name == arg.Name and IsMobAlive(v92) then
																local humanoidRootPart = v92:FindFirstChild("HumanoidRootPart")

																if humanoidRootPart then
																	if GetDistance(humanoidRootPart, GatherPos) <= 2 then
																		humanoidRootPart.Anchored = true
																	end
																end
															end
														end
													end
												end)

												fn33(true)
												if not flag2 then
													return
												end

												while fn31(arg.Name) and arg2() and task.wait() do
													if not fn35(arg.Name) then
														fn28(GatherPos + Vector3.new(0, 8, 0), arg2, nil, true)
													end
												end

												flag18 = false
												fn33(false)
												local v89, v90, v91 = ipairs(workspace.NPCs:GetChildren())

												for _, v92 in --[[?LTable]], v89, v90, v91 do
													if v92.Name == arg.Name then
														local humanoidRootPart = v92:FindFirstChild("HumanoidRootPart")

														if humanoidRootPart then
															humanoidRootPart.Anchored = false
															humanoidRootPart.CanCollide = v87[18]
														end
													end
												end

												return
											end

											if n26(v87[70]) > 13443 then
												return
											end

											while true do
											end
										end
									end
								end

								do
									local fn33, fn34, fn35, fn36, fn37

									do
										do
											do
												fn33 = function(arg, ...)
													if not arg then
														return
													end

													if arg:IsDescendantOf(workspace) then
														local holdDuration = arg.HoldDuration

														if holdDuration > 0 then
															arg:InputHoldBegin()
															task.wait(holdDuration + 0.1)
															arg:InputHoldEnd()
														elseif fireproximityprompt then
															fireproximityprompt(arg, 2, v87[18])
														else
															arg:InputHoldBegin()
															arg:InputHoldEnd()
														end
													end
												end

												do
													local function fn38(...)
														local tbl20 = {}

														for k, v89 in --[[?LTable]], GameGlobal.layoutMulti, nil, nil do
															table.insert(tbl20, { Name = k, Rarity = v89 })
														end

														table.sort(tbl20, function(arg, arg2, ...)
															return arg.Rarity > arg2.Rarity
														end)

														local tbl21 = {}
														local v89, v90, v91 = ipairs(tbl20)

														for k, v92 in --[[?LTable]], v89, v90, v91 do
															tbl21[v92.Name] = k
														end

														return tbl21
													end

													PriorityList = fn38()
												end
											end

											do
												local function fn38(...)
													local v89 = GameGlobal
													if not v89 or not v89.ToolDesc or not v89.layoutMulti then
														return nil
													end
													local tbl20 = {}
													local v90, v91, v92 = pairs(Blueprints)

													for k in --[[?LTable]], v90, v91, v92 do
														if k:find("Bait") then
															local v93 = v89.ToolDesc[k]

															if v93 and v93.Rare then
																local v94 = PriorityList[v93.Rare]

																if v94 then
																	table.insert(tbl20, { Name = k, Priority = v94 })
																end
															end
														end
													end

													if #tbl20 == v87[73] then
														return nil
													end

													table.sort(tbl20, function(arg, arg2, ...)
														return arg.Priority > arg2.Priority
													end)

													return tbl20
												end

												fn34 = function(...)
													local v89 = v87[114]

													if n27(2810) <= v89 then
														if not flag3 then
															return
														end

														if not SortedBaitCache then
															if n28(3192) > 122 then
																SortedBaitCache = fn38()
															else
																while true do
																end
															end
														end

														if not SortedBaitCache then
															return nil
														end
														local v90, v91, v92 = pairs(SortedBaitCache)

														for _, v93 in --[[?LTable]], v90, v91, v92 do
															if fn29(v93.Name) > 0 then
																return v93.Name
															end
														end

														return nil
													end

													while true do
													end
												end
											end
										end

										fn35 = function(arg, ...)
											local proximityPrompt = arg:FindFirstChild("ProximityPrompt")
											if not proximityPrompt then
												return
											end
											local n32 = arg.Position + tbl19.PROMPT_OFFSET
											fn28(n32)
											local v89
											v89, v89 = GetChar()

											if v89 then
												v89.Velocity = Vector3.zero
												v89.CFrame = CFrame.new(n32)
											end

											fn33(proximityPrompt)
											task.wait(v87[61])
										end

										fn36 = function(...)
											local v89, v90 = GetChar()

											if not (n24 < 9682) then
												local v91 = v90 and workspace:FindFirstChild(v87[46])
												local v92 = nil

												if v91 then
													if not flag2 then
														return
													end
													local v93, v94, v95 = pairs(workspace.Env:GetChildren())
													local n32 = 5000
													v92 = nil

													for _, v96 in --[[?LTable]], v93, v94, v95 do
														if v96:IsA(v87[71]) and v96:FindFirstChild("ProximityPrompt") then
															local position = v96.Position
															local v97 = v87[15]

															if not (GetDistance(Vector3.new(-v87[13], 2.91294885, -3424.95508), position) <= v97) then
																local magnitude = (v90.Position - v96.Position).Magnitude

																if magnitude < n32 then
																	n32 = magnitude
																	v92 = v96
																end
															end
														end
													end
												end

												return v92
											end

											while true do
											end
										end

										fn37 = function(...)
											local v89, v90, v91 = ipairs(workspace.Effects:GetChildren())

											for _, v92 in --[[?LTable]], v89, v90, v91 do
												if v92.Name == "Part" and v92:FindFirstChild("Mesh") and v92.Mesh.TextureId == "http://www.roblox.com/asset/?id=28461501" and v92:FindFirstChild("Prompt") then
													return v92
												end
											end

											if not (n24 < 9678) then
												return
											end

											while true do
											end
										end

										do
											local v89, v90, v91 = pairs((getconnections or get_signal_cons)(game.Players.LocalPlayer.Idled))

											for _, v92 in --[[?LTable]], v89, v90, v91 do
												if v92.Disable then
													v92:Disable()
												elseif v92.Disconnect then
													v92:Disconnect()
												end
											end
										end
									end

									local action, fn38

									do
										R_1 = R_0
										action = ReplicatedStorage:WaitForChild("Fishing"):WaitForChild("Remotes"):WaitForChild("Action")
										getgenv().Fish_LastAction = getgenv().Fish_LastAction or 0
										getgenv().Fish_Reeling = getgenv().Fish_Reeling or v87[98]
										getgenv().Fish_StuckCount = getgenv().Fish_StuckCount or 0
										getgenv().Delayed = getgenv().Delayed or v87[98]
										getgenv().ReelAttempts = getgenv().ReelAttempts or v87[73]
										getgenv().LastHookState = getgenv().LastHookState or nil

										Animations = {
											Idle = "rbxassetid://107207137324194",
											Catch = "rbxassetid://127450553330242",
											Reel = "rbxassetid://136623058564703",
											Throw = "rbxassetid://140322334422224",
										}

										LoadedAnimations = {}

										LoadAnim = function(arg, ...)
											if not LoadedAnimations[arg] then
												local animation = Instance.new("Animation")
												animation.AnimationId = Animations[arg]
												LoadedAnimations[arg] = localPlayer.Character.Humanoid.Animator:LoadAnimation(animation)

												if v87[28] < n25 then
													while v87[18] do
													end
												end
											end

											return LoadedAnimations[arg]
										end

										Play = function(arg, ...)
											local v89 = LoadAnim(arg)

											if not v89.IsPlaying then
												v89:Play()
											end

											return v89
										end

										Stop = function(arg, ...)
											if LoadedAnimations[arg] and LoadedAnimations[arg].IsPlaying then
												LoadedAnimations[arg]:Stop()
											end
										end

										StopAll = function(...)
											local v89, v90, v91 = pairs(LoadedAnimations)

											for _, v92 in --[[?LTable]], v89, v90, v91 do
												if v92.IsPlaying then
													v92:Stop()
												end
											end

											if not (n25 > 7963) then
												return
											end

											while true do
											end
										end

										GetAnimation = function(arg, ...)
											return LoadedAnimations[arg]
										end

										do
											local tbl20 = {
												["Devil Fruit Rod"] = v87[57],
												[v87[111]] = 7,
												["Jack-O'Rod"] = 6,
												["Angler Rod"] = 5,
												["Merchants Banana Rod"] = 4,
												["Epic Fishing Rod"] = 3,
												["Rare Fishing Rod"] = 2,
												["Fishing Rod"] = 1,
											}

											fn38 = function(...)
												local data = nil

												pcall(function(...)
													local v89 = game:GetService("ReplicatedStorage"):FindFirstChild("Stats" .. game:GetService(v87[14]).LocalPlayer.Name)

													if v89 and v89:FindFirstChild("Inventory") then
														local value = v89.Inventory.Inventory.Value

														if value and value ~= "" then
															data = game:GetService("HttpService"):JSONDecode(value)
														end
													end
												end)

												if not data then
													return nil
												end
												local n32 = -math.huge
												local v89, v90, v91 = pairs(data)
												local v92 = nil

												for k in --[[?LTable]], v89, v90, v91 do
													local v93 = tbl20[k]

													if v93 and v93 > n32 then
														n32 = v93
														v92 = k
													end
												end

												return v92
											end
										end
									end

									local function fn39(arg, ...)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(arg)
										game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.zero
										if not flag2 then
											return
										end
									end

									local tbl20 = {
										FarmBandit = function(...)
											if not localPlayer.QuestCD.Value then
												local v89 = v87[85]

												if fn30() ~= v89 then
													if fn30() ~= "None" then
														events:WaitForChild("Quest"):InvokeServer({ "quit" })
													end

													fn28(Vector3.new(-v87[90], 6, -3431))
													game:GetService("ReplicatedStorage"):WaitForChild(v87[92]):WaitForChild("Quest"):InvokeServer({ "takequest", "Help Daph" })
													return
												end

												local v90, v91, v92 = ipairs(workspace.NPCs:GetChildren())

												for _, v93 in --[[?LTable]], v90, v91, v92 do
													if v93.Name == "Bandit" and IsMobAlive(v93) then
														fn32(v93, function(...)
															return fn31(v93.Name)
														end, false)

														break
													end
												end
											end
										end,
										FarmNPC = function(...)
											local v89, v90, v91 = GetChar()
											if not v90 or not v91 then
												return
											end

											if not IsFishMan(v90.Position) then
												if GetDistance(tbl19.FishmanGate) > 10 then
													if not flag3 then
														return
													end
													fn28(tbl19.FishmanGate)
													return task.wait(v87[58])
												end

												local fishman = workspace.AreaTeleporters.FirstSea.Fishman

												if fishman and fishman:FindFirstChild(v87[6]) then
													FireDash()
													v90.CFrame = fishman.Part.CFrame
													task.wait(5)
												end
											elseif n26(4388) < 13409 then
												if stats.SpawnPoint.Value ~= v87[68] then
													fn28(Vector3.new(7977, -2153, -v87[4]))

													if n24 > 9716 then
														while true do
														end
													else
														repeat
															task.wait(2)

															pcall(function(...)
																events:WaitForChild("Quest"):InvokeServer({ "npcChat", true })

																if workspace.NPCs:FindFirstChild("Robo") then
																	events:WaitForChild("SetSpawn"):FireServer(nil, workspace.NPCs.Robo)
																else
																	events:WaitForChild("SetSpawn"):FireServer()
																end
															end)
														until stats.SpawnPoint.Value == v87[68]
													end
												end

												if v87[83] <= level.Value then
													if not localPlayer.QuestCD.Value then
														if fn30() ~= "Help becky" then
															local v92 = v87[38]

															if fn30() ~= v92 then
																events:WaitForChild("Quest"):InvokeServer({ v87[95] })
															end

															fn28(Vector3.new(v87[34], -2176, -17223))
															game:GetService(v87[3]):WaitForChild("Events"):WaitForChild("Quest"):InvokeServer({ "takequest", "Help becky" })
															return
														end
													end
												end

												fn28(Vector3.new(7809, -v87[86], -v87[60]))
												local v92, v93, v94 = ipairs(workspace.NPCs:GetChildren())

												for _, v95 in --[[?LTable]], v92, v93, v94 do
													if v95.Name == "Fishman Karate User" and IsMobAlive(v95) then
														fn32(v95, function(...)
															return fn31(v95.Name)
														end, true)

														break
													end
												end
											else
												while true do
												end
											end
										end,
										GoToSecondSea = function(...)
											if n27(882) > 5056 then
												if game.PlaceId == 6811831486 then
													if n26(3575) < 11689 then
														warn("[Kaitun] Đã ở Second Sea! Hoàn thành chuyển Sea.")
														task.wait(5)
														return
													end

													while true do
													end
												else
													local v89, v90, v91 = GetChar()
													if not v90 or not v91 then
														return
													end

													pcall(function(...)
														if n28(v87[32]) < 588 then
															local v92 = localPlayer:FindFirstChild(v87[53])

															if v92 then
																if v92:FindFirstChild("chooseType") and v92.chooseType:FindFirstChild("Frame") and v92.chooseType.Frame:FindFirstChild("RemoteEvent") then
																	if v87[9] < n28(3340) then
																		v92.chooseType.Frame.RemoteEvent:FireServer(true)
																		if not flag2 then
																			return
																		end
																	else
																		while true do
																		end
																	end
																end

																if v92:FindFirstChild("ConfirmationPrompt") and v92.ConfirmationPrompt:FindFirstChild("RemoteEvent") then
																	v92.ConfirmationPrompt.RemoteEvent:FireServer("Second Sea")
																end
															end

															return
														end

														while true do
														end
													end)

													if IsFishMan(v90.Position) then
														warn("[Kaitun] Đang ở Fishman Island, di chuyển ra cổng về First Sea...")

														if tbl19.FismanGate2 then
															if not flag2 then
																return
															end

															if GetDistance(tbl19.FismanGate2) > 10 then
																fn28(tbl19.FismanGate2)
																return task.wait(2)
															end
														end

														local v92 = workspace:FindFirstChild(v87[10])
														local part = v92 and v92:FindFirstChild("Fishman") and v92.Fishman:FindFirstChild("Part")

														if part then
															FireDash()
															v90.CFrame = part.CFrame
															task.wait(v87[75])

															if n25 >= 7963 then
																while v87[18] do
																end
															end

															return
														end

														FireDash()
														v90.CFrame = CFrame.new(tbl19.FismanGate2)
														task.wait(6)
														return
													end

													local n2ndSeaTeleport = workspace.Effects:FindFirstChild("2ndSeaTeleport")

													if n2ndSeaTeleport then
														warn("[Kaitun] Cổng Second Sea đã mở! Đang tiến vào cổng dịch chuyển...")
														fn28(n2ndSeaTeleport.Position)
														task.wait(0.5)
														local v92, v93 = GetChar()

														if v93 then
															if firetouchinterest then
																firetouchinterest(v93, n2ndSeaTeleport, 0)

																if n24 > 9716 then
																	while true do
																	end
																else
																	task.wait(v87[31])
																	firetouchinterest(v93, n2ndSeaTeleport, v87[61])
																end
															else
																v93.CFrame = n2ndSeaTeleport.CFrame
															end
														end

														task.wait(6)
														return
													end

													local flag18 = false

													pcall(function(...)
														if fn29("World Scroll") > 0 then
															flag18 = true
														elseif localPlayer.Backpack:FindFirstChild("World Scroll") or localPlayer.Character and localPlayer.Character:FindFirstChild("World Scroll") then
															flag18 = true
														end
													end)

													local worldScroll = workspace.Effects:FindFirstChild("World Scroll")

													if worldScroll and not flag18 then
														warn("[Kaitun] Đang đi nhặt World Scroll...")
														fn28(tbl19.WorldScroll)
														local proximityPrompt = worldScroll:FindFirstChildWhichIsA("ProximityPrompt") or worldScroll:FindFirstChild("Prompt")

														if proximityPrompt then
															fn33(proximityPrompt)
														end

														task.wait(v87[37])
														return
													end

													if (v90.Position - tbl19.ReverseMountain).Magnitude > 300 and (v90.Position - tbl19.GatekeeperPuff).Magnitude > 300 then
														warn("[Kaitun] Đang bay tới Reverse Mountain...")
														fn28(tbl19.ReverseMountain)
														return
													end

													if not ((v90.Position - tbl19.GatekeeperPuff).Magnitude > 15) then
														local gatekeeperPuff = workspace.NPCs:FindFirstChild("Gatekeeper Puff")

														if gatekeeperPuff and gatekeeperPuff:FindFirstChild("UpperTorso") then
															local proximityPrompt = gatekeeperPuff.UpperTorso:FindFirstChildWhichIsA("ProximityPrompt") or gatekeeperPuff.UpperTorso:FindFirstChild("Prompt")
															local npcchat = localPlayer.PlayerGui:FindFirstChild("NPCCHAT")

															if not npcchat then
																warn("[Kaitun] Mở hội thoại với Gatekeeper Puff...")

																if proximityPrompt then
																	fn33(proximityPrompt)
																end

																task.wait(2)
															else
																warn("[Kaitun] Đang nói chuyện với Gatekeeper Puff để mở cổng...")

																pcall(function(...)
																	local group001 = npcchat.Frame.ImageLabel.desc.Line001.Container.Group001

																	if group001 and group001.TextColor3 == Color3.fromRGB(v87[106], v87[35], 102) then
																		warn("[Kaitun] Gatekeeper Puff đã mở cổng Second Sea!")
																	else
																		local endChat = npcchat.Frame:FindFirstChild("endChat")

																		if endChat then
																			if firesignal then
																				firesignal(endChat.MouseButton1Click)
																			elseif getconnections then
																				if n27(1517) > 3539 then
																					local v92, v93, v94 = ipairs(getconnections(endChat.MouseButton1Click))

																					for _, v95 in --[[?LTable]], v92, v93, v94 do
																						v95:Fire()
																					end
																				else
																					while v87[18] do
																					end
																				end
																			end
																		end
																	end
																end)

																task.wait(1.5)
															end
														end

														return
													end

													if v87[20] < n26(3790) then
														fn28(tbl19.GatekeeperPuff)
														return
													end

													while true do
													end
												end
											else
												while true do
												end
											end
										end,
										FarmBeli = function(...)
											local v89 = fn36()

											if v89 then
												if not flag3 then
													return
												end
												fn35(v89)
											elseif level.Value >= 3 then
												if not localPlayer.QuestCD.Value then
													if fn30() ~= "Find Sarah's necklace" then
														local v90 = v87[38]

														if fn30() ~= v90 then
															events:WaitForChild("Quest"):InvokeServer({ v87[95] })
														end

														fn28(Vector3.new(-v87[67], 9, -3400))
														game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Quest"):InvokeServer({ "takequest", "Find Sarah's necklace" })
														return
													end

													fn28(Vector3.new(-v87[52], 9, -3402))

													while true do
														task.wait()
														local v90 = fn37()

														if v90 then
															fn28(v90.Position + tbl19.PROMPT_OFFSET)
															task.wait(1)
															local prompt = v90:FindFirstChild("Prompt")

															if prompt then
																fn33(prompt)
															end
														else
															fn28(Vector3.new(-546, 9, -3400))
														end

														local v91 = v87[38]
														if not (fn30() == v91 or fn30() ~= "Find Sarah's necklace" or v88.Quest.QuestProgress.Value == 1) then
															continue
														end
														break
													end

													if fn30() == "Find Sarah's necklace" and v88.Quest.QuestProgress.Value == 1 then
														fn28(Vector3.new(-546, 9, -3400))
														game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Quest"):InvokeServer({ "returnitem" })
													end
												end
											end
										end,
										FishingFunc = function(...)
											local v89, v90, v91 = GetChar()
											local v92 = fn38()

											if not v90 or not v91 then
												if not (v87[105] <= n25) then
													return
												end

												while true do
												end
											else
												if stats.SpawnPoint.Value ~= "Shell's Town" then
													fn28(Vector3.new(-1299, 4, -5060))

													repeat
														task.wait(3)
														events:WaitForChild(v87[44]):FireServer()
													until stats.SpawnPoint.Value == "Shell's Town"
												end

												local v93 = v87[116]

												if GetDistance(AllToVector(Vector3.new(-1342, 4, -4984))) > v93 then
													fn28(Vector3.new(-1342, 4, -4984))
												end

												fn39(Vector3.new(-1342, 4, -4984))

												if not fn34() then
													local commonFishBait = workspace:FindFirstChild("BuyableItems") and workspace.BuyableItems:FindFirstChild("Common Fish Bait")

													if commonFishBait then
														local n32 = math.floor(peli.Value / v87[51])

														if n32 <= 0 then
															if n25 <= 7939 then
																while v87[18] do
																end
															end

															return
														end

														events.Shop:InvokeServer(commonFishBait, n32 <= 100 and n32 or 100)
													end

													return
												end

												if getgenv().Delayed then
													return
												end
												local localPlayer2 = game:GetService("Players").LocalPlayer
												local character = localPlayer2.Character

												if character then
													local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
													if not humanoidRootPart then
														return
													end

													local function fn40(...)
														local humanoid = character:FindFirstChild("Humanoid")

														if humanoid then
															humanoid:UnequipTools()
															task.wait(0.2)
															local v94 = localPlayer2.Backpack:FindFirstChild(v92)

															if v94 then
																v94.Parent = character
															end
														end

														if not flag3 then
															return
														end
													end

													game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Tools"):InvokeServer(unpack({ v87[30], v92 }))
													local v94 = character:FindFirstChild(v92) or localPlayer2.Backpack:FindFirstChild(v92)
													if not v94 then
														return
													end

													if v94.Parent ~= character then
														local humanoid = character:FindFirstChild("Humanoid")

														if humanoid then
															humanoid:EquipTool(v94)
															getgenv().Fish_LastAction = tick() + 0.5
															return
														end
													end

													if humanoidRootPart then
														humanoidRootPart.Anchored = true
														humanoidRootPart.CFrame = CFrame.new(-1342, 4, -v87[100])
														humanoidRootPart.Velocity = Vector3.zero
													end

													local v95 = workspace.Effects:FindFirstChild(localPlayer2.Name .. "'s hook")

													if not v95 then
														local ocean = workspace.Env.WaterStuff.Ocean
														local cFrame = ocean.CFrame
														local size = ocean.Size
														local v96 = cFrame:PointToObjectSpace(humanoidRootPart.Position)
														local pointToWorldSpace = cFrame.PointToWorldSpace
														local z = v96.Z
														local vector = Vector3.new(math.clamp(v96.X, -size.X / 2, size.X / v87[37]), size.Y / 2, math.clamp(z, -size.Z / 2, size.Z / 2))
														local v97 = pointToWorldSpace(cFrame, vector)
														local raycastParams = RaycastParams.new()
														raycastParams.FilterType = Enum.RaycastFilterType.Include
														raycastParams.FilterDescendantsInstances = { workspace.Env.WaterStuff }
														local position = humanoidRootPart.Position

														if position.Y < v87[73] then
															position = Vector3.new(position.X, 10, position.Z)
														end

														local hit = workspace:Raycast(position, Vector3.new(0, -2000, 0), raycastParams)
														hit = hit and hit.Position + Vector3.new(v87[73], 7, 0) or v97 + Vector3.new(0, 7, 0)
														local vector2 = Vector3.new(hit.X, 0, hit.Z)
														getgenv().watersigma = vector2
														Play("Throw")

														pcall(function(...)
															action:InvokeServer({ Goal = vector2, Action = "Throw", Bait = fn34() })
														end)

														fn39(Vector3.new(-1342, 4, -4984))
														task.wait(0.5)
														action:InvokeServer({ Action = "Landed" })
														fn39(Vector3.new(-1342, 4, -4984))
													else
														v95.CFrame = CFrame.new(getgenv().watersigma)

														if v95:GetAttribute("Caught") and not getgenv().Delayed then
															Play(v87[54])
															getgenv().Delayed = true

															task.delay(math.random(7.5, 10), function(...)
																if not getgenv().Delayed then
																	return
																end

																pcall(function(...)
																	action:InvokeServer({ Action = "Reel" })
																end)

																Play(v87[54])
																getgenv().ReelAttempts = (getgenv().ReelAttempts or 0) + 1

																if getgenv().ReelAttempts >= 3 then
																	task.wait(0.3)
																	fn40()
																else
																	task.wait(v87[78])
																end

																if v87[47] >= n24 then
																	while v87[18] do
																	end
																end

																getgenv().Delayed = false
															end)
														elseif v95:GetAttribute("MoveMultiplier") and not v95:GetAttribute(v87[21]) then
															getgenv().ReelAttempts = 0

															pcall(function(...)
																Play("Catch")
																print("Catch")
																action:InvokeServer({ Action = v87[42] })
																action:InvokeServer({ Action = "Cancel" })
																v95:Destroy()
															end)

															fn39(Vector3.new(-1342, 4, -4984))
															getgenv().Fish_LastAction = tick() + 0.5
														end
													end

													return
												end

												if n28(3072) > 1397 then
													return
												end

												while true do
												end
											end
										end,
										SellRarityFishTask = function(...)
											local R_1, R_2
											local v89 = GameGlobal
											if not v89.ToolDesc then
												return
											end
											local v90 = ToolDescUtils.GetAllFishes()
											local v91 = v87[73]
											local tbl20 = {}
											local v92, v93, v94 = pairs(v90)

											for k in --[[?LTable]], v92, v93, v94 do
												local v95 = GameUtils.CheckItemAmount(localPlayer, k)

												if v95 and v95 > v87[73] then
													v91 += v95

													table.insert(tbl20, {
														Name = k,
														Amount = v95,
														Rarity = v89.ToolDesc[k] and v89.ToolDesc[k].Rare or "None",
													})
												end
											end

											if not (v91 < 5) then
												local v95, v96, v97 = ipairs(tbl20)
												local n32 = 0

												for _, v98 in --[[?LTable]], v95, v96, v97 do
													if not (n32 >= 5) then
														local n33 = math.min(v98.Amount, 5 - n32)
														print(string.format("Selling %d Fish %s (rarity: %s)...", n33, v98.Name, v98.Rarity))
														R_2 = 1

														for i = 1, n33 do
															fishingShopRemote:InvokeServer({ Method = "SellFish", Fish = v98.Name, All = false })
															n32 += v87[61]
															task.wait(0.1)
														end

														R_2 = R_1
														continue
													end

													break
												end

												return
											end

											if n26(v87[99]) < 6429 then
												return
											end

											while true do
											end
										end,
									}
								end

								local HttpService, fn33, fn34

								do
									HttpService = game:GetService("HttpService")

									do
										local discordWebHook = getgenv().NovaHub.DiscordWebHook or ""

										local function fn35(arg, ...)
											local n32 = #arg
											if not flag2 then
												return
											end

											if not (n32 <= v87[58]) then
												if n25 < v87[26] then
													while v87[18] do
													end
												end

												local v89 = math.ceil(n32 * 0.6)
												return arg:sub(v87[61], v89) .. string.rep("*", n32 - v89)
											end

											if not (n25 >= 7975) then
												if not flag2 then
													return
												end
												return arg:sub(1, 1) .. string.rep("*", n32 - 1)
											end

											while true do
											end
										end

										fn33 = function(arg, arg2, arg3, arg4, ...)
											if discordWebHook == "" then
												return
											end
											local request_ = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or request
											if not request_ then
												return
											end

											local str7 = string.format([[👤 **Player:** `%s`
💰 **Current Peli:** `%d`

**📦 [ MERCHANT STOCK ]**
%s]], fn35(localPlayer.Name), arg4, arg)

											local str8

											if v87[73] < #arg2 then
												str8 = str7 .. string.format([[

**🛒 [ PURCHASE LOG ]**
✅ **Bought:** %s
💸 **Transaction:** `%d` ➔ `%d`]], table.concat(arg2, ", "), arg3, arg4)
											else
												str8 = str7 .. "\n*❌*"
											end

											local tbl20 = {
												username = "Nova Hub Detect | Merchant Tracker",
												avatar_url = "https://cdn.discordapp.com/attachments/1455503437000347713/1461361287882735832/latest.png",
												[v87[50]] = {
													{
														title = "🏪 Traveling Merchant Found!",
														[v87[5]] = str8,
														color = 8421504,
														image = {
															url = "https://media.discordapp.net/attachments/1455503437000347713/1461359339272147037/image.png",
														},
														footer = { [v87[104]] = "NovaHub Private Service • " .. os.date("%X") },
													},
												},
											}

											pcall(function(...)
												if not (9682 > n24) then
													request_({
														Url = discordWebHook,
														Method = "POST",
														Headers = { ["Content-Type"] = "application/json" },
														Body = HttpService:JSONEncode(tbl20),
													})

													return
												end

												while true do
												end
											end)

											if not flag2 then
												return
											end
										end

										getgenv().GlobalWebhook = "https://discord.com/api/webhooks/1484954208607404232/wdzkRVY3_60DAgzXRh85a5mOXKD5tN_YyJ6x_OnQvRAoCzg1Oe8qJYVt9b3x4964NbHv"

										fn34 = function(arg, ...)
											local globalWebhook = getgenv().GlobalWebhook or ""

											if not (n25 <= v87[88]) then
												if globalWebhook == "" then
													return
												end
												local request_ = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or request
												if not request_ then
													return
												end

												local tbl20 = {
													[v87[117]] = "Nova Hub",
													embeds = {
														{
															title = "Someone Got A " .. arg,
															description = "**Player:** `" .. fn35(localPlayer.Name) .. "`",
															color = 16750848,
															image = {
																[v87[23]] = "https://static.wikia.nocookie.net/grand-piece-online/images/d/d4/Mythicalfruitchest.png/revision/latest?cb=20230701181241",
															},
															footer = { [v87[104]] = "Nova Hub • " .. os.date("%X") },
														},
													},
												}

												pcall(function(...)
													request_({
														Url = globalWebhook,
														Method = "POST",
														Headers = { ["Content-Type"] = "application/json" },
														Body = HttpService:JSONEncode(tbl20),
													})
												end)

												return
											end

											while true do
											end
										end
									end
								end

								do
									getgenv().LastMerchant = nil
									L_3021 = { Vector3.new(-2964, 6, -v87[27]) }

									do
										local function fn35(arg, arg2, ...)
											if not (arg == nil or arg2 == nil) then
												local v89 = v87[16]
												local flag18 = typeof(arg) ~= v89
												local flag19

												if flag18 then
													flag19 = flag18
												else
													local v90 = v87[16]
													flag19 = typeof(arg2) ~= v90
												end

												if flag19 then
													return false
												end
												return (arg - arg2).Magnitude < 5
											end

											if n27(3195) >= 11925 then
												return false
											end

											while true do
											end
										end

										HasMerchant = function(...)
											local v89 = game:GetService("ReplicatedStorage").CompassGuider:FindFirstChild(v87[39])

											if v89 then
												if n24 <= 9677 then
													while v87[18] do
													end
												end

												if not v89:GetAttribute("isEnabled") then
													if v87[118] <= n28(2988) then
														return v87[98]
													end

													while v87[18] do
													end
												end

												if not v89.Value then
													return false
												end
												local value = v89.Value

												if fn35(getgenv().LastMerchant, value) then
													if n26(4768) <= 14693 then
														return false
													end

													while v87[18] do
													end
												end

												return v89.Value
											end

											if not (9688 > n24) then
												return false
											end

											while true do
											end
										end
									end
								end

								do
									local seed = nil

									tbl11 = {
										GetMerchantShopData = function(...)
											local function fn35(...)
												local value = travelingMerchant.Value
												return travelingMerchant:GetAttribute("isEnabled") and GetDistance(value) > 2
											end

											while fn35() and task.wait() do
												fn28(travelingMerchant.Value + Vector3.new(0, 3, 0), fn35)
											end

											if not travelingMerchant:GetAttribute("isEnabled") then
												return nil
											end

											while true do
												game.ReplicatedStorage.Events:FindFirstChild(v87[63]):InvokeServer("OpenShop")
												task.wait(v87[61])
												if not (localPlayer.PlayerGui:FindFirstChild("MerchentShop") or localPlayer.PlayerGui:FindFirstChild("MerchantShop") or not travelingMerchant:GetAttribute("isEnabled")) then
													continue
												end
												break
											end

											local merchentShop = localPlayer.PlayerGui:FindFirstChild("MerchentShop") or localPlayer.PlayerGui:FindFirstChild("MerchantShop")
											if not merchentShop then
												return nil
											end
											local attribute = merchentShop:GetAttribute(v87[65])
											local attribute2 = merchentShop:GetAttribute(v87[49])

											local ok, result = pcall(function(...)
												if n25 > 7975 then
													while v87[18] do
													end
												end

												return HttpService:JSONDecode(attribute2)
											end)

											if not ok then
												if n25 <= 7948 then
													while v87[18] do
													end
												end

												return nil
											end

											return { Prices = result, Seed = attribute }
										end,
										MerchantLogicBuyItem = function(arg, arg2, arg3, ...)
											if not arg2 then
												if not flag3 then
													return
												end
												return false, "không có dữ liệu"
											end

											if arg2.remaining <= 0 then
												return false, "out of stock"
											end
											local value = stats.Peli.Value
											local price = arg2.price or 0
											if value < price then
												return false, "not enough money"
											end
											print(string.format("Buy %s | Price: %d | Seed: %s", arg, price, tostring(arg3)))
											local response2, v89 = ReplicatedStorage:WaitForChild(v87[92]):WaitForChild(v87[63]):InvokeServer(arg, arg3)
											return response2, v89
										end,
										AutoMerchantTask = function(arg, ...)
											local v89 = tbl11.GetMerchantShopData()

											if v89 and v89.Prices and v89.Seed then
												if seed == v89.Seed then
													pcall(function(...)
														game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TravelingMerchentRemote"):InvokeServer("Close")
													end)

													task.wait(1)
													return false
												end

												local value = stats.Peli.Value
												local tbl20 = {}
												local v90, v91, v92 = pairs(v89.Prices)
												local str7 = ""

												for k, v93 in --[[?LTable]], v90, v91, v92 do
													str7 ..= string.format("• **%s** (x%d) - `%d Peli`\n", k, v93.remaining, v93.price)
												end

												local v93, v94, v95 = pairs(arg)

												for _, v96 in --[[?LTable]], v93, v94, v95 do
													local v97 = v89.Prices[v96]

													if v97 and v97.remaining > v87[73] then
														if tbl11.MerchantLogicBuyItem(v96, v97, v89.Seed) then
															table.insert(tbl20, v96)

															if fn34 then
																fn34(v96)
															end

															task.wait(0.5)
														end
													end
												end

												pcall(function(...)
													game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TravelingMerchentRemote"):InvokeServer("Close")
												end)

												local value2 = stats.Peli.Value

												if fn33 then
													fn33(str7, tbl20, value, value2)
												end

												seed = v89.Seed
												return #tbl20 > 0
											end

											pcall(function(...)
												game:GetService("ReplicatedStorage"):WaitForChild(v87[92]):WaitForChild("TravelingMerchentRemote"):InvokeServer("Close")
											end)

											return false
										end,
									}
								end

								FishingTitles = {
									"Godly Fisherman",
									[v87[37]] = v87[77],
									[v87[58]] = "Skilled Fisherman",
									[4] = v87[76],
									[5] = "Fruit Fisher",
								}

								GetBestTitle = function(...)
									local huge = math.huge
									local allTitles = v88.Titles.AllTitles
									local data = game:GetService(v87[102]):JSONDecode(allTitles.Value)
									local v89 = nil

									for k, v90 in --[[?LTable]], next, FishingTitles, nil do
										for k2 in --[[?LTable]], next, data, nil do
											if k2 == v90 and k < huge then
												huge = k
												v89 = v90
											end
										end
									end

									return v89
								end

								error("devirt: value <luasym.LuaFunc object at 0x000001E910E98970> in an expression (at 66:2508)")
							end
						end

						while true do
						end
					end
				end
			end
		end
	end

	v62(100, v4[fn2("n\218\192\176\129w\151\190\193\1756", 21845944094585)], v4[fn2("-\209 \r\161\128\30\181)\162\169\194\240\156\19Ȣs\0212\188p\207(\188\240\176\157\230\2\142\167\11\226\159&\233", 10693721171687)] .. v33(v65), Color3[v4[fn2("\211\207k", 18772801209419)]](1, 0, 0), v4[fn2(" `\4\162\157", 18561267614598)])
	return
end

local v62 = math[v4[fn2("-]\28\209\209\208", 9977513518156)]](100000, 999999)

local function fn14(arg, ...)
	return v4[fn2("\241n\141\196\222w9Z\197\252", 26641421426923)]:format(arg / 60 % 60, arg % 60) .. v4[fn2("tHQh", 6099039688240)] .. v62
end

local v63 = v25()
local tbl11 = {}
local v64 = fn14(v63 % 86400 - 2)
local v65 = fn14(v63 % 86400 - 3)
local v66 = fn14(v63 % 86400)
local v67 = fn14(v63 % 86400 - 1)
local v68 = fn14(v63 % 86400 + 1)
local v69 = fn14(v63 % 86400 + 2)
local v70 = fn14(v63 % 86400 + 3)
local v71 = fn14(v63 % 86400 + 4)
local v72 = fn14(v63 % 86400 + 5)
local v73 = fn14(v63 % 86400 + 6)
tbl11[1] = v64
tbl11[2] = v65
tbl11[3] = v66
tbl11[4] = v67
tbl11[5] = v68
tbl11[6] = v69
tbl11[7] = v70
tbl11[8] = v71
tbl11[9] = v72
tbl11[10] = v73
local v74 = v4[fn2("\182", 22515979440617)]
local v75 = v4[fn2("", 32252967449941)]
Color3[v4[fn2("\192\201\224", 3225618877372)]](0, 1, 0)
local v76 = v4[fn2("\4z{\218[÷\210tq\242\179S\229\222ϬZ\11\253\158\184bl5\2\2182\177\21", 33312782973232)]
local v77 = v4[fn2("=߸", 19458943174346)]
local str2 = v4[fn2("P", 27573457773647)] .. tbl5[v4[fn2("\231\25\127\3", 26445994450997)]] .. v4[fn2("7\254\250", 33208626837711)]
local tbl12 = {}
local v78 = v4[fn2("\132\163J\224\250\147B", 12385989930255)]
local v79 = v4[fn2("\249\8R\193\156\216\229\249d\221\25\147\245\179\253\131", 30058172181849)]
local v80 = v4[fn2("\u{605}\210\255SB҆O~\165\5\223pא", 21930772287432)]
local v81 = v4[fn2("\149YLA\23S\141%|\208(w", 21790107815749)]
local v82 = v4[fn2("\142\24ύO\247\176\128", 29239955941983)]
local v83 = v4[fn2("3\11\28o\229\192\145\165\226", 27095628079762)]
local v84 = v4[fn2("+\171)\232\18\161\223\200\16\229\245", 7395085621991)]
local v85 = v4[fn2("\191`0", 23861419005646)]
local v86 = v4[fn2("\27\6\0\247v", 25657843899735)]
local v87 = v4[fn2("0\140u+\150\167v\195/\4\212l\177\211", 8845755097134)]
local v88 = v4[fn2("\173gf\167", 1311078778053)]
local v89 = v4[fn2("\12\204\224", 34733386759771)]
local v90 = table[v4[fn2("\136p\162\208", 21840575221620)]]
local v91 = v4[fn2("\21\22\241\15\223", 19457869399753)]
local v92 = v4[fn2("\174\204X^\237", 31989892674656)]
local v93 = v4[fn2("\23L3\154\211\21\245\214\250\143", 32582616249992)]
local v94 = v4[fn2("\155\191\234", 17097712844339)]
tbl12[1] = v15
tbl12[2] = v78
tbl12[3] = v79
tbl12[4] = v80
tbl12[5] = v81
tbl12[6] = v82
tbl12[7] = v83
tbl12[8] = v84
tbl12[9] = v34
tbl12[10] = v85
tbl12[11] = v86
tbl12[12] = v87
tbl12[13] = v88
tbl12[14] = v89
tbl12[15] = 3
tbl12[16] = v90
tbl12[17] = v91
tbl12[18] = v92
tbl12[19] = v93
tbl12[20] = v94
tbl12[21] = v22
tbl12[22] = 0.1
tbl12[23] = 0.05
tbl12[24] = v16
v11(v62)
error("devirt: value <luasym.LuaFunc object at 0x000001E910E98B20> in an expression (at 4:4612)")
