class "ClientDelVehicle"

function ClientDelVehicle:__init()
    Events:Subscribe("LocalPlayerChat", self, self.playerChat)
end

function ClientDelVehicle:playerChat(args)
    if args.text == "/dv" then
        if not LocalPlayer:InVehicle() then Chat:Print("You must be in a vehicle!", Color.Pink) return false end
        Network:Send("DeleteV")
    end
end

clientDelVehicle = ClientDelVehicle()