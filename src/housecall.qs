# housecall
if $ARGS[0] = 'ninel0':
	cla
	*clr
	'<center><img src="images/inBed/ninel00.jpg"></center>'
	'Вы открываете дверь. На пороге стоит молодая симпатичная девушка с медицинским саквояжем в руке.'
	'(Вы) - Здравствуйте, доктор'
	'(Доктор) - Здравствуйте. Меня зовут Нинель Павловна - я замещаю вашего участкового терапевта. Где больной?'
	'(Вы) - Это я... кха-кха-кха.'
	'(Доктор) - Ясно. Тогда пойдемте - вам нужно вернутся в постель.'

	act 'Проводить доктора в спальню и лечь':
		cla
		*clr
		ninelmet = 1

		'<center><img src="images/inBed/nadom0.jpg"></center>'
		'Доктор присела на край вашей кровати и спросила:'
		'(Доктор)- На что жалуетесь, Света? Могу я вас так называть?'
		'(Вы) - Конечно... Кха, кха, кха... Ох, доктор, наверное, у меня грипп - кашель просто убивает и горло очень болит. И температура высокая.'
		'(Доктор) - Насморк есть? Головные боли? Ломота в костях?'
		'(Вы) - Да-да. А-апчхи-и!'
		'(Доктор) - Сейчас я обследую вас. Раздевайтесь.'

		act 'Раздеться':
			cla
			*clr
			minut = minut + 5
			horny = horny + 10
			clr
			gs'stat'

			'<center><img src="images/inBed/nadom1.jpg"></center>'
			'Вы разделись и доктор долго выслушивала ваши легкие. Ее руки прохладные и нежные а прикосновения стетоскопа похожи на ласки...'
			'(Доктор) - Да, хрипы... Теперь откройте рот. Вот так - "а-а-а"...'

			act 'A-a-a':
				cla
				*clr
				'<center><img src="images/inBed/ninel03.jpg"></center>'
				'Вы открыли рот и доктор осмотрела ваше больное горло'
				'(Доктор) - Хммм... горло сильно покраснело и воспалено... Теперь надо измерить температуру.'

				act 'Сунуть градусник в рот':
					cla
					*clr
					'<center><img src="images/inBed/ninel04.jpg"></center>'
					'(Доктор) Нет, не так. Температуру нужно мерить ректально.'
					'(Вы) - Э-э-э...'
					'(Доктор) - Не бойтесь, Света, это совсем не больно.'
					'(Вы) - Ну если вы уверены...'
					'(Доктор) - Уверена. Ну же - ложитесь на живот и раздвиньте руками ягодицы.'

					act 'Подставить попку':
						cla
						*clr
						minut = minut + 10
						horny = horny + 10
						clr
						gs'stat'

						'<center><img src="images/inBed/nadom2.jpg"></center>'
						'Вы послушно переворачиваетесь и подставляете попку. Доктор смазывает ваш анус лубрикантом и ловким движением вводит в него градусник. Вы вздрагиваете, но не от боли, а от удовольствия. Доктор не оставляет термометр просто торчать в вашей попе, а медленно двигает его туда-сюда и это очень приятно. Вы чувствуете нарастающее возбуждение.'

						if horny >= 50:
							act 'Постанывать от удовольствия':
								cla
								*clr
								'<center><img src="images/inBed/nadom3.jpg"></center>'
								'Доктор вынимает градусник из вашей попы и проверяет'
								'(Доктор) 39,2... Очень плохо. Повернитесь, пожалуйста, на спину - нужно пропальпировать вам лимфоузлы.'

								act 'Перевернуться на спину':
									cla
									*clr
									minut = minut + 15
									horny = horny + 10
									clr
									gs'stat'

									'<center><img src="images/inBed/nadom5.jpg"></center>'
									'Доктор начала гладить и мять ваши живот и бедра. Вы уже не уверены, что это медицинская процедура - слишком уж долго и нежно она это делает, но вам очень приятно и вы не стали возражать.'
									'Возбуждение, между тем, все нарастает, вы чувствуете, как ваша киска увлажняется и начинает сладко ныть...'

									act 'Покраснеть от смущения':
										cla
										*clr
										horny = horny + 15
										time = time + 15
										clr
										gs'stat'

										'<center><img src="images/inBed/nadom6.jpg"></center>'
										'Вы краснеете от смущения, но тут руки доктора опускаются ниже и она начинает ласкать вашу киску'
										'(Вы) - Доктор, что вы делаете?! - одновременно смущенно, возмущенно и испуганно вскрикиваете вы.'
										'(Доктор) - Лечу тебя, глупая. Я чувствую в тебе магию, а значит ты одна из нас и я могу воспользоваться своей силой спокойно.'
										'(Вы) - Так вы тоже маг?!'
										'(Доктор) - Да, только моя магия особая - тантрическая. Слышала о таком?'
										'(Вы) - Нет, не припомню...'
										'(Доктор) - Это магия, основанная на чувственности и сексе. Грубо говоря, я могу колдовать, только когда занимаюсь сексом.'
										'(Вы) - То есть..?'
										'(Доктор) - То есть, если мы с тобой займемся сексом - я тебя вылечу. Ты согласна?'
										'(Вы) - А что взамен?'
										'(Доктор) - Да ничего - я делаю это исключительно для собственного удовлетворения. Я, видишь, ли, испытываю оргазм, только если колдую.'
										'(Вы) - Тогда конечно - я согласна.'

										act 'Отдаться ласковым рукам Нинель':gt'housecall','ninel2'
									end
								end
							end
						end

						act 'Возмутиться':
							cla
							*clr
							'<center><img src="images/inBed/nadom3.jpg"></center>'
							'(Вы) - Доктор, что вы делаете?'
							'Доктор вынимает градусник из вашей попы и невозмутимо отвечает:'
							'(Доктор) - Измеряю вам температуру. 39,2 - очень плохо.'

							if sick < 48:
								act 'Доктор, что со мной?':
									cla
									'(Вы, испуганно) - Доктор, что со мной?'
									'(Доктор) У вас действительно грипп. Сейчас я сделаю вам инъекции антибиотика и жаропонижающего и вам станет легче.'

									act 'Лечь на живот и оголить попку':
										cla
										*clr
										minut = minut + 10
										sick = sick - 2
										lekar = lekar + 3
										clr
										gs'stat'

										'<center><img src="images/inBed/nadom4.jpg"></center>'
										'Доктор сделала вам укол в попку - вы вскрикнули'
										'(Доктор) - Уже все, уже все. Прописываю вам постельный режим, горячее питье, антибиотики, капли в нос и сбалансированное питание. Когда температура спадет - в поликлинику на прием.'
										'(Вы) - Спасибо вам, доктор - обязательно.'
										'Доктор попрощалась и ушла.'

										act 'Вернуться в постель':gt'bedr'
									end
								end
							elseif sick >= 48:
								act 'Доктор, что со мной?':
									cla
									'(Вы, испуганно) - Доктор, что со мной?'
									'(Доктор) - Боюсь, что у вас ангина, Света. Я бы посоветовала вам стационарное лечение'
									'(Вы) - Это что же - в больницу, что-ли?'
									'(Доктор) - Ну да'
