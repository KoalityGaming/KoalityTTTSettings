if SERVER then
	AddCSLuaFile("scoreboardranks.lua")
else

	function ScoreBoardRanks(board)
		
		panel = board
		board:AddColumn("Rank", RankPrint, 100)


	end
	
	function RankPrint(ply)
	
		--This was never the intention of this function, but I can set the color here without
		--touching the actual gamemode
		panel.cols[#panel.cols]:SetTextColor(hook.Call("TTTScoreboardColorForPlayer", GAMEMODE, panel.Player))
		panel.cols[#panel.cols]:SetWidth(100)
		

		--Some ranks are too long to fit, give them a different name
		if ply:IsUserGroup("user") then
			return "Guest"
			
		--For everyone else just capitalize the first letter 
		else
			s = ply:GetUserGroup()
			return s:sub(1,1):upper()..s:sub(2)
		end
		
	end
	hook.Add("TTTScoreboardColumns", "ScoreBoardRanks", ScoreBoardRanks)

	

end