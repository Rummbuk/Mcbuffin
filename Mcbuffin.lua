-- Mcbuffin.lua
-- Creator of Mcbuffin: Monkeyman618 March 23, 2019-Present
-- Last Modified by: Monkeyman618 June 8, 2024
-- Version: 3.0.0

-- Includes
require 'mq'
require 'spell_routines'
require 'MQ2Cast_Spell_Routines'

-- Defines
local CHATMETHOD = "/bc"
local CHATMETHOD1 = "/echo"
local CHATMETHOD2 = "/t"
local ACCOUNTCHAT = "/say"
local PORTCHAT = "/say"
local ADVERTISECHAT = "/say"
local DEBUGCHAT = "/echo [DEBUG]"

-- Events Resetting Buffers
mq.event("Resetbuffers", "#1# says, in #*#, 'toys'")
mq.event("ResetBuffers", "#1# says, 'ResetBuffers, |${Me.Name}|'")

-- Events
mq.event("Hail", "#1# says, 'Hail, |${Me.Name}|'")
mq.event("Hail", "#1# says, in #2#, 'Hail, |${Me.Name}|'")

-- Mass Group Buff Events
mq.event("Mgbuff", "#1# says, in #*#, 'Mgbuff'")
mq.event("Mgbuff", "#1# says, 'Mgbuff'")
mq.event("Mgbuff", "#1# tells, in #*#, 'Mgbuff'")
mq.event("Mgbuff", "#1# tells, 'Mgbuff'")
mq.event("Mgbuff", "#1# Out Of Character, in #*#, 'Mgbuff'")
mq.event("Mgbuff", "#1# Out Of Character, 'Mgbuff'")
mq.event("Mgbuff", "#1# Guild, in #*#, 'Mgbuff'")
mq.event("Mgbuff", "#1# Guild, 'Mgbuff'")
mq.event("Mgbuff", "#1# Shouts, in #*#, 'Mgbuff'")
mq.event("Mgbuff", "#1# Shouts, 'Mgbuff'")

-- InvisMe Events
mq.event("InvisMe", "#1# says, in #*#, 'InvisMe'")
mq.event("InvisMe", "#1# says, 'InvisMe'")

-- IvuMe Events
mq.event("IvuMe", "#1# says, in #*#, 'IvuMe'")
mq.event("IvuMe", "#1# says, 'IvuMe'")

-- LeviMe Events
mq.event("LeviMe", "#1# says, in #*#, 'LeviMe'")
mq.event("LeviMe", "#1# says, 'LeviMe'")

-- Mage Events
mq.event("Toys", "#1# says, in #*#, 'toys'")
mq.event("Toys", "#1# says, 'toys'")
mq.event("ToysCustom", "#1# says, in #*#, 'toys #2#'")
mq.event("ToysCustom", "#1# says, 'toys #2#'")
mq.event("Other", "#1# says, in #*#, 'other'")
mq.event("Other", "#1# says, 'other'")
mq.event("Invis", "#1# says, in #*#, 'invis'")
mq.event("Invis", "#1# says, 'invis'")
mq.event("ModRod", "#1# says, in #*#, 'rod'")
mq.event("ModRod", "#1# says, 'rod'")
mq.event("DmgRod", "#1# says, in #*#, 'drod'")
mq.event("DmgRod", "#1# says, 'drod'")
mq.event("Arrows", "#1# says, in #*#, 'arrows'")
mq.event("Arrows", "#1# says, 'arrows'")

-- Rez Events
mq.event("RezMe", "#1# says, in #*#, 'rez'")
mq.event("RezMe", "#1# says, 'rez'")

-- Summon Events
mq.event("SummonMe", "#1# says, in #*#, 'summon'")
mq.event("SummonMe", "#1# says, 'summon'")

-- Port Events
mq.event("Ports", "#1# says, 'ports'")
mq.event("Ports", "#1# says, in #*#, 'ports'")
mq.event("BlightfireMoors", "#1# says, in #*#, 'moors'")
mq.event("BlightfireMoors", "#1# says, 'moors'")
mq.event("Nexus", "#1# says, in #*#, 'nexus'")
mq.event("Nexus", "#1# says, 'nexus'")
mq.event("Toxxulia", "#1# says, in #*#, 'tox'")
mq.event("Toxxulia", "#1# says, 'tox'")
mq.event("ButcherBlock", "#1# says, in #*#, 'butcher'")
mq.event("ButcherBlock", "#1# says, 'butcher'")
mq.event("Iceclad", "#1# says, in #*#, 'iceclad'")
mq.event("Iceclad", "#1# says, 'iceclad'")
mq.event("Karana", "#1# says, in #*#, 'karana'")
mq.event("Karana", "#1# says, 'karana'")
mq.event("Commonlands", "#1# says, in #*#, 'cl'")
mq.event("Commonlands", "#1# says, 'cl'")
mq.event("SurefallGlade", "#1# says, in #*#, 'sfg'")
mq.event("SurefallGlade", "#1# says, 'sfg'")
mq.event("StoneBrunt", "#1# says, in #*#, 'stoneBrunt'")
mq.event("StoneBrunt", "#1# says, 'stoneBrunt'")
mq.event("Grimling", "#1# says, in #*#, 'grimling'")
mq.event("Grimling", "#1# says, 'grimling'")
mq.event("Feerrott", "#1# says, in #*#, 'feerrott'")
mq.event("Feerrott", "#1# says, 'feerrott'")
mq.event("Steamfont", "#1# says, in #*#, 'steamfont'")
mq.event("Steamfont", "#1# says, 'steamfont'")
mq.event("Combines", "#1# says, in #*#, 'combines'")
mq.event("Combines", "#1# says, 'combines'")
mq.event("Ro", "#1# says, in #*#, 'ro'")
mq.event("Ro", "#1# says, 'ro'")
mq.event("Twilight", "#1# says, in #*#, 'twilight'")
mq.event("Twilight", "#1# says, 'twilight'")
mq.event("GreatDivide", "#1# says, in #*#, 'gd'")
mq.event("GreatDivide", "#1# says, 'gd'")
mq.event("WakeningLands", "#1# says, in #*#, 'wl'")
mq.event("WakeningLands", "#1# says, 'wl'")
mq.event("CobaltScar", "#1# says, in #*#, 'cs'")
mq.event("CobaltScar", "#1# says, 'cs'")
mq.event("Misty", "#1# says, in #*#, 'misty'")
mq.event("Misty", "#1# says, 'misty'")
mq.event("PoKnowledge", "#1# says, in #*#, 'pok'")
mq.event("PoKnowledge", "#1# says, 'pok'")
mq.event("LavaStorm", "#1# says, in #*#, 'lavastorm'")
mq.event("LavaStorm", "#1# says, 'lavastorm'")
mq.event("UnderShore", "#1# says, in #*#, 'undershore'")
mq.event("UnderShore", "#1# says, 'undershore'")
mq.event("Arcstone", "#1# says, in #*#, 'arcstone'")
mq.event("Arcstone", "#1# says, 'arcstone'")
mq.event("Natimbi", "#1# says, in #*#, 'natimbi'")
mq.event("Natimbi", "#1# says, 'natimbi'")
mq.event("Dawnshroud", "#1# says, in #*#, 'dawnshroud'")
mq.event("Dawnshroud", "#1# says, 'dawnshroud'")
mq.event("Barindu", "#1# says, in #*#, 'barindu'")
mq.event("Barindu", "#1# says, 'barindu'")
mq.event("Bloodfields", "#1# says, in #*#, 'bloodfields'")
mq.event("Bloodfields", "#1# says, 'bloodfields'")
mq.event("TheSteppes", "#1# says, in #*#, 'steppes'")
mq.event("TheSteppes", "#1# says, 'steppes'")
mq.event("BuriedSea", "#1# says, in #*#, 'buriedsea'")
mq.event("BuriedSea", "#1# says, 'buriedsea'")
mq.event("Slaughter", "#1# says, in #*#, 'slaughter'")
mq.event("Slaughter", "#1# says, 'slaughter'")
mq.event("Direwind", "#1# says, in #*#, 'direwind'")
mq.event("Direwind", "#1# says, 'direwind'")
mq.event("LopingPlains", "#1# says, in #*#, 'loping'")
mq.event("LopingPlains", "#1# says, 'loping'")
mq.event("PoTime", "#1# says, in #*#, 'time'")
mq.event("PoTime", "#1# says, 'time'")
mq.event("BrellsRest", "#1# says, in #*#, 'brells'")
mq.event("BrellsRest", "#1# says, 'brells'")
mq.event("Grounds", "#1# says, in #*#, 'grounds'")
mq.event("Grounds", "#1# says, 'grounds'")
mq.event("BeastsDomain", "#1# says, in #*#, 'beasts'")
mq.event("BeastsDomain", "#1# says, 'beasts'")
mq.event("PillarsOfAlra", "#1# says, in #*#, 'pillars'")
mq.event("PillarsOfAlra", "#1# says, 'pillars'")
mq.event("ShardsLanding", "#1# says, in #*#, 'shards'")
mq.event("ShardsLanding", "#1# says, 'shards'")
-- Additional Port Events
mq.event("Icefall", "#1# says, in #*#, 'icefall'")
mq.event("Icefall", "#1# says, 'icefall'")
mq.event("Katta", "#1# says, in #*#, 'katta'")
mq.event("Katta", "#1# says, 'katta'")
mq.event("Dragonscale", "#1# says, in #*#, 'dragonscale'")
mq.event("Dragonscale", "#1# says, 'dragonscale'")
mq.event("Sarith", "#1# says, in #*#, 'sarith'")
mq.event("Sarith", "#1# says, 'sarith'")
mq.event("Skyfire", "#1# says, in #*#, 'skyfire'")
mq.event("Skyfire", "#1# says, 'skyfire'")
mq.event("GDivide", "#1# says, in #*#, 'GDivide'")
mq.event("GDivide", "#1# says, 'gdivide'")
mq.event("Shadeweaver", "#1# says, in #*#, 'Shadeweaver'")
mq.event("Shadeweaver", "#1# says, 'Shadeweaver'")
mq.event("TovCS", "#1# says, in #*#, 'TovCS'")
mq.event("TovCS", "#1# says, 'TovCS'")
mq.event("Shadow", "#1# says, in #*#, 'Shadow'")
mq.event("Shadow", "#1# says, 'Shadow'")
mq.event("Laurion", "#1# says, in #*#, 'Laurion'")
mq.event("Laurion", "#1# says, 'Laurion'")

-- End of Events

-- Main Routine
function main()
    if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "ShowDebug") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "ShowDebug", "False")
    end

    local ShowDebug = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "ShowDebug")
    mq.call("Declares")

    if ShowDebug then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Main Entry")
    end

    if UseLowResourceMode then
        mq.call("LowerEQResources")
    end

    mq.echo("Starting Mcbuffin...")
    mq.echo("** Event starting in '3' **")
    mq.echo("1")
    mq.echo("2")
    mq.echo("3")
    mq.echo("** Event Started Mcbuffin **")

    mq.run_lua("lem")
    mq.run_lua("lem")

    mq.popup("ALL VARIABLES LOADED: Check Mq2 Window for Errors.")
    mq.popup("Mcbuffin 1.1.4 Loaded: Hope you enjoy. Check Mq2 Window for Errors.")

    if UseEQBC then
        mq.bccmd("connect", EQBCServerAddr, EQBCPort, EQBCPassword)
    end

    mq.echo("[MCB]++ Started Magic Genie Mcbuffin ++[MCB]")
    mq.echo("[MCB]++ Magic Genie McBuffin Is Ready For Buffin ++[MCB]")

    -- Chat Channel Notification
    mq.say("Blessings are upon you and your companions,")
    mq.pause(100)
    mq.roleplay()
    mq.emote("begins to Dance and around the Eternal Flame")
    mq.emote("feels a sense of magic flow in the air above and around you, like wind flowing through your hair on a windy day.")

    -- Main Loop
    while true do
        if mq.game_state == "CHARSELECT" then
            mq.end_macro()
        end

        if mq.cursor.id then
            mq.autoinventory()
        end

        if mq.me.pct_mana < MedAtPct then
            mq.call("Med")
        end

        if mq.window("TradeWnd").open then
            mq.call("Money")
        end

        if not mq.me.mount.id and UseHorse and mq.zone.type == 1 and mq.find_item(HorseItem).name ~= "NULL" then
            mq.call(CASTMODE, mq.find_item(HorseItem).name, "item")
        end

        if mq.me.standing and not mq.me.mount.id and (not UseHorse or (UseHorse and mq.find_item(HorseItem).name == "NULL")) then
            mq.sit()
        end

        mq.doevents()

        if mq.game_state == "CHARSELECT" then
            mq.end_macro()
        end
    end
end

main()
-- End Main Routine

-- Declares Subroutine
function declares()
    if ShowDebug then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares Entry")
    end

    -- Guild
    if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "Buff Guild Only") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "Buff Guild Only", "FALSE")
    end
    local BuffGuildOnly = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "Buff Guild Only")
    if ShowDebug then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - BuffGuildOnly: " .. tostring(BuffGuildOnly))
    end

    -- Debug
    if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "ShowDebug") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "ShowDebug", "TRUE")
    end
    local ShowDebug = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "ShowDebug")
    if ShowDebug then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - ShowDebug: " .. tostring(ShowDebug))
    end

    -- Use Low Resource Mode
    if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "UseLowResourceMode") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "UseLowResourceMode", "True")
    end
    local UseLowResourceMode = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "UseLowResourceMode")
    if ShowDebug then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - UseLowResourceMode: " .. tostring(UseLowResourceMode))
    end

    -- Toy Request Cap
    if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "Max Summon Requests") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "Max Summon Requests", "5")
    end
    local MaxRequests = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "Max Summon Requests")
    if ShowDebug then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - MaxRequests: " .. tostring(MaxRequests))
    end

    if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "Advertise") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "Advertise", "True")
    end
    local Advertise = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "Advertise")
    if ShowDebug then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - Advertise: " .. tostring(Advertise))
    end

    if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "Port Gem") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "Port Gem", "gem8")
    end
    local PortGem = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "General", "Port Gem")
    if ShowDebug then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - PortGem: " .. tostring(PortGem))
    end

    -- Accounts
    if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Use Account Mode") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Use Account Mode", "FALSE")
    end
    local AccountMode = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Use Account Mode")
    if ShowDebug then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - AccountMode: " .. tostring(AccountMode))
    end

    if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Use Friend Mode") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Use Friend Mode", "FALSE")
    end
    local FriendMode = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Use Friend Mode")
    if ShowDebug then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - FriendMode: " .. tostring(FriendMode))
    end
end
    if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Friends Buff Free") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Friends Buff Free", "FALSE")
    end
    local FriendFree = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Friends Buff Free")
    if ShowDebug then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - FriendFree: " .. tostring(FriendFree))
    end

    if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Use Guild Mode") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Use Guild Mode", "FALSE")
    end
    local GuildMode = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Use Guild Mode")
    if ShowDebug then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - GuildMode: " .. tostring(GuildMode))
    end

    if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Guild Buffs Free") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Guild Buffs Free", "TRUE")
    end
    local GuildFree = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Guild Buffs Free")
    if ShowDebug then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - GuildFree: " .. tostring(GuildFree))
    end

    if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Starting Balance") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Starting Balance", "5000")
    end
    local StartBalance = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Starting Balance")
    if ShowDebug then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - StartBalance: " .. tostring(StartBalance))
    end

    if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Buff Cost") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Buff Cost", "100")
    end
    local BuffCost = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Buff Cost")
    if ShowDebug then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - BuffCost: " .. tostring(BuffCost))
    end

    if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Summon Cost") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Summon Cost", "100")
    end
    local SummonCost = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Summon Cost")
    if ShowDebug then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - SummonCost: " .. tostring(SummonCost))
    end

    if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Port Cost") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Port Cost", "100")
    end
    local PortCost = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Port Cost")
    if ShowDebug then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - PortCost: " .. tostring(PortCost))
    end

    -- EQBC
    if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "EQBC", "Use EQBC") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "EQBC", "Use EQBC", "FALSE")
    end
    local UseEQBC2 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "EQBC", "Use EQBC")
    if ShowDebug then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - UseEQBC2: " .. tostring(UseEQBC2))
    end

    if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "EQBC", "Server") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "EQBC", "Server")
    end

end
if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Friends Buff Free") then
    mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Friends Buff Free", "FALSE")
end
local FriendFree = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Friends Buff Free")
if ShowDebug then
    mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - FriendFree: " .. tostring(FriendFree))
end

if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Use Guild Mode") then
    mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Use Guild Mode", "FALSE")
end
local GuildMode = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Use Guild Mode")
if ShowDebug then
    mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - GuildMode: " .. tostring(GuildMode))
end

if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Guild Buffs Free") then
    mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Guild Buffs Free", "TRUE")
end
local GuildFree = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Guild Buffs Free")
if ShowDebug then
    mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - GuildFree: " .. tostring(GuildFree))
end

if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Starting Balance") then
    mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Starting Balance", "5000")
end
local StartBalance = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Starting Balance")
if ShowDebug then
    mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - StartBalance: " .. tostring(StartBalance))
end

if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Buff Cost") then
    mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Buff Cost", "100")
end
local BuffCost = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Buff Cost")
if ShowDebug then
    mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - BuffCost: " .. tostring(BuffCost))
end

if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Summon Cost") then
    mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Summon Cost", "100")
end
local SummonCost = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Summon Cost")
if ShowDebug then
    mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - SummonCost: " .. tostring(SummonCost))
end

if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Port Cost") then
    mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Port Cost", "100")
end
local PortCost = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Account", "Port Cost")
if ShowDebug then
    mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - PortCost: " .. tostring(PortCost))
end

|-- EQBC
if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "EQBC", "Use EQBC") then
    mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "EQBC", "Use EQBC", "FALSE")
end
local UseEQBC2 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "EQBC", "Use EQBC")
if ShowDebug then
    mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - UseEQBC2: " .. tostring(UseEQBC2))
end

if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "EQBC", "Server") then
    mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "EQBC", "Server")
end
end
if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "EQBC", "Server") then
    mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "EQBC", "Server", "192.168.1.251")
end
local EQBC2ServerAddr = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "EQBC", "Server")
if ShowDebug then
    mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - EQBC2ServerAddr: " .. tostring(EQBC2ServerAddr))
end

if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "EQBC", "Port") then
    mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "EQBC", "Port", "2112")
end
local EQBCPort = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "EQBC", "Port")
if ShowDebug then
    mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - EQBCPort: " .. tostring(EQBCPort))
end

if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "EQBC", "Password") then
    mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "EQBC", "Password", "")
end
local EQBC2Password = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "EQBC", "Password")
if ShowDebug then
    mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - EQBC2Password: " .. tostring(EQBC2Password))
end

-- Guild
if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Mana", "Start Med") then
    mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Mana", "Start Med", "35")
end
local MedAtPct = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Mana", "Start Med")
if ShowDebug then
    mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - MedAtPct: " .. tostring(MedAtPct))
end

if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Mana", "Finish Med") then
    mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Mana", "Finish Med", "60")
end
local DoneMeddingPct = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Mana", "Finish Med")
if ShowDebug then
    mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - DoneMeddingPct: " .. tostring(DoneMeddingPct))
end

-- Items
if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Items", "Use Horse") then
    mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Items", "Use Horse", "FALSE")
end
local UseHorse = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Items", "Use Horse")
if ShowDebug then
    mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - UseHorse: " .. tostring(UseHorse))
end

if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Items", "Horse") then
    mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Items", "Horse", "Jungle Raptor Saddle")
end
local HorseItem = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Items", "Horse")
if ShowDebug then
    mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - HorseItem: " .. tostring(HorseItem))
end

-- Misc
if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "SpellSet", "LoadSpellSet") then
    mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "SpellSet", "LoadSpellSet", "TRUE")
end
local LoadSpellSet = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "SpellSet", "LoadSpellSet")
if ShowDebug then
    mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - LoadSpellSet: " .. tostring(LoadSpellSet))
end

if not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "SpellSet", "SpellSetName") then
    mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "SpellSet", "SpellSetName", "Mcbuffin")
end
local SpellSetName = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "SpellSet", "SpellSetName")
if ShowDebug then
    mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - SpellSetName: " .. tostring(SpellSetName))
