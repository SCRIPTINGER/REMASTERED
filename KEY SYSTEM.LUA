local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Key system", HidePremium = false, SaveConfig = true, IntroText = "Loading ks,"})

OrionLib:MakeNotification({
	Name = "LIE1 Hub/Remastered",
	Content = "Key System has been loaded.",
	Image = "rbxassetid://4483345998",
	Time = 3
})

_G.Key = "Helor Hub"
_G.KeyInput = "string"

function MakeScriptHub()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SCRIPTINGER/LIE1-HUB/refs/heads/main/Scripts/Hubs/Hub_2"))()
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
	Name = "Correct Key!",
	Content = "LIE1 Hub has been loaded.",
	Image = "rbxassetid://4483345998",
	Time = 3
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
	Name = "InCorrect Key!",
	Content = "LIE1 Hub has not been loaded.",
	Image = "rbxassetid://4483345998",
	Time = 3
    })
end

                
local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key",
	Callback = function()
      	if _G.KeyInput == _G.Key then
        OrionLib:Destroy()
        MakeScriptHub()
        CorrectKeyNotification()
    
        else
            IncorrectKeyNotification()
        end
  	end    
})
