# klofdomhouse1
if $ARGS[0] = 'start':
	cla
	*clr
	minut = minut + 5

	act 'Позвонить в дверь':
		cla

		if klofQW = 2 and hour >= 16 and klofday ! day:
			gt'klofdomhouse','ev1'
		elseif klofQW > 2 and hour >= 16 and klofday ! day:
			gt'klofdomhouse','start1'
		else
			'Никого нет дома'

			act 'Уйти домой':gt'street'
		end
	end
	act 'Уйти домой':gt'street'
end

if $ARGS[0] = 'ev1':
	cla
	*clr
	klofday = day
	minut = minut+5

	'<center><img src="images/klof/klof.jpg"></center>'
	'Вы позвонили в дверь.'
	'Вам не открыли и вы хотели уйти, но тут дверь открылась.'
	'-Привет- сказала Света'
	'-А это ты- сказал (улыбаясь) парень- проходи.'

	act 'Зайти':gt'klofdomhouse','ev2'
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
	'- Зови меня Жорой, а моего кореша Сеней, а теперь побыстрому приберись в квартире.'

	act 'Прибираться':gt'klofdomhouse','ev4'

	if sub < 30 and horny < 75:
		act 'Уйти':gt'klofdomhouse','ev3'
	end
end

if $ARGS[0] = 'ev3':
	cla
	*clr
	minut = minut+5
	klofQW = klofQW-1

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
	klofQW = klofQW+1
	cla
	*clr
	money = money + 200
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

	if bj >= anal and bj >= sex:
		callnm = 1
	elseif anal >= oral and anal >= sex:
		callnm = 2
	elseif sex >= bj and sex >= anal:
		callnm = 3
	end

	if vaf >= 100:
		callnm = 4
	end

	act 'Уйти домой':gt'street'
end

if $ARGS[0] = 'start1':
	cla
	*clr
	klofday = day
	minut = minut + 5
	gt'klofdomhouse','ev7'
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
	klofQW = klofQW+1
	money = money + 100
	vagina = vagina + 1
	sex = sex + 1
	cumpussy = cumpussy + 1

	picrand = RAND(1,3)
	if picrand = 1:'<center><img src="images/klof/klof7.jpg"></center>'
	if picrand = 2:'<center><img src="images/klof/klof8.jpg"></center>'
	if picrand = 3:'<center><img src="images/klof/klof9.jpg"></center>'

	'Жора жетко долбил в вашу киску.'

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
	klofQW = klofQW+1
	money = money + 100
	anal = anal + 1
	anus = anus + 1
	cumass = cumass + 1

	picrand = RAND(1,3)
	if picrand = 1:'<center><img src="images/klof/klof11.jpg"></center>'
	if picrand = 2:'<center><img src="images/klof/klof12.jpg"></center>'
	if picrand = 3:'<center><img src="images/klof/klof13.jpg"></center>'

	'Жора со всей силы долбит вас в жопу.'

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
	klofQW = klofQW+1
	money = money + 100
	bj = bj + 1
	cumface = cumface + 1

	picrand = RAND(1,3)
	if picrand = 1:'<center><img src="images/klof/klof15.jpg"></center>'
	if picrand = 2:'<center><img src="images/klof/klof16.jpg"></center>'
	if picrand = 3:'<center><img src="images/klof/klof17.jpg"></center>'

	'Вы со страстью обхватили Жорин член губами.'

	horand = RAND(1,100)
	if horand <= sex:horny = 0 & orgasm += 1 & 'Вас охватил оргазм'
	if horand > sex:horny = horny + 10 & 'Вы остались не удовлетворены'

	act '...':
		cla
		*clr

		picrand = RAND(1,3)
		if picrand = 1:'<center><img src="images/klof/klof18.jpg"></center>'
		if picrand = 2:'<center><img src="images/klof/klof19.jpg"></center>'
		if picrand = 3:'<center><img src="images/klof/klof20.jpg"></center>'

		'Жора разряжается вам в лицо'
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
	klofQW = klofQW+1
	money = money + 100
	vagina = vagina + 1
	sex = sex + 1

	picrand = RAND(1,3)
	if picrand = 1:'<center><img src="images/klof/klof7.jpg"></center>'
	if picrand = 2:'<center><img src="images/klof/klof8.jpg"></center>'
	if picrand = 3:'<center><img src="images/klof/klof9.jpg"></center>'

	'Сеня жестко долбил в вашу киску.'

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
	klofQW = klofQW+1
	money = money + 100
	cumass = cumass + 1
	anal += 1
	anus += 1

	picrand = RAND(1,3)
	if picrand = 1:'<center><img src="images/klof/klof11.jpg"></center>'
	if picrand = 2:'<center><img src="images/klof/klof12.jpg"></center>'
	if picrand = 3:'<center><img src="images/klof/klof13.jpg"></center>'

	'Сеня со всей силы долбит вас в жопу.'

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
	klofQW = klofQW+1
	money = money + 100
	bj += 1
	guy = guy + 1
	cumlip = cumlip + 1

	picrand = RAND(1,3)
	if picrand = 1:'<center><img src="images/klof/klof15.jpg"></center>'
	if picrand = 2:'<center><img src="images/klof/klof16.jpg"></center>'
	if picrand = 3:'<center><img src="images/klof/klof17.jpg"></center>'

	'Вы со страстью обхватили Сененин член губами.'

	horand = RAND(1,100)
	if horand <= sex:horny = 0 & orgasm += 1 & 'Вас охватил оргазм'
	if horand > sex:horny = horny + 10 & 'Вы остались не удовлетворены'

	act '...':
		cla
		*clr
		facial += 1

		picrand = RAND(1,3)
		if picrand = 1:'<center><img src="images/klof/klof18.jpg"></center>'
		if picrand = 2:'<center><img src="images/klof/klof19.jpg"></center>'
		if picrand = 3:'<center><img src="images/klof/klof20.jpg"></center>'

		'Сеня разряжается вам в лицо'
		'Вы оделись и собрались уходить домой.'
		'Сеня протянул вам деньги: "Заработала крошка"'

		act 'Уйти домой':gt'street'
	end