end
|-----Enchanter
    -- Enchanter
    if mq.me.class.name == "Enchanter" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 Haste") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 Haste", "Swift Like the Wind|gem1")
    end
    local EncLowLvlBuff1 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 Haste")
    if ShowDebug and mq.me.class.name == "Enchanter" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - EncLowLvlBuff1: " .. tostring(EncLowLvlBuff1))
    end
    local EncLowLvlBuff1Gem = ""
    if mq.me.class.name == "Enchanter" and EncLowLvlBuff1:find("|") then
        EncLowLvlBuff1 = EncLowLvlBuff1:match("([^|]+)")
        EncLowLvlBuff1Gem = EncLowLvlBuff1:match("|([^|]+)")
    end

    if mq.me.class.name == "Enchanter" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-41 Clarity") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-41 Clarity", "Boon of the Clear Mind|gem2")
    end
    local EncLowLvlBuff2 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-41 Clarity")
    if ShowDebug and mq.me.class.name == "Enchanter" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - EncLowLvlBuff2: " .. tostring(EncLowLvlBuff2))
    end
    local EncLowLvlBuff2Gem = ""
    if mq.me.class.name == "Enchanter" and EncLowLvlBuff2:find("|") then
        EncLowLvlBuff2 = EncLowLvlBuff2:match("([^|]+)")
        EncLowLvlBuff2Gem = EncLowLvlBuff2:match("|([^|]+)")
    end

    if mq.me.class.name == "Enchanter" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "42-45 Clarity") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "42-45 Clarity", "Gift of Pure Thought|gem3")
    end
    local EncLowLvlBuff3 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "42-45 Clarity")
    if ShowDebug and mq.me.class.name == "Enchanter" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - EncLowLvlBuff3: " .. tostring(EncLowLvlBuff3))
    end
    local EncLowLvlBuff3Gem = ""
    if mq.me.class.name == "Enchanter" and EncLowLvlBuff3:find("|") then
        EncLowLvlBuff3 = EncLowLvlBuff3:match("([^|]+)")
        EncLowLvlBuff3Gem = EncLowLvlBuff3:match("|([^|]+)")
    end

    if mq.me.class.name == "Enchanter" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 Haste") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 Haste", "Speed of Vallon|gem4")
    end
    local EncMedLvlBuff4 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 Haste")
    if ShowDebug and mq.me.class.name == "Enchanter" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - EncMedLvlBuff4: " .. tostring(EncMedLvlBuff4))
    end
    local EncMedLvlBuff4Gem = ""
    if mq.me.class.name == "Enchanter" and EncMedLvlBuff4:find("|") then
        EncMedLvlBuff4 = EncMedLvlBuff4:match("([^|]+)")
        EncMedLvlBuff4Gem = EncMedLvlBuff4:match("|([^|]+)")
    end

    if mq.me.class.name == "Enchanter" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 Clarity") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 Clarity", "Koadic's Endless Intellect|gem10")
    end
    local EncMedLvlBuff10 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 Clarity")
    if ShowDebug and mq.me.class.name == "Enchanter" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - EncMedLvlBuff10: " .. tostring(EncMedLvlBuff10))
    end
    local EncMedLvlBuff10Gem = ""
    if mq.me.class.name == "Enchanter" and EncMedLvlBuff10:find("|") then
        EncMedLvlBuff10 = EncMedLvlBuff10:match("([^|]+)")
        EncMedLvlBuff10Gem = EncMedLvlBuff10:match("|([^|]+)")
    end
    if mq.me.class.name == "Enchanter" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Haste") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Haste", "Speed of Prokev|gem6")
    end
    local EncHighLvlBuff1 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Haste")
    if ShowDebug and mq.me.class.name == "Enchanter" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - EncHighLvlBuff1: " .. tostring(EncHighLvlBuff1))
    end
    local EncHighLvlBuff1Gem = ""
    if mq.me.class.name == "Enchanter" and EncHighLvlBuff1:find("|") then
        EncHighLvlBuff1 = EncHighLvlBuff1:match("([^|]+)")
        EncHighLvlBuff1Gem = EncHighLvlBuff1:match("|([^|]+)")
    end

    if mq.me.class.name == "Enchanter" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Clarity") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Clarity", "Seer's Cognizance|gem7")
    end
    local EncHighLvlBuff2 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Clarity")
    if ShowDebug and mq.me.class.name == "Enchanter" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - EncHighLvlBuff2: " .. tostring(EncHighLvlBuff2))
    end
    local EncHighLvlBuff2Gem = ""
    if mq.me.class.name == "Enchanter" and EncHighLvlBuff2:find("|") then
        EncHighLvlBuff2 = EncHighLvlBuff2:match("([^|]+)")
        EncHighLvlBuff2Gem = EncHighLvlBuff2:match("|([^|]+)")
    end

    if mq.me.class.name == "Enchanter" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Haste") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Haste", "Hastening of Milyex|gem6")
    end
    local EncHighLvlBuff3 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Haste")
    if ShowDebug and mq.me.class.name == "Enchanter" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - EncHighLvlBuff3: " .. tostring(EncHighLvlBuff3))
    end
    local EncHighLvlBuff3Gem = ""
    if mq.me.class.name == "Enchanter" and EncHighLvlBuff3:find("|") then
        EncHighLvlBuff3 = EncHighLvlBuff3:match("([^|]+)")
        EncHighLvlBuff3Gem = EncHighLvlBuff3:match("|([^|]+)")
    end

    if mq.me.class.name == "Enchanter" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Clarity") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Clarity", "Voice of Perspicacity|gem7")
    end
    local EncHighLvlBuff4 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Clarity")
    if ShowDebug and mq.me.class.name == "Enchanter" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - EncHighLvlBuff4: " .. tostring(EncHighLvlBuff4))
    end
    local EncHighLvlBuff4Gem = ""
    if mq.me.class.name == "Enchanter" and EncHighLvlBuff4:find("|") then
        EncHighLvlBuff4 = EncHighLvlBuff4:match("([^|]+)")
        EncHighLvlBuff4Gem = EncHighLvlBuff4:match("|([^|]+)")
    end

    if mq.me.class.name == "Enchanter" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ Haste") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ Haste", "Speed of Margator|gem6")
    end
    local EncMaxLvlBuff1 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ Haste")
    if ShowDebug and mq.me.class.name == "Enchanter" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - EncMaxLvlBuff1: " .. tostring(EncMaxLvlBuff1))
    end
    local EncMaxLvlBuff1Gem = ""
    if mq.me.class.name == "Enchanter" and EncMaxLvlBuff1:find("|") then
        EncMaxLvlBuff1 = EncMaxLvlBuff1:match("([^|]+)")
        EncMaxLvlBuff1Gem = EncMaxLvlBuff1:match("|([^|]+)")
    end

    if mq.me.class.name == "Enchanter" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Clarity") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Clarity", "Seer's Cognizance|gem7")
    end
    local EncHighLvlBuff2 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Clarity")
    if ShowDebug and mq.me.class.name == "Enchanter" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - EncHighLvlBuff2: " .. tostring(EncHighLvlBuff2))
    end
    local EncHighLvlBuff2Gem = ""
    if mq.me.class.name == "Enchanter" and EncHighLvlBuff2:find("|") then
        EncHighLvlBuff2 = EncHighLvlBuff2:match("([^|]+)")
        EncHighLvlBuff2Gem = EncHighLvlBuff2:match("|([^|]+)")
    end

    if mq.me.class.name == "Enchanter" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Haste") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Haste", "Hastening of Milyex|gem6")
    end
    local EncHighLvlBuff3 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Haste")
    if ShowDebug and mq.me.class.name == "Enchanter" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - EncHighLvlBuff3: " .. tostring(EncHighLvlBuff3))
    end
    local EncHighLvlBuff3Gem = ""
    if mq.me.class.name == "Enchanter" and EncHighLvlBuff3:find("|") then
        EncHighLvlBuff3 = EncHighLvlBuff3:match("([^|]+)")
        EncHighLvlBuff3Gem = EncHighLvlBuff3:match("|([^|]+)")
    end

    if mq.me.class.name == "Enchanter" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Clarity") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Clarity", "Voice of Perspicacity|gem7")
    end
    local EncHighLvlBuff4 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Clarity")
    if ShowDebug and mq.me.class.name == "Enchanter" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - EncHighLvlBuff4: " .. tostring(EncHighLvlBuff4))
    end
    local EncHighLvlBuff4Gem = ""
    if mq.me.class.name == "Enchanter" and EncHighLvlBuff4:find("|") then
        EncHighLvlBuff4 = EncHighLvlBuff4:match("([^|]+)")
        EncHighLvlBuff4Gem = EncHighLvlBuff4:match("|([^|]+)")
    end

    if mq.me.class.name == "Enchanter" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ Haste") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ Haste", "Speed of Margator|gem6")
    end
    local EncMaxLvlBuff1 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ Haste")
    if ShowDebug and mq.me.class.name == "Enchanter" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - EncMaxLvlBuff1: " .. tostring(EncMaxLvlBuff1))
    end
    local EncMaxLvlBuff1Gem = ""
    if mq.me.class.name == "Enchanter" and EncMaxLvlBuff1:find("|") then
        EncMaxLvlBuff1 = EncMaxLvlBuff1:match("([^|]+)")
        EncMaxLvlBuff1Gem = EncMaxLvlBuff1:match("|([^|]+)")
    end

    if mq.me.class.name == "Enchanter" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ Clarity") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ Clarity", "Preordination|gem7")
    end
    local EncMaxLvlBuff2 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ Clarity")
    if ShowDebug and mq.me.class.name == "Enchanter" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - EncMaxLvlBuff2: " .. tostring(EncMaxLvlBuff2))
    end
    local EncMaxLvlBuff2Gem = ""
    if mq.me.class.name == "Enchanter" and EncMaxLvlBuff2:find("|") then
        EncMaxLvlBuff2 = EncMaxLvlBuff2:match("([^|]+)")
        EncMaxLvlBuff2Gem = EncMaxLvlBuff2:match("|([^|]+)")
    end

    if mq.me.class.name == "Enchanter" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "MGB 85+ Clarity") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "MGB 85+ Clarity", "Voice of Preordination|gem7")
    end
    local EnchanterHighLvlBuff14 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "MGB 85+ Clarity")
    if ShowDebug and mq.me.class.name == "Enchanter" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - EnchanterHighLvlBuff14: " .. tostring(EnchanterHighLvlBuff14))
    end
    local EnchanterHighLvlBuff14Gem = ""
    if mq.me.class.name == "Enchanter" and EnchanterHighLvlBuff14:find("|") then
        EnchanterHighLvlBuff14 = EnchanterHighLvlBuff14:match("([^|]+)")
        EnchanterHighLvlBuff14Gem = EnchanterHighLvlBuff14:match("|([^|]+)")
    end
|-----Magician
    -- Magician
    if mq.me.class.name == "Magician" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 DS") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 DS", "Shield of Lava|gem1")
    end
    local MageLowLvlBuff = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 DS")
    if ShowDebug and mq.me.class.name == "Magician" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - MageLowLvlBuff: " .. tostring(MageLowLvlBuff))
    end
    local MageLowLvlBuffGem = ""
    if mq.me.class.name == "Magician" and MageLowLvlBuff:find("|") then
        MageLowLvlBuff = MageLowLvlBuff:match("([^|]+)")
        MageLowLvlBuffGem = MageLowLvlBuff:match("|([^|]+)")
    end

    if mq.me.class.name == "Magician" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 DS") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 DS", "Flameshield of Ro|gem1")
    end
    local MageMedLvlBuff = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 DS")
    if ShowDebug and mq.me.class.name == "Magician" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - MageMedLvlBuff: " .. tostring(MageMedLvlBuff))
    end
    local MageMedLvlBuffGem = ""
    if mq.me.class.name == "Magician" and MageMedLvlBuff:find("|") then
        MageMedLvlBuff = MageMedLvlBuff:match("([^|]+)")
        MageMedLvlBuffGem = MageMedLvlBuff:match("|([^|]+)")
    end

    if mq.me.class.name == "Magician" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 DS") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 DS", "Flameweave Coat|gem1")
    end
    local MageHighLvlBuff = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 DS")
    if ShowDebug and mq.me.class.name == "Magician" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - MageHighLvlBuff: " .. tostring(MageHighLvlBuff))
    end
    local MageHighLvlBuffGem = ""
    if mq.me.class.name == "Magician" and MageHighLvlBuff:find("|") then
        MageHighLvlBuff = MageHighLvlBuff:match("([^|]+)")
        MageHighLvlBuffGem = MageHighLvlBuff:match("|([^|]+)")
    end

    if mq.me.class.name == "Magician" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84+ DS") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84+ DS", "Forgefire coat|gem1")
    end
    local MageHighLvl2Buff = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84+ DS")
    if ShowDebug and mq.me.class.name == "Magician" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - MageHighLvl2Buff: " .. tostring(MageHighLvl2Buff))
    end
    local MageHighLvl2BuffGem = ""
    if mq.me.class.name == "Magician" and MageHighLvl2Buff:find("|") then
        MageHighLvl2Buff = MageHighLvl2Buff:match("([^|]+)")
        MageHighLvl2BuffGem = MageHighLvl2Buff:match("|([^|]+)")
    end

    if mq.me.class.name == "Magician" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "MGB 85+ DS") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "MGB 85+ DS", "Circle of Forgefire Coat|gem13")
    end
    local MageHighLvl14Buff = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "MGB 85+ DS")
    if ShowDebug and mq.me.class.name == "Magician" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - MageHighLvl14Buff: " .. tostring(MageHighLvl14Buff))
    end
    local MageHighLvl14BuffGem = ""
    if mq.me.class.name == "Magician" and MageHighLvl14Buff:find("|") then
        MageHighLvl14Buff = MageHighLvl14Buff:match("([^|]+)")
        MageHighLvl14BuffGem = MageHighLvl14Buff:match("|([^|]+)")
    end

    if mq.me.class.name == "Magician" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ DS") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ DS", "Forgefire Coat|gem1")
    end
    local MageHighLvl3Buff = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ DS")
    if ShowDebug and mq.me.class.name == "Magician" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - MageHighLvl3Buff: " .. tostring(MageHighLvl3Buff))
    end
    local MageHighLvl3BuffGem = ""
    if mq.me.class.name == "Magician" and MageHighLvl3Buff:find("|") then
        MageHighLvl3Buff = MageHighLvl3Buff:match("([^|]+)")
        MageHighLvl3BuffGem = MageHighLvl3Buff:match("|([^|]+)")
    end

    if mq.me.class.name == "Magician" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "misc") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "misc", "Grant Visor of Shoen|gem4")
    end
    local MageSummon1 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "misc")
    if ShowDebug and mq.me.class.name == "Magician" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - MageSummon1: " .. tostring(MageSummon1))
    end
    local MageSummon1Gem = ""
    if mq.me.class.name == "Magician" and MageSummon1:find("|") then
        MageSummon1 = MageSummon1:match("([^|]+)")
        MageSummon1Gem = MageSummon1:match("|([^|]+)")
    end

    if mq.me.class.name == "Magician" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "Weapons") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "Weapons", "Grant Goliath's Armaments|gem5")
    end
    local MageSummon2 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "Weapons")
    if ShowDebug and mq.me.class.name == "Magician" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - MageSummon2: " .. tostring(MageSummon2))
    end
    local MageSummon2Gem = ""
    if mq.me.class.name == "Magician" and MageSummon2:find("|") then
        MageSummon2 = MageSummon2:match("([^|]+)")
        MageSummon2Gem = MageSummon2:match("|([^|]+)")
    end

    if mq.me.class.name == "Magician" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "Armor") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "Armor", "Grant The Alloy's Plate|gem6")
    end
    local MageSummon3 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "Armor")
    if ShowDebug and mq.me.class.name == "Magician" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - MageSummon3: " .. tostring(MageSummon3))
    end
    local MageSummon3Gem = ""
    if mq.me.class.name == "Magician" and MageSummon3:find("|") then
        MageSummon3 = MageSummon3:match("([^|]+)")
        MageSummon3Gem = MageSummon3:match("|([^|]+)")
    end

    if mq.me.class.name == "Magician" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "Mod Rod4") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "Mod Rod4", "Wand of Ethereal Transvergence|gem4")
    end
    local MageSummonModRod4 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "Mod Rod4")
    if ShowDebug and mq.me.class.name == "Magician" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - MageSummonModRod4: " .. tostring(MageSummonModRod4))
    end
    local MageSummonModRod4Gem = ""
    if mq.me.class.name == "Magician" and MageSummonModRod4:find("|") then
        MageSummonModRod4 = MageSummonModRod4:match("([^|]+)")
        MageSummonModRod4Gem = MageSummonModRod4:match("|([^|]+)")
    end

    if mq.me.class.name == "Magician" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "Dmg Rod") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "Dmg Rod", "Grant Frostrift Paradox|gem5")
    end
    local MageSummonDmgRod = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "Dmg Rod")
    if ShowDebug and mq.me.class.name == "Magician" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - MageSummonDmgRod: " .. tostring(MageSummonDmgRod))
    end
    local MageSummonDmgRodGem = ""
    if mq.me.class.name == "Magician" and MageSummonDmgRod:find("|") then
        MageSummonDmgRod = MageSummonDmgRod:match("([^|]+)")
        MageSummonDmgRodGem = MageSummonDmgRod:match("|([^|]+)")
    end
|-----Ranger
    -- Ranger
    if mq.me.class.name == "Ranger" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 HP") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 HP", "Strength of Nature|gem1")
    end
    local RangerLowLvlBuff1 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 HP")
    if ShowDebug and mq.me.class.name == "Ranger" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - RangerLowLvlBuff1: " .. tostring(RangerLowLvlBuff1))
    end
    local RangerLowLvlBuff1Gem = ""
    if mq.me.class.name == "Ranger" and RangerLowLvlBuff1:find("|") then
        RangerLowLvlBuff1 = RangerLowLvlBuff1:match("([^|]+)")
        RangerLowLvlBuff1Gem = RangerLowLvlBuff1:match("|([^|]+)")
    end

    if mq.me.class.name == "Ranger" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 DS") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 DS", "Call of Earth|gem2")
    end
    local RangerLowLvlBuff2 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 DS")
    if ShowDebug and mq.me.class.name == "Ranger" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - RangerLowLvlBuff2: " .. tostring(RangerLowLvlBuff2))
    end
    local RangerLowLvlBuff2Gem = ""
    if mq.me.class.name == "Ranger" and RangerLowLvlBuff2:find("|") then
        RangerLowLvlBuff2 = RangerLowLvlBuff2:match("([^|]+)")
        RangerLowLvlBuff2Gem = RangerLowLvlBuff2:match("|([^|]+)")
    end

    if mq.me.class.name == "Ranger" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 Attack") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 Attack", "Mark of the Predator|gem3")
    end
    local RangerLowLvlBuff3 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 Attack")
    if ShowDebug and mq.me.class.name == "Ranger" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - RangerLowLvlBuff3: " .. tostring(RangerLowLvlBuff3))
    end
    local RangerLowLvlBuff3Gem = ""
    if mq.me.class.name == "Ranger" and RangerLowLvlBuff3:find("|") then
        RangerLowLvlBuff3 = RangerLowLvlBuff3:match("([^|]+)")
        RangerLowLvlBuff3Gem = RangerLowLvlBuff3:match("|([^|]+)")
    end

    if mq.me.class.name == "Ranger" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 HP") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 HP", "Strength of Tunare|gem5")
    end
    local RangerMedLvlBuff1 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 HP")
    if ShowDebug and mq.me.class.name == "Ranger" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - RangerMedLvlBuff1: " .. tostring(RangerMedLvlBuff1))
    end
    local RangerMedLvlBuff1Gem = ""
    if mq.me.class.name == "Ranger" and RangerMedLvlBuff1:find("|") then
        RangerMedLvlBuff1 = RangerMedLvlBuff1:match("([^|]+)")
        RangerMedLvlBuff1Gem = RangerMedLvlBuff1:match("|([^|]+)")
    end

    if mq.me.class.name == "Ranger" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 DS") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 DS", "Call of the Rathe|gem6")
    end
    local RangerMedLvlBuff2 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 DS")
    if ShowDebug and mq.me.class.name == "Ranger" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - RangerMedLvlBuff2: " .. tostring(RangerMedLvlBuff2))
    end
    local RangerMedLvlBuff2Gem = ""
    if mq.me.class.name == "Ranger" and RangerMedLvlBuff2:find("|") then
        RangerMedLvlBuff2 = RangerMedLvlBuff2:match("([^|]+)")
        RangerMedLvlBuff2Gem = RangerMedLvlBuff2:match("|([^|]+)")
    end

    if mq.me.class.name == "Ranger" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 Attack") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 Attack", "Call of the Predator|gem7")
    end
    local RangerMedLvlBuff3 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 Attack")
    if ShowDebug and mq.me.class.name == "Ranger" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - RangerMedLvlBuff3: " .. tostring(RangerMedLvlBuff3))
    end
    local RangerMedLvlBuff3Gem = ""
    if mq.me.class.name == "Ranger" and RangerMedLvlBuff3:find("|") then
        RangerMedLvlBuff3 = RangerMedLvlBuff3:match("([^|]+)")
        RangerMedLvlBuff3Gem = RangerMedLvlBuff3:match("|([^|]+)")
    end

    if mq.me.class.name == "Ranger" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 HP") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 HP", "Shout of the Copsestalker|gem8")
    end
    local RangerHighLvlBuff1 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 HP")
    if ShowDebug and mq.me.class.name == "Ranger" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - RangerHighLvlBuff1: " .. tostring(RangerHighLvlBuff1))
    end
    local RangerHighLvlBuff1Gem = ""
    if mq.me.class.name == "Ranger" and RangerHighLvlBuff1:find("|") then
        RangerHighLvlBuff1 = RangerHighLvlBuff1:match("([^|]+)")
        RangerHighLvlBuff1Gem = RangerHighLvlBuff1:match("|([^|]+)")
    end

    if mq.me.class.name == "Ranger" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 DS") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 DS", "Cloak of Nettlespears|gem2")
    end
    local RangerHighLvlBuff2 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 DS")
    if ShowDebug and mq.me.class.name == "Ranger" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - RangerHighLvlBuff2: " .. tostring(RangerHighLvlBuff2))
    end
    local RangerHighLvlBuff2Gem = ""
    if mq.me.class.name == "Ranger" and RangerHighLvlBuff2:find("|") then
        RangerHighLvlBuff2 = RangerHighLvlBuff2:match("([^|]+)")
        RangerHighLvlBuff2Gem = RangerHighLvlBuff2:match("|([^|]+)")
    end

    if mq.me.class.name == "Ranger" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Attack") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Attack", "Bellow of the Predator|gem3")
    end
    local RangerHighLvlBuff3 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Attack")
    if ShowDebug and mq.me.class.name == "Ranger" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - RangerHighLvlBuff3: " .. tostring(RangerHighLvlBuff3))
    end
    local RangerHighLvlBuff3Gem = ""
    if mq.me.class.name == "Ranger" and RangerHighLvlBuff3:find("|") then
        RangerHighLvlBuff3 = RangerHighLvlBuff3:match("([^|]+)")
        RangerHighLvlBuff3Gem = RangerHighLvlBuff3:match("|([^|]+)")
    end

    if mq.me.class.name == "Ranger" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61+ Enrichment") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61+ Enrichment", "Arbor Stalker's Enrichment|gem4")
    end
    local RangerHighLvlBuff4 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61+ Enrichment")
    if ShowDebug and mq.me.class.name == "Ranger" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - RangerHighLvlBuff4: " .. tostring(RangerHighLvlBuff4))
    end
    local RangerHighLvlBuff4Gem = ""
    if mq.me.class.name == "Ranger" and RangerHighLvlBuff4:find("|") then
        RangerHighLvlBuff4 = RangerHighLvlBuff4:match("([^|]+)")
        RangerHighLvlBuff4Gem = RangerHighLvlBuff4:match("|([^|]+)")
    end

    if mq.me.class.name == "Ranger" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Combo") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Combo", "Shout of the Wildstalker|gem8")
    end
    local RangerHighLvlBuff5 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Combo")
    if ShowDebug and mq.me.class.name == "Ranger" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - RangerHighLvlBuff5: " .. tostring(RangerHighLvlBuff5))
    end
    local RangerHighLvlBuff5Gem = ""
    if mq.me.class.name == "Ranger" and RangerHighLvlBuff5:find("|") then
        RangerHighLvlBuff5 = RangerHighLvlBuff5:match("([^|]+)")
        RangerHighLvlBuff5Gem = RangerHighLvlBuff5:match("|([^|]+)")
    end

    if mq.me.class.name == "Ranger" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71+ DS") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71+ DS", "Cloak of Needlespikes|gem2")
    end
    local RangerHighLvlBuff6 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71+ DS")
    if ShowDebug and mq.me.class.name == "Ranger" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - RangerHighLvlBuff6: " .. tostring(RangerHighLvlBuff6))
    end
    local RangerHighLvlBuff6Gem = ""
    if mq.me.class.name == "Ranger" and RangerHighLvlBuff6:find("|") then
        RangerHighLvlBuff6 = RangerHighLvlBuff6:match("([^|]+)")
        RangerHighLvlBuff6Gem = RangerHighLvlBuff6:match("|([^|]+)")
    end

    if mq.me.class.name == "Ranger" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ Combo") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ Combo", "Shout of the Fernstalker|gem9")
    end
    local RangerHighLvlBuff7 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ Combo")
    if ShowDebug and mq.me.class.name == "Ranger" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - RangerHighLvlBuff7: " .. tostring(RangerHighLvlBuff7))
    end
    local RangerHighLvlBuff7Gem = ""
    if mq.me.class.name == "Ranger" and RangerHighLvlBuff7:find("|") then
        RangerHighLvlBuff7 = RangerHighLvlBuff7:match("([^|]+)")
        RangerHighLvlBuff7Gem = RangerHighLvlBuff7:match("|([^|]+)")
    end

    if mq.me.class.name == "Ranger" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Attack") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Attack", "Bellow of the Predator|gem3")
    end
    local RangerHighLvlBuff10 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Attack")
    if ShowDebug and mq.me.class.name == "Ranger" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - RangerHighLvlBuff10: " .. tostring(RangerHighLvlBuff10))
    end
    local RangerHighLvlBuff10Gem = ""
    if mq.me.class.name == "Ranger" and RangerHighLvlBuff10:find("|") then
        RangerHighLvlBuff10 = RangerHighLvlBuff10:match("([^|]+)")
        RangerHighLvlBuff10Gem = RangerHighLvlBuff10:match("|([^|]+)")
    end

    if mq.me.class.name == "Ranger" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ hp") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ hp", "strength of the Fernstalker|gem8")
    end
    local RangerHighLvlBuff8 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ hp")
    if ShowDebug and mq.me.class.name == "Ranger" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - RangerHighLvlBuff8: " .. tostring(RangerHighLvlBuff8))
    end
    local RangerHighLvlBuff8Gem = ""
    if mq.me.class.name == "Ranger" and RangerHighLvlBuff8:find("|") then
        RangerHighLvlBuff8 = RangerHighLvlBuff8:match("([^|]+)")
        RangerHighLvlBuff8Gem = RangerHighLvlBuff8:match("|([^|]+)")
    end

    if mq.me.class.name == "Ranger" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ attack") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ attack", "Shriek of the predator|gem6")
    end
    local RangerHighLvlBuff11 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ attack")
    if ShowDebug and mq.me.class.name == "Ranger" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - RangerHighLvlBuff11: " .. tostring(RangerHighLvlBuff11))
    end
    local RangerHighLvlBuff11Gem = ""
    if mq.me.class.name == "Ranger" and RangerHighLvlBuff11:find("|") then
        RangerHighLvlBuff11 = RangerHighLvlBuff11:match("([^|]+)")
        RangerHighLvlBuff11Gem = RangerHighLvlBuff11:match("|([^|]+)")
    end

    if mq.me.class.name == "Ranger" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 SoW") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 SoW", "Spirit of Wolf|gem4")
    end
    local RangerLowLvlBuff4 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 SoW")
    if ShowDebug and mq.me.class.name == "Ranger" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - RangerLowLvlBuff4: " .. tostring(RangerLowLvlBuff4))
    end
    local RangerLowLvlBuff4Gem = ""
    if mq.me.class.name == "Ranger" and RangerLowLvlBuff4:find("|") then
        RangerLowLvlBuff4 = RangerLowLvlBuff4:match("([^|]+)")
        RangerLowLvlBuff4Gem = RangerLowLvlBuff4:match("|([^|]+)")
    end

    if mq.me.class.name == "Ranger" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46+ SoW") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46+ SoW", "Spirit of Eagle|gem5")
    end
    local RangerHighLvlBuff12 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46+ SoW")
    if ShowDebug and mq.me.class.name == "Ranger" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - RangerHighLvlBuff12: " .. tostring(RangerHighLvlBuff12))
    end
    local RangerHighLvlBuff12Gem = ""
    if mq.me.class.name == "Ranger" and RangerHighLvlBuff12:find("|") then
        RangerHighLvlBuff12 = RangerHighLvlBuff12:match("([^|]+)")
        RangerHighLvlBuff12Gem = RangerHighLvlBuff12:match("|([^|]+)")
    end

    if mq.me.class.name == "Ranger" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "MGB 85+ Combo") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "MGB 85+ Combo", "Shout of the Fernstalker|gem9")
    end
    local RangerHighLvlBuff14 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "MGB 85+ Combo")
    if ShowDebug and mq.me.class.name == "Ranger" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - RangerHighLvlBuff14: " .. tostring(RangerHighLvlBuff14))
    end
    local RangerHighLvlBuff14Gem = ""
    if mq.me.class.name == "Ranger" and RangerHighLvlBuff14:find("|") then
        RangerHighLvlBuff14 = RangerHighLvlBuff14:match("([^|]+)")
        RangerHighLvlBuff14Gem = RangerHighLvlBuff14:match("|([^|]+)")
    end
