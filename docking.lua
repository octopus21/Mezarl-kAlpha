local yenileme = 2
local bastırmak = 10

local yenileme2 = 3 

local yenileme3 = 4

local yenileme4 = 5

local poz = Vector(-73.015305, 880.789795, -83.968781)
local poz2 = Vector(-34.913582, 882.755676, -83.968765)
local poz3 = Vector(-78.115997, 876.550659, -39.397293)
local poz4 = Vector(-73.015305, 880.789795, -83.968781)
--function GM:PlayerDeath(ply)

if yenileme < CurTime() then

yenileme = CurTime() + bastırmak

local mezarlıkprop1 = ents.Create("prop_physics")

mezarlıkprop1:SetModel("models/props_c17/gravestone003a.mdl")
mezarlıkprop1:SetPos(poz)
mezarlıkprop1:Spawn()


local mezarlıkprop1w  = mezarlıkprop1:GetPhysicsObject()
if mezarlıkprop1w and mezarlıkprop1w:IsValid() then

mezarlıkprop1w:EnableMotion(false)

end

end

if yenileme2 < CurTime() then


local mezarlıkprop2 = ents.Create("prop_physics")

mezarlıkprop2:SetModel("models/props_c17/gravestone_coffinpiece001a.mdl")
mezarlıkprop2:SetPos(poz2)
mezarlıkprop2:Spawn()

local mezarlıkprop1w2 = mezarlıkprop2:GetPhysicsObject()
if mezarlıkprop1w2 and mezarlıkprop1w2:IsValid() then

mezarlıkprop1w2:EnableMotion(false)

end

end

hook.Add("Think", "karga", function()

if yenileme3 < CurTime() then

yenileme3 = CurTime() + bastırmak

local mezarlıkprop3 = ents.Create("npc_crow")

mezarlıkprop3:SetPos(poz3)
mezarlıkprop3:Spawn()

local mezarlıkprop1w3 = mezarlıkprop3:GetPhysicsObject()
if mezarlıkprop1w3 and mezarlıkprop1w3:IsValid() then

mezarlıkprop1w3:EnableMotion(false)

end

end
   

   if table.Count(ents.FindByClass("npc_crow")) == 10 then
   
   mezarlıkprop3:Fire( "Explode", 0, 0 )
   
   end
   
   

end)

--end