!'
									act 'Согласиться':
										cla
										'(Вы, всхлипывая) - Ох... Кха-кха-кха... Если вы считаете, что это действительно необходимо...'
										'(Доктор) - Боюсь, что да - это болезнь серьезная... Но не бойтесь - у нас хорошая больница.'
										'(Вы) - Ну хорошо, я согласна.'

										act 'Лечь в больницу':
											cla
											*clr
											minut = minut + 120
											gt'hospital','start'
										end
									end
'
									act 'Отказаться':
										cla
										*clr
										'(Вы, всхлипывая) - Ой, доктор, я не хочу в больницу...'
										'(Доктор, задумчиво) - Ну-у... Наверное все-таки можно. Тогда я сделаю вам пару уколов - для начала...'
										'(Вы) - Ох, спасибо, доктор!'

										act 'Лечь на живот и оголить попку':
											cla
											minut = minut + 15
											horny = 100
											clr
											gs'stat'

											'<center><img src="images/inBed/nadom9.jpg"></center>'
											'Доктор сделала вам несколько уколов в попку, и вас вдруг охватило невероятное сексуальное возбуждение. Между бедер у вас словно вспыхнул огонь, киска сладко заныла и потекла, груди потяжелели, соски напряглись и затвердели...'
											'(Вы) - Доктор, что происходит? - вскрикиваете вы испуганно и смущенно, но голос ваш предательски срывается на сладострастный стон'
											'(Доктор) - Ага! Я так и знала - Я чувствую в тебе магию, а значит ты одна из нас и я могу воспользоваться своей силой спокойно.'
											'(Вы) - Так вы тоже маг?!.'
											'(Доктор) - Да, только моя магия особая - тантрическая. Слышала о таком?'
											'(Вы) - Нет, не припомню...'
											'(Доктор) - Это магия, основанная на чувственности и сексе. Грубо говоря, я могу колдовать, только когда занимаюсь сексом.'
											'(Вы) - То есть..?'
											'(Доктор) - То есть, если мы с тобой займемся сексом - я тебя вылечу. Ты согласна?'
											'(Вы) - А что взамен?'
											'(Доктор) - Да ничего - я делаю это исключительно для собственного удовлетворения. Я, видишь, ли, испытываю оргазм, только если колдую.'
											'(Вы) - Тогда конечно - я согласна.'

											act 'Отдаться ласковым рукам Нинель':gt'housecall','ninel2'
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

