# love
if $ARGS[0] = 'start':
	cla
	*clr
	if harakBoyA = 0:gt'love','0'
	if harakBoyA = 1:gt'love','1'
	if harakBoyA = 2:gt'love','2'
end

if $ARGS[0] = '0':
	cla
	*clr
	love = 1

	'Вы начали разговор о сожительстве. На что <<$boyA>> сказал вам, что он в принципе, не против, но сперва он хочет вас познакомить с своими родителями.'
	'Он вас предупреждает, что мама очень требовательная и строгая, <<$boyA>> говорит, что он очень любит маму и не хочет ее расстраивать. Поэтому вы должны выглядеть шикарно, только платье из бутика, ухоженные и завитые волосы, косметика в меру.'
	'На ближайшей встрече, как только вы полностью будете готовы <<$boyA>> отвезет вас к своим родителям.'

	act 'Пригласить к себе':
		cla
		gt'sexm','room'
	end
end

if $ARGS[0] = 'mother':
	cla
	*clr
	minut = minut + 60

	'<<$boyA>> отвез вас к дому своих родителей. Вы вышли из машины, поднялись на лифте, после звонка в дверь вам открыли, видно было, что вас уже ожидали. Вы вошли в квартиру, с вами поздоровался пожилой, седой мужичок, одетый в брюки и рубашку, пока вы одевали тапочки в коридор прошла пожилая женщина, с тонкими, брезгливо поджатыми губами, она пригласила вас к столу.'
	'Вы прошли в комнату, <<$boyA>> пододвинул вам стульчик и вы сели за уже накрытый стол. Напротив вас села мать вашего парня. Она стала вас рассматривать с брезгливостью во взгляде, как будто перед ней сидело мерзкое насекомое, а не девушка ее сына. Нус, милочка, и чем же вы зарабатываете на жизнь?'

	if (work = 1 or cheatWork = 1) and workKafe = 1:'Вы ответили, что вы официантка в кафе.'
	if student > 0 and diplom = 0:'Учусь в университете.'
	if diplom = 1:'Дипломированный специалист закончивший университет.'
	if work = 0 and cheatWork = 0 and workKafe ! 1:'Я безработная.'

	if modelfoto > 0:
		bfA = 0

		'На что она гадливо улыбнулась и сказала "А что же вы нам не рассказываете как снимаетесь для интернет сайтов?" После этих слов она выложила на стол вашу обнаженную фотографию. "Сынок, мама о тебе заботится, эта девка не достойна тебя."'
		'<<$boyA>> покраснел и сказал "Светлана, я тебя так любил, а ты, ты, просто дешевая шлюха! Уходи."'

		act 'Уйти':gt'street'

		exit
	end

	if kavslut > 0:
		bfA = 0

		'На что она гадливо улыбнулась и сказала "Сынок, да об этой потаскухе все армяне на рынке знают. Только и обсуждают, Свету официантку и как ее дерут во все щели, она тебя не достойна!"'
		'<<$boyA>> покраснел и сказал "Светлана, я тебя так любил, а ты, ты, просто дешевая шлюха! Уходи."'

		act 'Уйти':gt'street'

		exit
	end

	if frot > 3:
		bfA = 0

		'На что она гадливо улыбнулась и сказала "Сынок, эту шлюшку все извращенцы в метро знают и жребий тянут, кто следующий к ее заднице пристроится. Она не достойна тебя!"'
		'<<$boyA>> покраснел и сказал "Светлана, я тебя так любил, а ты, ты, просто дешевая шлюха! Уходи."'

		act 'Уйти':gt'street'

		exit
	end

	if gloryhole > 30:
		bfA = 0

		'На что она гадливо улыбнулась и сказала "Сынок, твоя Светуля подрабатывает отсасывая члены в сексшопе, ты такую жену себе хочешь? Она не достойна тебя!"'
		'<<$boyA>> покраснел и сказал "Светлана, я тебя так любил, а ты, ты, просто дешевая шлюха! Уходи."'

		act 'Уйти':gt'street'

		exit
	end

	love = 2

	'На что она плаксивым взглядом посмотрела на своего сына и сказала "Очень мило, ну чтож сынок, это твой выбор, кто я такая, что бы вмешиваться в твою жизнь, я всего лишь родила тебя, выкормила и вырастила, сейчас ты уже конечно имеешь право забыть о своей маме и пусть, только она одна любит тебя и желает тебе лучшего. Если нужна она тебе, пожалуйста, я не запрещаю."'
	'<<$boyA>> потупился "Мама, ну что ты, я же люблю тебя, но Света тоже мне дорога."'
	'Мать вскочила сверкнув взглядом "Сынок, ты встречаешься с ней совсем недавно, что ты вообще знаешь о ней?"'
	'<<$boyA>> еще долго уговаривал свою мать и оправдывался, наконец она отпустила вас из своих хищных когтей и вы собрались уходить.'

	act 'Уйти':gt'street'
