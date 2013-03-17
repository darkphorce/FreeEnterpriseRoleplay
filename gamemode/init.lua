AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("sh_money.lua")

include("shared.lua")
include("sh_money.lua")

DeriveGamemode("sandbox")

hook.Add("PlayerInitialSpawn", "LoadMoney", function( ply )
	if ( ply:GetPData( "Money" ) == nil ) then
		ply:SetPData( "Money", 0 )
		ply:SetNWInt( "Money", 0 )
	else
		ply:SetNWInt( "Money", ply:GetPData( "Money" ) )
	end
end )

hook.Add( "PlayerDisconnected", "SaveMoney", function( ply )
	ply:SaveMoney()
	print(  "Player disconnected: Saving Money to SQLite" )
end )

