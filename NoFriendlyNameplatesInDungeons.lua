local TrackerFrame = CreateFrame("Frame");
TrackerFrame:RegisterEvent("PLAYER_ENTERING_WORLD");
function TrackerFrame:OnEvent(event,arg1)
	if event == "PLAYER_ENTERING_WORLD" then
		local inInstance, instanceType = IsInInstance()
		if (instanceType == 'party' or instanceType == 'raid') then
			SetCVar("nameplateShowFriends", 0)
			DEFAULT_CHAT_FRAME:AddMessage("Friendly Nameplates automatically disabled.")
		else
			SetCVar("nameplateShowFriends", 1)
			DEFAULT_CHAT_FRAME:AddMessage("Friendly Nameplates automatically enabled.")
		end
	end
end
TrackerFrame:SetScript("OnEvent",TrackerFrame.OnEvent);