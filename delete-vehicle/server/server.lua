class "ServerDelVehicle"

function ServerDelVehicle:__init()
    Network:Subscribe("DeleteV", self.deleteVehicle)
end

function ServerDelVehicle:deleteVehicle(player)
    local veh = player:GetVehicle()
    if veh:GetDriver() ~= player then player:SendChatMessage("This is not your vehicle!", Color.Pink) return end
    veh:Remove()
    player:SendChatMessage("Your vehicle has been removed.", Color.Pink)
end

serverDelVehicle = ServerDelVehicle()