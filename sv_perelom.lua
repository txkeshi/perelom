-- Получение перелома от падение 
local weap = {['rust_al47'] = true}
local chance
hook.Add('EntityTakeDamage', 'perelom', function(target, dmginfo)
    if (target:IsPlayer() and dmginfo:IsFallDamage()) then
        chance = math.random(1, 3) -- сам выбираешь(33% now)
        if chance == 3 then
            dmginfo:SetDamage(15)
            target:SetRunSpeed(65)
            target:SetWalkSpeed(65)
            target:SetJumpPower(65)
            target:ChatPrint('Вы Получили Перелом')
            return
        end
        -- local inflictor = dmginfo:GetInflictor()
        -- if IsValid(inflictor) and weap[inflictor:GetClass()] then end
    end
end)

