# oral
if $ARGS[0] = 'start':
	frost = 0

	'Вы немного поласкали пальцами <<dick>> сантиметровый член, потом обхватили его губами и начали сосать.'

	if harakBoy = 0:
		'<<$nameV>> закрыл глаза от удовольствия и наслаждается лаской ваших губ.'
	elseif harakBoy = 1:
		'<<$nameV>> смотрит вам в лицо пока ваши губы скользят по его напряженному члену.'
	elseif harakBoy = 2:
		if mop > 1:mop = 0
		hapri = 0
		throat = throat + 1
		'<<$nameV>> взял вас за волосы и стал трахать вас в рот, от ударов члена в горло у вас потекли слезы из глаз.'
	end

	gs 'oral', '0'

	'Наконец <<$nameV>> застонал и вы поняли, что сейчас он начнет кончать.'
end

if $ARGS[0] = '0':
	horny = horny + throat + SUB + VAF - DOM

	if horny >= 100:
		VAF += 1
		orgasm += 1
		horny = 80
		manna += 15
		willpower += 15
		lipkoef += 1

		if lipkoef > 50:
			lipkoef = 0
			lip += 1
		end

		'Неожиданно для вас отсасывая член вы начали кончать сами. Между ног полыхал пожар и волны удовольствия охватывали тело, вы стонали но не выпускали член изо рта продолжая его отсасывать.'
	end
end
--- oral ---------------------------------
