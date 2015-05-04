# klofdomhouse
if $ARGS[0] = 'start':
	cla
	*clr
	minut = minut + 5

	act 'Позвонить в дверь':
		cla
		if klofQW = 2 and hour >= 16 and klofday ! day:
			klofday = day
			gt'klofdomhouse','ev1'
		elseif klofQW > 2 and hour >= 16 and klofday ! day:
			klofday = day
			gt'klofdomhouse','start1'
		else
			'Никого нет дома'

			act 'Уйти домой':gt'street'
		end
	end
	act 'Уйти домой':gt'street'
end

if $ARGS[0] = 'start1':
	cla
	*clr
	klofday = day
	minut = minut + 5
	kloftimes += 1
	gs'stat'

	if kloftimes < 10:
		gt'klofdomhouse','ev7'
	elseif kloftimes >= 10:
		'<center><img src="images/klof/klof.jpg"></center>'
		'Вы позвонили в дверь.	Вышел Жора и почесал пузо. Зевнул и сказал, что он занят.'

		act 'Уйти домой':gt'street'
	end
end

if $ARGS[0] = 'ev1':
	cla
	*clr
	klofday = day
	minut = minut+5
	kloftimes += 1
	gs'stat'

	if kloftimes < 10:
		'<center><img src="images/klof/klof.jpg"></center>'
		'Вы позвонили в дверь.'
		'Вам не открыли и вы хотели уйти, но тут дверь открылась.'
		'-Привет- сказали вы'
		'-А это ты- сказал улыбаясь парень- проходи.'

		act 'Зайти':gt'klofdomhouse','ev2'
	elseif kloftimes >= 10:
		'<center><img src="images/klof/klof.jpg"></center>'
		'Вы позвонили в дверь.	Вышел Жора и почесал пузо. Зевнул и сказал, что он занят.'

		act 'Уйти домой':gt'street'
	end
end

if $ARGS[0] = 'ev2':
	cla
	*clr
	minut = minut+5

	'<center><img src="images/klof/klof1.jpg"></center>'
	'Вы осмотрелись, в квартире был свинарник, стены с ободранными обоями, всюду валялись носки.'
	'-Как-то убого у вас ребята здесь ребя - сказали вы и улыбнулись,встретившись взглядом с парнем.'
	'-Ничего, мы только приехали в этот город обживемся скоро- сказал ухмыльнувшись парень.'
	'- Ясно. Мы с вами так и не познакомились.'
	'- Зови меня Жорой, а моего кореша Сеней,а теперь по быстрому приберись в квартире.'

	act 'Прибираться':gt'klofdomhouse','ev4'

	if sub < 30 and horny < 75:act 'Уйти':gt'klofdomhouse','ev3'
end

if $ARGS[0] = 'ev3':
	cla
	*clr
	minut = minut+5
	klofQW = klofQW - 1
	if dom > 0:dom = dom+5
	if sub > 0:sub = sub-5

	'<center><img src="images/picQW/pnx.jpg"></center>'
	'Вы решили что парень над вами просто издевается и ушли.'

	act 'Уйти':gt'street'
end

if $ARGS[0] = 'ev4':
	cla
	*clr
	minut = minut+5

	'<center><img src="images/klof/klof3.jpg"></center>'
	'Убравшись вы подошли к Жоре и спросили:.'
	'-Жора ты обещал денег и развлечений, но пока я ни чего этого не увидела'
	'-Хорошо слушай, как я сказал в городе мы не давно, сейчас пока нам нужна девочка для услуг на дому'
	'- Когда станем поближе знакомы, поговорим о делах.'
	'- А теперь будь послушной девочкой и обслужи меня'

	act 'Раздвинуть ноги Жоре':gt'klofdomhouse','ev5'
end

if $ARGS[0] = 'ev5':
	cla
	*clr
	minut = minut+5
	sex += 1
	vagina += 1

	'<center><img src="images/klof/klof4.jpg"></center>'
	'Жора начал трахать вас в киску, вдруг открылась дверь.'
	'В комнату зашел Сеня и сказал: "Пососи ка мне член детка"'

	act 'Взять в рот у Сени':gt'klofdomhouse','ev6'
end

