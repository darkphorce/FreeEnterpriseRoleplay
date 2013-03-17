local money = FindMetaTable( "Player" )

function money:SetMoney()
	self:SetNWInt( "Money", 1000 )
	SaveMoney()
end

function money:SaveMoney()
	self:SetPData( "Money", self:GetNWInt( "Money" ) )
end