|-----Shaman
    -- Shaman
    if mq.me.class.name == "Shaman" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 HP") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 HP", "Harnessing of Spirit|gem1")
    end
    local ShamanLowLvlBuff1 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 HP")
    if ShowDebug and mq.me.class.name == "Shaman" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - ShamanLowLvlBuff1: " .. tostring(ShamanLowLvlBuff1))
    end
    local ShamanLowLvlBuff1Gem = ""
    if mq.me.class.name == "Shaman" and ShamanLowLvlBuff1:find("|") then
        ShamanLowLvlBuff1 = ShamanLowLvlBuff1:match("([^|]+)")
        ShamanLowLvlBuff1Gem = ShamanLowLvlBuff1:match("|([^|]+)")
    end

    if mq.me.class.name == "Shaman" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 Regen") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 Regen", "Chloroplast|gem2")
    end
    local ShamanLowLvlBuff2 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 Regen")
    if ShowDebug and mq.me.class.name == "Shaman" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - ShamanLowLvlBuff2: " .. tostring(ShamanLowLvlBuff2))
    end
    local ShamanLowLvlBuff2Gem = ""
    if mq.me.class.name == "Shaman" and ShamanLowLvlBuff2:find("|") then
        ShamanLowLvlBuff2 = ShamanLowLvlBuff2:match("([^|]+)")
        ShamanLowLvlBuff2Gem = ShamanLowLvlBuff2:match("|([^|]+)")
    end

    if mq.me.class.name == "Shaman" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-110 Haste") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-110 Haste", "Talisman of Celerity|alt")
    end
    local ShamanLowLvlBuff4 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-110 Haste")
    if ShowDebug and mq.me.class.name == "Shaman" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - ShamanLowLvlBuff4: " .. tostring(ShamanLowLvlBuff4))
    end
    local ShamanLowLvlBuff4Gem = ""
    if mq.me.class.name == "Shaman" and ShamanLowLvlBuff4:find("|") then
        ShamanLowLvlBuff4 = ShamanLowLvlBuff4:match("([^|]+)")
        ShamanLowLvlBuff4Gem = ShamanLowLvlBuff4:match("|([^|]+)")
    end

    if mq.me.class.name == "Shaman" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 HP") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 HP", "Focus of Soul|gem4")
    end
    local ShamanMedLvlBuff1 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 HP")
    if ShowDebug and mq.me.class.name == "Shaman" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - ShamanMedLvlBuff1: " .. tostring(ShamanMedLvlBuff1))
    end
    local ShamanMedLvlBuff1Gem = ""
    if mq.me.class.name == "Shaman" and ShamanMedLvlBuff1:find("|") then
        ShamanMedLvlBuff1 = ShamanMedLvlBuff1:match("([^|]+)")
        ShamanMedLvlBuff1Gem = ShamanMedLvlBuff1:match("|([^|]+)")
    end

    if mq.me.class.name == "Shaman" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 Regen") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 Regen", "Replenishment|gem5")
    end
    local ShamanMedLvlBuff2 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 Regen")
    if ShowDebug and mq.me.class.name == "Shaman" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - ShamanMedLvlBuff2: " .. tostring(ShamanMedLvlBuff2))
    end
    local ShamanMedLvlBuff2Gem = ""
    if mq.me.class.name == "Shaman" and ShamanMedLvlBuff2:find("|") then
        ShamanMedLvlBuff2 = ShamanMedLvlBuff2:match("([^|]+)")
        ShamanMedLvlBuff2Gem = ShamanMedLvlBuff2:match("|([^|]+)")
    end

    if mq.me.class.name == "Shaman" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 HP") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 HP", "Unity of the Doomscale|gem6")
    end
    local ShamanHighLvlBuff1 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 HP")
    if ShowDebug and mq.me.class.name == "Shaman" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - ShamanHighLvlBuff1: " .. tostring(ShamanHighLvlBuff1))
    end
    local ShamanHighLvlBuff1Gem = ""
    if mq.me.class.name == "Shaman" and ShamanHighLvlBuff1:find("|") then
        ShamanHighLvlBuff1 = ShamanHighLvlBuff1:match("([^|]+)")
        ShamanHighLvlBuff1Gem = ShamanHighLvlBuff1:match("|([^|]+)")
    end

    if mq.me.class.name == "Shaman" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Regen") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Regen", "Spirit of the Faithful|gem7")
    end
    local ShamanHighLvlBuff2 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Regen")
    if ShowDebug and mq.me.class.name == "Shaman" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - ShamanHighLvlBuff2: " .. tostring(ShamanHighLvlBuff2))
    end
    local ShamanHighLvlBuff2Gem = ""
    if mq.me.class.name == "Shaman" and ShamanHighLvlBuff2:find("|") then
        ShamanHighLvlBuff2 = ShamanHighLvlBuff2:match("([^|]+)")
        ShamanHighLvlBuff2Gem = ShamanHighLvlBuff2:match("|([^|]+)")
    end

    if mq.me.class.name == "Shaman" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 HP") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 HP", "Unity of the Wulthan|gem9")
    end
    local ShamanHighLvlBuff4 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 HP")
    if ShowDebug and mq.me.class.name == "Shaman" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - ShamanHighLvlBuff4: " .. tostring(ShamanHighLvlBuff4))
    end
    local ShamanHighLvlBuff4Gem = ""
    if mq.me.class.name == "Shaman" and ShamanHighLvlBuff4:find("|") then
        ShamanHighLvlBuff4 = ShamanHighLvlBuff4:match("([^|]+)")
        ShamanHighLvlBuff4Gem = ShamanHighLvlBuff4:match("|([^|]+)")
    end

    if mq.me.class.name == "Shaman" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Regen") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Regen", "Spirit of the Tenacious|gem10")
    end
    local ShamanHighLvlBuff5 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Regen")
    if ShowDebug and mq.me.class.name == "Shaman" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - ShamanHighLvlBuff5: " .. tostring(ShamanHighLvlBuff5))
    end
    local ShamanHighLvlBuff5Gem = ""
    if mq.me.class.name == "Shaman" and ShamanHighLvlBuff5:find("|") then
        ShamanHighLvlBuff5 = ShamanHighLvlBuff5:match("([^|]+)")
        ShamanHighLvlBuff5Gem = ShamanHighLvlBuff5:match("|([^|]+)")
    end

    if mq.me.class.name == "Shaman" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ HP") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ HP", "Unity of the Heroic|gem9")
    end
    local ShamanHighLvlBuff6 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ HP")
    if ShowDebug and mq.me.class.name == "Shaman" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - ShamanHighLvlBuff6: " .. tostring(ShamanHighLvlBuff6))
    end
    local ShamanHighLvlBuff6Gem = ""
    if mq.me.class.name == "Shaman" and ShamanHighLvlBuff6:find("|") then
        ShamanHighLvlBuff6 = ShamanHighLvlBuff6:match("([^|]+)")
        ShamanHighLvlBuff6Gem = ShamanHighLvlBuff6:match("|([^|]+)")
    end

    if mq.me.class.name == "Shaman" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ Regen") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ Regen", "Unity of the Unforgettable|gem10")
    end
    local ShamanHighLvlBuff7 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ Regen")
    if ShowDebug and mq.me.class.name == "Shaman" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - ShamanHighLvlBuff7: " .. tostring(ShamanHighLvlBuff7))
    end
    local ShamanHighLvlBuff7Gem = ""
    if mq.me.class.name == "Shaman" and ShamanHighLvlBuff7:find("|") then
        ShamanHighLvlBuff7 = ShamanHighLvlBuff7:match("([^|]+)")
        ShamanHighLvlBuff7Gem = ShamanHighLvlBuff7:match("|([^|]+)")
    end

    if mq.me.class.name == "Shaman" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 SoW") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 SoW", "Spirit of Bih`Li|gem11")
    end
    local ShamanLowLvlBuff3 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 SoW")
    if ShowDebug and mq.me.class.name == "Shaman" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - ShamanLowLvlBuff3: " .. tostring(ShamanLowLvlBuff3))
    end
    local ShamanLowLvlBuff3Gem = ""
    if mq.me.class.name == "Shaman" and ShamanLowLvlBuff3:find("|") then
        ShamanLowLvlBuff3 = ShamanLowLvlBuff3:match("([^|]+)")
        ShamanLowLvlBuff3Gem = ShamanLowLvlBuff3:match("|([^|]+)")
    end

    if mq.me.class.name == "Shaman" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61+ SoW") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61+ SoW", "Spirit of Tala'Tak|gem12")
    end
    local ShamanHighLvlBuff3 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61+ SoW")
    if ShowDebug and mq.me.class.name == "Shaman" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - ShamanHighLvlBuff3: " .. tostring(ShamanHighLvlBuff3))
    end
    local ShamanHighLvlBuff3Gem = ""
    if mq.me.class.name == "Shaman" and ShamanHighLvlBuff3:find("|") then
        ShamanHighLvlBuff3 = ShamanHighLvlBuff3:match("([^|]+)")
        ShamanHighLvlBuff3Gem = ShamanHighLvlBuff3:match("|([^|]+)")
    end

    if mq.me.class.name == "Shaman" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "MGB 85+ HP") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "MGB 85+ HP", "Talisman of the Heroic|gem9")
    end
    local ShamanHighLvlBuff14 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "MGB 85+ HP")
    if ShowDebug and mq.me.class.name == "Shaman" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - ShamanHighLvlBuff14: " .. tostring(ShamanHighLvlBuff14))
    end
    local ShamanHighLvlBuff14Gem = ""
    if mq.me.class.name == "Shaman" and ShamanHighLvlBuff14:find("|") then
        ShamanHighLvlBuff14 = ShamanHighLvlBuff14:match("([^|]+)")
        ShamanHighLvlBuff14Gem = ShamanHighLvlBuff14:match("|([^|]+)")
    end
|-----Beastlord
    -- Beastlord
    if mq.me.class.name == "Beastlord" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 HP") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 HP", "Spiritual Light|gem1")
    end
    local BeastLowLvlBuff1 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 HP")
    if ShowDebug and mq.me.class.name == "Beastlord" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - BeastLowLvlBuff1: " .. tostring(BeastLowLvlBuff1))
    end
    local BeastLowLvlBuff1Gem = ""
    if mq.me.class.name == "Beastlord" and BeastLowLvlBuff1:find("|") then
        BeastLowLvlBuff1 = BeastLowLvlBuff1:match("([^|]+)")
        BeastLowLvlBuff1Gem = BeastLowLvlBuff1:match("|([^|]+)")
    end

    if mq.me.class.name == "Beastlord" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 Attack") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 Attack", "Spiritual Brawn|gem2")
    end
    local BeastLowLvlBuff2 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "1-45 Attack")
    if ShowDebug and mq.me.class.name == "Beastlord" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - BeastLowLvlBuff2: " .. tostring(BeastLowLvlBuff2))
    end
    local BeastLowLvlBuff2Gem = ""
    if mq.me.class.name == "Beastlord" and BeastLowLvlBuff2:find("|") then
        BeastLowLvlBuff2 = BeastLowLvlBuff2:match("([^|]+)")
        BeastLowLvlBuff2Gem = BeastLowLvlBuff2:match("|([^|]+)")
    end

    if mq.me.class.name == "Beastlord" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 HP") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 HP", "Talisman of Kragg|gem4")
    end
    local BeastMedLvlBuff1 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 HP")
    if ShowDebug and mq.me.class.name == "Beastlord" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - BeastMedLvlBuff1: " .. tostring(BeastMedLvlBuff1))
    end
    local BeastMedLvlBuff1Gem = ""
    if mq.me.class.name == "Beastlord" and BeastMedLvlBuff1:find("|") then
        BeastMedLvlBuff1 = BeastMedLvlBuff1:match("([^|]+)")
        BeastMedLvlBuff1Gem = BeastMedLvlBuff1:match("|([^|]+)")
    end

    if mq.me.class.name == "Beastlord" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 Attack") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 Attack", "Spiritual Strength|gem5")
    end
    local BeastMedLvlBuff2 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "46-60 Attack")
    if ShowDebug and mq.me.class.name == "Beastlord" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - BeastMedLvlBuff2: " .. tostring(BeastMedLvlBuff2))
    end
    local BeastMedLvlBuff2Gem = ""
    if mq.me.class.name == "Beastlord" and BeastMedLvlBuff2:find("|") then
        BeastMedLvlBuff2 = BeastMedLvlBuff2:match("([^|]+)")
        BeastMedLvlBuff2Gem = BeastMedLvlBuff2:match("|([^|]+)")
    end

    if mq.me.class.name == "Beastlord" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Unity Buff") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Unity Buff", "Stormblood's Unity|gem7")
    end
    local BeastHighLvlBuff1 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 Unity Buff")
    if ShowDebug and mq.me.class.name == "Beastlord" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - BeastHighLvlBuff1: " .. tostring(BeastHighLvlBuff1))
    end
    local BeastHighLvlBuff1Gem = ""
    if mq.me.class.name == "Beastlord" and BeastHighLvlBuff1:find("|") then
        BeastHighLvlBuff1 = BeastHighLvlBuff1:match("([^|]+)")
        BeastHighLvlBuff1Gem = BeastHighLvlBuff1:match("|([^|]+)")
    end

    if mq.me.class.name == "Beastlord" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 HP Buff") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 HP Buff", "Focus of Emiq|gem10")
    end
    local BeastHighLvlBuff2 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "61-70 HP Buff")
    if ShowDebug and mq.me.class.name == "Beastlord" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - BeastHighLvlBuff2: " .. tostring(BeastHighLvlBuff2))
    end
    local BeastHighLvlBuff2Gem = ""
    if mq.me.class.name == "Beastlord" and BeastHighLvlBuff2:find("|") then
        BeastHighLvlBuff2 = BeastHighLvlBuff2:match("([^|]+)")
        BeastHighLvlBuff2Gem = BeastHighLvlBuff2:match("|([^|]+)")
    end

    if mq.me.class.name == "Beastlord" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Unity") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Unity", "Feralist's Unity|gem7")
    end
    local BeastHighLvlBuff3 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 Unity")
    if ShowDebug and mq.me.class.name == "Beastlord" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - BeastHighLvlBuff3: " .. tostring(BeastHighLvlBuff3))
    end
    local BeastHighLvlBuff3Gem = ""
    if mq.me.class.name == "Beastlord" and BeastHighLvlBuff3:find("|") then
        BeastHighLvlBuff3 = BeastHighLvlBuff3:match("([^|]+)")
        BeastHighLvlBuff3Gem = BeastHighLvlBuff3:match("|([^|]+)")
    end

    if mq.me.class.name == "Beastlord" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 HP Buff") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 HP Buff", "Focus of Artikla|gem10")
    end
    local BeastHighLvlBuff4 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "71-84 HP Buff")
    if ShowDebug and mq.me.class.name == "Beastlord" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - BeastHighLvlBuff4: " .. tostring(BeastHighLvlBuff4))
    end
    local BeastHighLvlBuff4Gem = ""
    if mq.me.class.name == "Beastlord" and BeastHighLvlBuff4:find("|") then
        BeastHighLvlBuff4 = BeastHighLvlBuff4:match("([^|]+)")
        BeastHighLvlBuff4Gem = BeastHighLvlBuff4:match("|([^|]+)")
    end

    if mq.me.class.name == "Beastlord" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ Unity") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ Unity", "Wildfang's Unity|gem7")
    end
    local BeastHighLvlBuff6 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ Unity")
    if ShowDebug and mq.me.class.name == "Beastlord" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - BeastHighLvlBuff6: " .. tostring(BeastHighLvlBuff6))
    end
    local BeastHighLvlBuff6Gem = ""
    if mq.me.class.name == "Beastlord" and BeastHighLvlBuff6:find("|") then
        BeastHighLvlBuff6 = BeastHighLvlBuff6:match("([^|]+)")
        BeastHighLvlBuff6Gem = BeastHighLvlBuff6:match("|([^|]+)")
    end

    if mq.me.class.name == "Beastlord" and not mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ HP Buff") then
        mq.call("SetIni", "Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ HP Buff", "Focus of Skull Crusher|gem10")
    end
    local BeastHighLvlBuff7 = mq.ini("Mcbuffin_" .. mq.server .. "_" .. mq.me.clean_name .. ".ini", "Spells", "85+ HP Buff")
    if ShowDebug and mq.me.class.name == "Beastlord" then
        mq.echo("[DEBUG] [" .. mq.macro.name .. " @ " .. mq.macro.cur_line .. "] ---> Sub Declares - BeastHighLvlBuff7: " .. tostring(BeastHighLvlBuff7))
    end
    local BeastHighLvlBuff7Gem = ""
    if mq.me.class.name == "Beastlord" and BeastHighLvlBuff7:find("|") then
        BeastHighLvlBuff7 = BeastHighLvlBuff7:match("([^|]+)")
        BeastHighLvlBuff7Gem = BeastHighLvlBuff7:match("|([^|]+)")
    end


    if mq.TLO.Me.Class.Name() == "Beastlord" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61+ Fero"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "61+ Fero" "Merciless Ferocity|gem9"')
    end
    
    local BeastHighLvlBuff5 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61+ Fero")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Beastlord" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - BeastHighLvlBuff5: ' .. tostring(BeastHighLvlBuff5))
    end
    
    local BeastHighLvlBuff5Gem = ""
    if mq.TLO.Me.Class.Name() == "Beastlord" and BeastHighLvlBuff5:find("|") then
        BeastHighLvlBuff5 = BeastHighLvlBuff5:match("([^|]+)")
        BeastHighLvlBuff5Gem = BeastHighLvlBuff5:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Beastlord" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "1-45 SoW"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "1-45 SoW" "Spirit of Wolf|gem3"')
    end
    
    local BeastLowLvlBuff3 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "1-45 SoW")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Beastlord" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - BeastLowLvlBuff3: ' .. tostring(BeastLowLvlBuff3))
    end
    
    local BeastLowLvlBuff3Gem = ""
    if mq.TLO.Me.Class.Name() == "Beastlord" and BeastLowLvlBuff3:find("|") then
        BeastLowLvlBuff3 = BeastLowLvlBuff3:match("([^|]+)")
        BeastLowLvlBuff3Gem = BeastLowLvlBuff3:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Beastlord" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "46+ SoW"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "46+ SoW" "Spirit of Tala\'Tak|gem6"')
    end
    
    local BeastMedLvlBuff3 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "46+ SoW")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Beastlord" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - BeastMedLvlBuff3: ' .. tostring(BeastMedLvlBuff3))
    end
    
    local BeastMedLvlBuff3Gem = ""
    if mq.TLO.Me.Class.Name() == "Beastlord" and BeastMedLvlBuff3:find("|") then
        BeastMedLvlBuff3 = BeastMedLvlBuff3:match("([^|]+)")
        BeastMedLvlBuff3Gem = BeastMedLvlBuff3:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Beastlord" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "MGB 85+ Unity"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "MGB 85+ Unity" "Wildfang\'s Unity|gem7"')
    end
    
    local BeastlordHighLvlBuff14 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "MGB 85+ Unity")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Beastlord" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - BeastlordHighLvlBuff14: ' .. tostring(BeastlordHighLvlBuff14))
    end
    
    local BeastlordHighLvlBuff14Gem = ""
    if mq.TLO.Me.Class.Name() == "Beastlord" and BeastlordHighLvlBuff14:find("|") then
        BeastlordHighLvlBuff14 = BeastlordHighLvlBuff14:match("([^|]+)")
        BeastlordHighLvlBuff14Gem = BeastlordHighLvlBuff14:match("|([^|]+)")
    end
