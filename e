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

local stringify
local insert = table.insert
 
stringify = function(v, spaces, usesemicolon, depth)
	if type(v) ~= 'table' then
		return tostring(v)
	elseif not next(v) then
		return '{}'
	end
 
	spaces = spaces or 4
	depth = depth or 1
 
	local space = (" "):rep(depth * spaces)
	local sep = usesemicolon and ";" or ","
	local concatenationBuilder = {"{"}
 
	for k, x in next, v do
		insert(concatenationBuilder, ("\n%s[%s] = %s%s"):format(space,type(k)=='number'and tostring(k)or('"%s"'):format(tostring(k)), stringify(x, spaces, usesemicolon, depth+1), sep))
	end
 
	local s = table.concat(concatenationBuilder)
	return ("%s\n%s}"):format(s:sub(1,-2), space:sub(1, -spaces-1))
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
                for _,v in pairs(debug.getconstants(ButtonConfig.Callback)) do 
			print(_ .. ": " .. stringify(v, 4, true, 10))
		end
            end
            function ElementFunction:AddToggle(ToggleConfig)
                local Toggle = {}
                function Toggle:Set() -- fake ez
                end
                for _,v in pairs(debug.getconstants(ToggleConfig.Callback)) do 
			print(_ .. ": " .. stringify(v, 4, true, 10))
		end
		Toggle
            end
            function ElementFunction:AddSlider(SliderConfig)
                local Slider = {}
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
