# sny
$d_dima_end = {
	act 'Протирать глаза':
		cls
		minut += 5
		SNYnoseGang += 1
		gs'stat'

		'<center><img src="images/qwest/alter/ev2/facial2.jpg"></center>'
		'Протерев глаза вы увидели, что Димка подошел к столу и из укромного места достал работающую камеру, после чего отключил ее "Эй Гошан, классный видос получился с этой шлюхой."'

		if NosovRevenge = 1:
			NosovRevenge = 2
			daynosovrevenge = daystart

			'Носов повернулся к вам "Ну что шалава, вот ты и довыебалась."'
		end

		act 'Уйти':gt'gorodok'
	end
}

$d_dima_kiss = {
	act 'Целоваться':
		cls
		minut += 5
		horny += 10
		!1 и 4
		gs'stat'

		'<center><img src="images/qwest/alter/ev2/pett.jpg"></center>'
		'Вы целуетесь с Димой и он плавно раздевает вас. Его руки нежно обхватывают вас и вы встаете на колени и ложитесь грудью на диван.'

		act 'Ждать':
			cls
			minut += 5
			horny += 10
			!1 и 4
			gs'stat'

			'<center><img src="images/qwest/alter/ev2/pett2.jpg"></center>'
			'Член Димы тыкается вам в киску и вы решаете помочь ему раздвинув свои булочки что бы облегчить доступ.'

			act 'Ждать':
				cls
				minut += 5
				$boy = 'Дима'
				silavag = 1
				dick = 16
				if npcSex[1] = 0:npcSex[1] = 1 & guy += 1
				gs'stat'

				'<center><img src="images/qwest/alter/ev2/fuck.jpg"></center>'

				dynamic $sexstart
				dynamic $sexstart2
				!dynamic $sexcum

				'Вдруг в комнату заходит Гошан Круглов, друг Димы и садится рядом с вами достав свой член.'

				act 'Взять в рот':
					cls
					minut += 5
					if npcSex[4] = 0:npcSex[4] = 1 & guy += 1
					bj += 1
					if protect = 1:condomDima = 1
					gang += 1
					gs'stat'

					'<center><img src="images/qwest/alter/ev2/fuck2.jpg"></center>'
					'Вы обхватываете член Гошана и начинаете его сосать вбирая в свой ротик до горла.'

					dynamic $sexstart4
					dynamic $sexcum

					act 'Сосать':
						cls
						minut += 5
						cumface += 1
						facial += 1
						gs'stat'

						'<center><img src="images/qwest/alter/ev2/facial.jpg"></center>'
						'Гошан вынимает член из вашего рта и струя спермы ударяет вам в лицо.'

						if condomDima = 1:
							act 'Далее':
								cls
								facial += 1
								cumface += 1
								gs'stat'

								'<center><img src="images/qwest/alter/ev2/cond.jpg"></center>'
								'Дима снимает со своего члена презерватив и выдавливает сперму из него вам на лицо.'

								dynamic $d_dima_end
							end
						elseif condomDima = 0:
							dynamic $d_dima_end
						end
					end
				end
			end
		end
	end
}

$d_otvali_nosov = {
	act 'Эй! Отвали!':
		cls
		minut += 5
		gs'stat'

		if alko < 6:
			if dom >= 10:
				if horny < 90:
					'Вы оттолкнули Димку от себя "Эй! Отвали! Ты что, охренел что ли?"'

					act 'Уйти':gt'gorodok'
				elseif horny >= 90:
					'Вы хотели оттолкнуть Диму, но приятный огонь внизу живота разгорелся с неистовой силой, ваша киска просто умоляла наполнить ее чем нибудь.'

					dynamic $d_dima_kiss
				end
			else
				'Вы попытались отстраниться от Димы, но он не отпускал вас.'

				dynamic $d_dima_kiss
			end
		else
			'Вам удалось выдавить из себя что то нечленораздельное и немного упереться в Димку руками.'

			dynamic $d_dima_kiss
		end
	end
}

alkoblock = 1
gs'stat'

