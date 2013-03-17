DeriveGamemode("sandbox")

AddCSLuaFile("shared.lua")
AddCSLuaFile("sh_money.lua")
include("shared.lua")
include("sh_money.lua")

surface.CreateFont ("ScoreboardText", {
	size = 16,
	weight = 600,
	antialias = true,
	shadow = true,
	font = "DejaVu Sans"})
	
hook.Add( "HUDPaint", "PaintMoney", function()
	local money = LocalPlayer():GetNWInt( "Money" )
	
	draw.SimpleText(money, "ScoreboardText", 0, 30, Color( 255, 255, 255 ) )
end )
	