if $ARGS[0] = 'ninel1':
	cla
	*clr
	'<center><img src="images/inBed/ninel10.jpg"></center>'
	'Вы заранее открыли дверь чтобы лишний раз не вставать, поэтому, когда раздался звонок, вы простуженным голосом крикнули:'
	'(Вы) - Открыто! Кха-кха... Я в спальне!'
	'Молодая симпатичная девушка с медицинским саквояжем в руке проходит в вашу спальню и останавливается у кровати, внимательно рассматривая вас'
	'(Вы) - Здравствуйте, доктор'
	'(Доктор) - Здравствуйте. Меня зовут Нинель Павловна - я замещаю вашего участкового терапевта. Это вы вызывали врача?'
	'(Вы) - Это я... кха-кха-кха.'
	'(Доктор)- На что жалуетесь, Света? Могу я вас так называть?'

	act 'Жаловаться':
		cla
		*clr
		ninelmet = 1

		'<center><img src="images/inBed/ninel11.jpg"></center>'
		'(Вы) - Конечно... Кха, кха, кха... Ох, доктор, наверное, у меня грипп - кашель просто убивает и горло очень болит. И температура высокая.'
		'(Доктор) - Насморк есть? Головные боли? Ломота в костях?'
		'(Вы) - Да-да. А-апчхи-и!'
		'Доктор присела на край вашей кровати и взяла вас за запястье, выслушивая пульс.'
		'Вам показалось, что от ее пальцев исходит некая сила, но решили, что это вам от жара мерещится'
		'(Доктор) - Раздевайтесь - давайте вас послушаем.'

		act 'Раздеться':
			cla
			*clr
			minut = minut + 5
			horny = horny + 10
			clr
			gs'stat'

			'<center><img src="images/inBed/ninel12.jpg"></center>'
			'Вы разделись и доктор долго выслушивала ваши легкие. Ее руки прохладные и нежные а прикосновения стетоскопа похожи на ласки...'
			'Вы чувствуете нарастающее возбуждение'
			'(Доктор) - Хрипы очень неприятные... Теперь откройте рот. Вот так - "а-а-а"...'

			act 'A-a-a':
				cla
				*clr
				'<center><img src="images/inBed/ninel03.jpg"></center>'
				'Вы открыли рот и доктор осмотрела ваше больное горло'
				'(Доктор) - Да... горло сильно покраснело и воспалено... Теперь надо измерить температуру.'

				act 'Сунуть градусник в рот':
					cla
					*clr
					'<center><img src="images/inBed/ninel04.jpg"></center>'
					'(Доктор) Нет, не так. Температуру нужно мерить ректально.'
					'(Вы) - Э-э-э...'
					'(Доктор) - Не бойтесь, Света, это совсем не больно.'
					'(Вы) - Ну если вы уверены...'
					'(Доктор) - Уверена. Ну же - ложитесь на живот и раздвиньте руками ягодицы.'

					act 'Подставить попку':
						cla
						*clr
						minut = minut + 10
						horny = horny + 10
						clr
						gs'stat'

						'<center><img src="images/inBed/rectaltemp.jpg"></center>'
						'Вы послушно переворачиваетесь и подставляете попку. Доктор смазывает ваш анус лубрикантом и ловким движением вводит в него градусник. Вы вздрагиваете, но не от боли, а от удовольствия. Доктор не оставляет термометр просто торчать в вашей попе, а медленно двигает его туда-сюда и это очень приятно.'
						'Вы чувствуете, что здорово возбудились - ваши груди налились и сладко заныли, а киска намокла.'
						'А еще - вы снова почувствовали, как от рук Нинель распространяется сила'

						act 'Доктор, что происходит?':
							cla
							*clr
							minut = minut + 10
							horny = horny + 10
							clr
							gs'stat'

							'<center><img src="images/inBed/ninel13.jpg"></center>'
							'Нинель ложится рядом с вами и начинает обнимать и откровенно ласкать ваше полуобнаженное тело.'
							'Вы смущены и испуганы ее поведением, но она так нежна, а вы так возбуждены, что у вас просто нет сил сопротивляться. Единственное, что вам удается - это задыхаясь спросить:'
							'(Вы) - Доктор, что вы делаете? Что происходит?'
							'(Доктор) - А - почувствовала! Я сразу поняла, что ты одна из нас, а значит и я могу воспользоваться своей силой спокойно.'
							'(Вы) - Так вы тоже маг?!'
							'(Доктор) - Да, только моя магия особая - тантрическая. Слышала о таком?'
							'(Вы) - Нет, не припомню...'
							'(Доктор) - Это магия, основанная на чувственности и сексе. Грубо говоря, я могу колдовать, только когда занимаюсь сексом.'
							'(Вы) - То есть..?'
							'(Доктор) - То есть, если мы с тобой займемся сексом - я тебя вылечу. Ты согласна?'
							'(Вы) - А что взамен?'
							'(Доктор) - Да ничего - я делаю это исключительно для собственного удовлетворения. Я, видишь, ли, испытываю оргазм, только если колдую.'
							'(Вы) - Тогда конечно - я согласна.'

							act 'Отдаться ласкам Нинель':
								cla
								*clr
								minut = minut + 10
								horny = horny + 10
								clr
								gs'stat'

								'<center><img src="images/inBed/ninel14.jpg"></center>'
								'Нинель распахивает свой халатик, обнажая красивую грудь с напряженными сосками. Вы понимаете, что она тоже возбуждена.'
								'Она ласкает вашу грудь руками, потом губами, теребит и посасывает соски. Вы тихо стонете и это распаляет ее еще сильнее.'
								'Нинель задирает подол - нижнего белья на ней нет - и запускает пальчики себе между ног.'

								act 'Наслаждаться':
									cla
									*clr
									minut = minut + 10
									horny = horny + 10
									clr
									gs'stat'

									'<center><img src="images/inBed/ninel15.jpg"></center>'
									'Вы стонете под ее умелыми ласками и губы Нинель - о Боже! - скользят по вашему телу все ниже и ниже...'
									'Минута, и она припадает к вашей горящей, истекающей соками киске и ее язык уходит в ее влажную глубину'
									'Вы испускаете сладострастный вскрик, потом еще один и еще... Волны наслаждения пронзают ваше тело от трепещущего лона до кончиков пальцев. Вам невероятно хорошо!'
									'Ах, А-а-х! Еще, еще-о-о-о! - молите вы.'

									act 'Сменить позу':
										cla
										*clr
										horny = 100
										kuni = kuni + 1
										clr
										gs'stat'

										'<center><img src="images/inBed/ninel16.jpg"></center>'
										'Резким движением Нинель подается вперед и садится на вас верхом. Вы чувствуете, как ее истекающая соками киска трется об вашу. Вы стонете, стискиваете руками упругие ягодицы доктора и прижимаете ее к себе. Сильнее! Еще сильнее! О - какое блаженство!!'
										'Нинель трется об вас все быстрее, мощными, почти мужскими толчками, сладострастно охая при каждом движении - это сводит с ума!'
										'- Ох, Света, Света! - выдыхает доктор: - Я так хочу тебя! Ласкай меня, ласка-а-а-ай!'

										act 'Ласкать Нинель':
											cla
											*clr
											ninelsex = ninelsex + 1
											lesbian = lesbian + 1

											'<center><img src="images/inBed/ninel17.jpg"></center>'
											'Вы ставите Нинель на колени и засовываете пальцы в ее распаленную вагину. Она так обильно течет, что пальцы входят в нее с громким хлюпаньем.'
											'Доктор вскрикивает, прогибается, оттопыривая свою роскошную задницу и сама насаживается на ваши пальцы. Ее запах, ее стоны, ее восхитительное тело кружат вам голову. Вы яростно трахаете Нинель рукой, а она извивается под вами и умоляет:'
											'- Пожалуйста, не останавливайся! Вот так! Вот та-а-ак! Да-а-а! О да-а-а!!!'

											act '...':
												cla
												*clr
												if ninelsex = 1:girl = girl + 1
												orgasm = orgasm + 1
												sick = 0
												horny = 0
												health = vital*10 + stren*5+1000
												willpower = intel*5 + will*5+1000
												manna = (intel*magik) + magik*100 + vital*10 + rikudo
												clr
												gs'stat'

												'<center><img src="images/inBed/ninel18.jpg"></center>'
												'Вы чувствуете, что вот-вот взорветесь и Нинель каким-то образом понимает это. Она опрокидывает вас на спину и опускается сверху, припадая к вашей изнывающей киске и сама подставляя вам свою мокрую, с широко раскрытыми губками, вагину.'
												'Не долго думая, вы снова запускаете в нее пальцы и начинаете яростно надрачивать ее, в то время как Нинель орудует языком у вас между ног. Еще минута, и влагалище доктора судорожно сжимается, из него вам на лицо и руки выплескивается густая белая жидкость. Все тело Нинель сотрясается в спазмах, она глухо мычит, зарывшись языком вам между ног. Вы понимаете, что она кончает и это словно спускает пружину'
												'Вас пронзает потрясающей силы оргазм. Вы кричите от невероятного, почти невыносимого удовольствия, судорожно изгибаетесь, третесь промежностью о лицо Нинель и кончаете - долго, мучительно долго. Оргазм длится и длится без конца.'

												act 'Лежать в изнеможении':
													cla
													*clr
													minut = minut + 30
													clr
													gs'stat'

													'<center><img src="images/inBed/ninel19.jpg"></center>'
													'Вы опускаетесь на постель в сладком изнеможении, все еще обнимая Нинель. Она опускается рядом и нежно целуя вас, спрашивает:'
													'(Нинель) - Ну, как ты себя чувствуешь?'
													'(Вы) - О-ох... Просто прекрасно, - отвечаете вы и только тут понимаете, насколько вы правы - от болезни не осталось и следа, вы полны здоровья и а прекрасном настроении. А сладостное изнеможение делает этот букет ощущений еще более приятным'
													'(Нинель) - Ну вот видишь. Это магия, детка. М-м-м... Ты просто чудо - давно я не получала такого удовольствия от своей магии. Если еще раз заболеешь - сразу вызывай меня. Ну а если просто захочешь приятно провести время - ищи меня в поликлинике.'
													'Вы пообещали обязательно найти ее, закрыли глаза и задремали. Пока вы спали, Нинель тихонько оделась и ушла.'

													act 'Спать':gt'bed2'
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