if snyqw = 0:
	'Одноклассники собрались вместе и под руководством педагога на парты принесли чай и сладости. Альбина повертев головой спросила "А где Котов?" Рыжов хмыкнул "Он уже нажрался и дома валяется пьяный в говно." Шульга осмотревшись добавил "И Сонька тоже не пришла." Учительница сказала "Ну давайте пить чай с плюшками."'

	act 'Пить чай, с плюшками':
		cls
		minut += 30
		fat = fat + 3
		energy = energy + 10
		water = water +20
		gs'stat'

		'В течении полу часа все звенели чашками попивая чай и пожирали плюшки. Наконец все сожрали и учительница поставив магнитофон на стол сказала "А теперь классная дискотека." Из динамиков заиграла музыка. Все стали потихоньку вставать из за столов.'

		act 'Встать из за стола':
			cls
			minut += 30
			snyqw = 1
			gs'stat'

			'Следующие пол часа фактически прошли очень уныло. Парни разбились на свою кучку и куда то регулярно бегали. Девчонки разбились на свою кучку и обсуждали проблемы макияжа и способы применения скраба для кожи. Учительнице по видимому уже надоело до печенок торчать в школе и она сделав самую счастливую физиономию "Ну ладно ребята, с новым годом вас. А я пойду домой, еще к празднику готовить надо." Нестройный хор голосов поздравил учительницу с новым годом и она удалилась.'

			act 'Помогать убирать со стола':gt $curloc
		end
	end
elseif snyqw = 1:
	'Вы стали помогать убирать со стола другим девчонкам. У пацанов тем временем царило какое то оживление.'

	if GorSlut >= 3:
		'К вам подошел Шульга и звучно хлопнув по заднице сказал "Эй опущенная, ты вообще нахуя сюда пришла? Тут нормальные люди тусят, а твое место на параше, с хуем за щекой."'

		act 'Молчать':
			cls
			minut += 15
			gs'stat'

			'Вы молча отвернулись от Шульги. Он грубо схватил вас за локоть "Ты чо какая дерзкая?"'

			if AlbinaBlockHumiliation = 1:
				GorSlut -= 1

				'К вам подошла Альбина "Слыш ты, уебок. Ты кажется не вкурил с прошлой нашей беседы? Отъебись от нее, понятно?" Но Шульга повидимому уже успел где то бухнуть и храбро начал наезжать на Альбину "Ты кого назвала уебком? А? Ты чо, рамсы попутала тварь?" Альбина улыбнулась самой очаровательной улыбкой Шульге и тут же резко воткнула ему между ног свою коленку, от чего Шульга с воем грохнулся на пол. Альбина села на корточки возле катающегося по полу Шульги "Будешь еще пиздеть, приедут большие и сильные дяди из конторы ритуальных услуг и похоронят тебя." Шульга сжавшись в комок на полу выл "Сука!!!" Альбина встала на ноги и внезапно со всей силы пнула Шульге по ребрам "Это ты кого сукой назвал?" Шульга взвыл еще сильнее и запричитал "Не тебя! Это я от боли." Альбина довольно усмехнулась и села с ним рядом неожиданно погладив его по голове. "Вот видишь, можешь же быть умным мальчиком." Потом встала и сказала вам "Ладно Светка, лучше действительно иди отсюда. Видишь как на тебя остро реагирует шпана, не мозоль им глаза лишний раз."'

				act 'Уйти':gt'gschool'
			else
				'Вы запричитали "Да отстань ты от меня. что тебе надо то?" Шульга усмехнулся, "как это чо? Новогодний подарок тебе за щеку влупить. Короче пойдем в сортир, харэ выебываться."'

				act 'Идти в сортир':snyqw = 2 & minut += 15 & gt $curloc
			end
		end
	elseif GorSlut <= 2:
		'Вдруг вас окликнул один из пацанов "Свет, айда к нам."'

		act 'Подойти':
			cls
			minut += 5
			gs'stat'

			'Вы подошли к парням, те втихушку глушили водку. Дэн Рыжов, как главный заводила протянул вам стаканчик.'

			act 'Выпить':
				cls
				minut += 5
				alko += 3
				gs'stat'

				'<center><img src="images/qwest/alter/ev2/drunk.jpg"></center>'
				'Вы выпили водку и ваше горло обожгло пламенем. Вы даже задохнулись но вам тут же протянули соленый огурец, вы быстро схрумкали его. Димка Носов обратился ко всем, "Эй народ! У меня предки уехали новый год встречать, пойдемте ко мне. Устроим тусовку!" Все обрадовались, так как вечер в школе оказался совершенно не интересным.'

				if grupNPC[1] = 0:
					grupNPC[1] = 50
					NosovRevenge = 1

					'Дима Носов обратился к вам в пол голоса. "Света, у нас с тобой были разногласия. Я искренне прошу прощения за свое недостойное поведение. Надеюсь ты не откажешься и придешь на вечеринку."'
				end

				act 'Идти на тусовку':snyqw = 3 & minut += 30 & gt $curloc
				act 'Уйти':gt'gschool'
			end
			act 'Отказаться пить':
				cls
				minut += 5
				gs'stat'

				'Вы отказались пить водку как вас не старались уговорить. Димка Носов обратился ко всем, "Эй народ! У меня предки уехали новый год встречать, пойдемте ко мне. Устроим тусовку!" Все обрадовались, так как вечер в школе оказался совершенно не интересным.'

				if grupNPC[1] = 0:
					grupNPC[1] = 50
					NosovRevenge = 1

					'Дима Носов обратился к вам в пол голоса. "Света, у нас с тобой были разногласия. Я искренне прошу прощения за свое недостойное поведение. Надеюсь ты не откажешься и придешь на вечеринку."'
				end

				act 'Идти на тусовку':snyqw = 3 & minut += 30 & gt $curloc
				act 'Уйти':gt'gschool'
			end
		end
	end