if $ARGS[0] = 'ev6':
	cla
	*clr
	hour = hour+23
	minut = minut+5
	klofQW = klofQW + 1
	cla
	*clr
	money = money + 2000
	bj = bj + 1
	cumface = cumface + 1
	cumpussy = cumpussy + 1

	'<center><img src="images/klof/klof5.jpg"></center>'
	'Жора жестко долбил в вашу киску, Сяня трахал вас в рот.'

	horand = RAND(1,100)
	if horand <= sex:horny = 0 & orgasm += 1 & 'Вас охватил оргазм'
	if horand > sex:horny = horny + 10 & 'Вы остались не удовлетворены'

	'Вы оделись и собрались уходить домой.'
	'К вам подошел Жора и протянул деньги: "Заработала крошка"'

	if bj >= anal and bj >= sex:callnm = 1
	if anal >= oral and anal >= sex:callnm = 2
	if sex >= oral and sex >= anal:callnm = 3
	if vaf >= 100:callnm = 4

	act 'Уйти домой':gt'street'
end

if $ARGS[0] = 'ev7':
	cla
	*clr
	minut = minut+5

	'<center><img src="images/klof/klof1.jpg"></center>'
	'Вы зашли в квартиру'

	act 'Поздороваться с парнями':gt'klofdomhouse','ev8'
end

if $ARGS[0] = 'ev8':
	cla
	*clr
	minut = minut+5

	'<center><img src="images/klof/klof6.jpg"></center>'
	'-Привет детка- сказали парни, оголив вам грудь и начали вас ласкать.'
	'- Привет мальчики соскучились по мне?- сказали вы и покраснели'

	act 'Развлечь Жору':gt'klofdomhouse','ev9'
	act 'Развлечь Сеню':gt'klofdomhouse','ev10'
	act 'Развлечь обоих':gt'klofdomhouse','ev19'
	act 'Поговорить с Жорой о делах':gt'klofdomhouse','ev20'
end

if $ARGS[0] = 'ev9':
	cla
	*clr

	act 'Дать в киску Жоре':gt'klofdomhouse','ev13'
	act 'Дать в жопу Жоре':gt'klofdomhouse','ev14'
	act 'Отсосать Жоре':gt'klofdomhouse','ev19'
end

if $ARGS[0] = 'ev13':
	cla
	*clr
	minut = minut+30
	klofQW = klofQW + 1
	money = money + 100
	vagina = vagina + 1
	sex = sex + 1
	cumpussy = cumpussy + 1

	'Жора жетко долбил в вашу киску.'

	picrand = RAND(1,3)
	if picrand = 1:'<center><img src="images/klof/klof7.jpg"></center>'
	if picrand = 2:'<center><img src="images/klof/klof8.jpg"></center>'
	if picrand = 3:'<center><img src="images/klof/klof9.jpg"></center>'

	horand = RAND(1,100)
	if horand <= sex:horny = 0 & orgasm += 1 & 'Вас охватил оргазм'
	if horand > sex:horny = horny + 10 & 'Вы остались не удовлетворены'

	'<center><img src="images/klof/klof10.jpg"></center>'
	'Вы чувствуете, что Жора разряжается в вас.'
	'Вы оделись и собрались уходить домой.'
	'Жора протянул вам деньги: "Заработала крошка"'

	act 'Уйти домой':gt'street'
end

if $ARGS[0] = 'ev14':
	cla
	*clr
	minut = minut+30
	klofQW = klofQW + 1
	money = money + 100
	anal = anal + 1
	anus = anus + 1
	cumass = cumass + 1

	'Жора со всей силы долбит вас в жопу.'

	picrand = RAND(1,3)
	if picrand = 1:'<center><img src="images/klof/klof11.jpg"></center>'
	if picrand = 2:'<center><img src="images/klof/klof12.jpg"></center>'
	if picrand = 3:'<center><img src="images/klof/klof13.jpg"></center>'

	horand = RAND(1,100)
	if horand <= sex:horny = 0 & orgasm += 1 & 'Вас охватил оргазм'
	if horand > sex:horny = horny + 10 & 'Вы остались не удовлетворены'

	act '...':
		cla
		*clr
		'<center><img src="images/klof/klof14.jpg"></center>'
		'Жора разряжается вам в очко, и вставляет в жопу затычку'
		'Вы оделись и собрались уходить домой.'
		'Жора протянул вам деньги: "Заработала крошка"'

		act 'Уйти домой':gt'street'
	end
end

