on run arg
	tell application "iTerm"
		activate
		repeat with myterm in terminals
			tell myterm
				repeat with mysession in sessions
					tell mysession
						set the_name to get name
						if the_name begins with item 1 of arg and the_name ends with "(vim)" then
							select mysession
							delay 0.1
							tell i term application "System Events"
								tell process "iTerm"
									try
										perform action "AXRaise" of (windows whose title begins with item 1 of arg and name ends with "(vim)")
									end try
								end tell
							end tell
							return "window found"
						end if
					end tell
				end repeat
			end tell
		end repeat
	end tell
end run