elseif snyqw = 2:
	'В сортире Шульга тут же приспустил свои спортивные штаны и сказал "Ну чо соска, к кормушке."'

	act 'Сосать':
		cls
		minut += 5
		KlassBlowBang = 1
		gang += 1
		bj += 10
		sub += 100
		if npcSex[1] = 0:npcSex[1] = 1 & guy += 1
		if npcSex[2] = 0:npcSex[2] = 1 & guy += 1
		if npcSex[3] = 0:npcSex[3] = 1 & guy += 1
		if npcSex[4] = 0:npcSex[4] = 1 & guy += 1
		if npcSex[5] = 0:npcSex[5] = 1 & guy += 1
		if npcSex[6] = 0:npcSex[6] = 1 & guy += 1
		if npcSex[7] = 0:npcSex[7] = 1 & guy += 1
		if npcSex[8] = 0:npcSex[8] = 1 & guy += 1
		!if gnpcSex[9] = 0:gnpcSex[9] = 1 & guy += 1
		if npcSex[10] = 0:npcSex[10] = 1 & guy += 1
		if npcSex[11] = 0:npcSex[11] = 1 & guy += 1
		if GorSlut < 5:GorSlut = 5
		gs'stat'

		'<center><img src="images/qwest/alter/ev2/snybj.jpg"></center>'
		'Вы сели на корточки перед Шульгой и начали у него сосать член. В туалет вошли еще несколько парней из вашего класса, вскоре уже все пацаны из вашего класса, кроме Котова, который по слухам уже был пьяный окружили вас. Кто то расстегнул ширинку и достал член, к нему присоединился еще один'

		act 'Обслуживать одноклассников':
			cls
			minut += 5
			gs'stat'

			'<center><img src="images/qwest/alter/ev2/snyfilming.jpg"></center>'
			'Вы чавкаете на одном хую своим ртом, при этом наяривая ладошками другие члены, случайно подняв глаза вы видите, что Носов снимает вас на камеру.'

			act 'Сосать':
				cls
				minut += 5
				gs'stat'

				'<center><img src="images/qwest/alter/ev2/snyblowbang.jpg"></center>'
				'Вы обслуживаете хуи даже не успевая понять кому принадлежит тот или иной член. Одноклассники уже выстроились в кружок и ваше лицо со всех сторон окружают вставшие члены.'

				act 'Сосать':
					cls
					minut += 5
					gs'stat'

					'<center><img src="images/qwest/alter/ev2/snyblowbang2.jpg"></center>'
					'Один из членов даже трется о вашу макушку, пока вы обрабатываете члены, рот уже начинает уставать.'

					act 'Сосать':
						cls
						minut += 5
						gs'stat'

						'<center><img src="images/qwest/alter/ev2/snyblowbang3.jpg"></center>'
						'Многие из парней дрочат перед вашим лицом, пока вы заглатываете очередной хуй.'

						act 'Сосать':
							cls
							minut += 5
							cumface += 5
							cumlip += 5
							cumfrot += 1
							gs'stat'

							'<center><img src="images/qwest/alter/ev2/snycum.jpg"></center>'
							'Наконец то вам начинают кончать на лицо покрывая его спермой. От спермы из 10ти хуев ваше лицо полностью покрыто слизью и одежда пропиталась спермой.'

							act 'Уйти':gt'gschool'
						end
					end
				end
			end
		end
	end