end

if $ARGS[0] = 'ev19':
	cla
	*clr
	minut = minut+30
	klofQW = klofQW+2
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
	'Вы уселись на кровать'

	act 'Показать грудь':gt'klofdomhouse','ev25'
end

if $ARGS[0] = 'ev25':
	cla
	*clr
	'<center><img src="images/klof/klof26_1.jpg"></center>'
	'Вы оголили свою грудь'

	act 'Показать попку':gt'klofdomhouse','ev26'
end

if $ARGS[0] = 'ev26':
	cla
	*clr
	'<center><img src="images/klof/klof26_3.jpg"></center>'
	'Вы показали свою попку'

	act 'Снять платье':gt'klofdomhouse','ev27'
end

if $ARGS[0] = 'ev27':
	cla
	*clr
	'<center><img src="images/klof/klof26_4.jpg"></center>'
	'Вы сняли с себя платье'

	act 'Соблазнять босса':gt'klofdomhouse','ev28'
end

if $ARGS[0] = 'ev27':
	cla
	*clr
	'<center><img src="images/klof/klof26_6.jpg"></center>'
	'Вы сели на кровать и раздвинули ножки'

	act 'Соблазнять босса':gt'klofdomhouse','ev28'
end

if $ARGS[0] = 'ev28':
	cla
	*clr
	'<center><img src="images/klof/1284364hjl.jpg"></center>'
	'Вы повернулись на бок и продемонстрировали боссу свои прелести'

	act 'Покрутить попкой перед боссом':gt'klofdomhouse','ev29'
end

if $ARGS[0] = 'ev29':
	cla
	*clr
	'<center><img src="images/klof/1284365sgp.jpg"></center>'
	'Вы повернулись на бок и продемонстрировали боссу свои прелести'

	act 'Соблазнять босса':gt'klofdomhouse','ev29'
end
--- klofdomhouse1 ---------------------------------