if $ARGS[0] = 'ev15':
	cla
	*clr
	minut = minut+30
	klofQW = klofQW + 1
	money = money + 100
	bj = bj + 1
	cumface = cumface + 1

	'Вы со страстью обхватили Жорин член губами.'

	picrand = RAND(1,3)
	if picrand = 1:'<center><img src="images/klof/klof15.jpg"></center>'
	if picrand = 2:'<center><img src="images/klof/klof16.jpg"></center>'
	if picrand = 3:'<center><img src="images/klof/klof17.jpg"></center>'

	horand = RAND(1,100)
	if horand <= sex:horny = 0 & orgasm += 1 & 'Вас охватил оргазм'
	if horand > sex:horny = horny + 10 & 'Вы остались не удовлетворены'

	act '...':
		cla
		*clr
		'Жора разряжается вам в лицо'

		picrand = RAND(1,3)
		if picrand = 1:'<center><img src="images/klof/klof18.jpg"></center>'
		if picrand = 2:'<center><img src="images/klof/klof19.jpg"></center>'
		if picrand = 3:'<center><img src="images/klof/klof20.jpg"></center>'

		'Вы оделись и собрались уходить домой.'
		'Жора протянул вам деньги: "Заработала крошка"'

		act 'Уйти домой':gt'street'
	end
end

if $ARGS[0] = 'ev10':
	cla
	*clr
	act 'Дать в киску Сене':gt'klofdomhouse','ev 16'
	act 'Дать в жопу Сене':gt'klofdomhouse','ev 17'
	act 'Отсосать Сене':gt'klofdomhouse','ev 18'
end

if $ARGS[0] = 'ev 16':
	cla
	*clr
	minut = minut+30
	klofQW = klofQW + 1
	money = money + 100
	vagina = vagina + 1
	sex = sex + 1
	'Сеня жетко долбил в вашу киску.'

	picrand = RAND(1,3)
	if picrand = 1:'<center><img src="images/klof/klof7.jpg"></center>'
	if picrand = 2:'<center><img src="images/klof/klof8.jpg"></center>'
	if picrand = 3:'<center><img src="images/klof/klof9.jpg"></center>'

	horand = RAND(1,100)
	if horand <= sex:horny = 0 & orgasm += 1 & 'Вас охватил оргазм'
	if horand > sex:horny = horny + 10 & 'Вы остались не удовлетворены'

	act '...':
		cla
		*clr
		'<center><img src="images/klof/klof10.jpg"></center>'
		'Вы чувствуете, что Жора разряжается в вас.'
		'Вы оделись и собрались уходить домой.'
		'Сеня протянул вам деньги: "Заработала крошка"'

		act 'Уйти домой':gt'street'
	end
end

if $ARGS[0] = 'ev 17':
	cla
	*clr
	minut = minut+30
	klofQW = klofQW + 1
	money = money + 100
	cumass = cumass + 1
	anal += 1
	anus += 1

	'Сеня со всей силы долбит вас в жопу.'

	picrand = RAND(1,3)
	if picrand = 1:'<center><img src="images/klof/klof11.jpg"></center>'
	if picrand = 2:'<center><img src="images/klof/klof12.jpg"></center>'
	if picrand = 3:'<center><img src="images/klof/klof13.jpg"></center>'

	horand = RAND(1,100)
	if horand <= sex:horny = 0 & orgasm += 1 & 'Вас охватил оргазм'
	if horand > sex:horny = horny + 10 & 'Вы остались не удовлетворены'

	act '...':
		cla
		*clr
		'<center><img src="images/klof/klof14.jpg"></center>'
		'Сеня разряжается вам в очко, и вставляет в жопу затычку'
		'Вы оделись и собрались уходить домой.'
		'Сеня протянул вам деньги: "Заработала крошка"'

		act 'Уйти домой':gt'street'
	end
end