elseif snyqw = 3:
	if music_on = 0:
		inited = 1
		music_on = 1
		volume = 100
		$music_theme = 'gnewyear'
		gs'init_music'
	end

	'<center><img src="images/qwest/alter/ev2/tusa3.jpg"></center>'
	'Весь класс пошел к Димке Носову домой. По пути пацаны сбегали в магазин и несли полные пакеты провизии и выпивки. Дома Димка включил музыку, девчонки быстренько накрыли на стол и класс начал отмечать новый год. Вам тоже сунули в руки рюмку водки.'

	act 'Выпить':
		cls
		minut += 15
		alko += 3
		gs'stat'

		'<center><img src="images/qwest/alter/ev2/drunk.jpg"></center>'
		'Вы выпили водки из рюмки и тут же закусили'

		act 'Тусить':snyqw = 4 & minut += 5 & gt $curloc
	end
	act 'Отказаться пить':
		cls
		minut += 15
		gs'stat'

		'<center><img src="images/qwest/alter/ev2/tusa3.jpg"></center>'
		'Вы отказались пить как вас не уговаривали.'

		act 'Тусить':snyqw = 4 & minut += 5 & gt $curloc
	end
elseif snyqw = 4:
	'<center><img src="images/qwest/alter/ev2/tusa4.jpg"></center>'
	'Парни и девчонки расслабились и началось непринужденное общение. Кто то разлил еще водки по рюмкам и вам вручили рюмку водки.'

	act 'Выпить':
		cls
		minut += 15
		alko += 3
		gs'stat'

		'<center><img src="images/qwest/alter/ev2/drunk.jpg"></center>'
		'Вы выпили водки из рюмки и тут же закусили'

		act 'Тусить':snyqw = 5 & minut += 5 & gt $curloc
	end
	act 'Отказаться пить':
		cls
		minut += 15
		gs'stat'

		'<center><img src="images/qwest/alter/ev2/tusa4.jpg"></center>'
		'Вы отказались пить как вас не уговаривали.'

		act 'Тусить':snyqw = 5 & minut += 5 & gt $curloc
	end
elseif snyqw = 5:
	'<center><img src="images/qwest/alter/ev2/tusa5.jpg"></center>'
	'Альбина вышла в центр комнаты и начала зажигательно танцевать. К ней присоединилась Катя и ее сестра Вика. Пока вы наблюдали за девчонками, вам опять сунули в руку рюмку водки.'

	act 'Выпить':
		cls
		minut += 15
		alko += 3
		gs'stat'

		'<center><img src="images/qwest/alter/ev2/drunk.jpg"></center>'
		'Вы выпили водки из рюмки и тут же закусили'

		act 'Тусить':snyqw = 6 & minut += 5 & gt $curloc
	end
	act 'Отказаться пить':
		cls
		minut += 15
		gs'stat'

		'<center><img src="images/qwest/alter/ev2/tusa5.jpg"></center>'
		'Вы отказались пить как вас не уговаривали.'

		act 'Тусить':snyqw = 6 & minut += 5 & gt $curloc
	end
