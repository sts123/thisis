# dimaHome
Mud = totminut+120
if DimaBeHomeOnce = 0:DimaBeHomeOnce = 1
gs'stat'

'<center><b><font color = maroon><<$npcName[1]>> <<$npcSurName[1]>></font></b></center>'
'<center><img src="images/qwest/alter/npc/1.jpg"></center>'

if dimaFilm = 0:
	'Дима достал какой то белый порошок из стола и нюхнул его. После этого он протянул порошок вам и сказал "Понюхай, классная вещь! Отлично расслабляет!"'

	act 'Нюхнуть':
		cls
		minut = minut + 15
		narkday = day
		health = vital*10 + stren*5
		willpower = intel*5 + will*5
		manna = (intel*magik) + magik*100 + vital*10 + rikudo
		horny = 100
		nark = nark + 10
		gs'stat'

		'<center><img src="images/pic/dur.jpg"></center>'
		'Вы отсыпали дозу порошка и нюхнули его, после этого вы почувствовали себя просто превосходно.'

		act 'Далее':
			cls
			bj += 1
			bja += 1
			cumlip += 1
			swallow += 1
			dimaFilm = 1
			sub += 1
			minut += 15
			dimasexday = daystart
			gs'stat'

			'<center><img src="images/qwest/alter/evdima/filming.jpg"></center>'
			'В голове все поплыло и вы ощутили настоящее райское блаженство. Вы как будто летели над полом. Дима улыбнулся вам и расстегнул ширинку достав оттуда вялый член "Ползи сюда!" Вам почему то стало очень смешно и вы захихикав встали на четвереньки и подползли к Диме. Вы сели перед Димой и поцеловали его член, после этого вы начали тщательно вылизывать его член своим язычком, наконец член Димы полностью встал. Вы обхватили член Димы своими губами и взяли его в рот, внезапно подняв глаза вы увидели, что Дима снимает вас на камеру. Вы захихикали, представив какое глупое у вас выражение лица с членом во рту. Вы сексуально облизнули член и стали отсасывать его перед камерой, стараясь действовать как можно красивей, вскоре Дима слегка застонал и вам в рот брызнула струя спермы, которую вы тут же начали проглатывать. Дима выключил камеру и отложил ее в сторону. "Классно. Ты отличная хуесоска."'

			act 'Уйти':gt'gorodok'
		end
	end
	act 'Отказаться':
		cls
		dom += 1
		minut += 5
		gs'stat'

		'<center><img src="images/qwest/alter/evdima/pre.jpg"></center>'
		'Вы отказались употреблять порошок. Дима хмыкнул "Ну как знаешь, вещь действительно классная." Он расстегнул ширинку и достал член. "Иди сюда детка."'

		act 'Подойти к Диме':
			cls
			bj += 1
			bja += 1
			minut += 5
			gs'stat'

			'<center><img src="images/qwest/alter/evdima/cock.jpg"></center>'
			'Вы подошли к Диме и он взял вас за руку, сильно но нежно он заставил вас опустится на колени перед ним, пока вы завороженно смотрели на его член. Член был все ближе к вашему лицу и вы почувствовали как горячая головка коснулась ваших губ.'

			act 'Сосать':
				cls
				minut += 5
				gs'stat'

				'<center><img src="images/qwest/alter/evdima/cock2.jpg"></center>'
				'Обхватив своими губами член вы взяли его в рот. Член скользит в вашем влажном рту когда вы вбираете его до горла. Дима прошептал "Разденься."'

				act 'Раздеться':
					cls
					minut += 5
					gs'stat'

					'<center><img src="images/qwest/alter/evdima/cock3.jpg"></center>'
					'Стараясь не отрываться от члена вы разделись обнажив свою грудь. После того как вы оказались обнаженной вы продолжили вбирать член в свой рот. Внезапно вы услышали, что Дима зашевелился и что то взял со стола. Вы подняли на него глаза и увидели, что он взял в руки видеокамеру.'

					act 'Одеваться':
						cls
						minut += 5
						if GorSlut < 2:GorSlut = 2
						gs'stat'

						'Вы схватили одежду и стараясь спрятать лицо от камеры начали одеваться как можно быстрее. Дима продолжал все это снимать на камеру.'

						act 'Убежать':
							cls
							minut += 15
							DimaRudeBlock = 1
							gs'stat'

							'Вы открыли дверь и пошли к выходу из дома. Следом услышали голос Димы "Валяй, беги свинья. Завтра все будут знать, что ты хуесоска."'

							act 'Уйти':gt'gorodok'
						end
					end
					act 'Отсосать перед камерой':
						cls
						minut += 15
						cumlip += 1
						swallow += 1
						dimaFilm = 1
						sub += 5
						dimasexday = daystart
						gs'stat'

						'<center><img src="images/qwest/alter/evdima/filming.jpg"></center>'
						'Вы продолжили сосать член Димы и он сосредоточенно снимал вас на свою камеру. Его член быстро окреп и вскоре сперма брызнула вам в рот. Вы старательно проглотили ее перед камерой. Дима выключил камеру и отложил ее в сторону. "Классно. Ты отличная хуесоска."'

						act 'Уйти':gt'gorodok'
					end
				end
			end
		end
	end