if $ARGS[0] = 'ev 18':
	cla
	*clr
	minut = minut+30
	klofQW = klofQW + 1
	money = money + 100
	bj += 1
	guy = guy + 1
	cumlip = cumlip + 1

	'Вы со страстью обхватили Сенин член губами.'

	picrand = RAND(1,3)
	if picrand = 1:'<center><img src="images/klof/klof15.jpg"></center>'
	if picrand = 2:'<center><img src="images/klof/klof16.jpg"></center>'
	if picrand = 3:'<center><img src="images/klof/klof17.jpg"></center>'

	horand = RAND(1,100)
	if horand <= sex:horny = 0 & orgasm += 1 & 'Вас охватил оргазм'
	if horand > sex:horny = horny + 10 & 'Вы остались не удовлетворены'

	act '...':
		cla
		*clr
		facial += 1

		'Сеня разряжается вам в лицо'

		picrand = RAND(1,3)
		if picrand = 1:'<center><img src="images/klof/klof18.jpg"></center>'
		if picrand = 2:'<center><img src="images/klof/klof19.jpg"></center>'
		if picrand = 3:'<center><img src="images/klof/klof20.jpg"></center>'

		'Вы оделись и собрались уходить домой.'
		'Сеня протянул вам деньги: "Заработала крошка"'

		act 'Уйти домой':gt'street'
	end
end

if $ARGS[0] = 'ev19':
	cla
	*clr
	minut = minut+30
	klofQW = klofQW + 2
	money = money + 200
	sex += 1
	bj = bj + 1
	cumface = cumface + 1
	facial += 1
	cumpussy = cumpussy + 1
	vagina = vagina + 1

	picrand = RAND(1,3)
	if picrand = 1:'<center><img src="images/klof/klof21.jpg"></center>'
	if picrand = 2:'<center><img src="images/klof/klof22.jpg"></center>'
	if picrand = 3:'<center><img src="images/klof/klof23.jpg"></center>'

	'Жора жестоко ебет вас в рот, а Cеня дрючит киску'

	horand = RAND(1,100)
	if horand <= sex:horny = 0 & orgasm += 1 & 'Вас охватил оргазм'
	if horand > sex:horny = horny + 10 & 'Вы остались не удовлетворены'

	'Наконец они оба кончили, один в киску, другой на лицо.'
	'Вы оделись и собрались уходить домой.'
	'Парни протянули вам деньги: "Заработала крошка"'

	act 'Уйти домой':gt'street'
end

if $ARGS[0] = 'ev20':
	cla
	*clr
	klofday = day
	minut = minut+5

	'<center><img src="images/klof/klof.jpg"></center>'
	'Если хочешь серьезных дел поговори с нашим боссом'

	act 'Поговорить с боссом':
		cla
		if klofQW < 10:gt'klofdomhouse','ev21'
		if klofQW >= 10:gt'klofdomhouse','ev22'
	end
end

if $ARGS[0] = 'ev21':
	cla
	*clr
	'<center><img src="images/klof/klof24.jpg"></center>'
	'Из комнаты вышел старый уродливый мужик'
	'"Рановато тебе лезть в наши дела" - сказал он.'

	act 'Уйти домой':gt'street'
end

if $ARGS[0] = 'ev22':
	cla
	*clr
	'<center><img src="images/klof/klof24.jpg"></center>'
	'Из комнаты вышел старый уродливый мужик'
	'Босс внимательно на вас посмотрел и сказал: "Пойдем ко мне посмотрим на что ты готова ради денег"'

	act 'Идти в комнату босса':gt'klofdomhouse','ev23'
	act 'Уйти домой':gt'street'
end

if $ARGS[0] = 'ev23':
	cla
	*clr
	'<center><img src="images/klof/klof25.jpg"></center>'
	'Вы прошли в комнату босса на удивление она была хорошо отремонтирована и обставлена'
	'Ну чтож раздевайся и покажи себя - сказал босс'

	act 'Показать себя':gt'klofdomhouse','ev24'
	act 'Послать его на...':gt'street'
end

if $ARGS[0] = 'ev24':
	cla
	*clr
	'<center><img src="images/klof/klof26.jpg"></center>'
	'Вы скромно уселись на кровать'
	'Покажи грудь - приказал босс'

	act 'Показать грудь':gt'klofdomhouse','ev25'
	act 'Послать его на...':gt'street'
end

if $ARGS[0] = 'ev25':
	cla
	*clr
	'<center><img src="images/klof/klof26_1.jpg"></center>'
	'Вы оголили свою грудь'
	'Покажи попку! - приказал босс'

	act 'Показать попку':gt'klofdomhouse','ev26'
	act 'Послать его на...':gt'street'
end

if $ARGS[0] = 'ev26':
	cla
	*clr
	'<center><img src="images/klof/klof26_3.jpg"></center>'
	'Вы показали свою попку боссу'
	'Давай сдергивай с себя платье! - сказал он'

	act 'Снять платье':gt'klofdomhouse','ev27'
	act 'Послать его на...':gt'street'
end