elseif snyqw = 6:
	'<center><img src="images/qwest/alter/ev2/tusa6.jpg"></center>'
	'Альбина и Катя вовсю зажигают посередине комнаты. И неожиданно Альбина обхватывает лицо Кати руками и целует ее в губы. По комнате разносится вой пацанов требующих продолжения. Вы сами не поняли как, но в вашей руке опять оказалась полная рюмка водки. Девчонки тем временем тоже прекратили танец и подошли к столу.'

	act 'Выпить':
		cls
		minut += 15
		alko += 3
		gs'stat'

		'<center><img src="images/qwest/alter/ev2/drunk.jpg"></center>'
		'Вы выпили водки из рюмки и тут же закусили'

		act 'Тусить':snyqw = 7 & minut += 5 & gt $curloc
	end
	act 'Отказаться пить':
		cls
		minut += 15
		gs'stat'

		'<center><img src="images/qwest/alter/ev2/tusa6.jpg"></center>'
		'Вы отказались пить как вас не уговаривали.'

		act 'Тусить':snyqw = 7 & minut += 5 & gt $curloc
	end
elseif snyqw = 7:
	if alko >= 10:
		'<center><img src="images/qwest/alter/ev2/vomit.jpg"></center>'
		'Вы почувствовали как содержимое желудка стремительно начало прорываться наружу. Не разбирая дороги вы ломанулись в туалет.'

		act 'Блевать':
			cls
			minut += 60*alko
			gs'stat'

			if NosovRevenge = 0:
				partyPantyCum = 1
				cumfrot += 1
				gs'stat'

				'<center><img src="images/qwest/alter/ev2/vom.jpg"></center>'
				'Вы очнулись на кровати в комнате Димки Носова. Голова болит все тело ноет и вы чувствуете, что у вас на попе мокрые трусы, повернув голову вы видите, что на трусах какая то белая слизь. Вы тыкаете пальчиком в слизь и подносите пальчик к носу, резкий запах спермы ударяет вам нос. В этот момент в комнату входит Носов. Видя ваши перемазанные спермой трусы он начинает хохотать "Черт побери. Я то думал что тут в комнате до тебя никто не доберется, а вот хрен. Уже кто то успел отъебать тебя." На шум в комнату заглядывают еще несколько взъерошенных голов, слышится шепот "Че там?" другой голос отвечает "Да ниче, Светку кто то отъебал."'

				act 'Уйти':gt'gorodok'
			elseif NosovRevenge = 1:
				'<center><img src="images/picBody/tatvag6.jpg"></center>'
				'Вы очнулись лежа на каком то неудобном диване. С трудом подняв голову вы поняли, что это место вам не знакомо, прислушавшись к ощущениям вы поняли, что у вас сильно болит и жжет лобок, взглянув себе между ног вы увидели, что на вас одеты трусики, приспустив их вы просто офигели от увиденного. На лобке красуется свежевыбитая татуировка.'

				if tatvag = 1:'Вам видимо перебили старую татушку на новую.'
				if tatvag = 2:'Вам видимо перебили старую татушку на новую.'
				if tatvag = 3:'Вам видимо перебили старую татушку на новую.'
				if tatvag = 4:'Вам видимо перебили старую татушку на новую.'
				if tatvag = 5:'Вам видимо перебили старую татушку на новую.'

				tatvag = 6
				lobok = -10
				gs'stat'

				'Приглядевшись вы прочитали, на английском было написано слово SLUT, шлюха и на буквах лежала вытатуированная девушка в чулках. Вы начали возмущаться, хотя это больше было похоже на мычание и стоны, на ваш голос пришел какой то мужчина он вам заявил "Ну наконец то пришла в себя. А то явилась сюда, орала, что надо срочно татуировку." Вы уставились на мужчину "Какую к черту татуировку?" Мужчина закатил глаза "О господи, сначала напьются, а потом чему то удивляются. Вот эскиз татуировки на котором твоя подпись." Вы посмотрели на подпись, действительно она была ваша.'

				act 'Уйти':gt'gorodok'
			end
		end
	elseif alko >= 6 and alko < 10:
		'<center><img src="images/qwest/alter/ev2/tit.jpg"></center>'
		'Вы довольно сильно захмелели и уже плохо соображаете. Чьи то руки вытаскивают вас в центр комнаты где танцуют пацаны и девчонки. Внезапно Носов стаскивает с вас блузку обнажая ваши груди перед всем классом. Вы стали вяло отбиваться и с истеричным хохотом пытаться натянуть блузку обратно на грудь. Димка берет вас за руку и куда то тащит.'

		act 'Эй! Куда ты меня тащишь?':snyqw = 10 & minut += 5 & gt $curloc
	elseif alko > 0 and alko < 6:
		'<center><img src="images/qwest/alter/ev2/alb.jpg"></center>'
		'Вы слегка пьяны и вам весело. Вы замечаете, что Альбина сидит на диване и целуется с Ванькой Прохоровым и Федька Козлов лапает ее груди. Оглядевшись вы замечаете, что Кати нигде нет.'

		act 'Искать Катю':
			cls
			minut += 5
			SeeKatBang = 1
			KatjaLust += 10
			KatjaSlut += 10
			horny += 10
			gs'stat'

			'<center><img src="images/qwest/alter/ev2/kat.jpg"></center>'
			'Вы принялись ходить по квартире в поисках Кати, за одной из дверей вы услышали женские стоны и скрип кровати. Заглянув туда вы немного офигели от увиденного. На кровати стоит раком Катька Мейнольд, прямо в одежде и ее сзади яростно долбит Славик Воинов. Катька только стонет когда толстый член влетает в нее до самого основания и яйца бьют ее по лобку. Наконец Славик зарычав кончил прямо в Катю и свалился на бок, он зашептал ей "Катюх, я в тебя уже давно влюблен, не подумай, что это мы только по пьяни, я просто мечтаю встречатся с тобой." Катя что то пробормотала и кажется вырубилась.'

			act 'Идти в комнату':snyqw = 8 & minut += 5 & gt $curloc
		end
	elseif alko = 0:
		'<center><img src="images/qwest/alter/ev2/idi.jpg"></center>'
		'Вы совершенно трезвая смотрите на этих беснующихся идиотов которые вас окружают.'

		act 'Уйти':gt'gorodok'
	end