|-----Cleric
    -- Cleric
    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "Rez"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "Rez" "Reviviscence|gem8"')
    end
    
    local ClericRez = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "Rez")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Cleric" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - ClericRez: ' .. tostring(ClericRez))
    end

    local ClericRezGem = ""
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericRez:find("|") then
        ClericRez = ClericRez:match("([^|]+)")
        ClericRezGem = ClericRez:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "1-45 HP"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "1-45 HP" "Temperance|gem1"')
    end
    
    local ClericLowLvlBuff1 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "1-45 HP")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Cleric" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - ClericLowLvlBuff1: ' .. tostring(ClericLowLvlBuff1))
    end
    
    local ClericLowLvlBuff1Gem = ""
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericLowLvlBuff1:find("|") then
        ClericLowLvlBuff1 = ClericLowLvlBuff1:match("([^|]+)")
        ClericLowLvlBuff1Gem = ClericLowLvlBuff1:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "1-45 Haste"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "1-45 Haste" "Blessing of Faith|gem2"')
    end
    
    local ClericLowLvlBuff2 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "1-45 Haste")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Cleric" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - ClericLowLvlBuff2: ' .. tostring(ClericLowLvlBuff2))
    end
    
    local ClericLowLvlBuff2Gem = ""
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericLowLvlBuff2:find("|") then
        ClericLowLvlBuff2 = ClericLowLvlBuff2:match("([^|]+)")
        ClericLowLvlBuff2Gem = ClericLowLvlBuff2:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "1-45 Guard"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "1-45 Guard" "Guard of Vie|gem3"')
    end
    
    local ClericLowLvlBuff3 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "1-45 Guard")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Cleric" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - ClericLowLvlBuff3: ' .. tostring(ClericLowLvlBuff3))
    end
    
    local ClericLowLvlBuff3Gem = ""
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericLowLvlBuff3:find("|") then
        ClericLowLvlBuff3 = ClericLowLvlBuff3:match("([^|]+)")
        ClericLowLvlBuff3Gem = ClericLowLvlBuff3:match("|([^|]+)")
    end

    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "46-60 HP"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "46-60 HP" "Aegolism|gem4"')
    end
    
    local ClericMedLvlBuff1 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "46-60 HP")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Cleric" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - ClericMedLvlBuff1: ' .. tostring(ClericMedLvlBuff1))
    end
    
    local ClericMedLvlBuff1Gem = ""
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericMedLvlBuff1:find("|") then
        ClericMedLvlBuff1 = ClericMedLvlBuff1:match("([^|]+)")
        ClericMedLvlBuff1Gem = ClericMedLvlBuff1:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "46-60 Haste"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "46-60 Haste" "Blessing of Reverance|gem5"')
    end
    
    local ClericMedLvlBuff2 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "46-60 Haste")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Cleric" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - ClericMedLvlBuff2: ' .. tostring(ClericMedLvlBuff2))
    end
    
    local ClericMedLvlBuff2Gem = ""
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericMedLvlBuff2:find("|") then
        ClericMedLvlBuff2 = ClericMedLvlBuff2:match("([^|]+)")
        ClericMedLvlBuff2Gem = ClericMedLvlBuff2:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "46-60 Guard"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "46-60 Guard" "Protection of Vie|gem6"')
    end
    
    local ClericMedLvlBuff3 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "46-60 Guard")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Cleric" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - ClericMedLvlBuff3: ' .. tostring(ClericMedLvlBuff3))
    end
    
    local ClericMedLvlBuff3Gem = ""
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericMedLvlBuff3:find("|") then
        ClericMedLvlBuff3 = ClericMedLvlBuff3:match("([^|]+)")
        ClericMedLvlBuff3Gem = ClericMedLvlBuff3:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61-70 HP"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "61-70 HP" "Virtue|gem7"')
    end
    
    local ClericMidHighLvlBuff1 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61-70 HP")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Cleric" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - ClericMidHighLvlBuff1: ' .. tostring(ClericMidHighLvlBuff1))
    end
    
    local ClericMidHighLvlBuff1Gem = ""
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericMidHighLvlBuff1:find("|") then
        ClericMidHighLvlBuff1 = ClericMidHighLvlBuff1:match("([^|]+)")
        ClericMidHighLvlBuff1Gem = ClericMidHighLvlBuff1:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61-70 Haste"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "61-70 Haste" "Aura of Reverance|gem5"')
    end
    
    local ClericMidHighLvlBuff2 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61-70 Haste")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Cleric" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - ClericMidHighLvlBuff2: ' .. tostring(ClericMidHighLvlBuff2))
    end
    
    local ClericMidHighLvlBuff2Gem = ""
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericMidHighLvlBuff2:find("|") then
        ClericMidHighLvlBuff2 = ClericMidHighLvlBuff2:match("([^|]+)")
        ClericMidHighLvlBuff2Gem = ClericMidHighLvlBuff2:match("|([^|]+)")
    end

    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61-70 Guard"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "61-70 Guard" "Bulwark of Vie|gem8"')
    end
    
    local ClericMidHighLvlBuff3 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61-70 Guard")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Cleric" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - ClericMidHighLvlBuff3: ' .. tostring(ClericMidHighLvlBuff3))
    end
    
    local ClericMidHighLvlBuff3Gem = ""
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericMidHighLvlBuff3:find("|") then
        ClericMidHighLvlBuff3 = ClericMidHighLvlBuff3:match("([^|]+)")
        ClericMidHighLvlBuff3Gem = ClericMidHighLvlBuff3:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61+ Purity"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "61+ Purity" "Shared Purity|gem4"')
    end
    
    local ClericHighLvlBuff4 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61+ Purity")
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericHighLvlBuff4:find("|") then
        ClericHighLvlBuff4 = ClericHighLvlBuff4:match("([^|]+)")
        ClericHighLvlBuff4Gem = ClericHighLvlBuff4:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "71-84 HP"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "71-84 HP" "Unified Assurance|gem9"')
    end
    
    local ClericHighLvlBuff1 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "71-84 HP")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Cleric" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - ClericHighLvlBuff1: ' .. tostring(ClericHighLvlBuff1))
    end
    
    local ClericHighLvlBuff1Gem = ""
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericHighLvlBuff1:find("|") then
        ClericHighLvlBuff1 = ClericHighLvlBuff1:match("([^|]+)")
        ClericHighLvlBuff1Gem = ClericHighLvlBuff1:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "71-84 Haste"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "71-84 Haste" "Blessing of Loyalty|gem4"')
    end
    
    local ClericHighLvlBuff2 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "71-84 Haste")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Cleric" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - ClericHighLvlBuff2: ' .. tostring(ClericHighLvlBuff2))
    end
    
    local ClericHighLvlBuff2Gem = ""
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericHighLvlBuff2:find("|") then
        ClericHighLvlBuff2 = ClericHighLvlBuff2:match("([^|]+)")
        ClericHighLvlBuff2Gem = ClericHighLvlBuff2:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "71-84 Guard"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "71-84 Guard" "Shield of Vie|gem4"')
    end
    
    local ClericHighLvlBuff3 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "71-84 Guard")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Cleric" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - ClericHighLvlBuff3: ' .. tostring(ClericHighLvlBuff3))
    end
    
    local ClericHighLvlBuff3Gem = ""
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericHighLvlBuff3:find("|") then
        ClericHighLvlBuff3 = ClericHighLvlBuff3:match("([^|]+)")
        ClericHighLvlBuff3Gem = ClericHighLvlBuff3:match("|([^|]+)")
    end

    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61-70 Guard"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "61-70 Guard" "Bulwark of Vie|gem8"')
    end
    
    local ClericMidHighLvlBuff3 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61-70 Guard")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Cleric" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - ClericMidHighLvlBuff3: ' .. tostring(ClericMidHighLvlBuff3))
    end
    
    local ClericMidHighLvlBuff3Gem = ""
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericMidHighLvlBuff3:find("|") then
        ClericMidHighLvlBuff3 = ClericMidHighLvlBuff3:match("([^|]+)")
        ClericMidHighLvlBuff3Gem = ClericMidHighLvlBuff3:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61+ Purity"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "61+ Purity" "Shared Purity|gem4"')
    end
    
    local ClericHighLvlBuff4 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61+ Purity")
    local ClericHighLvlBuff4Gem = ""
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericHighLvlBuff4:find("|") then
        ClericHighLvlBuff4 = ClericHighLvlBuff4:match("([^|]+)")
        ClericHighLvlBuff4Gem = ClericHighLvlBuff4:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "71-84 HP"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "71-84 HP" "Unified Assurance|gem9"')
    end
    
    local ClericHighLvlBuff1 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "71-84 HP")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Cleric" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - ClericHighLvlBuff1: ' .. tostring(ClericHighLvlBuff1))
    end
    
    local ClericHighLvlBuff1Gem = ""
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericHighLvlBuff1:find("|") then
        ClericHighLvlBuff1 = ClericHighLvlBuff1:match("([^|]+)")
        ClericHighLvlBuff1Gem = ClericHighLvlBuff1:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "71-84 Haste"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "71-84 Haste" "Blessing of Loyalty|gem4"')
    end
    
    local ClericHighLvlBuff2 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "71-84 Haste")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Cleric" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - ClericHighLvlBuff2: ' .. tostring(ClericHighLvlBuff2))
    end
    
    local ClericHighLvlBuff2Gem = ""
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericHighLvlBuff2:find("|") then
        ClericHighLvlBuff2 = ClericHighLvlBuff2:match("([^|]+)")
        ClericHighLvlBuff2Gem = ClericHighLvlBuff2:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "71-84 Guard"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "71-84 Guard" "Shield of Vie|gem4"')
    end
    
    local ClericHighLvlBuff3 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "71-84 Guard")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Cleric" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - ClericHighLvlBuff3: ' .. tostring(ClericHighLvlBuff3))
    end
    
    local ClericHighLvlBuff3Gem = ""
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericHighLvlBuff3:find("|") then
        ClericHighLvlBuff3 = ClericHighLvlBuff3:match("([^|]+)")
        ClericHighLvlBuff3Gem = ClericHighLvlBuff3:match("|([^|]+)")
    end

    if mq.TLO.Me.Class.Name() == "Cleric" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "MGB 85+ Symbol"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "MGB 85+ Symbol" "Unified Hand of Helmsbane|gem3"')
    end
    
    local ClericHighLvlBuff14 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "MGB 85+ Symbol")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Cleric" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - ClericHighLvlBuff14: ' .. tostring(ClericHighLvlBuff14))
    end
    
    local ClericHighLvlBuff14Gem = ""
    if mq.TLO.Me.Class.Name() == "Cleric" and ClericHighLvlBuff14:find("|") then
        ClericHighLvlBuff14 = ClericHighLvlBuff14:match("([^|]+)")
        ClericHighLvlBuff14Gem = ClericHighLvlBuff14:match("|([^|]+)")
    end

    if mq.TLO.Me.Class.Name() == "Druid" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "1-45 DS"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "1-45 DS" "Shield of Thorns|gem1"')
    end
|-----Druid
    -- Druid
    local DruidLowLvlBuff1 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "1-45 DS")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Druid" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - DruidLowLvlBuff1: ' .. tostring(DruidLowLvlBuff1))
    end
    
    local DruidLowLvlBuff1Gem = ""
    if mq.TLO.Me.Class.Name() == "Druid" and DruidLowLvlBuff1:find("|") then
        DruidLowLvlBuff1 = DruidLowLvlBuff1:match("([^|]+)")
        DruidLowLvlBuff1Gem = DruidLowLvlBuff1:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Druid" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "1-45 HP"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "1-45 HP" "Skin like Nature|gem2"')
    end
    
    local DruidLowLvlBuff2 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "1-45 HP")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Druid" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - DruidLowLvlBuff2: ' .. tostring(DruidLowLvlBuff2))
    end
    
    local DruidLowLvlBuff2Gem = ""
    if mq.TLO.Me.Class.Name() == "Druid" and DruidLowLvlBuff2:find("|") then
        DruidLowLvlBuff2 = DruidLowLvlBuff2:match("([^|]+)")
        DruidLowLvlBuff2Gem = DruidLowLvlBuff2:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Druid" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "46-60 DS"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "46-60 DS" "Shield of Bracken|gem4"')
    end
    
    local DruidMedLvlBuff1 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "46-60 DS")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Druid" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - DruidMedLvlBuff1: ' .. tostring(DruidMedLvlBuff1))
    end
    
    local DruidMedLvlBuff1Gem = ""
    if mq.TLO.Me.Class.Name() == "Druid" and DruidMedLvlBuff1:find("|") then
        DruidMedLvlBuff1 = DruidMedLvlBuff1:match("([^|]+)")
        DruidMedLvlBuff1Gem = DruidMedLvlBuff1:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Druid" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "46-60 HP"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "46-60 HP" "Protection of the Nine|gem5"')
    end
    
    local DruidMedLvlBuff2 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "46-60 HP")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Druid" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - DruidMedLvlBuff2: ' .. tostring(DruidMedLvlBuff2))
    end
    
    local DruidMedLvlBuff2Gem = ""
    if mq.TLO.Me.Class.Name() == "Druid" and DruidMedLvlBuff2:find("|") then
        DruidMedLvlBuff2 = DruidMedLvlBuff2:match("([^|]+)")
        DruidMedLvlBuff2Gem = DruidMedLvlBuff2:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Druid" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61-70 DS"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "61-70 DS" "Daggerspur Bulwark|gem6"')
    end
    
    local DruidHighLvlBuff1 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61-70 DS")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Druid" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - DruidHighLvlBuff1: ' .. tostring(DruidHighLvlBuff1))
    end
    
    local DruidHighLvlBuff1Gem = ""
    if mq.TLO.Me.Class.Name() == "Druid" and DruidHighLvlBuff1:find("|") then
        DruidHighLvlBuff1 = DruidHighLvlBuff1:match("([^|]+)")
        DruidHighLvlBuff1Gem = DruidHighLvlBuff1:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Druid" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61-70 HP"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "61-70 HP" "Shieldstone Skin|gem7"')
    end
    
    local DruidHighLvlBuff2 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61-70 HP")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Druid" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - DruidHighLvlBuff2: ' .. tostring(DruidHighLvlBuff2))
    end
    
    local DruidHighLvlBuff2Gem = ""
    if mq.TLO.Me.Class.Name() == "Druid" and DruidHighLvlBuff2:find("|") then
        DruidHighLvlBuff2 = DruidHighLvlBuff2:match("([^|]+)")
        DruidHighLvlBuff2Gem = DruidHighLvlBuff2:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Druid" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "71-84 DS"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "71-84 DS" "Daggerspike Bulwark|gem6"')
    end
    
    local DruidHighLvlBuff4 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "71-84 DS")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Druid" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - DruidHighLvlBuff4: ' .. tostring(DruidHighLvlBuff4))
    end
    
    local DruidHighLvlBuff4Gem = ""
    if mq.TLO.Me.Class.Name() == "Druid" and DruidHighLvlBuff4:find("|") then
        DruidHighLvlBuff4 = DruidHighLvlBuff4:match("([^|]+)")
        DruidHighLvlBuff4Gem = DruidHighLvlBuff4:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Druid" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "71-84 HP"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "71-84 HP" "Arcronite Skin|gem7"')
    end
    
    local DruidHighLvlBuff5 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "71-84 HP")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Druid" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - DruidHighLvlBuff5: ' .. tostring(DruidHighLvlBuff5))
    end
    
    local DruidHighLvlBuff5Gem = ""
    if mq.TLO.Me.Class.Name() == "Druid" and DruidHighLvlBuff5:find("|") then
        DruidHighLvlBuff5 = DruidHighLvlBuff5:match("([^|]+)")
        DruidHighLvlBuff5Gem = DruidHighLvlBuff5:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Druid" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "85+ DS"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "85+ DS" "Bramblespike Bulwark|gem6"')
    end
    
    local DruidHighLvlBuff6 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "85+ DS")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Druid" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - DruidHighLvlBuff6: ' .. tostring(DruidHighLvlBuff6))
    end
    
    local DruidHighLvlBuff6Gem = ""
    if mq.TLO.Me.Class.Name() == "Druid" and DruidHighLvlBuff6:find("|") then
        DruidHighLvlBuff6 = DruidHighLvlBuff6:match("([^|]+)")
        DruidHighLvlBuff6Gem = DruidHighLvlBuff6:match("|([^|]+)")
    end

    if mq.TLO.Me.Class.Name() == "Druid" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "85+ HP"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "85+ HP" "Emberquartz Skin|gem7"')
    end
    
    local DruidHighLvlBuff7 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "85+ HP")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Druid" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - DruidHighLvlBuff7: ' .. tostring(DruidHighLvlBuff7))
    end
    
    local DruidHighLvlBuff7Gem = ""
    if mq.TLO.Me.Class.Name() == "Druid" and DruidHighLvlBuff7:find("|") then
        DruidHighLvlBuff7 = DruidHighLvlBuff7:match("([^|]+)")
        DruidHighLvlBuff7Gem = DruidHighLvlBuff7:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Druid" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "1-45 SoW"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "1-45 SoW" "Spirit of Wolf|gem3"')
    end
    
    local DruidLowLvlBuff3 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "1-45 SoW")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Druid" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - DruidLowLvlBuff3: ' .. tostring(DruidLowLvlBuff3))
    end
    
    local DruidLowLvlBuff3Gem = ""
    if mq.TLO.Me.Class.Name() == "Druid" and DruidLowLvlBuff3:find("|") then
        DruidLowLvlBuff3 = DruidLowLvlBuff3:match("([^|]+)")
        DruidLowLvlBuff3Gem = DruidLowLvlBuff3:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Druid" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "46+ SoW"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "46+ SoW" "Spirit of Falcons|gem8"')
    end
    
    local DruidHighLvlBuff3 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "46+ SoW")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Druid" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - DruidHighLvlBuff3: ' .. tostring(DruidHighLvlBuff3))
    end
    
    local DruidHighLvlBuff3Gem = ""
    if mq.TLO.Me.Class.Name() == "Druid" and DruidHighLvlBuff3:find("|") then
        DruidHighLvlBuff3 = DruidHighLvlBuff3:match("([^|]+)")
        DruidHighLvlBuff3Gem = DruidHighLvlBuff3:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Druid" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "MGB 85+ HP"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "MGB 85+ HP" "Emberquartz Blessing|gem7"')
    end
    
    local DruidHighLvlBuff14 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "MGB 85+ HP")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Druid" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - DruidHighLvlBuff14: ' .. tostring(DruidHighLvlBuff14))
    end
    
    local DruidHighLvlBuff14Gem = ""
    if mq.TLO.Me.Class.Name() == "Druid" and DruidHighLvlBuff14:find("|") then
        DruidHighLvlBuff14 = DruidHighLvlBuff14:match("([^|]+)")
        DruidHighLvlBuff14Gem = DruidHighLvlBuff14:match("|([^|]+)")
    end
|-----Paladin
    -- Paladin
    if mq.TLO.Me.Class.Name() == "Paladin" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "1-45 HP"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "1-45 HP" "Brell\'s Steadfast Aegis|gem1"')
    end
    
    local PaladinLowLvlBuff = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "1-45 HP")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Paladin" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - PaladinLowLvlBuff: ' .. tostring(PaladinLowLvlBuff))
    end
    
    local PaladinLowLvlBuffGem = ""
    if mq.TLO.Me.Class.Name() == "Paladin" and PaladinLowLvlBuff:find("|") then
        PaladinLowLvlBuff = PaladinLowLvlBuff:match("([^|]+)")
        PaladinLowLvlBuffGem = PaladinLowLvlBuff:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Paladin" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "Rez"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "Rez" "Resurrection|gem8"')
    end
    
    local PaladinRez = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "Rez")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Paladin" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - PaladinRez: ' .. tostring(PaladinRez))
    end
    
    local PaladinRezGem = ""
    if mq.TLO.Me.Class.Name() == "Paladin" and PaladinRez:find("|") then
        PaladinRez = PaladinRez:match("([^|]+)")
        PaladinRezGem = PaladinRez:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Paladin" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "46-60 HP"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "46-60 HP" "Brell\'s Stalwart Shield|gem2"')
    end
    
    local PaladinMedLvlBuff = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "46-60 HP")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Paladin" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - PaladinMedLvlBuff: ' .. tostring(PaladinMedLvlBuff))
    end
    
    local PaladinMedLvlBuffGem = ""
    if PaladinMedLvlBuff:find("|") then
        PaladinMedLvlBuff = PaladinMedLvlBuff:match("([^|]+)")
        PaladinMedLvlBuffGem = PaladinMedLvlBuff:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Paladin" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61-70 HP"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "61-70 HP" "Brell\'s Stalwart Bulwark|gem3"')
    end
    
    local PaladinHighLvlBuff = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "61-70 HP")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Paladin" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - PaladinHighLvlBuff: ' .. tostring(PaladinHighLvlBuff))
    end
    
    local PaladinHighLvlBuffGem = ""
    if mq.TLO.Me.Class.Name() == "Paladin" and PaladinHighLvlBuff:find("|") then
        PaladinHighLvlBuff = PaladinHighLvlBuff:match("([^|]+)")
        PaladinHighLvlBuffGem = PaladinHighLvlBuff:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Paladin" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "71-84 HP"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "71-84 HP" "Brell\'s Blessed Bastion|gem4"')
    end
    
    local PaladinHighLvlBuff2 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "71-84 HP")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Paladin" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - PaladinHighLvlBuff2: ' .. tostring(PaladinHighLvlBuff2))
    end
    
    local PaladinHighLvlBuff2Gem = ""
    if mq.TLO.Me.Class.Name() == "Paladin" and PaladinHighLvlBuff2:find("|") then
        PaladinHighLvlBuff2 = PaladinHighLvlBuff2:match("([^|]+)")
        PaladinHighLvlBuff2Gem = PaladinHighLvlBuff2:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Paladin" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "85+ HP"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "85+ HP" "Brell\'s Blessed Bastion|gem4"')
    end
    
    local PaladinHighLvlBuff3 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "85+ HP")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Paladin" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - PaladinHighLvlBuff3: ' .. tostring(PaladinHighLvlBuff3))
    end
    
    local PaladinHighLvlBuff3Gem = ""
    if mq.TLO.Me.Class.Name() == "Paladin" and PaladinHighLvlBuff3:find("|") then
        PaladinHighLvlBuff3 = PaladinHighLvlBuff3:match("([^|]+)")
        PaladinHighLvlBuff3Gem = PaladinHighLvlBuff3:match("|([^|]+)")
    end
    
    if mq.TLO.Me.Class.Name() == "Paladin" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "MGB 85+ HP"):Length() then
        mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Spells" "MGB 85+ HP" "Brell\'s Blessed Bastion|gem4"')
    end
    
    local PaladinHighLvlBuff14 = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Spells", "MGB 85+ HP")
    if ShowDebug and mq.TLO.Me.Class.Name() == "Paladin" then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - PaladinHighLvlBuff14: ' .. tostring(PaladinHighLvlBuff14))
    end
    
    local PaladinHighLvlBuff14Gem = ""
    if mq.TLO.Me.Class.Name() == "Paladin" and PaladinHighLvlBuff14:find("|") then
        PaladinHighLvlBuff14 = PaladinHighLvlBuff14:match("([^|]+)")
        PaladinHighLvlBuff14Gem = PaladinHighLvlBuff14:match("|([^|]+)")
    end

    -- Declare TargetName
local TargetName = ""

-- AFK Message
if not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "General", "AFKMessage"):Length() then
    mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "General" "AFKMessage" "Find me in Guild Hall if you need me."')
end

local AFKMessage = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "General", "AFKMessage")
if ShowDebug then
    mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - AFKMessage: ' .. tostring(AFKMessage))
end

-- Med Message
if not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "General", "MedMessage"):Length() then
    mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "General" "MedMessage" "...Meditating... Low on mana."')
end

local MedMessage = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "General", "MedMessage")
if ShowDebug then
    mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - MedMessage: ' .. tostring(MedMessage))
end

-- Druid Port Text
if mq.TLO.Me.Class.Name() == "Druid" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Advertise", "Port Text"):Length() then
    mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Advertise" "Port Text" "Available Zephyrs: moors, nexus, tox, butcher, iceclad, karana, cl, sfg, stoneBrunt, grimling, feerrott, steamfont, combines, ro, twilight, gd, wl, cs, misty, pok, lavastorm, undershore, arcstone, natimbi, dawnshroud, barindu, bloodfields, steppes, buriedsea, slaughter, direwind, loping, time, brells, grounds, beasts, pillars, shards, wkarana, lceanium, skyfire, tempest, GDivide, Shadeweaver, TovCS, Shadow and Laurion"')
end

local DruidPortTxt = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Advertise", "Port Text")
if ShowDebug and mq.TLO.Me.Class.Name() == "Druid" then
    mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - DruidPortTxt: ' .. tostring(DruidPortTxt))
end

-- Wizard Port Text
if mq.TLO.Me.Class.Name() == "Wizard" and not mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Advertise", "Port Text"):Length() then
    mq.cmd('/call SetIni "Mcbuffin_' .. mq.TLO.Server() .. '_' .. mq.TLO.Me.CleanName() .. '.ini" "Advertise" "Port Text" "Available Translocates: moors, nexus, tox, iceclad, karana, cl, stoneBrunt, grimling, combines, ro, twilight, gd, wl, cs, pok, undershore, arcstone, natimbi, dawnshroud, barindu, bloodfields, slaughter, time, brells, grounds, pillars, wkarana, lceanium, tempest, fay, nek, cazic, bind, sunderock, primary, secondary, icefall, katta, dragonscale, sarith, GDivide, Shadeweaver, TovCS, Shadow and Laurion"')
end

local WizardPortTxt = mq.TLO.Ini("Mcbuffin_" .. mq.TLO.Server() .. "_" .. mq.TLO.Me.CleanName() .. ".ini", "Advertise", "Port Text")
if ShowDebug and mq.TLO.Me.Class.Name() == "Wizard" then
    mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares - WizardPortTxt: ' .. tostring(WizardPortTxt))