if $ARGS[0] = 'ev27':
	cla
	*clr
	'<center><img src="images/klof/klof26_4.jpg"></center>'
	'Вы сняли с себя платье'
	'Раздвигай ножки! - поступил приказ'

	act 'Раздвинуть ножки':gt'klofdomhouse','ev28'
	act 'Послать его на...':gt'street'
end

if $ARGS[0] = 'ev28':
	cla
	*clr
	'<center><img src="images/klof/klof26_6.jpg"></center>'
	'Вы сели на кровать и раздвинули ножки'
	'А теперь соблазни меня - усмехнулся босс'

	act 'Соблазнять босса':gt'klofdomhouse','ev29'
	act 'Послать его на...':gt'street'
end

if $ARGS[0] = 'ev29':
	cla
	*clr
	'<center><img src="images/klof/1284364hjl.jpg"></center>'
	'Вы перевернулись на бок и продемонстрировали боссу свои прелести'

	act 'Покрутить попкой перед боссом':gt'klofdomhouse','ev30'
	act 'Послать его на...':gt'street'
end

if $ARGS[0] = 'ev30':
	cla
	*clr
	'<center><img src="images/klof/1284365sgp.jpg"></center>'
	'Вы встали раком и начали крутить попкой перед боссом, заметили что он начал беспокойно ерзать на стуле'

	act 'Полизать головку у босса':gt'klofdomhouse','ev31'
	act 'Послать его на...':gt'street'
end

if $ARGS[0] = 'ev31':
	cla
	*clr
	'<center><img src="images/klof/klof27.jpg"></center>'
	'Вы нежно начали облизывать головку члена'

	act 'Обхватить член губами':gt'klofdomhouse','ev32'
	act 'Послать его на...':gt'street'
end

if $ARGS[0] = 'ev32':
	cla
	*clr
	'<center><img src="images/klof/klof28.jpg"></center>'
	'Вы жадно обхватили член губами'
	'Босс хриплым голосом вам приказал: "раздвигай ноги сучка"'

	act 'Раздвинуть ноги':gt'klofdomhouse','ev33'
	act 'Послать его на...':gt'street'
end

if $ARGS[0] = 'ev33':
	cla
	*clr
	'<center><img src="images/klof/klof26_5.jpg"></center>'
	'Вы с призывом раздвинули ноги'
	'Ну что проверим твой передок - спросил босс'

	act 'Дать в киску':gt'klofdomhouse','ev34'
	act 'Отказаться':gt'street'
end

if $ARGS[0] = 'ev34':
	cla
	*clr
	minut = minut+30
	klofQW = klofQW + 1
	vagina = vagina + 1
	sex = sex + 1

	'<center><img src="images/klof/klof28.jpg"></center>'
	'Босс со всей силы загоняет свой член в вашу вагину.'

	horand = RAND(1,100)
	if horand <= sex:horny = 0 & orgasm += 1 & 'Вас охватил оргазм'
	if horand > sex:horny += 10 & 'Вы остались не удовлетворены'

	'Дай ка я попробую твою попку - приказал босс'

	act 'Дать в жопу':gt'klofdomhouse','ev35'
	act 'Отказаться':gt'street'
end

if $ARGS[0] = 'ev35':
	cla
	*clr
	minut = minut+30
	klofQW = klofQW + 1
	anal += 1
	anus += 1

	'<center><img src="images/klof/klof29.jpg"></center>'
	'Босс насаживает ваше очко на свой член.'

	horand = RAND(1,100)
	if horand <= sex:horny = 0 & orgasm += 1 & 'Вас охватил оргазм'
	if horand > sex:horny = horny + 10 & 'Вы остались не удовлетворены'

	'Вы чуствуете что босс готов разрядится'

	act 'Подставить лицо чтоб он кончил':gt'klofdomhouse','ev36'
	act 'Пускай кончает в жопу':gt'klofdomhouse','ev37'
	act 'Вставить член в киску':gt'klofdomhouse','ev38'
end

if $ARGS[0] = 'ev36':
	cla
	*clr
	cumface = cumface + 1
	money = money + 500

	'<center><img src="images/klof/klof30.jpg"></center>'
	'Вы спрыгиваете с члена и начинаете надрачивать член босса подставив лицо'

	act 'Встать с кровати':gt'klofdomhouse','ev39'
end

