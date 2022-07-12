blockedWords = blockedWords or {}
blockedWords = {"nigger", "nigga", "niga", "nig", "faggot", "fag", "retard", "rtard", "r-tard", --[[websites ->]] ".gg", ".com", ".net"}

AddEventHandler('chatMessage', function(source, name, message)
	for k,v in pairs(blockedWords) do
		if string.match(message, v) then
			DropPlayer(source, 'Read The Rules.')
			CancelEvent()
			print (' A Player Was Kicked For Breaking The Rules' )
		end
	end	
end)