end

if ShowDebug then
    mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Declares Exit')
end

function LowerEQResources()
    if UseLowResourceMode then
        -- Options -> Display, first bunch of checkboxes
        if mq.TLO.Window("OptionsWindow").Child("ODP_NPCNamesCheckBox").Checked() then
            mq.cmd('/echo Hiding NPC names')
            mq.cmd('/notify OptionsWindow ODP_NPCNamesCheckBox leftmouseup')
        end
        if mq.TLO.Window("OptionsWindow").Child("ODP_PetNamesCheckBox").Checked() then
            mq.cmd('/echo Hiding Pet names')
            mq.cmd('/notify OptionsWindow ODP_PetNamesCheckBox leftmouseup')
        end
        if mq.TLO.Window("OptionsWindow").Child("ODP_MercNamesCheckBox").Checked() then
            mq.cmd('/echo Hiding Merc names')
            mq.cmd('/notify OptionsWindow ODP_MercNamesCheckBox leftmouseup')
        end
        if mq.TLO.Window("OptionsWindow").Child("ODP_ShowPetOwnerNames").Checked() then
            mq.cmd('/echo Hiding Pet Owner names')
            mq.cmd('/notify OptionsWindow ODP_ShowPetOwnerNames leftmouseup')
        end
        if mq.TLO.Window("OptionsWindow").Child("ODP_ShowMercOwnerNames").Checked() then
            mq.cmd('/echo Hiding Merc Owner names')
            mq.cmd('/notify OptionsWindow ODP_ShowMercOwnerNames leftmouseup')
        end
        if mq.TLO.Window("OptionsWindow").Child("ODP_ShowTargetRingCheckbox").Checked() then
            mq.cmd('/echo Hiding Target Ring')
            mq.cmd('/notify OptionsWindow ODP_ShowTargetRingCheckbox leftmouseup')
        end
        if mq.TLO.Window("OptionsWindow").Child("ODP_ShowTargetHealthCheckbox").Checked() then
            mq.cmd('/echo Hiding Target Health')
            mq.cmd('/notify OptionsWindow ODP_ShowTargetHealthCheckbox leftmouseup')
        end
        if mq.TLO.Window("OptionsWindow").Child("ODP_LevelOfDetailCheckbox").Checked() then
            mq.cmd('/echo Disabling Level of Detail')
            mq.cmd('/notify OptionsWindow ODP_LevelOfDetailCheckbox leftmouseup')
        end
        if not mq.TLO.Window("OptionsWindow").Child("ODP_ShowHelmCheckbox").Checked() then
            mq.cmd('/echo Showing My Helm')
            mq.cmd('/notify OptionsWindow ODP_ShowHelmCheckbox leftmouseup')
        end
        if not mq.TLO.Window("OptionsWindow").Child("ODP_ShowPreLuclinMounts").Checked() then
            mq.cmd('/echo Showing Pre-Luclin Mounts')
            mq.cmd('/notify OptionsWindow ODP_ShowPreLuclinMounts leftmouseup')
        end

        -- Options -> Display, combo boxes at the top right
        if mq.TLO.Window("OptionsWindow").Child("ODP_LoadScreenCombobox").GetCurSel() ~= 1 then
            mq.cmd('/echo Setting Load Screen to None')
            mq.cmd('/invoke ${Window[OptionsWindow].Child[ODP_LoadScreenCombobox].Select[1]}')
        end
        if mq.TLO.Window("OptionsWindow").Child("ODP_SkyCombobox").GetCurSel() ~= 1 then
            mq.cmd('/echo Setting Sky Type to Off')
            mq.cmd('/invoke ${Window[OptionsWindow].Child[ODP_SkyCombobox].Select[1]}')
        end
        if mq.TLO.Window("OptionsWindow").Child("ODP_NewArmorFilterCombobox").GetCurSel() ~= 1 then
            mq.cmd('/echo Setting New Armor to None')
            mq.cmd('/invoke ${Window[OptionsWindow].Child[ODP_NewArmorFilterCombobox].Select[1]}')
        end
    end
end

function LowerEQResources()
    if UseLowResourceMode then
        -- Far Clip Plane
        mq.cmd('/echo Setting Far Clip Plane to 20%')
        mq.cmd('/notify OptionsWindow ODP_ClipPlaneSlider newvalue 4')

        -- Options -> Display, particle effects
        if mq.TLO.Window("OptionsWindow").Child("ODP_SpellParticlesNearClipCombobox").GetCurSel() ~= 1 then
            mq.cmd('/echo Setting Spell -> Near Clip to Near')
            mq.cmd('/invoke ${Window[OptionsWindow].Child[ODP_SpellParticlesNearClipCombobox].Select[1]}')
        end
        if mq.TLO.Window("OptionsWindow").Child("ODP_SpellParticlesDensityCombobox").GetCurSel() ~= 1 then
            mq.cmd('/echo Setting Spell -> Density to Off')
            mq.cmd('/invoke ${Window[OptionsWindow].Child[ODP_SpellParticlesDensityCombobox].Select[1]}')
        end
        if mq.TLO.Window("OptionsWindow").Child("ODP_SpellParticlesFilterCombobox").GetCurSel() ~= 1 then
            mq.cmd('/echo Setting Spell -> On For to My Spells')
            mq.cmd('/invoke ${Window[OptionsWindow].Child[ODP_SpellParticlesFilterCombobox].Select[1]}')
        end
        if mq.TLO.Window("OptionsWindow").Child("ODP_EnvironmentParticlesNearClipCombobox").GetCurSel() ~= 1 then
            mq.cmd('/echo Setting Env -> Near Clip to Near')
            mq.cmd('/invoke ${Window[OptionsWindow].Child[ODP_EnvironmentParticlesNearClipCombobox].Select[1]}')
        end
        if mq.TLO.Window("OptionsWindow").Child("ODP_EnvironmentParticlesDensityCombobox").GetCurSel() ~= 1 then
            mq.cmd('/echo Setting Env -> Density to Off')
            mq.cmd('/invoke ${Window[OptionsWindow].Child[ODP_EnvironmentParticlesDensityCombobox].Select[1]}')
        end
        if mq.TLO.Window("OptionsWindow").Child("ODP_ActorParticlesNearClipCombobox").GetCurSel() ~= 1 then
            mq.cmd('/echo Setting Player -> Near Clip to Near')
            mq.cmd('/invoke ${Window[OptionsWindow].Child[ODP_ActorParticlesNearClipCombobox].Select[1]}')
        end
        if mq.TLO.Window("OptionsWindow").Child("ODP_ActorParticlesDensityCombobox").GetCurSel() ~= 1 then
            mq.cmd('/echo Setting Player -> Density to Off')
            mq.cmd('/invoke ${Window[OptionsWindow].Child[ODP_ActorParticlesDensityCombobox].Select[1]}')
        end
        if mq.TLO.Window("OptionsWindow").Child("ODP_ActorParticlesFilterCombobox").GetCurSel() ~= 1 then
            mq.cmd('/echo Setting Player -> On For to Me')
            mq.cmd('/invoke ${Window[OptionsWindow].Child[ODP_ActorParticlesFilterCombobox].Select[1]}')
        end

        -- LOD Bias
        mq.cmd('/echo Setting LOD Bias to Very Low')
        mq.cmd('/notify OptionsWindow ODP_LODBiasSlider newvalue 0')

        -- Advanced Options, combo boxes
        if mq.TLO.Window("AdvancedDisplayOptionsWindow").Child("ADOW_SkyReflectionSizeCombobox").GetCurSel() ~= 1 then
            mq.cmd('/echo Setting Dynamic Sky Reflection Size to Tiny (32)')
            mq.cmd('/invoke ${Window[AdvancedDisplayOptionsWindow].Child[ADOW_SkyReflectionSizeCombobox].Select[1]}')
        end
        if mq.TLO.Window("AdvancedDisplayOptionsWindow").Child("ADOW_SkyUpdateIntervalCombobox").GetCurSel() ~= 1 then
            mq.cmd('/echo Setting Sky Reflection Update Interval to Once per minute')
            mq.cmd('/invoke ${Window[AdvancedDisplayOptionsWindow].Child[ADOW_SkyUpdateIntervalCombobox].Select[1]}')
        end
        if mq.TLO.Window("AdvancedDisplayOptionsWindow").Child("ADOW_TerrainTextureQualityCombobox").GetCurSel() ~= 1 then
            mq.cmd('/echo Setting Terrain Texture Quality to Minimum')
            mq.cmd('/invoke ${Window[AdvancedDisplayOptionsWindow].Child[ADOW_TerrainTextureQualityCombobox].Select[1]}')
        end
        if mq.TLO.Window("AdvancedDisplayOptionsWindow").Child("ADOW_MemoryModeCombobox").GetCurSel() ~= 1 then
            mq.cmd('/echo Setting Memory Mode to Least Memory Usage')
            mq.cmd('/invoke ${Window[AdvancedDisplayOptionsWindow].Child[ADOW_MemoryModeCombobox].Select[1]}')
        end
    end
end

function LowerEQResources()
    if UseLowResourceMode then
        -- Advanced Options, checkboxes
        if mq.TLO.Window("AdvancedDisplayOptionsWindow").Child("ADOW_WaterSwapCheckbox").Checked() then
            mq.cmd('/echo Disabling new water in old zones')
            mq.cmd('/notify AdvancedDisplayOptionsWindow ADOW_WaterSwapCheckbox leftmouseup')
        end
        if not mq.TLO.Window("AdvancedDisplayOptionsWindow").Child("ADOW_20PixelShadersCheckbox").Unchecked() then
            mq.cmd('/echo Disabling 2.0 Pixel Shaders')
            mq.cmd('/notify AdvancedDisplayOptionsWindow ADOW_20PixelShadersCheckbox leftmouseup')
        end
        if mq.TLO.Window("AdvancedDisplayOptionsWindow").Child("ADOW_AdvancedLightingCheckbox").Checked() then
            mq.cmd('/echo Disabling Advanced Lighting')
            mq.cmd('/notify AdvancedDisplayOptionsWindow ADOW_AdvancedLightingCheckbox leftmouseup')
        end
        if mq.TLO.Window("AdvancedDisplayOptionsWindow").Child("ADOW_ShadowsCheckbox").Checked() then
            mq.cmd('/echo Disabling Shadows')
            mq.cmd('/notify AdvancedDisplayOptionsWindow ADOW_ShadowsCheckbox leftmouseup')
        end
        if mq.TLO.Window("AdvancedDisplayOptionsWindow").Child("ADOW_FloraCheckbox").Checked() then
            mq.cmd('/echo Disabling Radial Flora')
            mq.cmd('/notify AdvancedDisplayOptionsWindow ADOW_FloraCheckbox leftmouseup')
        end
        if not mq.TLO.Window("AdvancedDisplayOptionsWindow").Child("ADOW_DisableTattoosCheckbox").Checked() then
            mq.cmd('/echo Disabling Tattoos')
            mq.cmd('/notify AdvancedDisplayOptionsWindow ADOW_DisableTattoosCheckbox leftmouseup')
        end
        if mq.TLO.Window("AdvancedDisplayOptionsWindow").Child("ADOW_EnablePostEffectsCheckbox").Checked() then
            mq.cmd('/echo Disabling Post Bloom Effects')
            mq.cmd('/notify AdvancedDisplayOptionsWindow ADOW_EnablePostEffectsCheckbox leftmouseup')
        end
        if mq.TLO.Window("AdvancedDisplayOptionsWindow").Child("ADOW_EnableBloomCheckbox").Checked() then
            mq.cmd('/echo Disabling Bloom Lighting')
            mq.cmd('/notify AdvancedDisplayOptionsWindow ADOW_EnableBloomCheckbox leftmouseup')
        end

        -- Shadow Clip Plane
        mq.cmd('/echo Setting Shadow Clip Plane to 0%')
        mq.cmd('/notify AdvancedDisplayOptionsWindow ADOW_ShadowClipPlaneSlider newvalue 0')

        -- Actor Clip Plane
        mq.cmd('/echo Setting Actor Clip Plane to 10%')
        mq.cmd('/notify AdvancedDisplayOptionsWindow ADOW_ActorClipPlaneSlider newvalue 10')

        -- Max Foreground FPS
        mq.cmd('/echo Setting Foreground FPS to 25')
        mq.cmd('/notify AdvancedDisplayOptionsWindow ADOW_MaxFPSSlider newvalue 20')

        -- Max Background FPS
        mq.cmd('/echo Setting Background FPS to 0')
        mq.cmd('/notify AdvancedDisplayOptionsWindow ADOW_MaxBGFPSSlider newvalue 0')

        -- Close windows
        mq.cmd('/invoke ${Window[OptionsWindow].DoClose}')
        mq.cmd('/invoke ${Window[AdvancedDisplayOptionsWindow].DoClose}')

        mq.cmd('/echo \\agSettings changed!')
    end
end