if $ARGS[0] = 'ev37':
	cla
	*clr
	cumpussy = cumpussy + 1
	money = money + 500

	'<center><img src="images/klof/klof32.jpg"></center>'
	'Вы начинаете яростно подмахивать попкой стараясь быстрее помочь достичь ему оргазма'

	act 'Встать с кровати':gt'klofdomhouse','ev39'
end

if $ARGS[0] = 'ev38':
	cla
	*clr
	money = money + 500

	'<center><img src="images/klof/klof31.jpg"></center>'
	'Поймав момент вы вставляете член в вагину'
	'Ну что проверим твой передок - спросил босс'

	act 'Встать с кровати':gt'klofdomhouse','ev39'
end

if $ARGS[0] = 'ev39':
	cla
	*clr
	'<center><img src="images/klof/klof33l.jpg"></center>'
	'Вы встали с кровати, посмотрели на обессилившего мужика,'
	'и с усмешкой спросили босса: "Ну что я прошла проверку?"'
	'-Ну что ж постельную проверку ты прошла, проверим тебя на послушание,'
	'- Обслужи обоих моих ребят только двои и только киской сразу - приказал босс'

	act 'Послушно обслужить ребят':gt'klofdomhouse','ev40'
	act 'Отказаться':gt'street'
end

if $ARGS[0] = 'ev40':
	cla
	*clr
	minut = minut+30
	klofQW = klofQW + 1
	db = db + 1
	bj = bj + 1
	vagina = vagina + 2

	'<center><img src="images/klof/klof33.jpg"></center>'
	'Жора и Сеня в два ствола долбят вас в киску.'

	horand = RAND(1,100)
	if horand <= sex:horny = 0 & orgasm += 1 & 'Вас охватил оргазм'
	if horand > sex:horny = horny + 10 & 'Вы остались не удовлетворены'

	act 'Встать и одеться':gt'klofdomhouse','ev41'
end

if $ARGS[0] = 'ev41':
	cla
	*clr
	money = money + 5000

	'<center><img src="images/klof/klof3.jpg"></center>'
	'Вы оделись и привели себя в порядок.'
	'К вам подошел Жорик и сказал:" Ты понравилась боссу, он приказал тебе явиться завтра после 10 в бассейн, держи деньги на купальник'

	act 'Идти домой':gt'street'
end

if $ARGS[0] = 'ev42':
	cla
	*clr
	'<center><img src="images/klof/klof3.jpg"></center>'
	'Вы осматриваете толпу и замечаете Жору'
	'Он к вам подходит и говорит: "Пойдем купаться детка"'

	act 'Идти купаться':gt'klofdomhouse','ev43'
	act 'Уйти домой':gt'street'
end

if $ARGS[0] = 'ev43':
	cla
	*clr
	'<center><img src="images/klof/bas.jpg"></center>'
	'Вы переодеваетесь в купальник и ждете Жору на входе'
	'Жора проходит в бассейн говоря вам: "Приляг пока Светик подождем пока соберется побольше народу"'

	act 'Прилечь возле бассейна':gt'klofdomhouse','ev44'
	act 'Уйти домой':gt'street'
end

if $ARGS[0] = 'ev44':
	cla
	*clr
	minut = minut+30

	'<center><img src="images/klof/bas1.jpg"></center>'
	'Вы лежите возле бассейна, бассейн наполняется народом'
	'Жора подплывает к вам приказывает: "Раздевайся перед толпой"'

	if sub > 0:act 'Нерешительно снимать лифчик':gt'klofdomhouse','ev45'

	act 'Послать его':gt'street'
end

if $ARGS[0] = 'ev45':
	cla
	*clr
	minut = minut+5
	horny = horny + 10

	'<center><img src="images/klof/bas3.jpg"></center>'
	'Вы приспускаете лямки'
	'<center><img src="images/klof/bas2.jpg"></center>'
	'Вы приспускаете чашечки'
	'<center><img src="images/klof/bas4.jpg"></center>'
	'Вы стоите в воде прикрывай грудь сгорая от стыда'
	'Жора с ухмылкой говорит: "Покажи народу грудь им охота развлечений"'

	if sub > 5:act 'Убрать руки':gt'klofdomhouse','ev46'

	act 'Послать его':gt'street'
end

