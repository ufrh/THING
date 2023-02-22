local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local HttpService = game:GetService("HttpService")

local OrionLib = {}

function OrionLib:MakeNotification(NotificationConfig)
end

function OrionLib:Init()
end

function OrionLib:MakeWindow(WindowConfig)
    warn("Window created")
    local TabFunction = {}
    function TabFunction:MakeTab(TabConfig)
        warn("Tab Created")

        local function GetElements(ItemParent)
            local ElementFunction = {}
            function ElementFunction:AddLabel(Text)
                local LabelFunction = {}
                function LabelFunction:Set() -- fake ez
                end
                return LabelFunction
            end
            function ElementFunction:AddParagraph(Text, Content)
                local LabelFunction = {}
                function LabelFunction:Set() -- fake ez
                end
                return LabelFunction
            end
            function ElementFunction:AddButton(ButtonConfig)
                warn(ButtonConfig.Callback)
            end
            function ElementFunction:AddToggle(ToggleConfig)
                local Toggle = {}
                function Toggle:Set() -- fake ez
                end
                warn(ToggleConfig.Callback)
                return Toggle
            end
            function ElementFunction:AddSlider(SliderConfig)
                local Slider = {}
                print(SliderConfig.Callback)
                return Slider
            end
            function ElementFunction:AddDropdown(DropdownConfig)
                local Dropdown = {}
                function Dropdown:Set() -- fake ez
                end
                function Dropdown:Refresh() -- fake ez
                end
                return Dropdown
            end
            function ElementFunction:AddBind(BindConfig)
                local Bind = {}
                function Bind:Set() -- fake ez
                end
                return Bind
            end
            function ElementFunction:AddTextbox(TextboxConfig)
            end
            function ElementFunction:AddColorpicker(ColorpickerConfig)
                local Colorpicker = {}
                function Colorpicker:Set() -- fake ez
                end
                return Colorpicker
            end
            return ElementFunction
        end

        local ElementFunction = {}

        ElementFunction = GetElements()
	
	function ElementFunction:AddSection(SectionConfig)
		local Section = {}
		warn("Section Created")
		Section = GetElements()
		return Section 
	end

        return ElementFunction
    end

    return TabFunction
end

function OrionLib:Destroy()
end

return OrionLib
