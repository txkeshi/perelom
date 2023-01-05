-- Получение перелома от падение 
hook.Add('EntityTakeDamage', 'perelom', function(target, dmginfo)
    if (target:IsPlayer() and dmginfo:IsFallDamage()) then
            dmginfo:SetDamage(15)
            target:SetRunSpeed(65)
            target:SetWalkSpeed(65)
            target:SetJumpPower(65)
            target:ChatPrint('Вы Получили Перелом')
end
