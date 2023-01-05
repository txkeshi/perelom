-- Получение перелома от падение 
hook.Add('PlayerTakeDamage', 'perelom', function(target, dmginfo)
    if (target:IsPlayer() and dmginfo:PlayerFallDamage()) then
            dmginfo:SetDamage(15)
            target:SetRunSpeed(65)
            target:SetWalkSpeed(65)
            target:SetJumpPower(65)
            target:ChatPrint('Вы Получили Перелом')
end)