if $ARGS[0] = 'ev46':
	cla
	*clr
	minut = minut+5
	horny = horny + 10

	'<center><img src="images/klof/bas5.jpg"></center>'
	'Вы отводите руки от груди, вокруг вас начинает собираться толпа мужиков'
	'<center><img src="images/klof/bas6.jpg"></center>'
	'Вы картинно заводите руки за голову'
	'Жора приказывает: "Стягивай трусики"'

	if sub > 10:act 'Идти в воду снимая трусики':gt'klofdomhouse','ev47'

	act 'Послать его':gt'street'
end

if $ARGS[0] = 'ev47':
	cla
	*clr
	minut = minut+5
	horny = horny + 10

	'<center><img src="images/klof/bas7.jpg"></center>'
	'Вы спускаетесь в воду, народу вокруг вас все больше'
	'<center><img src="images/klof/bas8.jpg"></center>'
	'Вы снимаете трусики в воде'
	'Жора приказывает: "Выходи и покажи себя всем"'

	if sub > 15:act 'Выйти из воды':gt'klofdomhouse','ev48'

	act 'Послать его':gt'street'
end

if $ARGS[0] = 'ev48':
	cla
	*clr
	minut = minut+5
	horny = horny + 10

	'<center><img src="images/klof/bas9.jpg"></center>'
	'Вы картинно выходите из воды'
	'<center><img src="images/klof/bas10.jpg"></center>'
	'И ложитесь на краю бассейна, вокруг вас стоит толпа возбужденных мужиков'
	'Жора приказывает: "Раздвинь ножки"'

	if sub > 20:act 'Раздвинуть ноги':gt'klofdomhouse','ev49'

	act 'Послать его':gt'street'
end

if $ARGS[0] = 'ev49':
	cla
	*clr
	minut = minut+5
	horny = horny + 10

	'<center><img src="images/klof/bas11.jpg"></center>'
	'Вы раздвигаете ноги, толпа улюлюкает'
	'<center><img src="images/klof/bas12.jpg"></center>'
	'От возбуждения вас охватывает жар вы ложитесь в воду и расслабляетесь'
	'Жора приказывает: "Раздвинь губки"'

	if sub > 25:act 'Раздвинуть губки':gt'klofdomhouse','ev50'

	act 'Послать его':gt'street'
end

if $ARGS[0] = 'ev50':
	cla
	*clr
	minut = minut+5
	horny = horny + 10

	'<center><img src="images/klof/vas13.jpg"></center>'
	'Вы раздвигаете ноги, опускаете руки и раскрываете свое влагалище'
	'Большинство мужиков раскрыло рот'
	'Жора приказывает: "Поласкай себя"'

	if sub > 30:act 'Ласкать свою киску':gt'klofdomhouse','ev51'

	act 'Послать его':gt'street'
end

if $ARGS[0] = 'ev51':
	cla
	*clr
	minut = minut+5
	horny = horny + 10

	'<center><img src="images/klof/vas14.gif"></center>'
	'Вы настолько возбуждены что не обращая внимания на толпу начинаете теребить свой девочку'
	'Большинство мужиков раскрыло рот'

	act 'Кончить':gt'klofdomhouse','ev52'
end

if $ARGS[0] = 'ev52':
	cla
	*clr
	minut = minut+5
	orgasm = orgasm + 1
	horny = 0

	'<center><img src="images/klof/vas15.gif"></center>'
	'Буквально за несколько минут вас охватывает дикий оргазм'
	'Толпа мужиков стоит в полном шоке'
	'Жора протягивает вам дидло и говорит: "Вставь его себе"'

	act 'Вставить дидло':gt'klofdomhouse','ev53'
end

if $ARGS[0] = 'ev53':
	cla
	*clr
	minut = minut+5
	horny = horny + 10

	'<center><img src="images/klof/bas16.jpg"></center>'
	'Вы начинаете засаживать в свою пещерку дидло'
	'Жора протягивает вам второе дидло и говорит: "Вставь туда же"'

	act 'Вставить второе дидло':gt'klofdomhouse','ev54'
end

if $ARGS[0] = 'ev54':
	cla
	*clr
	minut = minut+5
	horny = horny + 10

	'<center><img src="images/klof/bas17.jpg"></center>'
	'Вы начинаете без труда всовываете в свою дырку второе дидло'
	'Жора приказывает: "Засади одно в жопу"'

	act 'Вставить в попу':gt'klofdomhouse','ev55'
end