if $ARGS[0] = 'ninel2':
	cla
	*clr
	minut = minut + 10
	horny = horny + 10
	clr
	gs'stat'

	'<center><img src="images/inBed/ninel13.jpg"></center>'
	'Нинель ложится рядом с вами и начинает обнимать и откровенно ласкать ваше полуобнаженное тело.'

	act 'Отдаться ласкам Нинель':
		cla
		*clr
		minut = minut + 10
		horny = horny + 10
		clr
		gs'stat'

		'<center><img src="images/inBed/ninel14.jpg"></center>'
		'Нинель распахивает свой халатик, обнажая красивую грудь с напряженными сосками. Вы понимаете, что она тоже возбуждена.'
		'Она ласкает вашу грудь руками, потом губами, теребит и посасывает соски. Вы тихо стонете и это распаляет ее еще сильнее.'
		'Нинель задирает подол - нижнего белья на ней нет - и запускает пальчики себе между ног.'

		act 'Наслаждаться':
			cla
			*clr
			minut = minut + 10
			horny = horny + 10
			clr
			gs'stat'

			'<center><img src="images/inBed/ninel15.jpg"></center>'
			'Вы стонете под ее умелыми ласками и губы Нинель - о Боже! - скользят по вашему телу все ниже и ниже...'
			'Минута, и она припадает к вашей горящей, истекающей соками киске и ее язык уходит в ее влажную глубину'
			'Вы испускаете сладострастный вскрик, потом еще один и еще... Волны наслаждения пронзают ваше тело от трепещущего лона до кончиков пальцев. Вам невероятно хорошо!'
			'Ах, А-а-х! Еще, еще-о-о-о! - молите вы.'

			act 'Сменить позу':
				cla
				*clr
				horny = 100
				kuni = kuni + 1
				clr
				gs'stat'

				'<center><img src="images/inBed/ninel16.jpg"></center>'
				'Резким движением Нинель подается вперед и садится на вас верхом. Вы чувствуете, как ее истекающая соками киска трется об вашу. Вы стонете, стискиваете руками упругие ягодицы доктора и прижимаете ее к себе. Сильнее! Еще сильнее! О - какое блаженство!!'
				'Нинель трется об вас все быстрее, мощными, почти мужскими толчками, сладострастно охая при каждом движении - это сводит с ума!'
				'- Ох, Света, Света! - выдыхает доктор: - Я так хочу тебя! Ласкай меня, ласка-а-а-ай!'

				act 'Ласкать Нинель':
					cla
					*clr
					ninelsex = ninelsex + 1
					lesbian = lesbian + 1

					'<center><img src="images/inBed/ninel17.jpg"></center>'
					'Вы ставите Нинель на колени и засовываете пальцы в ее распаленную вагину. Она так обильно течет, что пальцы входят в нее с громким хлюпаньем.'
					'Доктор вскрикивает, прогибается, оттопыривая свою роскошную задницу и сама насаживается на ваши пальцы. Ее запах, ее стоны, ее восхитительное тело кружат вам голову. Вы яростно трахаете Нинель рукой, а она извивается под вами и умоляет:'
					'- Пожалуйста, не останавливайся! Вот так! Вот та-а-ак! Да-а-а! О да-а-а!!!'

					act '...':
						cla
						*clr
						if ninelsex = 1:girl = girl + 1
						orgasm = orgasm + 1
						sick = 0
						horny = 0
						health = vital*10 + stren*5+1000
						willpower = intel*5 + will*5+1000
						manna = (intel*magik) + magik*100 + vital*10 + rikudo
						clr
						gs'stat'

						'<center><img src="images/inBed/ninel18.jpg"></center>'
						'Вы чувствуете, что вот-вот взорветесь и Нинель каким-то образом понимает это. Она опрокидывает вас на спину и опускается сверху, припадая к вашей изнывающей киске и сама подставляя вам свою мокрую, с широко раскрытыми губками, вагину.'
						'Не долго думая, вы снова запускаете в нее пальцы и начинаете яростно надрачивать ее, в то время как Нинель орудует языком у вас между ног. Еще минута, и влагалище доктора судорожно сжимается, из него вам на лицо и руки выплескивается густая белая жидкость. Все тело Нинель сотрясается в спазмах, она глухо мычит, зарывшись языком вам между ног. Вы понимаете, что она кончает и это словно спускает пружину'
						'Вас пронзает потрясающей силы оргазм. Вы кричите от невероятного, почти невыносимого удовольствия, судорожно изгибаетесь, третесь промежностью о лицо Нинель и кончаете - долго, мучительно долго. Оргазм длится и длится без конца.'

						act 'Лежать в изнеможении':
							cla
							*clr
							minut = minut + 30
							clr
							gs'stat'

							'<center><img src="images/inBed/ninel19.jpg"></center>'
							'Вы опускаетесь на постель в сладком изнеможении, все еще обнимая Нинель. Она опускается рядом и нежно целуя вас, спрашивает:'
							'(Нинель) - Ну, как ты себя чувствуешь?'
							'(Вы) - О-ох... Просто прекрасно, - отвечаете вы и тольк тут понимаете, насколько вы правы - от болезни не осталось и следа, вы полны здоровья и а прекрасном настроении. А сладостное изнеможение делает этот букет ощущений еще более приятным'
							'(Нинель) - Ну вот видишь. Это магия, детка. М-м-м... Ты просто чудо - давно я не получала такого удовольствия от своей магии. Если еще раз заболеешь - сразу вызывай меня. Ну а если просто захочешь приятно провести время - ищи меня в поликлинике.'
							'Вы пообещали обязательно найти ее, закрыли глаза и задремали. Пока вы спали, Нинель тихонько оделась и ушла.'

							act 'Спать':gt'bedr'
						end
					end
				end
			end
		end
	end