elseif snyqw = 8:
	'<center><img src="images/qwest/alter/ev2/tusa8.jpg"></center>'
	'Вернувшись в основную комнату, вы увидели, что одноклассники продолжают бухать. Альбины, с Ванькой и Федькой, в комнате нету. Девчонки отплясывают по середине комнаты и Кристинка Зверева даже спустила с себя трусы показывая свою задницу окружающим.'

	act 'Искать Альбину':
		cls
		minut += 5
		horny += 10
		seeAlbinaFuck = 1
		gs'stat'

		'<center><img src="images/qwest/alter/ev2/albgang.jpg"></center>'
		'Вы принялись ходить по квартире в поисках Альбины, за одной из дверей вы услышали женские стоны и скрип кровати. Заглянув туда вы увидели как Федька и Ванька жестко трахают Альбину. Альбина вся в поту и с размазанной косметикой по лицу глухо стонет когда член Федьки входит в ее горло, от чего то заметно утолщается. Судя по углу наклона члена и задницы Альбины Ванька не стал размениваться на мелочи и дерет Альбинку в задницу.'

		act 'Идти в комнату':snyqw = 9 & minut += 5 & gt $curloc
	end
elseif snyqw = 9:
	'<center><img src="images/qwest/alter/ev2/tusa9.jpg"></center>'
	'Практически вся компания уже перепилась, кто то валяется в отрубе, кто то пытается тусить. К вам подходит Носов "А ты Света еще на ногах? молодец, остальные уже готовы, пойдем, поможешь мне кое с чем."'

	act 'Мне пора идти':
		cls
		minut += 15
		gs'stat'

		'Вы сказали Диме, что вам уже пора идти.'

		act 'Уйти':gt'gorodok'
	end
	act 'Пойдем':snyqw = 10 & minut += 5 & gt $curloc
elseif snyqw = 10:
	'<center><img src="images/qwest/alter/ev2/kiss.jpg"></center>'
	'Оказавшись вдвоем в комнате с Димкой Носовым, он начал вас лапать за грудь и присосался своими губами к вашим в долгом слюнявом поцелуе.'

	if NosovRevenge = 1:
		dynamic $d_dima_kiss
		dynamic $d_otvali_nosov
	else
		if dimaFilm = 1:
			dynamic $d_dima_kiss
		else
			dynamic $d_dima_kiss
			dynamic $d_otvali_nosov
		end
	end
end
--- sny ---------------------------------