end

if $ARGS[0] = '1':
	cla
	*clr
	love = 1

	'Вы начали разговор о сожительстве. На что <<$boyA>> сказал вам, что он в принципе, не против, но сперва он хочет вас познакомить с своими друзьями.'
	'Он говорит что вы должны выглядеть шикарно, только платье из бутика, ухоженные и завитые волосы, косметика в меру, что-бы его друзья от зависти сдохли.'
	'На ближайшей встрече, как только вы полностью будете готовы <<$boyA>> отвезет вас к своим друзьям.'

	act 'Пригласить к себе':
		cla
		gt'sexm','room'
	end
end

if $ARGS[0] = 'frends':
	cla
	*clr
	'<center><img src="images/img/hasb/z0.jpg"></center>'

	if proverka1 = 0 and proverka2 = 0 and proverka3 = 0 and proverka4 = 0 and proverka5 = 0:
		minut += 180

		'<<$boyA>> отвез вас к своим друзьям. В квартире были двое парней, <<$boyA>> представил вас как свою невесту, вы сели за накрытый стол. Вы весело общались пару часов, когда все было съедено и почти все выпито <<$boyA>> пригласил вас потанцевать, вы с радостью согласились. <<$boyA>> был уже изрядно пьян и у него плохо получалось танцевать, зато хорошо получалось вас лапать, его руки мяли ваши ягодицы, вскоре он запустил их под платье и продолжил гладить ваш зад. Подол платья задрался и ваши трусики предстали на всеобщее обозрение, парни сидели на диване не отрывая глаз от ваших ягодиц. В итоге один из парней встал с дивана и качаясь подошел к вам "Классная задница у твоей телки, дай заценить" сказал он и шлепнул вам по ягодицам так, что вы аж подпрыгнули. <<$boyA>> отпустил вас и направился к нему "Ты совсем охренел, это моя девушка, смотреть можно, трогать нельзя."'
	end

	if modelfoto > 0 and proverka1 = 0:
		'"Да успокойся ты, она же голоя снимается, не веришь залезь в инет там полно её обнаженных фоток." сказал парень.'
		'"Это правда?" спросил <<$boyA>> повернувшись к вам.'
		'"Да, я снималась голой, и что такого я же там не с тремя трахаюсь, а просто показываю свое красивое тело." сказали вы'

		if intel <= 30:
			guy += 2
			picrand = 39
			bfA = 0

			'"Да мне пофигу, что ты там демонстрировала, раз голышом снималась значит блядь" с этими словами он швырнул вас на диван. Вы попытались встать чтобы уйти, но <<$boyA>> остановил вас "Куда собралась шлюха, столько времени мозги мне пудрила и решила что можно так просто свалить. Ну что парни пустим эту блядь по кругу." сказал он и усевшись на диван расстегнул ширинку "Соси" выкрикнул он и притянул вашу голову к промежности. Решив что лучше не спорить с тремя пьяными мужиками вы вынули его член из штанов и направили себе в рот. Остальные тоже присоединились, один уселся на диван рядом с <<$boyA>> и достал член, вы ухватили его рукой и стали обсасывать оба попеременно, второй в это время стащил с вас одежду и опустившись на колени запустил язык вам в киски. Парень сидевший на диване начал дико икать и <<$boyA>> прикрикнул на него "Иди отсюда, а то еще изгадишь её, весь кайф обломаешь", парень встал с дивана и тут же закрыв рот рукой ринулся в туалет.'

			act 'Дальше':xgt'sexdvoe','var'
		elseif intel > 30:
			proverka1 = 1

			'Вы еще несколько минут распинаетесь о том что вы ничего плохого не совершали и что его друзьям просто завидно. В итоге вам удалось переубедить его и <<$boyA>> с вами согласился.'

			act 'Дальше':gt'love','frends'
		end

		exit
	end

	if kavslut > 0 and proverka2 = 0:
		cla
		'"Да ты подожди, эту шлюху все армяне знают, иди у любого спроси про официантку Светку, тебе её дыры во всех подробностях опишут" сказал парень'
		'"Это правда?" спросил <<$boyA>> повернувшись к вам. Не придумав ничего лучше вы ударились в плач.'
		'"Да эти уроды меня изнасиловали несколько раз"'

		if intel <= 50:
			guy += 2
			picrand = 39
			bfA = 0

			'"Да мне пофигу, кто кого насиловал раз несколько раз значит тебе понравилось и ты сама к ним ходила блядь" с этими словами он швырнул вас на диван. Вы попытались встать чтобы уйти, но <<$boyA>> остановил вас "Куда собралась шлюха, столько времени мозги мне пудрила и решила что можно так просто свалить. Ну что парни пустим эту блядь по кругу." сказал он и усевшись на диван расстегнул ширинку "Соси" выкрикнул он и притянул вашу голову к промежности. Решив что лучше не спорить с тремя пьяными мужиками вы вынули его член из штанов и направили себе в рот. Остальные тоже присоединились, один уселся на диван рядом с <<$boyA>> и достал член, вы ухватили его рукой и стали обсасывать оба попеременно, второй в это время стащил с вас одежду и опустившись на колени запустил язык вам в киски. Парень сидевший на диване начал дико икать и <<$boyA>> прикрикнул на него "Иди отсюда, а то еще изгадишь её, весь кайф обломаешь", парень встал с дивана и тут же закрыв рот рукой ринулся в туалет.'

			act 'Дальше':gt'sexdvoe','var'
		elseif intel > 50:
			proverka2 = 1

			'Вы еще несколько минут распинаетесь о том какая вы бедная и несчастная и как эти кавказцы вас жестоко насиловали. В итоге вам удалось убедить его и <<$boyA>> обнял вас и сказал что больше никому не позволит вас обижать.'

			act 'Дальше':gt'love','frends'
		end

		exit
	end

	if frot > 3 and proverka3 = 0:
		cla
		'"Да ты подожди, эту шлюху в метро все извращенцы знают хочешь, сам в метро спустись и можешь трахнуть её прямо в вагоне у всех на глазах" сказал парень'
		'"Это правда?" спросил <<$boyA>> повернувшись к вам.'
		'"Да ты что как ты мог обо мне такое подумать, если там какую то блядь в вагоне едут так это что я что ли" закричали вы и пошли на него.'

		if intel <= 40:
			guy += 2
			picrand = 39
			bfA = 0

			'"Пасть закрой шлюха, я своим друзьям верю, если говорят что это была ты значит это была ты" с этими словами он швырнул вас на диван. Вы попытались встать чтобы уйти, но <<$boyA>> остановил вас "Куда собралась шлюха, столько времени мозги мне пудрила и решила что можно так просто свалить. Ну что парни пустим эту блядь по кругу." сказал он и усевшись на диван расстегнул ширинку "Соси" выкрикнул он и притянул вашу голову к промежности. Решив что лучше не спорить с тремя пьяными мужиками вы вынули его член из штанов и направили себе в рот. Остальные тоже присоединились, один уселся на диван рядом с <<$boyA>> и достал член, вы ухватили его рукой и стали обсасывать оба попеременно, второй в это время стащил с вас одежду и опустившись на колени запустил язык вам в киски. Парень сидевший на диване начал дико икать и <<$boyA>> прикрикнул на него "Иди отсюда, а то еще изгадишь её, весь кайф обломаешь", парень встал с дивана и тут же закрыв рот рукой ринулся в туалет.'

			act 'Дальше':gt'sexdvoe','var'
		elseif intel > 40:
			proverka3 = 1

			'Решив что лучшая защита, это нападение, вы еще несколько минут орете на него. В итоге вам удалось убедить его и <<$boyA>> начинает успокаивать вас говоря что он вас вовсе не обвинял, а просто спросил.'

			act 'Дальше':gt'love','frends'
		end

		exit
	end

	if gloryhole > 30 and proverka4 = 0:
		cla
		'"Да ты подожди, эта потаскуха в сексшопе через дырку сосет." сказал парень'
		'"Это правда?" спросил <<$boyA>> повернувшись к вам.'
		'"Да ты что как ты мог обо мне такое подумать, если там какая то блядь в рот берет так это что я что ли" закричали вы и пошли на него. "А ты урод с чего это решил, я что тебе сосала что тебе есть с чем сравнивать?" начали вы нападать на парня.'

		if intel <= 60:
			guy += 2
			picrand = 39
			bfA = 0

			'"Пасть закрой шлюха, я своим друзьям верю, если говорят что это была ты значит это была ты" с этими словами он швырнул вас на диван. Вы попытались встать чтобы уйти, но <<$boyA>> остановил вас "Куда собралась шлюха, столько времени мозги мне пудрила и решила что можно так просто свалить. Ну что парни пустим эту блядь по кругу." сказал он и усевшись на диван расстегнул ширинку "Соси" выкрикнул он и притянул вашу голову к промежности. Решив что лучше не спорить с тремя пьяными мужиками вы вынули его член из штанов и направили себе в рот. Остальные тоже присоединились, один уселся на диван рядом с <<$boyA>> и достал член, вы ухватили его рукой и стали обсасывать оба попеременно, второй в это время стащил с вас одежду и опустившись на колени запустил язык вам в киски. Парень сидевший на диване начал дико икать и <<$boyA>> прикрикнул на него "Иди отсюда, а то еще изгадишь её, весь кайф обломаешь", парень встал с дивана и тут же закрыв рот рукой ринулся в туалет.'

			act 'Дальше':gt'sexdvoe','var'
		elseif intel > 60:
			proverka4 = 1

			'Решив что лучшая защита, это нападение, вы еще несколько минут орете на него. В итоге вам удалось убедить его и <<$boyA>> начинает успокаивать вас говоря что он вас вовсе не обвинял, а просто спросил.'

			act 'Дальше':gt'love','frends'
		end

		exit

	end

	if film > 2 and proverka5 = 0:
		cla
		'"Да ты подожди, эта потаскуха в порнухе снималась." сказал парень'
		'"Это правда?" спросил <<$boyA>> повернувшись к вам.'
		'"Да, но это было за долго до тебя, это ошибка молодости и всего пару раз, у меня были очень тяжелые времена, но я уже давно этим не занимаюсь" начали вы стараясь выдавить слезу.'

		if intel <= 70 and izvrat = 0:
			guy += 2
			picrand = 39
			bfA = 0

			'"Пасть закрой шлюха, снималась в порнухе значит блядь" с этими словами он швырнул вас на диван. Вы попытались встать чтобы уйти, но <<$boyA>> остановил вас "Куда собралась шлюха, столько времени мозги мне пудрила и решила что можно так просто свалить. Ну что парни пустим эту блядь по кругу." сказал он и усевшись на диван расстегнул ширинку "Соси" выкрикнул он и притянул вашу голову к промежности. Решив что лучше не спорить с тремя пьяными мужиками вы вынули его член из штанов и направили себе в рот. Остальные тоже присоединились, один уселся на диван рядом с <<$boyA>> и достал член, вы ухватили его рукой и стали обсасывать оба попеременно, второй в это время стащил с вас одежду и опустившись на колени запустил язык вам в киски. Парень сидевший на диване начал дико икать и <<$boyA>> прикрикнул на него "Иди отсюда, а то еще изгадишь её, весь кайф обломаешь", парень встал с дивана и тут же закрыв рот рукой ринулся в туалет.'

			act 'Дальше':gt'sexdvoe','var'
		elseif intel > 70 or izvrat = 1:
			proverka5 = 1

			'Вы еще несколько минут распинаетесь о том как вы его любите и что все что было до него, было ошибкой. В итоге вам удалось убедить его и <<$boyA>> обнимает вас и шепчет на ухо "А пару приемов то наверное запомнила, потом покажешь."'

			act 'Дальше':gt'love','frends'
		end

		exit
	end

	love = 2

	'"Ладно, Светик пойдем от сюда, пора уже" сказал <<$boyA>> и вы направились к выходу.'

	act 'Уйти':gt'street'
end

if $ARGS[0] = '2':
	cla
	*clr
	'(Дальнейшие действия отсутствуют.)'

	act 'Пригласить к себе':
		cla
		gt'sexm','room'
	end
end
--- love ---------------------------------

