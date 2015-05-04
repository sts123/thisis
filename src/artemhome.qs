# artemhome
gs'stat'

$boy = 'Артем'
dick = 16
silavag = 0

if artemhomemark = 0:
	'Вы подошли к дому Артема Чеботарева.'

	act 'Уйти':minut += 15 & gt'gorodok'

	if week < 6:
		if hour < 16 and hour >= 7:
			'Артема нет дома.'
		elseif hour >= 16 and hour < 20:
			'Дверь вам открыл Артем и пригласил войти.'

			act 'Войти':artemhomemark = 1 & gt $curloc
		elseif hour >= 20 or hour < 7:
			'Слишком позднее время для того, что бы ходить в гости.'
		end
	elseif week >= 6:
		if hour < 10:
			'Слишком раннее время, что бы ходить в гости.'
		elseif hour >= 10 and hour < 20:
			'Дверь вам открыл Артем и пригласил войти.'

			act 'Войти':artemhomemark = 1 & gt $curloc
		elseif hour >= 20 or hour < 5:
			'Слишком позднее время для того, что бы ходить в гости.'
		end
	end
elseif artemhomemark = 1:
	if arthakQW = 1 and artomhakday ! daystart:
		!Наврала
		DimaRudeBlock = 1

		'Артем говорит вам "Нет слов – ну ты и шлюха.Я был готов на все ради тебя. Думаю после того что я увидел наши отношения перейдут в другую плоскость. А запись пусть побудет у меня – чтоб тебе в голову глупости всякие не лезли. А теперь НА КОЛЕНИ СУКА! Отсос – это самое малое что ты можешь сделать чтоб я не использовал эту запись."Артем очень разочарован и зол.Похоже он стал презирать вас.'

		act 'На колени':
			cls
			minut += 5
			bj += 1
			if npcSex[2] = 0:npcSex[2] = 1 & guy += 1
			swallow += 1
			cumlip += 1
			gs'stat'

			'<center><img src="images/qwest/alter/artom/facefuck.jpg"></center>'
			'После этих слов Артем жестко трахает вас в рот, вы задыхаетесь, вас тошнит и текут сопли, слезы и слюни, Артем долго не выдерживает и кончает вам прямо в горло. Вы захлебываясь судорожно глотаете сперму.'

			act 'Отдышаться':
				cls
				gs'stat'

				'Артему берет вас за руку и говорит "Я думаю что такой сучке какой ты себя показала не жалко будет посвятить моего друга в секреты женского организма." Вы отрицательно мотаете головой. "Ну тогда я выкладываю твою запись во все соцсети – и вряд ли тебе будет светить что то в будущем... и еще одну копию я отдам твоей матери.. А если будешь послушной сучкой – я обещаю – что никому не покажу ее и со временем уничтожу. Так что не выступай и пойдем."'

				act 'Вырваться и убежать':
					artemblok = 1
					artomhakday = daystart
					artomvbrosvid = 1
					gt'gorodok'
				end
				act 'Идти с Артемом':
					cls
					minut += 15
					gs'stat'

					'<center><img src="images/qwest/alter/artom/2.jpg"></center>'
					'Вы идете в гаражи вместе с Артемом. В гараже вы видите Петю Клюева.'
					'Артем: "Смотри кто у меня здесь. Как я тебе и обещал Светочка любезно согласилась обучить нас всем тайнам женского организма. Уроки анатомии будут проходить по понедельникам. А сегодняшний урок мы начнем с...влагалища!"'
					'Артем: "Растяни ка пизду. Я представляю что еще Носов с тобой вытворял!"'

					act 'Растягивать':
						cls
						minut += 15
						vagina += 3
						gs'stat'

						'<center><img src="images/qwest/alter/artom/fist.jpg"></center>'
						'Артем: "Вот Петруччо смотрите какая у нее вместительная пизда. Да сильнее не бойся - я же знаю на что ты способна!"'
						'Вы растягиваете еще сильнее.'
						'Артем:"А чтоб не быть голословным засунь в себя руку."'
						'Вы попробовали но никак не получается: "Дай вазелин пожалуйста. Никак не получается." Артем достает какое то масло и кидает вам "Для такой шлюхи и это сгодится." Вы смазываете руку тем что есть и запихиваете ее в себя.Как ни странно но вы чувствуете что начинаете возбуждаться от этих унижений.'
						'Артем:"Вот так давай туда -сюда пока не кончишь!"'
						'Вам уже не надо ничего говорить вы вся течете и вот вот кончите.'
						'Под комментарии парней "Давай! давай!" вы кончаете и обессилено ложитесь на полу.'

						act 'Открыть глаза':
							cls
							minut += 15
							bj += 2
							if npcSex[2] = 0:npcSex[2] = 1 & guy += 1
							if npcSex[6] = 0:npcSex[6] = 1 & guy += 1
							gang += 1
							cumface += 2
							facial += 1
							arthakQW = 10
							artemblok = 1
							gs'stat'

							'<center><img src="images/qwest/alter/artom/doublebj.jpg"></center>'
							'Вы открываете глаза и видите как Петя и Артем обступили вас дроча свои члены.'
							'Артем: "Что уставилась – займись прямым своим делом – ты это хорошо умеешь. Петька сейчас ты оценишь все прелести профессионального миньета!"'
							'Вы достаете руку из влагалища и начинаете сосать поочередно у парней и они кончают вам на лицо.'
							'Вы:" Ты сотрешь запись?"'
							'Артем: "Сотру...но не сегодня...у нас с Петькой на тебя много планов. Да не реви.'
							'Это будет наш маленький секрет. Ладно - до следующей недели."'

							act 'Уйти':gt'garmassiv'
						end
					end
				end
			end
		end
		act 'Вырваться и убежать':
			artomvbrosvid = 1
			artemblok = 1
			artomhakday = daystart
			gt'gorodok'
		end
	elseif arthakQW = 2 and artomhakday ! daystart:
		arthakQW = 7
		!правда
		DimaRudeBlock = 1

		'Артем сообщает вам "Все, я ломанул комп Носова и уничтожил записи."'
	end

	if artemtimes >= 15 and artQW = 0 and lernHome > 0:artQW = 1 & gt'artemev2'

	'Артем сидит в своей комнате на кровати.'

	if artQW = 2:
		!взяла цветы но не дрочила артему
		artcooldown += 1
		if artcooldown >= 10:artcooldown = 0 & artQW = 1 & gt'artemev2'
	elseif artQW = 3 and artomkissday ! daystart:
		!дрочила артему
		'Артем обнимает вас и целует'

		act 'Целоваться':
			cls
			minut += 5
			horny += 10
			artomkissday = daystart
			gs'stat'

			'<center><img src="images/qwest/alter/artom/2.jpg"></center>'
			'Вы целуетесь с Артемом и его руки обнимают вас и ласкают вашу грудь'

			if horny < 50:
				if lernHome > 0:
					act 'Учить уроки':artemhomemark = 2 & gt $curloc
				else
					act 'Уйти':artemhomemark = 0 & minut += 15 & gt'gorodok'
				end

				act 'Нехотя дрочить Артему':
					cls
					sub += 1
					manna = manna/2
					minut += 15
					hj += 1
					hja += 1
					if npcSex[2] = 0:npcSex[2] = 1 & guy += 1
					gs'stat'

					'<center><img src="images/qwest/alter/artom/hj.jpg"></center>'
					'Вы неохотно достали член Артема из его брюк и стали нежно двигать кожицу вверх и вниз то открывая багровую головку то закрывая ее. Вскоре Артем не выдержал и кончил вам в руки. Вы сходили в ванную и помыли руки.'

					if lernHome > 0:
						act 'Учить уроки':artemhomemark = 2 & gt $curloc
					else
						act 'Уйти':artemhomemark = 0 & minut += 15 & gt'gorodok'
					end
				end
			elseif horny >= 50:
				act 'Дрочить Артему':
					cls
					minut += 15
					hj += 1
					hja += 1
					if npcSex[2] = 0:npcSex[2] = 1 & guy += 1
					dom += 1
					gs'stat'

					'<center><img src="images/qwest/alter/artom/hj.jpg"></center>'
					'Вы достали член Артема из его брюк и стали нежно двигать кожицу вверх и вниз то открывая багровую головку то закрывая ее. Вскоре Артем не выдержал и кончил вам в руки. Вы сходили в ванную и помыли руки.'

					if lernHome > 0:
						act 'Учить уроки':artemhomemark = 2 & gt $curloc
					else
						act 'Уйти':artemhomemark = 0 & minut += 15 & gt'gorodok'
					end
				end
			end
		end
	elseif artQW >= 2 and artQW <= 3 and artemtimes >= 30 and Suspeh >= 90:
		artQW = 10
		gt'artemev2'
	elseif artQW = 4:
		!отказала артему
	elseif artQW = 20 and artomkissday ! daystart:
		'Артем обнимает вас и целует'

		act 'Целоваться':
			cls
			artomkissday = daystart
			minut += 5
			horny += 10
			gs'stat'

			'<center><img src="images/qwest/alter/artom/2.jpg"></center>'
			'Вы целуетесь с Артемом и его руки обнимают вас и ласкают вашу грудь'

			if horny < 30:
				if lernHome > 0:
					act 'Учить уроки':artemhomemark = 2 & gt $curloc
				else
					act 'Уйти':artemhomemark = 0 & minut += 15 & gt'gorodok'
				end
			elseif horny >= 30:
				act 'Дрочить Артему':
					cls
					minut += 15
					hj += 1
					hja += 1
					if npcSex[2] = 0:npcSex[2] = 1 & guy += 1
					gs'stat'

					'<center><img src="images/qwest/alter/artom/hj.jpg"></center>'
					'Вы достали член Артема из его брюк и стали нежно двигать кожицу вверх и вниз то открывая багровую головку то закрывая ее. Вскоре Артем не выдержал и кончил вам в руки. Вы сходили в ванную и помыли руки.'

					if lernHome > 0:
						act 'Учить уроки':artemhomemark = 2 & gt $curloc
					else
						act 'Уйти':artemhomemark = 0 & minut += 15 & gt'gorodok'
					end
				end
				act 'Взять в рот':
					cls
					minut += 5
					bj += 1
					bja += 1
					if npcSex[2] = 0:npcSex[2] = 1 & guy += 1
					gs'stat'

					'<center><img src="images/qwest/alter/artom/bj.jpg"></center>'
					'Вы продолжаете целоваться и расстегиваете платье чтоб ему было удобней. Берете его руку и кладете себе на грудь. Вы чувствуете что его ласки возбуждают вас.'
					'Продолжая целоваться, вы засунули руку ему в штаны и почувствовали что его член уже готов к бою. Вы расстегиваете ему штаны и начинаете расстегивать ему рубашку. Вы берете в руку его член и начинаете дрочить его. Ваше возбуждение растет с каждой секундой вы берете член в рот и начинаете интенсивно сосать.'
					'"Я хочу тебя..." Слышите голос Артема.'

					if mesec > 0:
						if artomanal > 0:
							'Вы не надолго оторвавшись от члена сказали Артему, что у вас месячные, Артем тут же предложил вам анал.'

							act 'Согласиться на анал':
								cls
								minut += 15
								anala += 1
								artomanal += 1
								gs'stat'

								'<center><img src="images/qwest/alter/artom/anal.jpg"></center>'
								'Вы сходили в ванную и сделали себе клизму, после чего пришли в комнату Артема и раздевшись встали раком.'

								dynamic $analsexrude

								if lernHome > 0:
									act 'Учить уроки':artemhomemark = 2 & gt $curloc
								else
									act 'Уйти':artemhomemark = 0 & minut += 15 & gt'gorodok'
								end
							end
						elseif artomsex >= 10 and artomanal = 0:
							act 'У меня месячные':
								cls
								minut += 5
								gs'stat'

								'<center><img src="images/qwest/alter/artom/2.jpg"></center>'
								'Вы: "Я бы с радостью но у меня начались...красные дни... ну ты понял...Давай я тебе ротиком или ручкой..."'
								'Артем краснея и не решительно: "А может попробуем в попку?"'

								act 'Отказаться и продолжать сосать':
									cls
									minut += 5
									swallow += 1
									cumlip += 1
									gs'stat'

									'<center><img src="images/qwest/alter/artom/bjcum.jpg"></center>'
									'Вы посмотрели на него широко открыв глаза "Я понимаю что ты осмелел – но не слишком ли многого ты хочешь?Я пошла домой."'
									'Артем: "Извини! Не уходи пожалуйста."Он хватает вас за руки и начинает целовать их постепенно поднимаясь все выше. Вы таете от его поцелуев опускаетесь на колени и берете член в рот и начинаете сосать. Одной рукой вы помогаете себе а другой гладите и мнете его задницу. Артем разряжается вам в рот и вы быстро все проглатываете.'
									'Артем: "Прости меня – я больше никогда об этом не заговорю..."'
									'Вы: "Ну почему же – может когда нибудь – я сама тебе скажу, когда буду готова и в настроении."'

									if lernHome > 0:
										act 'Учить уроки':artemhomemark = 2 & gt $curloc
									else
										act 'Уйти':artemhomemark = 0 & minut += 15 & gt'gorodok'
									end
								end
								act 'Согласиться':
									cls
									minut += 15
									anala += 1
									artomanal += 1
									gs'stat'

									'<center><img src="images/qwest/alter/artom/anal.jpg"></center>'
									'Вы: "Да. Но только нужно вначале почистить себя...короче клизму сделать надо. У тебя есть?"'
									'Артем: "Да вроде у мамы была."'
									'Артем приносит клизму. Вы идете в ванную и делаете себе клизму.'
									'Придя в комнату вы становитесь раком и говорите: "Так теперь нужна смазка или вазелин –у тебя есть? Посмотри в аптечке."'

									dynamic $analsexrude

									if lernHome > 0:
										act 'Учить уроки':artemhomemark = 2 & gt $curloc
									else
										act 'Уйти':artemhomemark = 0 & minut += 15 & gt'gorodok'
									end
								end
							end
						end
					else
						act 'Отдаться':
							cls
							minut += 5
							sexa += 1
							if artomsex = 1:artomsex += 1
							gs'stat'

							'<center><img src="images/qwest/alter/artom/sex.jpg"></center>'
							'Вы разделись и легли на спину.'

							dynamic $sexstart
							dynamic $sexstart2
							dynamic $sexcum

							if artomsex = 0:
								artomsex = 1
								'"Вот ты и мужчина"-улыбнувшись сказали вы.'
								'Артем: "Света...я...по моему я тебя люблю..."'
								'В ответ вы промолчали.'
							end

							if lernHome > 0:
								act 'Учить уроки':artemhomemark = 2 & gt $curloc
							else
								act 'Уйти':artemhomemark = 0 & minut += 15 & gt'gorodok'
							end
						end
					end

					act 'Продолжать сосать':
						cls
						minut += 5

						if horny < 90:
							$timeorgart = 'Во глотаете всю его сперму и тщательно облизываете член.'
						elseif horny >= 90:
							horny = 0
							orgasm += 1
							$timeorgart = 'Не вынимая член изо рта вы доводите себя до оргазма. Во время оргазма вы глотаете всю его сперму и тщательно облизываете член.'
						end

						swallow += 1
						cumlip += 1
						gs'stat'

						'<center><img src="images/qwest/alter/artom/bjcum.jpg"></center>'
						'Вы ускоряете темп не обращая внимания на слова одной рукой лаская себя.'
						'"Сейчас я кончу"-сказал Артем после чего кончил вам в рот. <<$timeorgart>>'
						'Вы: "Тебе понравилось?"'
						'Артем: "Очень. Это действительно было классно"'

						if lernHome > 0:
							act 'Учить уроки':artemhomemark = 2 & gt $curloc
						else
							act 'Уйти':artemhomemark = 0 & minut += 15 & gt'gorodok'
						end
					end
				end
			end
		end
	end

	if dimaFilm > 0 and arthakQW = 0 and vagina > 0:
		act 'Попросить Артема украсть видео снятое Димой с вами':
			cls
			minut += 15
			gs'stat'

			'<center><img src="images/qwest/alter/artom/2.jpg"></center>'
			'Вы: "Артем мы с тобой больше чем друзья?"'
			'Артем: "Конечно."'
			'Вы: "Ты не мог бы мне помочь в одном не простом деле? Ведь ты умный и как я успела заметить, неплохо разбираешься в компьютерах?".'
			'Артем: "Конечно помогу. Рассказывай."'
			'Вы: "Обещаешь? Ну в общем у Димки Носова есть одна нехорошая запись со мной. Он хранит ее на своем компе. Не мог бы ты взломать его комп и уничтожить эту запись. Только не смотри ее пожалуйста!"'
			'Артем: "Ладно я посмотрю что можно сделать. А что на записи?"'

			act 'Соврать':
				cls
				minut += 5
				artomhakday = daystart
				arthakQW = 1
				gs'stat'

				'<center><img src="images/qwest/alter/artom/2.jpg"></center>'
				'"Да я танцую пьяная а он снял это на видео и обещал матери моей рассказать" наврали вы.'

				if lernHome > 0:
					act 'Учить уроки':artemhomemark = 2 & gt $curloc
				else
					act 'Уйти':artemhomemark = 0 & minut += 15 & gt'gorodok'
				end
			end
			act 'Сказать правду':
				cls
				minut += 5
				artomhakday = daystart
				arthakQW = 2
				gs'stat'

				'<center><img src="images/qwest/alter/artom/2.jpg"></center>'
				'"Мне показалось что я люблю его и он снял как я делаю ему миньет – теперь он меня шантажирует этим." сказали вы Артему потупив взор.'

				if lernHome > 0:
					act 'Учить уроки':artemhomemark = 2 & gt $curloc
				else
					act 'Уйти':artemhomemark = 0 & minut += 15 & gt'gorodok'
				end
			end
		end
	end

	if lernHome > 0:act 'Учить уроки':artemhomemark = 2 & gt $curloc

	act 'Уйти':artemhomemark = 0 & minut += 15 & gt'gorodok'

	if talkartemday ! daystart:
		act 'Болтать с Артемом':
			cls
			artemtimes += 1
			talkartemday = daystart
			lern += RAND(3,6)
			intel += RAND(1,2)
			minut += 60
			manna += 10
			gs'stat'

			'<center><img src="images/qwest/alter/npc/<<2>>.jpg"></center>'
			'Вы целый час болтали с Артемом. Вернее болтали вы, а Артем слушал ваш поток сознания.'

			act 'Уйти':artemhomemark = 0 & minut += 15 & gt'gorodok'
		end
	end
elseif artemhomemark = 2:
	minut += 60
	grupNPC[2] += 10
	lernHome = 0
	lern += RAND(3,6)
	intel += RAND(1,2)
	artemtimes += 1
	if ArtomBeInHome = 0:ArtomBeInHome = 1
	gs'stat'

	'<center><img src="images/qwest/alter/npc/<<2>>.jpg"></center>'
	'Вы занимались с Артемом в течении часа, за это время он помог вам с домашкой и кое что объяснил из пройденного материала.'

	act 'Передохнуть':artemhomemark = 1 & gt $curloc
end
--- artemhome ---------------------------------