elseif dimaFilm > 0:
	if narkday ! day:
		'Дима достал какой то белый порошок из стола и нюхнул его. После этого он протянул порошок вам и сказал "Понюхай, классная вещь! Отлично расслабляет!"'

		act 'Нюхнуть':
			cls
			minut = minut + 15
			narkday = day
			health = vital*10 + stren*5
			willpower = intel*5 + will*5
			manna = (intel*magik) + magik*100 + vital*10 + rikudo
			horny = 100
			nark = nark + 10
			gs'stat'

			'<center><img src="images/pic/dur.jpg"></center>'
			'Вы отсыпали дозу порошка и нюхнули его, после этого вы почувствовали себя просто превосходно.'

			act 'Ловить кайф':gt $curloc
		end
		act 'Отказаться':
			cls
			dom += 1
			minut += 5
			gs'stat'

			'<center><img src="images/qwest/alter/evdima/pre.jpg"></center>'
			'Вы отказались употреблять порошок. Дима хмыкнул "Ну как знаешь, вещь действительно классная. Без нее не так прикольно" Он расстегнул ширинку и достал член. "Иди сюда детка."'

			act 'Взять в рот':
				cls
				bj += 1
				bja += 1
				if maxdra = 0:maxdra = 1
				minut += 15
				gs'stat'

				'<center><img src="images/qwest/alter/evdima/minet.jpg"></center>'
				'Вы подошли к Диме и устроившись по удобней взяли его твердый и горячий член в рот. Ваши губы скользят по стволу члена и вы вбираете его до горла.'

				dimadalrand = RAND(0,maxdra)
				if dimadalrand = 0:
					act 'Далее':
						cls
						cumlip += 1
						swallow += 1
						dimasexday = daystart
						gs'stat'

						'<center><img src="images/qwest/alter/evdima/cum.jpg"></center>'
						'Внезапно член Димы кончает вам в рот и вы продолжаете сосать с полным ртом спермы. Наконец Дима перестает кончать и вы проглатываете его кончу.'

						act 'Уйти':gt'gorodok'
					end
				elseif dimadalrand = 1:
					act 'Далее':
						cls
						cumface += 1
						facial += 1
						if maxdra = 1:maxdra = 2
						dimasexday = daystart
						gs'stat'

						'<center><img src="images/qwest/alter/evdima/face.jpg"></center>'
						'Неожиданно Дима вынимает свой член из вашего рта и тут же кончает вам на лицо. Теплые струи спермы приземляются вам на щеки, нос и губы. Вскоре почти все ваше лицо покрыто теплой и вязкой кончей.'

						act 'Уйти':gt'gorodok'
					end
				elseif dimadalrand = 2:
					act 'Далее':
						cls
						cumlip += 1
						swallow += 1
						if throat < 16:throat += 1
						if mop ! 1:mop = 0
						if maxdra = 2:maxdra = 3
						dimasexday = daystart
						gs'stat'

						'<center><img src="images/qwest/alter/evdima/deep.jpg"></center>'

						if throat < 16:
							'Дима хватает вас за волосы и начинает натягивать вас на член. Твердый член входит в ваше горло, вы давитесь и из глаз текут слезы. Дима не обращая на вас никакого внимания просто трахает ваш рот своим твердым членом. Наконец пытка заканчивается и вам в рот выстреливает сперма которую вы тут же глотаете.'
						else
							'Дима хватает вас за волосы и начинает натягивать вас на член. Твердый член входит в ваше горло, вы сдерживаете рвоту и чувствуете как увлажняются ваши глаза. Дима не обращая на вас никакого внимания просто трахает ваш рот своим твердым членом. Наконец пытка заканчивается и вам в рот выстреливает сперма которую вы тут же глотаете.'
						end

						act 'Уйти':gt'gorodok'
					end
				elseif dimadalrand = 3:
					act 'Далее':
						cls
						if maxdra = 3:maxdra = 4
						gs'stat'

						'<center><img src="images/qwest/alter/evdima/sit.jpg"></center>'
						'Дима вынул свой член из вашего рта и положил вас на кровать. Он забрался вам на грудь и его член оказался на вашем лице. Вы начали вылизывать его яички и Дима дрочил член перед вашим лицом'

						act 'Далее':
							cls
							cumface += 1
							facial += 1
							dimasexday = daystart
							gs'stat'

							'<center><img src="images/qwest/alter/evdima/sitcum.jpg"></center>'
							'Внезапно из члена Димы стали вылетать струйки горячей спермы и приземляться вам на лицо покрывая его вязкой кончей.'

							act 'Уйти':gt'gorodok'
						end
					end
				elseif dimadalrand = 4:
					act 'Далее':
						cls
						$boy = 'Дима'
						silavag = 1
						dick = 16
						if maxdra = 4:maxdra = 5
						sexa += 1
						dimasexday = daystart
						gs'stat'

						'<center><img src="images/qwest/alter/evdima/sex.jpg"></center>'
						'Дима укладывает вас на диван.'

						dynamic $sexstart
						dynamic $sexstart2
						dynamic $sexcum

						act 'Уйти':gt'gorodok'
					end
				elseif dimadalrand = 5:
					act 'Далее':
						cls
						$boy = 'Дима'
						silavag = 1
						dick = 16
						anala += 1
						dimasexday = daystart
						gs'stat'

						'<center><img src="images/qwest/alter/evdima/anal.jpg"></center>'
						'Дима ставит вас раком на диван.'

						dynamic $analsexrude

						act 'Уйти':gt'gorodok'
					end
				elseif dimadalrand = 6:
					act 'Далее':
						cls
						gs'stat'

						'<center><img src="images/qwest/alter/evdima/cum.jpg"></center>'
						''

						act 'Уйти':gt'gorodok'
					end
				end
			end
		end
	elseif narkday = day:
		if maxdradrug = 0:maxdradrug = 1

		'Дима отрешенно вам улыбается "Ну что, развлечемся?"'

		dimadalrand = RAND(0,maxdradrug)
		if dimadalrand = 0:
			act 'Далее':
				cls
				gs'stat'

				'Дима с равнодушной ухмылкой осмотрел ваше тело. Он подошел к шкафу и покопался в нем достав какие то вещи. Он подошел к вам и грубо завернул вам руки за спину. Послышался щелчок наручников и вы ощутили холодную сталь на запястьях. Он подошел к вам сзади и засунул вам в рот кольцо к которому прикреплены ремни, после этого он застегнул ремень у вас за головой'

				act 'Далее':
					cls
					minut += 5
					gs'stat'

					'<center><img src="images/qwest/alter/evdima/ogag.jpg"></center>'
					'Ваш рот очень широко открыт при помощи кольца, Дима видимо немного смазал кольцо находящееся в вашем рту лимонным соком и теперь у вас слюна течет ручьем изо рта и нет никакой возможности ее остановить. Дима немного полюбовался на вас и достал член.'

					act 'Далее':
						cls
						minut += 15
						bj += 1
						bja += 1
						cumlip += 1
						swallow += 1
						if throat < 16:throat += 1
						sub += 1
						if mop ! 1:mop = 0
						dimasexday = daystart
						gs'stat'

						'<center><img src="images/qwest/alter/evdima/gagbj.jpg"></center>'
						'Член не встречая сопротивления вошел через кольцо в ваш рот и уперся в ваше горло. Вы немного подавились, Дима вынул член и со всей силы загнал вам его в горло. У вас потекли слюни, слезы и сопли по лицу. Дима яростно вгонял свой член в ваш рот, трахая ваше горящее огнем горло. Наконец он застонал и вогнав член до основания в ваш рот стал кончать вам в горло. Вы практически теряли сознание от удушья и в горле возникли спазмы от которых член еще туже зажимало внутри вас. Наконец член Димы стал опадать и он вынул его из вас. После этого он вынул кляп из вашего рта и развязал ваши руки.'

						act 'Уйти':gt'gorodok'
					end
				end
			end
		elseif dimadalrand = 1:
			act 'Далее':
				cls
				if maxdradrug = 1:maxdradrug = 2
				minut += 15
				bj += 1
				bja += 1
				cumlip += 1
				swallow += 1
				if throat < 16:throat += 1
				if mop ! 1:mop = 0
				sub += 1
				dimasexday = daystart
				gs'stat'

				'<center><img src="images/qwest/alter/evdima/ab.jpg"></center>'
				'Дима грубо содрал с вас трусы и натянул их вам на голову, после этого он вставил вам свой член в рот и начал вас жестко трахать в рот. Ваше горло пылало огнем от того что член при каждом движении входит в ваш рот до самых яиц. Дима рычит на вас "Рот хуесоски это ее вторая пизда, а что надо делать с пиздой? Жестко ебать ее, до матки!" Дима бьет вам по щеке ладонью "Получай тварь струхню в свою пизду!" Член в вашем рту начинает кончать и набивает ваш рот спермой, которую вы глотаете.'

				act 'Уйти':gt'gorodok'
			end
		elseif dimadalrand = 2:
			act 'Далее':
				cls
				$boy = 'Дима'
				silavag = 1
				dick = 16
				sexa += 1
				sub += 5
				if maxdradrug = 2:maxdradrug = 3
				dimasexday = daystart
				gs'stat'

				'<center><img src="images/qwest/alter/evdima/car.jpg"></center>'
				'Дима связал вас и привязал к вашим коленкам маленькие тележки с роликами, так же он вставил вам в рот клоунский гудок и привязал его скотчем вам к лицу.'

				dynamic $sexstart
				dynamic $sexstart2

				'Дима трахает вас, а вы вместо стонов издаете смешные клоунские звуки.'

				dynamic $sexcum

				act 'Уйти':gt'gorodok'
			end
		elseif dimadalrand = 3:
			act 'Далее':
				cls
				$boy = 'Дима'
				silavag = 1
				dick = 16
				anala += 1
				sub += 5
				if maxdradrug = 3:maxdradrug = 4
				dimasexday = daystart
				gs'stat'

				'<center><img src="images/qwest/alter/evdima/car.jpg"></center>'
				'Дима связал вас и привязал к вашим коленкам маленькие тележки с роликами, так же он вставил вам в рот клоунский гудок и привязал его скотчем вам к лицу.'

				dynamic $analsexrude

				act 'Уйти':gt'gorodok'
			end
		elseif dimadalrand = 4:
			act 'Далее':
				cls
				if mop ! 1:mop = 0
				throat += 5
				dimasexday = daystart
				minut += 15
				sub += 5
				if maxdradrug = 4:maxdradrug = 5
				gs'stat'

				'<center><img src="images/qwest/alter/evdima/nar.jpg"></center>'
				'Дима связал ваши руки за спиной, потом связал ноги так, что бы вы могли только сидеть на коленях, после этого он одел вам ошейник и подтащил к столбику к которому скотчем был приделан дилдо, вставив его вам в рот Дима привязал ваш ошейник к столбику так, что бы вы не могли выплюнуть дилдо изо рта. Когда вы думали, что Дима уже наигрался с вами, он используя веревку на вашем ошейнике подтянул ее так, что дилдо вошел вам в горло. После этого Дима начал наслаждаться зрелищем вашего покрасневшего от удушья лица, текущими соплями, слюнями и слезами из глаз. Вы задыхались с дилдо в горло и старались сдержать рвоту, так как точно бы захлебнулись и померли бы прямо на этом дилдо. И когда вы уже начали терять сознание, Дима наконец то освободил вас и вы сумели наконец то свободно вздохнуть.'

				act 'Уйти':gt'gorodok'
			end
		elseif dimadalrand = 5:
			act 'Далее':
				cls
				spank += 1
				dimasexday = daystart
				minut += 15
				sub += 5
				if maxdradrug = 5:maxdradrug = 6
				if mop ! 1:mop = 0
				gs'stat'

				'<center><img src="images/qwest/alter/evdima/spank.jpg"></center>'
				'Дима привязал вас к столбу и взяв плеть начал пороть вам задницу. Обжигающие удары резкими вспышками пробивались сквозь наркотическое опьянение и вы визжали и стонали. Наконец то Дима наигрался и развязал вас.'

				act 'Уйти':gt'gorodok'
			end
		elseif dimadalrand = 6:
			act 'Далее':
				cls
				if pirsF > 0:$text = 'Дима вытащил из ваших сосков иглы и освободил вас'
				if pirsF = 0:pirsF = 1 & $text = 'Дима вставил в проколы пирсинг, после чего освободил вас'
				nippain = 2
				nippainday = daystart
				if maxdradrug = 6:maxdradrug = 7
				if mop ! 1:mop = 0
				sub += 5
				gs'stat'

				'<center><img src="images/qwest/alter/evdima/nip.jpg"></center>'
				'Дима вас связал и полностью обездвижел. Потом зажал ваши соски в зажимах и внезапно воткнул вам иглу в сосок. Вы взвыли от боли, но Дима начхал на ваши вопли и воткнул следующую иглу заставив вас взвыть еще раз. Вы орали и матерились на этого гребаного садиста, но Дима с горящими глазами воткнул вам еще иглу и еще. Когда ему надоело <<$text>>.'

				act 'Уйти':gt'gorodok'
			end
		elseif dimadalrand = 7:
			act 'Далее':
				cls
				if pirsA = 1:$text = 'Дима вытащил из вас иголки и освободил вас'
				if pirsA = 0:pirsA = 1 & $text = 'Дима вытащил из вас иголки, вставил вам в прокол в языке штангу и освободил вас'
				pirs_pain_ton = 7
				if maxdradrug = 7:maxdradrug = 8
				if mop ! 1:mop = 0
				sub += 5
				gs'stat'

				'<center><img src="images/qwest/alter/evdima/ton.jpg"></center>'
				'Дима вас связал и полностью обездвижел. Потом пальцами достал ваш язык и неожиданно воткнул в него иглу. Вы взвыли и задергались от резкой боли. Дима развлекаясь воткнул вам иглу в щеку, вы опять завыли от боли. <<$text>>.'

				act 'Уйти':gt'gorodok'
			end
		elseif dimadalrand = 8:
			act 'Далее':
				cls
				if pirsG > 0:$text = 'Дима вытащил из вашей киски булавки и развязал вас'
				if pirsG = 0:pirsG = 1 & $text = 'Дима вытащил из вашей киски булавки и вставил вам в прокол пирсинг. После чего развязал вас'
				painpub = 2
				painpubday = daystart
				if mop ! 1:mop = 0
				sub += 5
				gs'stat'

				'<center><img src="images/qwest/alter/evdima/vag.jpg"></center>'
				'Дима вас связал и полностью обездвижел. Потом взял булавку и проколол ваши половые губы. Вы взвыли от резкой нестерпимой боли и стали дергаться, но Дима не успокоился пока не истыкал все ваше настрадавшееся влагилище булавками. <<$text>>.'

				act 'Уйти':gt'gorodok'
			end
		elseif dimadalrand = 9:
			act 'Далее':
				cls
				gs'stat'

				'<center><img src="images/qwest/alter/evdima/cum.jpg"></center>'
				''

				act 'Уйти':gt'gorodok'
			end
		elseif dimadalrand = 10:
			act 'Далее':
				cls
				gs'stat'

				'<center><img src="images/qwest/alter/evdima/cum.jpg"></center>'
				''

				act 'Уйти':gt'gorodok'
			end
		end
	end
end
--- dimaHome ---------------------------------