if $ARGS[0] = 'ev55':
	cla
	*clr
	minut = minut+5
	horny = horny + 10

	'<center><img src="images/klof/bas18.jpg"></center>'
	'Жора забирает у вас члены и всаживает вам кулак во влагалище'

	act 'Кайфовать':gt'klofdomhouse','ev56'
end

if $ARGS[0] = 'ev56':
	cla
	*clr
	minut = minut+5
	horny = horny + 10

	'<center><img src="images/klof/bas19.jpg"></center>'
	'Жора поднимает ваш таз со словами:"Подержи ка мой стаканчик"'
	'Вставляет в вас стакан и наливает себе сока'

	act 'Покорно держать стакан':gt'klofdomhouse','ev57'
end

if $ARGS[0] = 'ev57':
	cla
	*clr
	minut = minut+5
	horny = horny + 10

	'<center><img src="images/klof/bas20.jpg"></center>'
	'Жора не спеша выпивает сок и улыбаясь говорит:"Пососи у меня член сучка"'

	act 'Отсасывать у Жоры':gt'klofdomhouse','ev58'
end

if $ARGS[0] = 'ev58':
	cla
	*clr
	minut = minut+5
	bj = bj + 1

	'<center><img src="images/klof/bas21.jpg"></center>'
	'Вы берете Жорин член за щеку'
	'Возбудившись Жора приказывает: "Залазь на мой хуй"'

	act 'Прыгать на члене':gt'klofdomhouse','ev60'
end

if $ARGS[0] = 'ev60':
	cla
	*clr
	minut = minut+10
	vagina = vagina + 1
	sex = sex + 1

	'<center><img src="images/klof/bas27.jpg"></center>'
	'Вы яростно скачите на Жорином хуе'
	'Жора готов кончить'

	act 'Принять заряд в себя':gt'klofdomhouse','ev61'
end

if $ARGS[0] = 'ev61':
	cla
	*clr
	cumface = cumface + 1
	minut = minut+10
	orgasm = orgasm + 1
	horny = 0

	'<center><img src="images/klof/bas22.jpg"></center>'
	'Вы кончаете приняв Жорину сперму в себя'
	'Жора встает и идет в душ со словами к толпе: "Отдерите эту блядь"'

	act 'Трахаться с толпой':gt'klofdomhouse','ev62'
end

if $ARGS[0] = 'ev62':
	cla
	*clr
	minut = minut+10
	orgasm = orgasm + 1
	cumlip = cumlip + 3

	'<center><img src="images/klof/bas23.jpg"></center>'
	'Не чего не соображая вы отсасываете группы мужиков'
	'Кто то ставит вас раком и засаживает вам жопу свой член'

	act 'Трахаться с толпой':gt'klofdomhouse','ev63'
end

if $ARGS[0] = 'ev63':
	cla
	*clr
	minut = minut+10
	bj = bj + 1
	cumlip = cumlip + 3
	sex = sex +1
	orgasm = orgasm + 1
	cumass = cumass + 1
	anal += 1
	anus += 1

	'<center><img src="images/klof/bas24.jpg"></center>'
	'Вы продолжаете отсасывать, кто то долбит вас в жопу'
	'Вас охватывает оргазм, вы чувствуете что чей то член заходит в вашу киску'

	act 'Трахаться с толпой':gt'klofdomhouse','ev64'
end

if $ARGS[0] = 'ev64':
	cla
	*clr
	minut = minut+10
	orgasm = orgasm + 1
	bj = bj + 1
	cumlip = cumlip + 3
	sex = sex +1
	orgasm = orgasm + 1
	cumass = cumass + 1
	anal += 1
	anus += 1

	'<center><img src="images/klof/bas25.jpg"></center>'
	'Вы ебут и кончают во все щели. Вас охватывает оргазм'

	act 'Встать и одеть купальник':gt'klofdomhouse','ev65'
end

if $ARGS[0] = 'ev65':
	cla
	*clr
	money = money + 200

	'<center><img src="images/klof/bas26.jpg"></center>'
	'Вы одели купальник, встали и оперлись на колонну. Ваши руки и ноги дрожали, а киска и попа нестерпимо зудели'
	'Жора вышел из раздевалки и сказал: "Ну и шоу мы с тобой здесь устроили,босс восторге!"'
	'-Даже по телеку передавали, держи деньги и визитку с его адресом.'

	act 'Идти домой':gt'street'
end

!господи, какая хуета, я плакал кровавыми слезами
--- klofdomhouse ---------------------------------

