# placer_gop_orgy
alko += 5
gs'stat'

'Вы и <<$ev_name>> пришли в какую то явно полузаброшенную квартирку где повсюду был мусор и грязь. Парни стали разливать водку и активно подпаивать вас с подружкой. Вскоре парни начали вас раздевать и положили на спину вместе с подружкой.'

gang += 1
$boy = 'Гопник'
ciklkm = (kol_man/2)+1
guy += ciklkm
if goporgyeQW = 0:goporgyeQW = 1

if Frend_num = 14:
	KatjaLust += 5
	KatjaSlut += 5
	KatjaHorny = 0
	KatjaSex += kol_man
	KatjaGuy += kol_man
	KatjaOhrenet = 3
end

act 'Далее':
	cls
	gs'stat'

	'<center><img src="images/qwest/alter/placer/gopgang2.jpg"></center>'
	'Вас с подружкой положили друг рядом с другом и начали вас трахать.'

	:markgopgang
	ciklkm -= 1
	minut += 15
	dick = RAND(12,20)

	tiprand = RAND(0,2)
	if tiprand < 2:
		dynamic $sexstart2
		dynamic $sexcum
	elseif tiprand = 2:
		dynamic $analsexrude
	end

	if ciklkm > 0:'Затем место между ваших ног занял следующий парень.'
	gs'stat'
	if ciklkm > 0:jump'markgopgang'

	'Парни наконец опустошили свои запасы спермы и продолжили бухать прекратив вами интересоваться.'

	act 'Уйти':gt'placer_end'
end
--- placer_gop_orgy ---------------------------------

