-- LocalScript en StarterGui
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Creamos la ScreenGui y un botón
local screenGui = Instance.new("ScreenGui", player.PlayerGui)
local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.new(0, 200, 0, 150)
frame.Position = UDim2.new(0.5, -100, 0.5, -75)

local button = Instance.new("TextButton", frame)
button.Size = UDim2.new(1, 0, 0, 50)
button.Text = "Quitar Cooldown"

button.MouseButton1Click:Connect(function()
	for _, tool in ipairs(player.Backpack:GetChildren()) do
		if tool:IsA("Tool") then
			-- Buscar script de cooldown dentro de cada herramienta
			if tool:FindFirstChild("Cooldown") then
				tool.Cooldown.Value = 0
			end
		end
	end
end)
