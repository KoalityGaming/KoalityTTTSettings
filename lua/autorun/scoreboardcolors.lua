if SERVER then
	-- when the server loads this script, tell it to send it to clients
	AddCSLuaFile("scoreboardcolors.lua")
else
-- when a client runs it, add the hook
	function MySBColors(ply)

		-- Butthurt
		if ply:SteamID() == "STEAM_0:1:21842857" then
			return Color(25,232, 109)
		end 
		-- Sweetsoul
		if ply:SteamID() == "STEAM_0:1:43103023" then
			return Color(37,232, 232)
			--return Color(122,89,1)
		end 
		-- Admins 
		if ply:IsUserGroup("admin") then
			return Color(205,55,230)
		end
		-- Moderator
		if ply:IsUserGroup("moderator") then
			return Color(238,255,46)
		end


	end
	hook.Add("TTTScoreboardColorForPlayer", "MySBColors", MySBColors)
end