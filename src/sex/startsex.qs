# startsex

if $ARGS[0] = 'start':
	if prezik > 0 and rape = 0:
        act 'Предложить надеть презерватив':gt 'startsex', 'prezik'
        act 'Не надевать презерватив':gt 'startsex', 'noprezik'
    else:
        protect = 0
    end

elseif $ARGS[0] = 'noprezik':
    protect = 0

elseif $ARGS[0] = 'prezik':
    if boyhatecondom = 1:
        protect = 0
        *PL $boyhatecondomsay
    else:
        protect = 1
        prezik -= 1
        prezrand = RAND(1,3)
        !1 отдать 2 надеть самой 3 надеть ртом
        if vaf < 30:
                prezrand = 1
        elseif horny < 50:
            if prezrand = 3:
                prezrand = 2
            end
        end

        if prezrand = 1:
                '<<$nameV>> взял у вас презерватив и одел его на свой <<dick>> сантиметровый член.'
        elseif prezrand = 2:
            '<center><img src="media/startsex/condomputhand.jpg"></center>'
            'Вы распечатали презерватив и натянули его на стоячий <<dick>> сантиметровый член.'
        else:
            '<center><img src="media/startsex/condomputoral.jpg"></center>'
            if  condomputlvl > 3:
                'Вы распечатали презерватив и засунув себе его в рот, удерживая между губ, надели на стоячий <<dick>> сантиметровый член.'
            else:    
                'Вы распечатали презерватив и засунув себе его в рот, удерживая между губ, стали надевать ртом на стоячий <<dick>> сантиметровый член. Постепенно у вас получилось.'
                condomputlvl += 1
            end
        end
    end
end

--- startsex ---------------------------------