-- Subroutine: GetBalance
function GetBalance(Account)
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub GetBalance(' .. Account .. ') Entry')
    end
    if not mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", Account):Length() then
        SetIni("Mcbuffin.Accounts.ini", "Balances", Account, StartBalance)
    end
    mq.cmd('/echo Account:(' .. Account .. ') Balance:(' .. mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", Account) .. ')')
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub GetBalance(' .. Account .. ') Exit')
    end
    return mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", Account)
end

-- Subroutine: GetFriend
function GetFriend(Account)
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub GetFriend(' .. Account .. ') Entry')
    end
    if not mq.TLO.Ini("Mcbuffin.Friends.ini", "Friends", Account):Length() then
        SetIni("Mcbuffin.Friends.ini", "Friends", Account, "FALSE")
    end
    mq.cmd('/echo Account:(' .. Account .. ') Friend Status:(' .. mq.TLO.Ini("Mcbuffin.Friends.ini", "Friends", Account) .. ')')
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub GetFriend(' .. Account .. ') Exit')
    end
    return mq.TLO.Ini("Mcbuffin.Friends.ini", "Friends", Account)
end

-- Subroutine: GetGuild
function GetGuild(Account)
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub GetGuild(' .. Account .. ') Entry')
    end
    if not mq.TLO.Ini("Mcbuffin.Guilds.ini", "Friends", Account):Length() then
        SetIni("Mcbuffin.Guilds.ini", "Friends", Account, "FALSE")
    end
    mq.cmd('/echo Guild:(' .. Account .. ') Friend Status:(' .. mq.TLO.Ini("Mcbuffin.Guilds.ini", "Friends", Account) .. ')')
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub GetGuild(' .. Account .. ') Exit')
    end
    return mq.TLO.Ini("Mcbuffin.Guilds.ini", "Friends", Account)
end

-- Subroutine: SetIni
function SetIni(filename, section, option, value)
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub SetIni(' .. filename .. ', ' .. section .. ', ' .. option .. ', ' .. value .. ') Entry')
    end
    mq.cmd('/ini "' .. filename .. '" "' .. section .. '" "' .. option .. '" "' .. value .. '"')
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub SetIni(' .. filename .. ', ' .. section .. ', ' .. option .. ', ' .. value .. ') Exit')
    end
end

-- Subroutine: LoadSpellSet
function LoadSpellSet()
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub LoadSpellSet=(' .. LoadSpellSet .. ') Entry')
    end
    local GemNum = 0
    local ValidSpells = 0
    if LoadSpellSet == 1 then
        if ShowDebug then
            mq.cmd('/echo [DEBUG] Sub LoadSpellSet SpellSetName=(' .. SpellSetName .. ') Line#: ' .. mq.TLO.Macro.CurLine())
        end
        mq.cmd('/echo Memming spellset (' .. SpellSetName .. ').')
        mq.cmd('/memspellset ' .. SpellSetName)
    end
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub LoadSpellSet=(' .. LoadSpellSet .. ') Exit')
    end
end

-- Subroutine: Event_ResetBuffers
function Event_ResetBuffers()
    mq.cmd('/echo Resetting macro due to event 1...')
    mq.cmd('/goto :mainloop')
    return
end

-- Subroutine: BuffTarget
function BuffTarget(WhoToBuff)
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub BuffTarget(' .. WhoToBuff .. ') Entry')
    end

    local TargAccBal = 0
    local TargIsFriend = false
    local TargGuildIsFriend = false

    if AccountMode then
        GetBalance(WhoToBuff)
        TargAccBal = mq.TLO.Macro.Return()
    end

    if FriendMode then
        GetFriend(WhoToBuff)
        TargIsFriend = mq.TLO.Macro.Return()
    end

    if GuildMode then
        GetGuild(mq.TLO.Spawn("PC " .. WhoToBuff).Guild())
        TargGuildIsFriend = mq.TLO.Macro.Return()
    end

    if BuffGuildOnly and not mq.TLO.Spawn("PC " .. WhoToBuff).Guild():Equal(mq.TLO.Me.Guild()) and not (TargGuildIsFriend or TargIsFriend) then
        return
    end

    TargetName = WhoToBuff

    if TargAccBal <= BuffCost and AccountMode and not (TargIsFriend or FriendFree) and not (TargGuildIsFriend or GuildFree) then
        mq.cmd('ACCOUNTCHAT ' .. WhoToBuff .. ' (' .. WhoToBuff .. ')Balance:(' .. TargAccBal .. ') Buff Cost:(' .. BuffCost .. ') Summon Cost:(' .. SummonCost .. ')')
        return
    end

    mq.cmd('/target ' .. mq.TLO.Spawn("PC " .. TargetName).ID())
    mq.delay(1000, function() return mq.TLO.Target.ID() end)

    while not mq.TLO.Target.Name():Equal(WhoToBuff) do
        mq.cmd('/target ' .. WhoToBuff .. ' next')
        mq.delay(1000, function() return mq.TLO.Target.ID() end)
    end

    if mq.TLO.Me.Sitting() then
        mq.cmd('/stand up')
    end

    if mq.TLO.Window("TradeWnd").Open() then
        Money()
    end

    mq.delay(2000)

    mq.cmd('CHATMETHOD1 Buffing started on ' .. mq.TLO.Target.CleanName() .. '!')
    mq.cmd('CHATMETHOD Buffing started on ' .. mq.TLO.Target.CleanName() .. '!')
    mq.cmd('/mqlog Buffing started on ' .. mq.TLO.Target.CleanName() .. '!')

    if mq.TLO.Window("TradeWnd").Open() then
        Money()
    end

    if mq.TLO.Spawn("PC " .. TargetName).Pet.ID() then
        mq.cmd('/target ' .. mq.TLO.Spawn("PC " .. TargetName).Pet.ID())
        mq.delay(1000, function() return mq.TLO.Target.ID() end)
        Buff()
        mq.cmd('CHATMETHOD1 Serviced: ' .. mq.TLO.Target.CleanName())
        mq.cmd('CHATMETHOD Serviced: ' .. mq.TLO.Target.CleanName())
        if AccountMode and not (TargIsFriend or FriendFree) and not (TargGuildIsFriend or GuildFree) then
            SetIni("Mcbuffin.Accounts.ini", "Balances", WhoToBuff, mq.TLO.Math.Calc(mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", WhoToBuff) - BuffCost))
        end
    end

    if mq.TLO.Spawn("PC " .. TargetName).MercID() then
        mq.cmd('/target id ' .. mq.TLO.Spawn("PC " .. TargetName).MercID())
        mq.delay(1000, function() return mq.TLO.Target.ID() end)
        Buff()
        mq.cmd('CHATMETHOD1 Serviced: ' .. mq.TLO.Target.CleanName())
        mq.cmd('CHATMETHOD Serviced: ' .. mq.TLO.Target.CleanName())
        if AccountMode and not (TargIsFriend or FriendFree) and not (TargGuildIsFriend or GuildFree) then
            SetIni("Mcbuffin.Accounts.ini", "Balances", WhoToBuff, mq.TLO.Math.Calc(mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", WhoToBuff) - BuffCost))
        end
    end

    mq.cmd('/target id ' .. mq.TLO.Spawn("PC " .. TargetName).ID())
    mq.delay(1000, function() return mq.TLO.Target.ID() end)

    while not mq.TLO.Target.Name():Equal(WhoToBuff) do
        mq.cmd('/target ' .. WhoToBuff .. ' next')
        mq.delay(1000, function() return mq.TLO.Target.ID() end)
    end
end

-- Subroutine: BuffTarget (continued)
function BuffTarget(WhoToBuff)
    -- Previous code...

    Buff()
    mq.cmd('CHATMETHOD1 Serviced: ' .. mq.TLO.Target.CleanName())
    mq.cmd('CHATMETHOD Serviced: ' .. mq.TLO.Target.CleanName())
    if AccountMode and not (TargIsFriend or FriendFree) and not (TargGuildIsFriend or GuildFree) then
        SetIni("Mcbuffin.Accounts.ini", "Balances", WhoToBuff, mq.TLO.Math.Calc(mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", WhoToBuff) - BuffCost))
    end
    mq.cmd('/mqlog Buffed: ' .. mq.TLO.Target.CleanName() .. '!')
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub BuffTarget(' .. WhoToBuff .. ') Exit')
    end
    return
end

-- Subroutine: Med
function Med()
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Med Entry')
    end
    if mq.TLO.Me.Standing() and not mq.TLO.Me.Mount.ID() and (not UseHorse or (UseHorse and mq.TLO.FindItem(HorseItem).Name() == "NULL")) then
        mq.cmd('/sit on')
    end
    mq.delay(300000, function() return mq.TLO.Me.PctMana() > DoneMeddingPct end)
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Med Exit')
    end
    return
end

-- Subroutine: Money
function Money()
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Money Entry')
    end
    mq.delay(3000, function() return mq.TLO.Window("TradeWnd").Open() end)
    mq.delay(3000, function() return mq.TLO.Window("TradeWnd").HisTradeReady() end)
    if mq.TLO.Window("TradeWnd").HisTradeReady() then
        mq.cmd('CHATMETHOD1 Received a donation from ' .. mq.TLO.Target.CleanName() .. '.')
        mq.cmd('CHATMETHOD Received a donation from ' .. mq.TLO.Target.CleanName() .. '.')
        GetBalance(mq.TLO.Target.CleanName())
        if mq.TLO.Window("TradeWnd").Child("TRDW_HisMoney0").Text() >= 1 then
            SetIni("Mcbuffin.Accounts.ini", "Balances", mq.TLO.Target.CleanName(), mq.TLO.Math.Calc(mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", mq.TLO.Target.CleanName()) + mq.TLO.Window("TradeWnd").Child("TRDW_HisMoney0").Text()))
        end
        mq.cmd('/mqlog Received a donation from ' .. mq.TLO.Target.CleanName() .. '.')
        mq.cmd('/notify TradeWnd TRDW_Trade_Button leftmouseup')
    end
    mq.delay(2000, function() return not mq.TLO.Window("TradeWnd").Open() end)
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Money Exit')
    end
    return
end

-- Subroutine: Port
function Port(PortTarget, PortToCast)
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Port(' .. PortTarget .. ', ' .. PortToCast .. ') Entry')
    end

    local TargAccBal = 0
    local TargIsFriend = false
    local TargGuildIsFriend = false

    if AccountMode then
        GetBalance(PortTarget)
        TargAccBal = mq.TLO.Macro.Return()
    end

    if FriendMode then
        GetFriend(PortTarget)
        TargIsFriend = mq.TLO.Macro.Return()
    end

    if GuildMode then
        GetGuild(mq.TLO.Spawn("PC " .. PortTarget).Guild())
        TargGuildIsFriend = mq.TLO.Macro.Return()
    end

    if BuffGuildOnly and not mq.TLO.Spawn("PC " .. PortTarget).Guild():Equal(mq.TLO.Me.Guild()) and not (TargGuildIsFriend or TargIsFriend) then
        return
    end

    if TargAccBal <= PortCost and AccountMode and not (TargIsFriend or FriendFree) and not (TargGuildIsFriend or GuildFree) then
        mq.cmd('ACCOUNTCHAT ' .. PortTarget .. ' (' .. PortToCast .. ')Balance:(' .. TargAccBal .. ') Buff Cost:(' .. BuffCost .. ') Summon Cost:(' .. SummonCost .. ')')
        return
    end

    if mq.TLO.Me.Class.Name():Equal("Druid") or mq.TLO.Me.Class.Name():Equal("Wizard") then
        TargetName = PortTarget
        if mq.TLO.Me.Sitting() then
            mq.cmd('/stand up')
        end
        if mq.TLO.Window("TradeWnd").Open() then
            Money()
        end
        mq.delay(2000)
        mq.cmd('/target id ' .. mq.TLO.Spawn("PC " .. TargetName).ID())
        mq.delay(1000, function() return mq.TLO.Target.ID() end)
        mq.cmd('CHATMETHOD1 Porting: ' .. mq.TLO.Target.CleanName() .. ' -- ' .. PortToCast .. ' --')
        mq.cmd('CHATMETHOD Porting: ' .. mq.TLO.Target.CleanName() .. ' -- ' .. PortToCast .. ' --')
        mq.cmd('/mqlog Porting: ' .. mq.TLO.Target.CleanName() .. ' -- ' .. PortToCast .. ' --')
        CASTMODE(PortToCast, PortGem)
        mq.delay(1000, function() return not mq.TLO.Me.Casting.ID() end)
        if AccountMode and not (TargIsFriend or FriendFree) and not (TargGuildIsFriend or GuildFree) then
            SetIni("Mcbuffin.Accounts.ini", "Balances", PortTarget, mq.TLO.Math.Calc(mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", PortToCast) - PortCost))
        end
    end

    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Port(' .. PortTarget .. ', ' .. PortToCast .. ') Exit')
    end
    return
end

-- Subroutine: Buff
function Buff()
    local iLevel = mq.TLO.Spawn("ID " .. mq.TLO.Target.ID()).Level()
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Buff Entry')
    end

    -- Enchanter Buffs
    if mq.TLO.Me.Class.Name():Equal("Enchanter") then
        if iLevel <= 41 then
            CASTMODE(mq.TLO.Spell(EncLowLvlBuff1).RankName(), EncLowLvlBuff1Gem, 15000)
        end
        if iLevel <= 45 then
            CASTMODE(mq.TLO.Spell(EncLowLvlBuff1).RankName(), EncLowLvlBuff1Gem, 15000)
        end
        if iLevel >= 42 and iLevel <= 45 then
            CASTMODE(mq.TLO.Spell(EncMedLvlBuff1).RankName(), EncMedLvlBuff1Gem, 15000)
        end
        if iLevel >= 46 and iLevel <= 60 then
            CASTMODE(mq.TLO.Spell(EncMedLvlBuff4).RankName(), EncMedLvlBuff4Gem, 15000)
        end
        if iLevel >= 46 and iLevel <= 60 then
            CASTMODE(mq.TLO.Spell(EncMedLvlBuff10).RankName(), EncMedLvlBuff10Gem, 15000)
        end
        if iLevel >= 61 and iLevel <= 71 then
            CASTMODE(mq.TLO.Spell(EncHighLvlBuff1).RankName(), EncHighLvlBuff1Gem, 15000)
        end
        if iLevel >= 72 and iLevel <= 84 then
            CASTMODE(mq.TLO.Spell(EncHighLvlBuff3).RankName(), EncHighLvlBuff3Gem, 15000)
        end
        if iLevel >= 85 then
            CASTMODE(mq.TLO.Spell(EncMaxLvlBuff1).RankName(), EncMaxLvlBuff1Gem, 15000)
        end

        if iLevel <= 41 then
            CASTMODE(mq.TLO.Spell(EncLowLvlBuff2).RankName(), EncLowLvlBuff2Gem, 15000)
        end
        if iLevel >= 42 and iLevel <= 45 then
            CASTMODE(mq.TLO.Spell(EncLowLvlBuff3).RankName(), EncLowLvlBuff3Gem, 15000)
        end
        if iLevel >= 46 and iLevel <= 60 then
            CASTMODE(mq.TLO.Spell(EncMedLvlBuff10).RankName(), EncMedLvlBuff10Gem, 15000)
        end
        if iLevel >= 61 and iLevel <= 71 then
            CASTMODE(mq.TLO.Spell(EncHighLvlBuff2).RankName(), EncHighLvlBuff2Gem, 15000)
        end
        if iLevel >= 72 and iLevel <= 84 then
            CASTMODE(mq.TLO.Spell(EncHighLvlBuff4).RankName(), EncHighLvlBuff4Gem, 15000)
        end
        if iLevel >= 85 then
            CASTMODE(mq.TLO.Spell(EncMaxLvlBuff2).RankName(), EncMaxLvlBuff2Gem, 15000)
        end
    end

    -- Magician Buffs
    if mq.TLO.Me.Class.Name():Equal("Magician") then
        if iLevel <= 46 then
            CASTMODE(mq.TLO.Spell(MageLowLvlBuff).RankName(), MageLowLvlBuffGem, 15000)
        end
        if iLevel >= 47 and iLevel <= 60 then
            CASTMODE(mq.TLO.Spell(MageMedLvlBuff).RankName(), MageMedLvlBuffGem, 15000)
        end
        if iLevel >= 61 and iLevel <= 70 then
            CASTMODE(mq.TLO.Spell(MageHighLvlBuff).RankName(), MageHighLvlBuffGem, 15000)
        end
        if iLevel >= 71 and iLevel <= 84 then
            CASTMODE(mq.TLO.Spell(MageHighLvl2Buff).RankName(), MageHighLvl2BuffGem, 15000)
        end
        if iLevel >= 85 then
            CASTMODE(mq.TLO.Spell(MageHighLvl3Buff).RankName(), MageHighLvl3BuffGem, 15000)
        end
    end

    -- Ranger Buffs
    if mq.TLO.Me.Class.Name():Equal("Ranger") then
        if iLevel <= 46 then
            CASTMODE(mq.TLO.Spell(RangerLowLvlBuff1).RankName(), RangerLowLvlBuff1Gem, 15000)
        end
        if iLevel >= 47 and iLevel <= 60 then
            CASTMODE(mq.TLO.Spell(RangerMedLvlBuff1).RankName(), RangerMedLvlBuff1Gem, 15000)
        end
        if iLevel >= 61 and iLevel <= 70 then
            CASTMODE(mq.TLO.Spell(RangerHighLvlBuff1).RankName(), RangerHighLvlBuff1Gem, 15000)
        end
        if iLevel >= 71 then
            CASTMODE(mq.TLO.Spell(RangerHighLvlBuff4).RankName(), RangerHighLvlBuff4Gem, 15000)
        end
    end

    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Buff Exit')
    end
end

-- Subroutine: Buff (continued)
function Buff()
    local iLevel = mq.TLO.Spawn("ID " .. mq.TLO.Target.ID()).Level()
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Buff Entry')
    end

    -- Enchanter Buffs (previously converted)

    -- Magician Buffs (previously converted)

    -- Ranger Buffs
    if mq.TLO.Me.Class.Name():Equal("Ranger") then
        if iLevel <= 46 then
            CASTMODE(mq.TLO.Spell(RangerLowLvlBuff1).RankName(), RangerLowLvlBuff1Gem, 15000)
            CASTMODE(mq.TLO.Spell(RangerLowLvlBuff2).RankName(), RangerLowLvlBuff2Gem, 15000)
            CASTMODE(mq.TLO.Spell(RangerLowLvlBuff3).RankName(), RangerLowLvlBuff3Gem, 15000)
            CASTMODE(mq.TLO.Spell(RangerLowLvlBuff4).RankName(), RangerLowLvlBuff4Gem, 15000)
        end
        if iLevel >= 47 and iLevel <= 60 then
            CASTMODE(mq.TLO.Spell(RangerMedLvlBuff1).RankName(), RangerMedLvlBuff1Gem, 15000)
            CASTMODE(mq.TLO.Spell(RangerMedLvlBuff2).RankName(), RangerMedLvlBuff2Gem, 15000)
            CASTMODE(mq.TLO.Spell(RangerMedLvlBuff3).RankName(), RangerMedLvlBuff3Gem, 15000)
        end
        if iLevel >= 61 and iLevel <= 70 then
            CASTMODE(mq.TLO.Spell(RangerHighLvlBuff1).RankName(), RangerHighLvlBuff1Gem, 15000)
            CASTMODE(mq.TLO.Spell(RangerHighLvlBuff2).RankName(), RangerHighLvlBuff2Gem, 15000)
            CASTMODE(mq.TLO.Spell(RangerHighLvlBuff10).RankName(), RangerHighLvlBuff10Gem, 15000)
        end
        if iLevel >= 71 and iLevel <= 84 then
            CASTMODE(mq.TLO.Spell(RangerHighLvlBuff4).RankName(), RangerHighLvlBuff4Gem, 15000)
            CASTMODE(mq.TLO.Spell(RangerHighLvlBuff5).RankName(), RangerHighLvlBuff5Gem, 15000)
            CASTMODE(mq.TLO.Spell(RangerHighLvlBuff6).RankName(), RangerHighLvlBuff6Gem, 15000)
        end
        if iLevel >= 85 then
            CASTMODE(mq.TLO.Spell(RangerHighLvlBuff7).RankName(), RangerHighLvlBuff7Gem, 15000)
            CASTMODE(mq.TLO.Spell(RangerHighLvlBuff11).RankName(), RangerHighLvlBuff11Gem, 15000)
            CASTMODE(mq.TLO.Spell(RangerHighLvlBuff8).RankName(), RangerHighLvlBuff8Gem, 15000)
        end
    end

    -- Shaman Buffs
    if mq.TLO.Me.Class.Name():Equal("Shaman") then
        if iLevel <= 46 then
            CASTMODE(mq.TLO.Spell(ShamanLowLvlBuff1).RankName(), ShamanLowLvlBuff1Gem, 15000)
            CASTMODE(mq.TLO.Spell(ShamanLowLvlBuff2).RankName(), ShamanLowLvlBuff2Gem, 15000)
        end
        if iLevel >= 47 and iLevel <= 60 then
            CASTMODE(mq.TLO.Spell(ShamanMedLvlBuff1).RankName(), ShamanMedLvlBuff1Gem, 15000)
            CASTMODE(mq.TLO.Spell(ShamanMedLvlBuff2).RankName(), ShamanMedLvlBuff2Gem, 15000)
        end
        if iLevel >= 61 and iLevel <= 70 then
            CASTMODE(mq.TLO.Spell(ShamanHighLvlBuff1).RankName(), ShamanHighLvlBuff1Gem, 15000)
            CASTMODE(mq.TLO.Spell(ShamanHighLvlBuff2).RankName(), ShamanHighLvlBuff2Gem, 15000)
        end
        if iLevel >= 71 and iLevel <= 84 then
            CASTMODE(mq.TLO.Spell(ShamanHighLvlBuff4).RankName(), ShamanHighLvlBuff4Gem, 15000)
            CASTMODE(mq.TLO.Spell(ShamanHighLvlBuff5).RankName(), ShamanHighLvlBuff5Gem, 15000)
        end
        if iLevel >= 85 then
            CASTMODE(mq.TLO.Spell(ShamanHighLvlBuff6).RankName(), ShamanHighLvlBuff6Gem, 15000)
            CASTMODE(mq.TLO.Spell(ShamanHighLvlBuff7).RankName(), ShamanHighLvlBuff7Gem, 15000)
        end
        if iLevel and mq.TLO.Me.AltAbilityReady(ShamanLowLvlBuff4) then
            CASTMODE(ShamanLowLvlBuff4, ShamanLowLvlBuff4Gem)
        end
        if iLevel <= 60 then
            CASTMODE(mq.TLO.Spell(ShamanLowLvlBuff3).RankName(), ShamanLowLvlBuff3Gem, 15000)
        end
        if iLevel >= 61 then
            CASTMODE(mq.TLO.Spell(ShamanHighLvlBuff3).RankName(), ShamanHighLvlBuff3Gem, 15000)
        end
    end

    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Buff Exit')
    end
end

-- Subroutine: Buff (continued)
function Buff()
    local iLevel = mq.TLO.Spawn("ID " .. mq.TLO.Target.ID()).Level()
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Buff Entry')
    end

    -- Enchanter Buffs (previously converted)

    -- Magician Buffs (previously converted)

    -- Ranger Buffs (previously converted)

    -- Shaman Buffs (previously converted)

    -- Beastlord Buffs
    if mq.TLO.Me.Class.Name():Equal("Beastlord") then
        if iLevel <= 46 then
            CASTMODE(mq.TLO.Spell(BeastLowLvlBuff1).RankName(), BeastLowLvlBuff1Gem, 15000)
            CASTMODE(mq.TLO.Spell(BeastLowLvlBuff2).RankName(), BeastLowLvlBuff2Gem, 15000)
            CASTMODE(mq.TLO.Spell(BeastLowLvlBuff3).RankName(), BeastLowLvlBuff3Gem, 15000)
        end
        if iLevel >= 47 and iLevel <= 60 then
            CASTMODE(mq.TLO.Spell(BeastMedLvlBuff1).RankName(), BeastMedLvlBuff1Gem, 15000)
            CASTMODE(mq.TLO.Spell(BeastMedLvlBuff2).RankName(), BeastMedLvlBuff2Gem, 15000)
            CASTMODE(mq.TLO.Spell(BeastMedLvlBuff3).RankName(), BeastMedLvlBuff3Gem, 15000)
        end
        if iLevel >= 61 and iLevel <= 70 then
            CASTMODE(mq.TLO.Spell(BeastHighLvlBuff1).RankName(), BeastHighLvlBuff1Gem, 15000)
            CASTMODE(mq.TLO.Spell(BeastHighLvlBuff2).RankName(), BeastHighLvlBuff2Gem, 15000)
        end
        if iLevel >= 71 and iLevel <= 84 then
            CASTMODE(mq.TLO.Spell(BeastHighLvlBuff3).RankName(), BeastHighLvlBuff3Gem, 15000)
            CASTMODE(mq.TLO.Spell(BeastHighLvlBuff4).RankName(), BeastHighLvlBuff4Gem, 15000)
        end
        if iLevel >= 85 then
            CASTMODE(mq.TLO.Spell(BeastHighLvlBuff6).RankName(), BeastHighLvlBuff6Gem, 15000)
            CASTMODE(mq.TLO.Spell(BeastHighLvlBuff7).RankName(), BeastHighLvlBuff7Gem, 15000)
            CASTMODE(mq.TLO.Spell(BeastHighLvlBuff5).RankName(), BeastHighLvlBuff5Gem, 15000)
        end
    end

    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Buff Exit')
    end
end

-- Subroutine: Buff (continued)
function Buff()
    local iLevel = mq.TLO.Spawn("ID " .. mq.TLO.Target.ID()).Level()
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Buff Entry')
    end

    -- Enchanter Buffs (previously converted)

    -- Magician Buffs (previously converted)

    -- Ranger Buffs (previously converted)

    -- Shaman Buffs (previously converted)

    -- Beastlord Buffs (previously converted)

    -- Cleric Buffs
    if mq.TLO.Me.Class.Name():Equal("Cleric") then
        if iLevel <= 45 then
            CASTMODE(mq.TLO.Spell(ClericLowLvlBuff1).RankName(), ClericLowLvlBuff1Gem, 15000)
            CASTMODE(mq.TLO.Spell(ClericLowLvlBuff2).RankName(), ClericLowLvlBuff2Gem, 15000)
            CASTMODE(mq.TLO.Spell(ClericLowLvlBuff3).RankName(), ClericLowLvlBuff3Gem, 15000)
        end
        if iLevel >= 46 and iLevel <= 60 then
            CASTMODE(mq.TLO.Spell(ClericMedLvlBuff1).RankName(), ClericMedLvlBuff1Gem, 15000)
            CASTMODE(mq.TLO.Spell(ClericMedLvlBuff2).RankName(), ClericMedLvlBuff2Gem, 15000)
            CASTMODE(mq.TLO.Spell(ClericMedLvlBuff3).RankName(), ClericMedLvlBuff3Gem, 15000)
        end
        if iLevel >= 61 and iLevel <= 70 then
            CASTMODE(mq.TLO.Spell(ClericHighLvlBuff1).RankName(), ClericHighLvlBuff1Gem, 15000)
            CASTMODE(mq.TLO.Spell(ClericHighLvlBuff2).RankName(), ClericHighLvlBuff2Gem, 15000)
            CASTMODE(mq.TLO.Spell(ClericHighLvlBuff3).RankName(), ClericHighLvlBuff3Gem, 15000)
            CASTMODE(mq.TLO.Spell(ClericHighLvlBuff4).RankName(), ClericHighLvlBuff4Gem, 15000)
        end
        if iLevel >= 71 and iLevel <= 84 then
            CASTMODE(mq.TLO.Spell(ClericHighLvlBuff1).RankName(), ClericHighLvlBuff1Gem, 15000)
            CASTMODE(mq.TLO.Spell(ClericHighLvlBuff2).RankName(), ClericHighLvlBuff2Gem, 15000)
            CASTMODE(mq.TLO.Spell(ClericHighLvlBuff3).RankName(), ClericHighLvlBuff3Gem, 15000)
        end
        if iLevel >= 85 then
            CASTMODE(mq.TLO.Spell(ClericMaxLvlBuff1).RankName(), ClericMaxLvlBuff1Gem, 15000)
            CASTMODE(mq.TLO.Spell(ClericMaxLvlBuff2).RankName(), ClericMaxLvlBuff2Gem, 15000)
            CASTMODE(mq.TLO.Spell(ClericMaxLvlBuff3).RankName(), ClericMaxLvlBuff3Gem, 15000)
        end
    end

    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Buff Exit')
    end
end

-- Subroutine: Buff (continued)
function Buff()
    local iLevel = mq.TLO.Spawn("ID " .. mq.TLO.Target.ID()).Level()
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Buff Entry')
    end

    -- Enchanter Buffs (previously converted)

    -- Magician Buffs (previously converted)

    -- Ranger Buffs (previously converted)

    -- Shaman Buffs (previously converted)

    -- Beastlord Buffs (previously converted)

    -- Cleric Buffs (previously converted)

    -- Paladin Buffs
    if mq.TLO.Me.Class.Name():Equal("Paladin") then
        if iLevel <= 46 then
            CASTMODE(mq.TLO.Spell(PaladinLowLvlBuff).RankName(), PaladinLowLvlBuffGem, 15000)
        end
        if iLevel >= 47 and iLevel <= 60 then
            CASTMODE(mq.TLO.Spell(PaladinMedLvlBuff).RankName(), PaladinMedLvlBuffGem, 15000)
        end
        if iLevel >= 61 and iLevel <= 70 then
            CASTMODE(mq.TLO.Spell(PaladinHighLvlBuff).RankName(), PaladinHighLvlBuffGem, 15000)
        end
        if iLevel >= 71 and iLevel <= 84 then
            CASTMODE(mq.TLO.Spell(PaladinHighLvlBuff2).RankName(), PaladinHighLvlBuff2Gem, 15000)
        end
        if iLevel >= 85 then
            CASTMODE(mq.TLO.Spell(PaladinHighLvlBuff3).RankName(), PaladinHighLvlBuff3Gem, 15000)
        end
    end

    -- Druid Buffs
    if mq.TLO.Me.Class.Name():Equal("Druid") then
        if iLevel <= 46 then
            CASTMODE(mq.TLO.Spell(DruidLowLvlBuff1).RankName(), DruidLowLvlBuff1Gem, 15000)
            CASTMODE(mq.TLO.Spell(DruidLowLvlBuff2).RankName(), DruidLowLvlBuff2Gem, 15000)
            CASTMODE(mq.TLO.Spell(DruidLowLvlBuff3).RankName(), DruidLowLvlBuff3Gem, 15000)
        end
        if iLevel >= 47 and iLevel <= 60 then
            CASTMODE(mq.TLO.Spell(DruidMedLvlBuff1).RankName(), DruidMedLvlBuff1Gem, 15000)
            CASTMODE(mq.TLO.Spell(DruidMedLvlBuff2).RankName(), DruidMedLvlBuff2Gem, 15000)
        end
        if iLevel >= 61 and iLevel <= 70 then
            CASTMODE(mq.TLO.Spell(DruidHighLvlBuff1).RankName(), DruidHighLvlBuff1Gem, 15000)
            CASTMODE(mq.TLO.Spell(DruidHighLvlBuff2).RankName(), DruidHighLvlBuff2Gem, 15000)
        end
        if iLevel >= 71 and iLevel <= 84 then
            CASTMODE(mq.TLO.Spell(DruidHighLvlBuff4).RankName(), DruidHighLvlBuff4Gem, 15000)
            CASTMODE(mq.TLO.Spell(DruidHighLvlBuff5).RankName(), DruidHighLvlBuff5Gem, 15000)
        end
        if iLevel >= 85 then
            CASTMODE(mq.TLO.Spell(DruidHighLvlBuff6).RankName(), DruidHighLvlBuff6Gem, 15000)
            CASTMODE(mq.TLO.Spell(DruidHighLvlBuff7).RankName(), DruidHighLvlBuff7Gem, 15000)
            CASTMODE(mq.TLO.Spell(DruidHighLvlBuff3).RankName(), DruidHighLvlBuff3Gem, 15000)
        end
    end

    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Buff Exit')
    end
end

-- Subroutine: Buff (continued)
function Buff()
    local iLevel = mq.TLO.Spawn("ID " .. mq.TLO.Target.ID()).Level()
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Buff Entry')
    end

    -- Enchanter Buffs (previously converted)

    -- Magician Buffs (previously converted)

    -- Ranger Buffs (previously converted)

    -- Shaman Buffs (previously converted)

    -- Beastlord Buffs (previously converted)

    -- Cleric Buffs (previously converted)

    -- Paladin Buffs (previously converted)

    -- Druid Buffs (previously converted)

    -- Necromancer Buffs
    if mq.TLO.Me.Class.Name():Equal("Necromancer") then
        if iLevel >= 1 and iLevel <= 125 then
            CASTMODE(mq.TLO.Spell(necroLowLvlBuff1).RankName(), necroLowLvlBuff1Gem, 15000)
        end
        if iLevel >= 47 and iLevel <= 60 then
            CASTMODE(mq.TLO.Spell(necroMedLvlBuff1).RankName(), necroMedLvlBuff1Gem, 15000)
        end
        if iLevel >= 61 and iLevel <= 70 then
            CASTMODE(mq.TLO.Spell(necroHighLvlBuff1).RankName(), necroHighLvlBuff1Gem, 15000)
        end
        if iLevel >= 71 and iLevel <= 84 then
            CASTMODE(mq.TLO.Spell(necroHighLvlBuff4).RankName(), necroHighLvlBuff4Gem, 15000)
        end
        if iLevel >= 85 then
            CASTMODE(mq.TLO.Spell(necroHighLvlBuff6).RankName(), necroHighLvlBuff6Gem, 15000)
        end
    end

    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Buff Exit')
    end
    return
end

-- Subroutine: Event_LeviMe
function Event_LeviMe(line, sender)
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Event_LeviMe(' .. line .. ', ' .. sender .. ') Entry')
    end

    local TargAccBal = 0
    local TargIsFriend = false
    local TargGuildIsFriend = false

    if AccountMode then
        GetBalance(sender)
        TargAccBal = mq.TLO.Macro.Return()
    end
    if FriendMode then
        GetFriend(sender)
        TargIsFriend = mq.TLO.Macro.Return()
    end
    if GuildMode then
        GetGuild(mq.TLO.Spawn("PC " .. sender).Guild())
        TargGuildIsFriend = mq.TLO.Macro.Return()
    end

    if BuffGuildOnly and not mq.TLO.Spawn("PC " .. sender).Guild():Equal(mq.TLO.Me.Guild()) and not TargGuildIsFriend and not TargIsFriend then
        return
    end
    if TargAccBal <= SummonCost and AccountMode and not TargIsFriend and not FriendFree and not TargGuildIsFriend and not GuildFree then
        return
    end

    if mq.TLO.Me.Class.Name():Equal("Magician") then
        mq.cmd('/say ')
        local TargetName = sender
        if mq.TLO.Me.Sitting() then
            mq.cmd('/stand up')
        end
        mq.delay(2000)
        mq.cmd('/target "' .. sender .. '" pc')
        mq.delay(5000, function() return mq.TLO.Target.ID() end)
        mq.cmd('/say Casting Perfected Levitation on ' .. mq.TLO.Target.CleanName())
        CHATMETHOD1('Levitation: ' .. mq.TLO.Target.CleanName())
        CHATMETHOD('Levitation: ' .. mq.TLO.Target.CleanName())
        if AccountMode and not TargIsFriend and not FriendFree and not TargGuildIsFriend and not GuildFree then
            SetIni("Mcbuffin.Accounts.ini", "Balances", sender, mq.TLO.Math.Calc(mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", sender) - SummonCost))
        end
        mq.cmd('/mqlog Casting Levitation: ' .. mq.TLO.Target.CleanName())
        CASTMODE("1202", "alt")
    elseif mq.TLO.Me.Class.Name():Equal("Enchanter") then
        CASTMODE("1202", "alt")
    end

    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Event_LeviMe(' .. line .. ', ' .. sender .. ') Exit')
    end
    return
end

-- Subroutine: Event_Mgbuff
function Event_Mgbuff(line, sender)
    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Event_Mgbuff(' .. line .. ', ' .. sender .. ') Entry')
    end

    local TargAccBal = 0
    local TargIsFriend = false
    local TargGuildIsFriend = false

    if AccountMode then
        GetBalance(sender)
        TargAccBal = mq.TLO.Macro.Return()
    end
    if FriendMode then
        GetFriend(sender)
        TargIsFriend = mq.TLO.Macro.Return()
    end
    if GuildMode then
        GetGuild(mq.TLO.Spawn("PC " .. sender).Guild())
        TargGuildIsFriend = mq.TLO.Macro.Return()
    end

    CHATMETHOD1('Started MGBuff: ' .. mq.TLO.Target.CleanName())
    CHATMETHOD('Started MGBuff: ' .. mq.TLO.Target.CleanName())
    if AccountMode and not TargIsFriend and not FriendFree and not TargGuildIsFriend and not GuildFree then
        SetIni("Mcbuffin.Accounts.ini", "Balances", sender, mq.TLO.Math.Calc(mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", sender) - SummonCost))
    end
    mq.cmd('/mqlog MGBuffing: ' .. mq.TLO.Target.CleanName())
    if mq.TLO.Me.Class.Name():Equal("Magician") or mq.TLO.Me.Class.Name():Equal("Enchanter") or mq.TLO.Me.Class.Name():Equal("Ranger") or mq.TLO.Me.Class.Name():Equal("Shaman") or mq.TLO.Me.Class.Name():Equal("Cleric") or mq.TLO.Me.Class.Name():Equal("Druid") or mq.TLO.Me.Class.Name():Equal("Paladin") or mq.TLO.Me.Class.Name():Equal("Beastlord") then
        CASTMODE("Tranquil Blessings", "alt")
    end

    if BuffGuildOnly and not mq.TLO.Spawn("PC " .. sender).Guild():Equal(mq.TLO.Me.Guild()) and not TargGuildIsFriend and not TargIsFriend then
        return
    end
    if TargAccBal <= SummonCost and AccountMode and not TargIsFriend and not FriendFree and not TargGuildIsFriend and not GuildFree then
        ACCOUNTCHAT(sender .. ' (' .. sender .. ')Balance:(' .. TargAccBal .. ') Buff Cost:(' .. BuffCost .. ') Summon Cost:(' .. SummonCost .. ')')
        return
    else
        local TargetName = sender
        if mq.TLO.Me.Sitting() then
            mq.cmd('/stand up')
        end
        mq.delay(2000)
        mq.cmd('/target id ' .. mq.TLO.Spawn('PC "' .. TargetName .. '"').ID())
        mq.delay(1000, function() return mq.TLO.Target.ID() end)
        CHATMETHOD1('Giving MGBuff: ' .. mq.TLO.Target.CleanName())
        CHATMETHOD('Giving MGBuff: ' .. mq.TLO.Target.CleanName())
        if AccountMode and not TargIsFriend and not FriendFree and not TargGuildIsFriend and not GuildFree then
            SetIni("Mcbuffin.Accounts.ini", "Balances", sender, mq.TLO.Math.Calc(mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", sender) - SummonCost))
        end
        mq.cmd('/mqlog Giving MGBuff: ' .. mq.TLO.Target.CleanName())
        if mq.TLO.Me.Class.Name():Equal("Magician") then
            CASTMODE(mq.TLO.Spell(MageHighLvl14Buff).RankName(), MageHighLvl14BuffGem, 15000)
        elseif mq.TLO.Me.Class.Name():Equal("Cleric") then
            CASTMODE(mq.TLO.Spell(ClericHighLvlBuff14).RankName(), ClericHighLvlBuff14Gem, 15000)
        elseif mq.TLO.Me.Class.Name():Equal("Enchanter") then
            CASTMODE(mq.TLO.Spell(EnchanterHighLvlBuff14).RankName(), EnchanterHighLvlBuff14Gem, 15000)
        elseif mq.TLO.Me.Class.Name():Equal("Ranger") then
            CASTMODE(mq.TLO.Spell(RangerHighLvlBuff14).RankName(), RangerHighLvlBuff14Gem, 15000)
        elseif mq.TLO.Me.Class.Name():Equal("Shaman") then
            CASTMODE(mq.TLO.Spell(ShamanHighLvlBuff14).RankName(), ShamanHighLvlBuff14Gem, 15000)
        elseif mq.TLO.Me.Class.Name():Equal("Paladin") then
            CASTMODE(mq.TLO.Spell(PaladinHighLvlBuff14).RankName(), PaladinHighLvlBuff14Gem, 15000)
        elseif mq.TLO.Me.Class.Name():Equal("Druid") then
            CASTMODE(mq.TLO.Spell(DruidHighLvlBuff14).RankName(), DruidHighLvlBuff14Gem, 15000)
        elseif mq.TLO.Me.Class.Name():Equal("Beastlord") then
            CASTMODE(mq.TLO.Spell(BeastlordHighLvlBuff14).RankName(), BeastlordHighLvlBuff14Gem, 15000)
        end
    end

    if ShowDebug then
        mq.cmd('/echo [DEBUG] [' .. mq.TLO.Macro.Name() .. ' @ ' .. mq.TLO.Macro.CurLine() .. '] ---> Sub Event_Mgbuff(' .. line .. ', ' .. sender .. ') Exit')
    end
    return
end

function Event_Hail(Line, Sender)
    if ShowDebug then
        mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Hail(" .. Line .. ", " .. Sender .. ") Entry")
    end

    local TargAccBal = 0
    local TargIsFriend = false
    local TargGuildIsFriend = false

    if AccountMode then
        mq.cmd("/call GetBalance " .. Sender)
        TargAccBal = mq.TLO.Macro.Return()
    end

    if FriendMode then
        mq.cmd("/call GetFriend " .. Sender)
        TargIsFriend = mq.TLO.Macro.Return()
    end

    if GuildMode then
        mq.cmd("/call GetGuild " .. mq.TLO.Spawn("PC " .. Sender).Guild())
        TargGuildIsFriend = mq.TLO.Macro.Return()
    end

    if BuffGuildOnly and not mq.TLO.Spawn("PC " .. Sender).Guild():Equal(mq.TLO.Me.Guild()) and (not TargGuildIsFriend or not TargIsFriend) then
        return
    end
    
    if mq.TLO.Me.Class.Name():Equal("Shaman") and Advertise then
        mq.cmd("/echo " .. Sender .. " Please give me 1.5 minutes to buff you. Stay in range. If I am casting already, remember you are in queue and need to wait longer until I sit down.")
    elseif mq.TLO.Me.Class.Name():Equal("Cleric") and Advertise then
        mq.cmd("/echo " .. Sender .. " Please give me 1 minute to buff you. Do /say Rez 96%. Stay in range. If I am casting already, remember you are in queue and need to wait longer until I sit down.")
    elseif mq.TLO.Me.Class.Name():Equal("Beastlord") and Advertise then
        mq.cmd("/echo " .. Sender .. " Please give me 2 minutes to buff you. Remember my buffs don't stack. Stay in range. If I am casting already, remember you are in queue and need to wait longer until I sit down.")
    elseif mq.TLO.Me.Class.Name():Equal("Ranger") and Advertise then
        mq.cmd("/echo " .. Sender .. " Please give me 1.5 minutes to buff you. Stay in range. If I am casting already, remember you are in queue and need to wait longer until I sit down.")
    elseif mq.TLO.Me.Class.Name():Equal("Enchanter") and Advertise then
        mq.cmd("/echo " .. Sender .. " Please give me 1.5 minutes to buff you. Stay in range. If I am casting already, remember you are in queue and need to wait longer until I sit down.")
    elseif mq.TLO.Me.Class.Name():Equal("Necromancer") and Advertise then
        mq.cmd("/echo " .. Sender .. " Please use \"/say summon\" to summon your corpse. Please be the group leader. Follow these instructions to make a macro key to \"summon\" and \"Rez\" with one hotkey made from your social tab in your \"Actions Window\" where it says camp etc. \"Line #1 /say summon\" \"Line #2 /pause 20\" \"Line #3 /invite\" \"Line #4 /pause 100\" \"Line #5 /say Rez\".")
    elseif mq.TLO.Me.Class.Name():Equal("Shadowknight") and Advertise then
        mq.cmd("/echo " .. Sender .. " Please use \"/say summon\" to summon your corpse. Please be the group leader. Follow these instructions to make a macro key to \"summon\" and \"Rez\" with one hotkey made from your social tab in your \"Actions Window\" where it says camp etc. \"Line #1 /say summon\" \"Line #2 /pause 20\" \"Line #3 /invite\" \"Line #4 /pause 100\" \"Line #5 /say Rez\".")
    elseif mq.TLO.Me.Class.Name():Equal("Magician") and Advertise then
        mq.cmd("/echo " .. Sender .. " Please say toys, toys (1-20), rod, drod, invis, other, or arrows. Stay in range. If I am casting already, remember you are in queue and need to wait longer until I sit down.")
    elseif mq.TLO.Me.Class.Name():Equal("Druid") and Advertise then
        mq.cmd("/echo " .. Sender .. " Please say \"ports\" for a list of ports. Please give me 1 minute to buff. Please wait for buffs to be finished before taking the port I gave you. Thank you. If I am casting already, remember you are in queue and need to wait longer until I sit down.")
    elseif mq.TLO.Me.Class.Name():Equal("Wizard") and Advertise then
        mq.cmd("/echo " .. Sender .. " Please say \"ports\" for a list of ports. Please wait for buffers to buff you before you leave the buffing area. Thank you.")
    elseif mq.TLO.Me.Class.Name():Equal("Paladin") and Advertise then
        mq.cmd("/echo " .. Sender .. " Please give me 1.5 minutes to buff you. Stay in range. If I am casting already, remember you are in queue and need to wait longer until I sit down.")
    end
    
    if not mq.TLO.Me.Class.Name():Equal("Necromancer") and not mq.TLO.Me.Class.Name():Equal("Wizard") then
        mq.cmd("/call BuffTarget " .. Sender)
    end
    
    if ShowDebug then
        mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Hail(" .. Line .. ", " .. Sender .. ") Exit")
    end
    
    return

    function SummonToys(ToyTarget, RequestedAmount)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub SummonToys(" .. ToyTarget .. ", " .. RequestedAmount .. ") Entry")
        end
    
        local TargAccBal = 0
        local TargIsFriend = false
        local TargGuildIsFriend = false
    
        if AccountMode then
            mq.cmd("/call GetBalance " .. ToyTarget)
            TargAccBal = mq.TLO.Macro.Return()
        end
    
        if FriendMode then
            mq.cmd("/call GetFriend " .. ToyTarget)
            TargIsFriend = mq.TLO.Macro.Return()
        end
    
        if GuildMode then
            mq.cmd("/call GetGuild " .. mq.TLO.Spawn("PC " .. ToyTarget).Guild())
            TargGuildIsFriend = mq.TLO.Macro.Return()
        end
    
        if BuffGuildOnly and not mq.TLO.Spawn("PC " .. ToyTarget).Guild():Equal(mq.TLO.Me.Guild()) and (not TargGuildIsFriend or not TargIsFriend) then
            return
        end
    
        if TargAccBal <= SummonCost and AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
            mq.cmd("/echo " .. PortTarget .. " (" .. ToyTarget .. ") Balance: (" .. TargAccBal .. ") Buff Cost: (" .. BuffCost .. ") Summon Cost: (" .. SummonCost .. ")")
            return
        end
    
        if mq.TLO.Me.Class.Name():Equal("Magician") then
            local TargetName = ToyTarget
            if mq.TLO.Me.Sitting() then mq.cmd("/stand") end
            mq.delay(2000)
            mq.cmd("/target id " .. mq.TLO.Spawn("PC " .. TargetName).ID())
            mq.delay(1000, function() return mq.TLO.Target.ID() end)
    
            local ToyAmount = 0
            if RequestedAmount >= MaxRequests then
                ToyAmount = MaxRequests
            else
                ToyAmount = RequestedAmount
            end
    
            mq.cmd("/echo Giving Weapons " .. ToyAmount .. " : " .. mq.TLO.Target.CleanName())
            mq.cmd("/mqlog Giving Weapons " .. ToyAmount .. " : " .. mq.TLO.Target.CleanName())
    
            for i = 1, ToyAmount do
                mq.cmd("/call CASTMODE \"" .. mq.TLO.Spell(MageSummon1).RankName() .. "\" " .. MageSummon1Gem .. " 15s")
                mq.cmd("/call CASTMODE \"" .. mq.TLO.Spell(MageSummon2).RankName() .. "\" " .. MageSummon2Gem .. " 15s")
                mq.cmd("/call CASTMODE \"" .. mq.TLO.Spell(MageSummon3).RankName() .. "\" " .. MageSummon3Gem .. " 15s")
                mq.cmd("/call CASTMODE \"" .. mq.TLO.Spell(MageSummon4).RankName() .. "\" " .. MageSummon4Gem .. " 15s")
    
                if AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
                    mq.cmd("/call SetIni \"Mcbuffin.Accounts.ini\" \"Balances\" \"" .. ToyTarget .. "\" \"" .. mq.TLO.Math.Calc(mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", ToyTarget) - SummonCost) .. "\"")
                end
            end
        end
    
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub SummonToys(" .. ToyTarget .. ", " .. RequestedAmount .. ") Exit")
        end
    
        return
    end

    function Event_ToysCustom(Line, Sender, Amount)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_ToysCustom(" .. Line .. ", " .. Sender .. ", " .. Amount .. ") Entry")
        end
    
        local TargAccBal = 0
        local TargIsFriend = false
        local TargGuildIsFriend = false
    
        if AccountMode then
            mq.cmd("/call GetBalance " .. Sender)
            TargAccBal = mq.TLO.Macro.Return()
        end
    
        if FriendMode then
            mq.cmd("/call GetFriend " .. Sender)
            TargIsFriend = mq.TLO.Macro.Return()
        end
    
        if GuildMode then
            mq.cmd("/call GetGuild " .. mq.TLO.Spawn("PC " .. Sender).Guild())
            TargGuildIsFriend = mq.TLO.Macro.Return()
        end
    
        if BuffGuildOnly and not mq.TLO.Spawn("PC " .. Sender).Guild():Equal(mq.TLO.Me.Guild()) and (not TargGuildIsFriend or not TargIsFriend) then
            return
        end
    
        mq.cmd("/call SummonToys " .. Sender .. " " .. Amount)
    
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_ToysCustom(" .. Line .. ", " .. Sender .. ", " .. Amount .. ") Exit")
        end
    
        return
    end

    function Event_Arrows(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Arrows(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        local TargAccBal = 0
        local TargIsFriend = false
        local TargGuildIsFriend = false
    
        if AccountMode then
            mq.cmd("/call GetBalance " .. Sender)
            TargAccBal = mq.TLO.Macro.Return()
        end
    
        if FriendMode then
            mq.cmd("/call GetFriend " .. Sender)
            TargIsFriend = mq.TLO.Macro.Return()
        end
    
        if GuildMode then
            mq.cmd("/call GetGuild " .. mq.TLO.Spawn("PC " .. Sender).Guild())
            TargGuildIsFriend = mq.TLO.Macro.Return()
        end
    
        if BuffGuildOnly and not mq.TLO.Spawn("PC " .. Sender).Guild():Equal(mq.TLO.Me.Guild()) and (not TargGuildIsFriend or not TargIsFriend) then
            return
        end
    
        if TargAccBal <= SummonCost and AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
            mq.cmd("/echo " .. Sender .. " (" .. Sender .. ") Balance: (" .. TargAccBal .. ") Buff Cost: (" .. BuffCost .. ") Summon Cost: (" .. SummonCost .. ")")
            return
        end
    
        if mq.TLO.Me.Class.Name():Equal("Magician") then
            local TargetName = Sender
            if mq.TLO.Me.Sitting() then mq.cmd("/stand") end
            mq.delay(2000)
            mq.cmd("/target id " .. mq.TLO.Spawn("PC " .. TargetName).ID())
            mq.delay(1000, function() return mq.TLO.Target.ID() end)
    
            mq.cmd("/echo Giving Arrows: " .. mq.TLO.Target.CleanName())
            mq.cmd("/mqlog Giving Arrows: " .. mq.TLO.Target.CleanName())
    
            if AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
                mq.cmd("/call SetIni \"Mcbuffin.Accounts.ini\" \"Balances\" \"" .. Sender .. "\" \"" .. mq.TLO.Math.Calc(mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", Sender) - SummonCost) .. "\"")
            end
    
            mq.cmd("/call CASTMODE \"" .. mq.TLO.Spell(MageSummonArrows).RankName() .. "\" " .. MageSummonArrowsGem .. " 15s")
        end
    
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Arrows(" .. Line .. ", " .. Sender .. ") Exit")
        end
    
        return
    end

    function Event_Invis(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Invis(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        local TargAccBal = 0
        local TargIsFriend = false
        local TargGuildIsFriend = false
    
        if AccountMode then
            mq.cmd("/call GetBalance " .. Sender)
            TargAccBal = mq.TLO.Macro.Return()
        end
    
        if FriendMode then
            mq.cmd("/call GetFriend " .. Sender)
            TargIsFriend = mq.TLO.Macro.Return()
        end
    
        if GuildMode then
            mq.cmd("/call GetGuild " .. mq.TLO.Spawn("PC " .. Sender).Guild())
            TargGuildIsFriend = mq.TLO.Macro.Return()
        end
    
        if BuffGuildOnly and not mq.TLO.Spawn("PC " .. Sender).Guild():Equal(mq.TLO.Me.Guild()) and (not TargGuildIsFriend or not TargIsFriend) then
            return
        end
    
        if TargAccBal <= SummonCost and AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
            mq.cmd("/echo " .. Sender .. " (" .. Sender .. ") Balance: (" .. TargAccBal .. ") Buff Cost: (" .. BuffCost .. ") Summon Cost: (" .. SummonCost .. ")")
            return
        end
    
        if mq.TLO.Me.Class.Name():Equal("Magician") then
            local TargetName = Sender
            if mq.TLO.Me.Sitting() then mq.cmd("/stand") end
            mq.delay(2000)
            mq.cmd("/target id " .. mq.TLO.Spawn("PC " .. TargetName).ID())
            mq.delay(1000, function() return mq.TLO.Target.ID() end)
    
            mq.cmd("/echo Giving Invis Stone: " .. mq.TLO.Target.CleanName())
            mq.cmd("/mqlog Giving Invis Stone: " .. mq.TLO.Target.CleanName())
    
            if AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
                mq.cmd("/call SetIni \"Mcbuffin.Accounts.ini\" \"Balances\" \"" .. Sender .. "\" \"" .. mq.TLO.Math.Calc(mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", Sender) - SummonCost) .. "\"")
            end
    
            mq.cmd("/call CASTMODE \"" .. mq.TLO.Spell(MageSummonInvis).RankName() .. "\" " .. MageSummonInvisGem .. " 15s")
        end
    
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Invis(" .. Line .. ", " .. Sender .. ") Exit")
        end
    
        return
    end

    function Event_ModRod(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_ModRod(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        local TargAccBal = 0
        local TargIsFriend = false
        local TargGuildIsFriend = false
    
        if AccountMode then
            mq.cmd("/call GetBalance " .. Sender)
            TargAccBal = mq.TLO.Macro.Return()
        end
    
        if FriendMode then
            mq.cmd("/call GetFriend " .. Sender)
            TargIsFriend = mq.TLO.Macro.Return()
        end
    
        if GuildMode then
            mq.cmd("/call GetGuild " .. mq.TLO.Spawn("PC " .. Sender).Guild())
            TargGuildIsFriend = mq.TLO.Macro.Return()
        end
    
        if BuffGuildOnly and not mq.TLO.Spawn("PC " .. Sender).Guild():Equal(mq.TLO.Me.Guild()) and (not TargGuildIsFriend or not TargIsFriend) then
            return
        end
    
        if TargAccBal <= SummonCost and AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
            mq.cmd("/echo " .. Sender .. " (" .. Sender .. ") Balance: (" .. TargAccBal .. ") Buff Cost: (" .. BuffCost .. ") Summon Cost: (" .. SummonCost .. ")")
            return
        end
    
        if mq.TLO.Me.Class.Name():Equal("Magician") then
            local TargetName = Sender
            if mq.TLO.Me.Sitting() then mq.cmd("/stand") end
            mq.delay(2000)
            mq.cmd("/target id " .. mq.TLO.Spawn("PC " .. TargetName).ID())
            mq.delay(1000, function() return mq.TLO.Target.ID() end)
    
            mq.cmd("/echo Giving ModRod: " .. mq.TLO.Target.CleanName())
            mq.cmd("/mqlog Giving ModRod: " .. mq.TLO.Target.CleanName())
    
            if AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
                mq.cmd("/call SetIni \"Mcbuffin.Accounts.ini\" \"Balances\" \"" .. Sender .. "\" \"" .. mq.TLO.Math.Calc(mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", Sender) - SummonCost) .. "\"")
            end
    
            mq.cmd("/call CASTMODE \"Summon Modulation Shard\" alt")
            mq.cmd("/call CASTMODE \"" .. mq.TLO.Spell(MageSummonModRod1).RankName() .. "\" " .. MageSummonModRod1Gem .. " 15s")
            mq.cmd("/call CASTMODE \"" .. mq.TLO.Spell(MageSummonModRod2).RankName() .. "\" " .. MageSummonModRod2Gem .. " 15s")
            mq.cmd("/call CASTMODE \"" .. mq.TLO.Spell(MageSummonModRod3).RankName() .. "\" " .. MageSummonModRod3Gem .. " 15s")
            mq.cmd("/call CASTMODE \"" .. mq.TLO.Spell(MageSummonModRod4).RankName() .. "\" " .. MageSummonModRod4Gem .. " 15s")
        end
    
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_ModRod(" .. Line .. ", " .. Sender .. ") Exit")
        end
    
        return
    end

    function Event_DmgRod(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_DmgRod(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        local TargAccBal = 0
        local TargIsFriend = false
        local TargGuildIsFriend = false
    
        if AccountMode then
            mq.cmd("/call GetBalance " .. Sender)
            TargAccBal = mq.TLO.Macro.Return()
        end
    
        if FriendMode then
            mq.cmd("/call GetFriend " .. Sender)
            TargIsFriend = mq.TLO.Macro.Return()
        end
    
        if GuildMode then
            mq.cmd("/call GetGuild " .. mq.TLO.Spawn("PC " .. Sender).Guild())
            TargGuildIsFriend = mq.TLO.Macro.Return()
        end
    
        if BuffGuildOnly and not mq.TLO.Spawn("PC " .. Sender).Guild():Equal(mq.TLO.Me.Guild()) and (not TargGuildIsFriend or not TargIsFriend) then
            return
        end
    
        if TargAccBal <= SummonCost and AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
            mq.cmd("/echo " .. Sender .. " (" .. Sender .. ") Balance: (" .. TargAccBal .. ") Buff Cost: (" .. BuffCost .. ") Summon Cost: (" .. SummonCost .. ")")
            return
        end
    
        if mq.TLO.Me.Class.Name():Equal("Magician") then
            local TargetName = Sender
            if mq.TLO.Me.Sitting() then mq.cmd("/stand") end
            mq.delay(2000)
            mq.cmd("/target id " .. mq.TLO.Spawn("PC " .. TargetName).ID())
            mq.delay(1000, function() return mq.TLO.Target.ID() end)
    
            mq.cmd("/echo Giving ModRod: " .. mq.TLO.Target.CleanName())
            mq.cmd("/mqlog Giving ModRod: " .. mq.TLO.Target.CleanName())
    
            if AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
                mq.cmd("/call SetIni \"Mcbuffin.Accounts.ini\" \"Balances\" \"" .. Sender .. "\" \"" .. mq.TLO.Math.Calc(mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", Sender) - SummonCost) .. "\"")
            end
    
            mq.cmd("/call CASTMODE \"" .. mq.TLO.Spell(MageSummonDmgRod).RankName() .. "\" " .. MageSummonDmgRodGem .. " 15s")
        end
    
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_DmgRod(" .. Line .. ", " .. Sender .. ") Exit")
        end
    
        return
    end

    function Event_Other(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Other(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        local TargAccBal = 0
        local TargIsFriend = false
        local TargGuildIsFriend = false
    
        if AccountMode then
            mq.cmd("/call GetBalance " .. Sender)
            TargAccBal = mq.TLO.Macro.Return()
        end
    
        if FriendMode then
            mq.cmd("/call GetFriend " .. Sender)
            TargIsFriend = mq.TLO.Macro.Return()
        end
    
        if GuildMode then
            mq.cmd("/call GetGuild " .. mq.TLO.Spawn("PC " .. Sender).Guild())
            TargGuildIsFriend = mq.TLO.Macro.Return()
        end
    
        if BuffGuildOnly and not mq.TLO.Spawn("PC " .. Sender).Guild():Equal(mq.TLO.Me.Guild()) and (not TargGuildIsFriend or not TargIsFriend) then
            return
        end
    
        if TargAccBal <= SummonCost and AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
            mq.cmd("/echo " .. Sender .. " (" .. Sender .. ") Balance: (" .. TargAccBal .. ") Buff Cost: (" .. BuffCost .. ") Summon Cost: (" .. SummonCost .. ")")
            return
        end
    
        if mq.TLO.Me.Class.Name():Equal("Magician") then
            local TargetName = Sender
            if mq.TLO.Me.Sitting() then mq.cmd("/stand") end
            mq.delay(2000)
            mq.cmd("/target id " .. mq.TLO.Spawn("PC " .. TargetName).ID())
            mq.delay(1000, function() return mq.TLO.Target.ID() end)
    
            mq.cmd("/echo Giving Gifts: " .. mq.TLO.Target.CleanName())
            mq.cmd("/mqlog Giving Gifts: " .. mq.TLO.Target.CleanName())
    
            if AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
                mq.cmd("/call SetIni \"Mcbuffin.Accounts.ini\" \"Balances\" \"" .. Sender .. "\" \"" .. mq.TLO.Math.Calc(mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", Sender) - SummonCost) .. "\"")
            end
    
            mq.cmd("/call CASTMODE \"" .. mq.TLO.Spell(MageSummonInvis).RankName() .. "\" " .. MageSummonInvisGem .. " 15s")
            mq.cmd("/call CASTMODE \"" .. mq.TLO.Spell(MageSummonLev).RankName() .. "\" " .. MageSummonLevGem .. " 15s")
            mq.cmd("/call CASTMODE \"" .. mq.TLO.Spell(MageSummonDmgRod).RankName() .. "\" " .. MageSummonDmgRodGem .. " 15s")
            mq.cmd("/call CASTMODE \"Summon Modulation Shard\" alt 15s")
            mq.cmd("/call CASTMODE \"" .. mq.TLO.Spell(MageSummonModRod1).RankName() .. "\" " .. MageSummonModRod1Gem .. " 15s")
            mq.cmd("/call CASTMODE \"" .. mq.TLO.Spell(MageSummonModRod2).RankName() .. "\" " .. MageSummonModRod2Gem .. " 15s")
            mq.cmd("/call CASTMODE \"" .. mq.TLO.Spell(MageSummonModRod3).RankName() .. "\" " .. MageSummonModRod3Gem .. " 15s")
            mq.cmd("/call CASTMODE \"" .. mq.TLO.Spell(MageSummonModRod4).RankName() .. "\" " .. MageSummonModRod4Gem .. " 15s")
        end
    
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Other(" .. Line .. ", " .. Sender .. ") Exit")
        end
    
        return
    end
    
    function Event_RezMe(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_RezMe(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        local TargAccBal = 0
        local TargIsFriend = false
        local TargGuildIsFriend = false
    
        if AccountMode then
            mq.cmd("/call GetBalance " .. Sender)
            TargAccBal = mq.TLO.Macro.Return()
        end
    
        if FriendMode then
            mq.cmd("/call GetFriend " .. Sender)
            TargIsFriend = mq.TLO.Macro.Return()
        end
    
        if GuildMode then
            mq.cmd("/call GetGuild " .. mq.TLO.Spawn("PC " .. Sender).Guild())
            TargGuildIsFriend = mq.TLO.Macro.Return()
        end
    
        if BuffGuildOnly and not mq.TLO.Spawn("PC " .. Sender).Guild():Equal(mq.TLO.Me.Guild()) and (not TargGuildIsFriend or not TargIsFriend) then
            return
        end
    
        if TargAccBal <= SummonCost and AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
            mq.cmd("/echo " .. Sender .. " (" .. Sender .. ") Balance: (" .. TargAccBal .. ") Buff Cost: (" .. BuffCost .. ") Summon Cost: (" .. SummonCost .. ")")
            return
        end
    
        if mq.TLO.Me.Class.Name():Equal("Cleric") then
            local TargetName = Sender
            if mq.TLO.Me.Sitting() then mq.cmd("/stand") end
    
            mq.cmd("/target " .. Sender .. " corpse")
            mq.delay(1000, function() return mq.TLO.Target.ID() end)
            mq.cmd("/say Please stay in Range Inc Resurrection " .. Sender)
            mq.cmd("/echo Please stay in Range Inc Resurrection " .. Sender)
            mq.cmd("/echo Rezzing: " .. mq.TLO.Target.CleanName())
            mq.cmd("/mqlog Rezzing: " .. mq.TLO.Target.CleanName())
    
            if AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
                mq.cmd("/call SetIni \"Mcbuffin.Accounts.ini\" \"Balances\" \"" .. Sender .. "\" \"" .. mq.TLO.Math.Calc(mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", Sender) - SummonCost) .. "\"")
            end
    
            mq.cmd("/call CASTMODE \"Blessing of Resurrection\" alt")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Paladin") then
            local TargetName = Sender
            if mq.TLO.Me.Sitting() then mq.cmd("/stand") end
    
            mq.cmd("/target " .. Sender .. " corpse")
            mq.delay(1000, function() return mq.TLO.Target.ID() end)
            mq.cmd("/say Please stay in Range Inc Resurrection " .. Sender)
            mq.cmd("/echo Rezzing Inc: " .. mq.TLO.Target.CleanName())
            mq.cmd("/mqlog Rezzing: " .. mq.TLO.Target.CleanName())
    
            if AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
                mq.cmd("/call SetIni \"Mcbuffin.Accounts.ini\" \"Balances\" \"" .. Sender .. "\" \"" .. mq.TLO.Math.Calc(mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", Sender) - SummonCost) .. "\"")
            end
    
            mq.cmd("/call CASTMODE \"Gift of Resurrection\" alt")
        end
    
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_RezMe(" .. Line .. ", " .. Sender .. ") Exit")
        end
    
        return
    end

    function Event_SummonMe(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_SummonMe(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        local TargAccBal = 0
        local TargIsFriend = false
        local TargGuildIsFriend = false
    
        if AccountMode then
            mq.cmd("/call GetBalance " .. Sender)
            TargAccBal = mq.TLO.Macro.Return()
        end
    
        if FriendMode then
            mq.cmd("/call GetFriend " .. Sender)
            TargIsFriend = mq.TLO.Macro.Return()
        end
    
        if GuildMode then
            mq.cmd("/call GetGuild " .. mq.TLO.Spawn("PC " .. Sender).Guild())
            TargGuildIsFriend = mq.TLO.Macro.Return()
        end
    
        if BuffGuildOnly and not mq.TLO.Spawn("PC " .. Sender).Guild():Equal(mq.TLO.Me.Guild()) and (not TargGuildIsFriend or not TargIsFriend) then
            return
        end
    
        if TargAccBal <= SummonCost and AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
            mq.cmd("/echo " .. Sender .. " (" .. Sender .. ") Balance: (" .. TargAccBal .. ") Buff Cost: (" .. BuffCost .. ") Summon Cost: (" .. SummonCost .. ")")
            return
        end
    
        if mq.TLO.Me.Class.Name():Equal("Necromancer") then
            mq.cmd("/say Please stay in Range " .. Sender .. " while I recover your Corpse")
            mq.cmd("/echo Please stay in Range " .. Sender .. " while I recover your Corpse")
            local TargetName = Sender
            if mq.TLO.Me.Sitting() then mq.cmd("/stand") end
            mq.delay(2000)
            mq.cmd("/target " .. Sender .. " pc")
            mq.delay(5000, function() return mq.TLO.Target.ID() end)
            mq.cmd("/invite")
            mq.cmd("/tell " .. Sender .. " Take my invite please.. give me a few seconds to \"Summon\" your Rotting Corpse.. its gotta be around here somewhere. Ahhh here it is, give me a few Seconds... Dont forget to \"/say Rez\" in 9 seconds")
            mq.cmd("/echo Summoning: " .. mq.TLO.Target.CleanName())
            mq.cmd("/mqlog Summoning: " .. mq.TLO.Target.CleanName())
    
            if AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
                mq.cmd("/call SetIni \"Mcbuffin.Accounts.ini\" \"Balances\" \"" .. Sender .. "\" \"" .. mq.TLO.Math.Calc(mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", Sender) - SummonCost) .. "\"")
            end
    
            mq.delay(8000)
            mq.cmd("/call CASTMODE \"Summon Remains\" alt")
            mq.delay(2000)
            mq.cmd("/disband")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Shadowknight") then
            local TargetName = Sender
            if mq.TLO.Me.Sitting() then mq.cmd("/stand") end
            mq.delay(2000)
            mq.cmd("/target " .. Sender .. " pc")
            mq.delay(5000, function() return mq.TLO.Target.ID() end)
            mq.cmd("/invite")
            mq.cmd("/tell " .. Sender .. " Take my invite please.. give me a few seconds to \"Summon\" your Rotting Corpse.. its gotta be around here somewhere. Ahhh here it is, give me a few Seconds... Dont forget to \"/say Rez\" in 9 seconds")
            mq.cmd("/echo Summoning: " .. mq.TLO.Target.CleanName())
            mq.cmd("/mqlog Summoning: " .. mq.TLO.Target.CleanName())
    
            if AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
                mq.cmd("/call SetIni \"Mcbuffin.Accounts.ini\" \"Balances\" \"" .. Sender .. "\" \"" .. mq.TLO.Math.Calc(mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", Sender) - SummonCost) .. "\"")
            end
    
            mq.delay(8000)
            mq.cmd("/call CASTMODE \"Summon Remains\" alt")
            mq.delay(2000)
            mq.cmd("/disband")
        end
    
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_SummonMe(" .. Line .. ", " .. Sender .. ") Exit")
        end
    
        return
    end

    function Event_InvisMe(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_InvisMe(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        local TargAccBal = 0
        local TargIsFriend = false
        local TargGuildIsFriend = false
    
        if AccountMode then
            mq.cmd("/call GetBalance " .. Sender)
            TargAccBal = mq.TLO.Macro.Return()
        end
    
        if FriendMode then
            mq.cmd("/call GetFriend " .. Sender)
            TargIsFriend = mq.TLO.Macro.Return()
        end
    
        if GuildMode then
            mq.cmd("/call GetGuild " .. mq.TLO.Spawn("PC " .. Sender).Guild())
            TargGuildIsFriend = mq.TLO.Macro.Return()
        end
    
        if BuffGuildOnly and not mq.TLO.Spawn("PC " .. Sender).Guild():Equal(mq.TLO.Me.Guild()) and (not TargGuildIsFriend or not TargIsFriend) then
            return
        end
    
        if TargAccBal <= SummonCost and AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
            mq.cmd("/echo " .. Sender .. " (" .. Sender .. ") Balance: (" .. TargAccBal .. ") Buff Cost: (" .. BuffCost .. ") Summon Cost: (" .. SummonCost .. ")")
            return
        end
    
        mq.cmd("/say Please stay in Range Inc Invisibility " .. Sender)
        mq.cmd("/echo Please stay in Range Inc Invisibility " .. Sender)
    
        if mq.TLO.Me.Class.Name():Equal("Magician") then
            local TargetName = Sender
            if mq.TLO.Me.Sitting() then mq.cmd("/stand") end
            mq.cmd("/target id " .. mq.TLO.Spawn("PC " .. TargetName).ID())
            mq.delay(1000, function() return mq.TLO.Target.ID() end)
            mq.cmd("/invite " .. Sender)
    
            mq.cmd("/echo Invising: " .. mq.TLO.Target.CleanName())
            mq.cmd("/mqlog Invising: " .. mq.TLO.Target.CleanName())
    
            if AccountMode and (not TargIsFriend and not FriendFree) and (not TargGuildIsFriend and not GuildFree) then
                mq.cmd("/call SetIni \"Mcbuffin.Accounts.ini\" \"Balances\" \"" .. Sender .. "\" \"" .. mq.TLO.Math.Calc(mq.TLO.Ini("Mcbuffin.Accounts.ini", "Balances", Sender) - SummonCost) .. "\"")
            end
        end
    
        mq.delay(6000)
    
        if mq.TLO.Me.Class.Name():Equal("Magician") then
            mq.cmd("/call CASTMODE \"1210\" alt")
        end
    
        mq.delay(2000)
        mq.cmd("/disband")
    
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_InvisMe(" .. Line .. ", " .. Sender .. ") Exit")
        end
    
        return
    end

    function Event_Ports(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Ports(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        local TargAccBal = 0
        local TargIsFriend = false
        local TargGuildIsFriend = false
    
        if AccountMode then
            mq.cmd("/call GetBalance " .. Sender)
            TargAccBal = mq.TLO.Macro.Return()
        end
    
        if FriendMode then
            mq.cmd("/call GetFriend " .. Sender)
            TargIsFriend = mq.TLO.Macro.Return()
        end
    
        if GuildMode then
            mq.cmd("/call GetGuild " .. mq.TLO.Spawn("PC " .. Sender).Guild())
            TargGuildIsFriend = mq.TLO.Macro.Return()
        end
    
        if BuffGuildOnly and not mq.TLO.Spawn("PC " .. Sender).Guild():Equal(mq.TLO.Me.Guild()) and (not TargGuildIsFriend or not TargIsFriend) then
            return
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/echo " .. Sender .. " " .. DruidPortTxt)
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/echo " .. Sender .. " " .. WizardPortTxt)
        end
    
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Ports(" .. Line .. ", " .. Sender .. ") Exit")
        end
    
        return
    end
    
    function Event_BlightfireMoors(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_BlightfireMoors(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Blightfire Moors\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Blightfire Moors\"")
        end
    
        return
    end
    
    function Event_Nexus(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Nexus(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Nexus\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Nexus\"")
        end
    
        return
    end

    function Event_Toxxulia(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Toxxulia(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Toxxulia\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Tox\"")
        end
    
        return
    end
    
    function Event_ButcherBlock(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_ButcherBlock(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Butcherblock\"")
        end
    
        return
    end
    
    function Event_Iceclad(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Iceclad(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Iceclad\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Iceclad\"")
        end
    
        return
    end
    
    function Event_Karana(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Karana(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Karana\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: North\"")
        end
    
        return
    end
    
    function Event_Commonlands(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Commonlands(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Commonlands\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Common\"")
        end
    
        return
    end
    
    function Event_SurefallGlade(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_SurefallGlade(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Surefall Glade\"")
        end
    
        return
    end
    
    function Event_StoneBrunt(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_StoneBrunt(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Stonebrunt\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Stonebrunt\"")
        end
    
        return
    end

    function Event_Grimling(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Grimling(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Grimling\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Grimling\"")
        end
    
        return
    end
    
    function Event_Feerrott(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Feerrott(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Feerrott\"")
        end
    
        return
    end
    
    function Event_Steamfont(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Steamfont(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Steamfont\"")
        end
    
        return
    end
    
    function Event_Combines(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Combines(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Combines\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Combine\"")
        end
    
        return
    end
    
    function Event_Ro(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Ro(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Ro\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Ro\"")
        end
    
        return
    end
    
    function Event_Twilight(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Twilight(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Twilight\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Twilight\"")
        end
    
        return
    end

    function Event_GreatDivide(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_GreatDivide(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Great Divide\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Great Divide\"")
        end
    
        return
    end
    
    function Event_WakeningLands(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_WakeningLands(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Wakening Lands\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Wakening Lands\"")
        end
    
        return
    end
    
    function Event_CobaltScar(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_CobaltScar(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Cobalt Scar\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Cobalt Scar\"")
        end
    
        return
    end
    
    function Event_Misty(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Misty(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Misty\"")
        end
    
        return
    end
    
    function Event_PoKnowledge(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_PoKnowledge(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Knowledge\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Knowledge\"")
        end
    
        return
    end
    
    function Event_LavaStorm(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_LavaStorm(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Lavastorm\"")
        end
    
        return
    end
    
    function Event_UnderShore(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_UnderShore(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Undershore\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Undershore\"")
        end
    
        return
    end

    function Event_Arcstone(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Arcstone(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Arcstone\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Arcstone\"")
        end
    
        return
    end

    function Event_GreatDivide(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_GreatDivide(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Great Divide\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Great Divide\"")
        end
    
        return
    end
    
    function Event_WakeningLands(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_WakeningLands(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Wakening Lands\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Wakening Lands\"")
        end
    
        return
    end
    
    function Event_CobaltScar(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_CobaltScar(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Cobalt Scar\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Cobalt Scar\"")
        end
    
        return
    end
    
    function Event_Misty(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Misty(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Misty\"")
        end
    
        return
    end
    
    function Event_PoKnowledge(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_PoKnowledge(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Knowledge\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Knowledge\"")
        end
    
        return
    end
    
    function Event_LavaStorm(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_LavaStorm(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Lavastorm\"")
        end
    
        return
    end
    
    function Event_UnderShore(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_UnderShore(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Undershore\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Undershore\"")
        end
    
        return
    end
    
    function Event_Arcstone(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Arcstone(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Arcstone\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Arcstone\"")
        end
    
        return
    end
    
    function Event_Natimbi(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Natimbi(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Natimbi\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Natimbi\"")
        end
    
        return
    end
    
    function Event_Dawnshroud(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Dawnshroud(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Dawnshroud\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Dawnshroud\"")
        end
    
        return
    end
    
    function Event_Barindu(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Barindu(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Barindu\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Barindu\"")
        end
    
        return
    end
    
    function Event_Bloodfields(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Bloodfields(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Bloodfields\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Bloodfields\"")
        end
    
        return
    end
    
    function Event_TheSteppes(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_TheSteppes(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: The Steppes\"")
        end
    
        return
    end

    function Event_BuriedSea(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_BuriedSea(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Buried Sea\"")
        end
    
        return
    end
    
    function Event_Slaughter(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Slaughter(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Slaughter\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Slaughter\"")
        end
    
        return
    end
    
    function Event_Direwind(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Direwind(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Direwind\"")
        end
    
        return
    end
    
    function Event_LopingPlains(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_LopingPlains(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Loping Plains\"")
        end
    
        return
    end
    
    function Event_PoTime(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_PoTime(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Plane of Time\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Plane of Time\"")
        end
    
        return
    end
    
    function Event_BrellsRest(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_BrellsRest(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Brell's Rest\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Brell's Rest\"")
        end
    
        return
    end

    function Event_Grounds(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Grounds(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: the Grounds\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: the Grounds\"")
        end
    
        return
    end
    
    function Event_BeastsDomain(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_BeastsDomain(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Beasts' Domain\"")
        end
    
        return
    end
    
    function Event_PillarsOfAlra(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_PillarsOfAlra(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Pillars of Alra\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Pillars of Alra\"")
        end
    
        return
    end
    
    function Event_ShardsLanding(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_ShardsLanding(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Shard's Landing\"")
        end
    
        return
    end
    
    function Event_WestKarana(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_WestKarana(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: West Karana\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: West\"")
        end
    
        return
    end
    
    function Event_Lceanium(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Lceanium(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Lceanium\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Lceanium\"")
        end
    
        return
    end

    function Event_TempestTemple(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_TempestTemple(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Tempest Temple\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Tempest Temple\"")
        end
    
        return
    end
    
    function Event_GFay(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_GFay(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Fay\"")
        end
    
        return
    end
    
    function Event_Nek(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Nek(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Nek\"")
        end
    
        return
    end
    
    function Event_Cazic(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Cazic(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Cazic\"")
        end
    
        return
    end
    
    function Event_Bind(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Bind(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate\"")
        end
    
        return
    end
    
    function Event_Sunderock(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Sunderock(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Sunderock Springs\"")
        end
    
        return
    end
    
    function Event_PrimaryAnchor(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_PrimaryAnchor(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Teleport Primary Anchor\"")
        end
    
        return
    end

    function Event_SecondaryAnchor(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_SecondaryAnchor(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Teleport Secondary Anchor\"")
        end
    
        return
    end
    
    function Event_Icefall(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Icefall(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Icefall Glacier\"")
        end
    
        return
    end
    
    function Event_Katta(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Katta(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Katta Castrum\"")
        end
    
        return
    end
    
    function Event_Dragonscale(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Dragonscale(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Dragonscale Hills\"")
        end
    
        return
    end
    
    function Event_Sarith(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Sarith(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Sarith\"")
        end
    
        return
    end
    
    function Event_Skyfire(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Skyfire(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Skyfire\"")
        end
    
        return
    end
    
    function Event_GDivide(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_GDivide(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: The Great Divide\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: The Great Divide\"")
        end
    
        return
    end

    function Event_Shadeweaver(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Shadeweaver(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Shadeweaver's Tangle\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Shadeweaver's Tangle\"")
        end
    
        return
    end
    
    function Event_TovCS(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_TovCS(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Cobalt Scar\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Cobalt Scar\"")
        end
    
        return
    end
    
    function Event_Shadow(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Shadow(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Shadow Valley\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Shadow Valley\"")
        end
    
        return
    end
    
    function Event_Laurion(Line, Sender)
        if ShowDebug then
            mq.cmd("/echo [DEBUG] [" .. mq.TLO.Macro.Name() .. " @ " .. mq.TLO.Macro.CurLine() .. "] ---> Sub Event_Laurion(" .. Line .. ", " .. Sender .. ") Entry")
        end
    
        if mq.TLO.Me.Class.Name():Equal("Druid") then
            mq.cmd("/call Port " .. Sender .. " \"Zephyr: Laurion\"")
        elseif mq.TLO.Me.Class.Name():Equal("Wizard") then
            mq.cmd("/call Port " .. Sender .. " \"Translocate: Laurion\"")
        end
    
        return
    end
    