end

if $ARGS[0] = 'ninel3':
	cla
	*clr
	horny = 50
	clr
	gs'stat'

	'<center><img src="images/inBed/ninel20.jpg"></center>'
	'Вы лежите в постели в ожидании Нинель и тихонько ласкаете пальчиками свою киску, чтобы подготовить себя к ее приходу, поэтому когда звенит звонок вы уже готовы.'

	act 'Входите - открыто!':
		cla
		*clr
		'<center><img src="images/inBed/ninel21.jpg"></center>'
		'(Вы) - Входите - открыто! - хрипите вы своим воспаленным горлом и в комнату входит Нинель.'
		'(Нинель) - Привет, Светик. Опять заболела?'
		'(Вы, кашляя в кулак) - Ага. Полечишь меня?'
		'(Нинель) - Конечно, детка. Раздевайся - я тебя послушаю.'
		'(Вы) - Зачем? Ты же волшебница...'
		'(Нинель смеется) - Глупенькая. Как же ты мало знаешь о магии. Я ведь должна знать, от чего буду лечить, иначе получится как в старой песне - сделать хотел грозу, а получил козу. Магия - штука точная'
		'(Вы) - Вот как... Ну тогда конечно.'

		act 'Раздеться':
			cla
			*clr
			horny = 75
			clr
			gs'stat'

			'<center><img src="images/inBed/ninel22.jpg"></center>'
			'Вы раздеваетесь и Нинель выслушивает ваши легкие. Как обычно, ее руки легки и нежны и от прикосновений ее стетоскопа ваши груди наливаются сладострастным теплом'
			'(Нинель) - Да... Ты опять хрипишь. И сильно. Температура высокая?'
			'(Вы) - А-апчхи-и! Да - 39,6...'
			'(Нинель) - Ах ты, бедняжка. Давай-ка померим.'
			'(Вы, подмигивая) - Как обычно?'
			'(Нинель, улыбаясь) - Ну нет. Ты и так возбуждена сверх меры - того и гляди кончишь.'
			'(Вы) - У-у-у...'
			'(Нинель) - Что - понравилось? А сначала боялась... Ничего - в другой раз'

			act 'Померить температуру':
				cla
				*clr
				'<center><img src="images/inBed/ninel23.jpg"></center>'
				'Нинель смотрит на градусник и качает головой:'
				'(Нинель) - Да... дело плохо. Ну ничего - мы этому горю поможем.'
				'Она медленно тянет ваше одеяло вниз...'

				act 'Расстегивать халатик Нинель':
					cla
					*clr
					horny = 100
					clr
					gs'stat'

					'<center><img src="images/inBed/ninel24.jpg"></center>'
					'Вы больше не в силах сдерживаться - скорее, скорее насладиться ласками Нинель. Порывистым движением в расстегиваете на ней халатик'
					'Умелые руки доктора скользят по вашему телу, но отнюдь не торопятся к самым желанным местечкам'
					'(Вы) - Ласкай меня - я вся горю! Я так хочу тебя! - задыхаясь шепчите вы, но ваша жестокая любовница только усмехается:'
					'(Нинель) - Проси меня - покажи мне, как сильно ты хочешь.'
					'(Вы) - Нинель, родная, милая, пожалуйста - ласкай меня! Возьми меня - я вся твоя! Прошу тебя! Прошу тебя - скорее!!!'
					'(Нинель) - Проси еще! Умоляй меня!'
					'(Вы, чуть не плача) - Пожалуйста, пожалуйста, пожалуйста! Прошу тебя, молю тебя - ласкай меня!!! Я умираю от желания!!!'

					act 'Просить и умолять':
						cla
						*clr
						'<center><img src="images/inBed/ninel25.jpg"></center>'
						'Вы просите и умоляете Нинель сжалиться и наконец она снисходит к вашим мольбам и ее язык устремляется в сладостное путешествие по вашему лону'
						'Вы вскрикиваете и стоните, волны сладострастного жара расходятся по телу, ваша киска истекает похотливым соком и Нинель жадно пьет этот сок'
						'Вы приближаетесь к финалу, когда Нинель внезапно прерывается и приказывает срывающимся голосом:'
						'(Нинель) - Теперь я. Ублажи меня'

						act 'Ублажать Нинель языком':
							cla
							*clr
							'<center><img src="images/inBed/ninel26.jpg"></center>'
							'Нинель раскидывается на кровати и вы начинаете ласкать и вылизывать ее вагину. Нинель распалена не меньше вас - она вскрикивает и охает от ваших прикосновений, из ее киски сочится густая липкая жидкость, вы жадно слизываете ее но она все течет и течет, заливая ваше лицо и ее бедра'
							'(Нинель, сквозь стоны) - Молодец... А-ах! Хорошая девочка... Иди сюда-а-а..!'

							act '69':
								cla
								*clr
								'<center><img src="images/inBed/ninel27.jpg"></center>'
								'Вы ложитесь в позу "69" и начинаете жадно лизать друг друга, перемежая ласки вскриками и стонами.'
								'Вы все ближе и ближе к пику, и Нинель, похоже тоже, но тут она вновь останавливается'
								'(Вы) - Пожалуйста, пожалуйста, продолжай! Я вот-вот кончу! - молите вы, и ласкаете ее все настойчивей, надеясь на ответную реакцию, но Нинель решительно отрывает вас от себя'
								'(Нинель) - Нет... Не так! Я хочу, чтобы ты кончина сама.'

								act 'Дрочить киску':
									cla
									*clr
									'<center><img src="images/inBed/ninel29.jpg"></center>'
									'Со стоном вы подчиняетесь и начинаете отчаянно надрачивать свою горящую пульсирующую киску. Рядом Нинель делает то же самое. Вид, расплывающийся по комнате пряный томный запах ваших соков, стоны вашей любовницы и яростная работа пальцами возносят вас на пик блаженства. Вы кричите и извиваетесь в оргазме и Нинель под вами тоже бьется и кричит - она тоже кончает'

									act 'Упасть в изнеможении':
										cla
										*clr
										horny = 0
										minut = minut + 40
										orgasm = orgasm + 1
										lesbian = lesbian + 1
										ninelsex = ninelsex + 1
										SUB = SUB + 1
										sick = 0
										health = vital*10 + stren*5+1000
										willpower = intel*5 + will*5+1000
										manna = (intel*magik) + magik*100 + vital*10 + rikudo
										clr
										gs'stat'

										'<center><img src="images/inBed/ninel28.jpg"></center>'
										'Вы лежите в обнимку с Нинель и тяжело дышите, отходя от сокрушительного оргазма'
										'Вы чувствуете себя полностью здоровой, только до крайности измотанной'
										'(Вы) - Спасибо, милая. - шепчете вы.'
										'(Нинель) - Пожалуйста. Навести меня как-нибудь в поликлинике. С тобой мне особенно хорошо.'
										'Вы обещаете, в изнеможении откидываетесь на мокрую измятую простыню и засыпаете, а Нинель тихонько одевается и уходит'

										act 'Спать':gt'bedr'
									end
								end
							end
						end
					end
				end
			end
		end
	end
end
--- housecall ---------------------------------
