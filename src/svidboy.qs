# svidboy
if $ARGS[0] = 'kinosvid':
	cla
	*clr
	minut += 60
	manna += 10
	bfA += 3
	gs'stat'

	'<center><b>Кинотеатр</b></center>'
	'<center><img src="images/img/boysvid/kino0.jpg"></center>'
	'<<$boyA>> купил билеты и вы заняв свои места приготовились к просмотру'

	act 'Смотреть кино':
		cla
		*clr
		minut += 90

		'<center><img src="images/img/boysvid/kino1.jpg"></center>'
		'Во время сеанса <<$boyA>> огляделся вокруг и убедившись что кроме вас в зале никого нет, повернулся к вам и начал целовать, его рука скользнула под одежду, начав ласкать вам грудь.'

		act 'Не здесь':
			cla
			*clr
			'<center><img src="images/img/boysvid/kino0.jpg"></center>'
			'Вы убрали его руку со словами "Ну не здесь же"'
			'Когда фильм закончился <<$boyA>> сказал что ему нужно бежать и ушел.'

			act 'Уйти':gt'torgcentr'
		end
		act 'Расстегнуть ему ширинку':
			cla
			*clr
			picrand = 48
			svidboysex = 1
			svidboykino = 1
			bfA += 5

			'<center><img src="images/img/boysvid/kino2.jpg"></center>'
			'Вы расстегиваете ему ширинку и достав уже возбужденный член начинаете гладить его рукой, <<$boyA>> положил руки вам на плечи и начинает тихонько давить вниз, направляя вашу голову к своему члену.'

			act 'Взять в рот':gt'sex','minet'
		end
	end
end

if $ARGS[0] = 'parksvid':
	cla
	*clr
	minut += 60
	manna += 10
	bfA += 3
	gs'stat'

	'<center><b>Парк</b></center>'
	'<center><img src="images/img/boysvid/park0.jpg"></center>'
	'<<$boyA>> и вы встретились у входа в парк.'

	act 'Идти гулять':
		parksvidrand = RAND(0,1)
		if parksvidrand = 1:gt'svidboy','parksvid2'

		cla
		*clr
		minut += 60

		'<center><img src="images/img/boysvid/park1.jpg"></center>'
		'Когда вы зашли в глубь парка <<$boyA>> подхватил вас на руки и начал кружить, "Хватит, прекрати, еще уронишь" рассмеялись вы. <<$boyA>> поставил вас на землю.'

		act 'Идти дальше':
			cla
			*clr
			'<center><img src="images/img/boysvid/park0.jpg"></center>'
			'Вы взяли его за руку и пошли дальше.'
			'Вскоре <<$boyA>> сказал что ему нужно бежать и ушел.'

			act 'Уйти':gt'park','start'
		end
		act 'Поцеловать его':
			cla
			*clr
			'<center><img src="images/img/boysvid/park2.jpg"></center>'
			'Вы поворачиваетесь к нему и целуете в губы, он обнимает вас и его руки начинают блуждать по вашему телу, одна останавливается на груди, вторая уже сжимает ваши ягодицы.'

			act 'Прекратить':
				cla
				*clr
				'<center><img src="images/img/boysvid/park0.jpg"></center>'
				'Вы убрали его руки и пошли дальше.'
				'Вскоре <<$boyA>> сказал что ему нужно бежать и ушел.'

				act 'Уйти':gt'park','start'
			end
			act 'Продолжать':
				cla
				*clr
				horny += 20

				'<center><img src="images/img/boysvid/park3.jpg"></center>'
				'Вы продолжаете целовать его, <<$boyA>> переходит с ваших губ на шею, а руками оголяет вам грудь и начинает её тискать, вас это заводит и рука сама тянется к киске.'

				act 'Прекратить':
					cla
					*clr
					'<center><img src="images/img/boysvid/park0.jpg"></center>'
					'Вы убрали его руки и спрятав грудь обратно под одежду пошли дальше.'
					'Вскоре <<$boyA>> сказал что ему нужно бежать и ушел.'

					act 'Уйти':gt'park','start'
				end
				act 'Продолжать':
					cla
					*clr
					'<center><img src="images/img/boysvid/park4.jpg"></center>'
					'Вы стоите и наслаждаетесь ласками, одной рукой теребя свою киску, как вдруг <<$boyA>> нагибает вас и оголив вашу попку впивается в неё языком, его язык скользит между ваших ягодиц то лаская киску то щекочя анус.'

					act 'Продолжать':
						picrand = 49
						svidboysex = 1
						svidboypark = 1
						bfA += 5
						gt'sex','kuni'
					end
				end
			end
		end
	end
end

if $ARGS[0] = 'parksvid2':
	cla
	*clr
	gs'stat'

	'<center><img src="images/img/boysvid/park5.jpg"></center>'
	'Гуляя по закоулкам парка вы замечаете чернокожего парня наблюдающего за вами'

	if izvrat = 1:
		'<<$boyA>> тоже его замечает и повернувшись к вам расстегивает ширинку и говорит "А давай устроим маленькое шоу для этого извращенца"'

		act 'Отказаться':
			cla
			*clr
			'<center><img src="images/img/boysvid/park6.jpg"></center>'
			'"Ну, нет я этого делать не буду" отвечаете вы застегивая его ширинку, берете его за руку и идете дальше.'
			'Вскоре <<$boyA>> сказал что ему нужно бежать и ушел.'

			act 'Уйти':gt'park','start'
		end
		act 'Согласиться':
			picrand = 50
			svidboysex = 1
			svidboypark1 = 1
			bfA += 5
			gt'sex','minet'
		end
	end

	'Вам в голову приходит шальная мысль, заняться сексом со своим парнем на глазах у подглядывающего.'

	act 'Заняться сексом':
		cla
		*clr
		'<center><img src="images/img/boysvid/park9.jpg"></center>'
		'Вы отпускаете руку парня отходите немного назад, рассчитывая место так что-бы африканец вас хорошо видел и скинув с себя одежду завете своего парня "Я хочу тебя здесь и сейчас"'
		'"А я и не против" отвечает он подходя к вам и находу расстегивая ширинку.'

		act 'Минет':
			picrand = 50
			svidboysex = 1
			svidboypark2 = 1
			bfA += 5
			gt'sex','minet'
		end
	end
	act 'Отбросить эту мысль и идти дальше':
		cla
		*clr
		'<center><img src="images/img/boysvid/park6.jpg"></center>'
		'Вы отбрасываете эту мысль и идете дальше.'
		'Вскоре <<$boyA>> сказал что ему нужно бежать и ушел.'

		act 'Уйти':gt'park','start'
	end
end

if $ARGS[0] = 'parksvid21':
	cla
	*clr
	'<center><img src="images/img/boysvid/park7.jpg"></center>'
	'После того как <<$boyA>> кончил, он спрашивает у вас "Ну что этот маленький папуас еще здесь?"'
	'"Да, активно дрочит." отвечаете вы, мельком взглянув в сторону африканца.'
	'"Если хочешь можешь отсосать ему, а я посмотрю." говорит <<$boyA>>, явно желая что-бы вы согласились.'

	act 'Отказаться':
		cla
		*clr
		'<center><img src="images/img/boysvid/park6.jpg"></center>'
		'"Ну нет, я не собираюсь ему сосать, хватит с него и просмотра." отвечаете вы одеваясь, затем берете его за руку и идете дальше.'
		'Вскоре <<$boyA>> сказал что ему нужно бежать и ушел.'

		act 'Уйти':gt'park','start'
	end
	act 'Согласиться':
		cla
		*clr
		bfA += 5
		bj += 1
		swallow += 1

		'<center><img src="images/img/boysvid/park8.jpg"></center>'
		'Вы подзываете африканца, он осторожно подходит с опаской посматривая на вашего парня.'
		'"Не бойся, доставай причиндалы, сейчас моя шлюшка тебя до дна высосет" усмехнулся <<$boyA>>'
		'Вы опускаетесь на колени так чтобы <<$boyA>> хорошо видел весь процесс, и стянув с парня трусы начинаете сосать, трудиться вам пришлось не долго, буквально через минуту он кончил вам в рот. Парень довольный тут же убежал.'
		'"Эй, если шлюха денег не берет мог бы её хоть спасибо сказать" кинул ему в след <<$boyA>>'
		'Не обращая внимания на его слова, ведь вы действительно повели себя как последняя шлюха, вы оделись и пошли дальше.'
		'Вскоре <<$boyA>> сказал что ему нужно бежать и ушел.'

		act 'Уйти':gt'park','start'
	end
end

if $ARGS[0] = 'parksvid22':
	cla
	*clr
	'<center><img src="images/img/boysvid/park7.jpg"></center>'
	'После того как <<$boyA>> кончил, он замечает наблюдающего за вами африканца "Вот черт, этот извращенец за нами подглядывал" и заметив как по вашим губам проскользнула улыбка спросил "Ты знала что он здесь, это ты специально решила здесь трахнуться чтобы покрасоваться перед этим негром, может ты ему еще и отсосешь?"'

	act 'Успокоить его':
		cla
		*clr
		'<center><img src="images/img/boysvid/park6.jpg"></center>'
		'"Конечно же я ничего не знала, неужели ты думаешь что я могла заниматься с тобой сексом на глазах у этого" вы делаете обиженное лицо и быстро одевшись уходите, через несколько секунд <<$boyA>> догоняет вас, "Прости меня, солнышко, а не хотел тебя обидеть, это я сгоряча сказал" извиняется он, вы берете его за руку, говорите что прощаете и идете дальше.'
		'Вскоре <<$boyA>> сказал что ему нужно бежать и ушел.'

		act 'Уйти':gt'park','start'
	end
	act 'Позлить его':
		cla
		*clr
		bfa = 0
		bj += 1
		swallow += 1
		eggs += 1

		'<center><img src="images/img/boysvid/park8.jpg"></center>'
		'"Захочу и отсосу" бросили вы в ответ.'
		'"Так чего ты ждешь соси или мне позвать его, эй парень иди сюда здесь бесплатная блядь, сосет за так" закричал <<$boyA>>'
		'"Подойди не бойся" крикнули вы парню, африканец робко подошел к вам.'
		'Вы опускаетесь на колени так чтобы <<$boyA>> хорошо видел весь процесс, и стянув с парня трусы начинаете сосать, трудиться вам пришлось не долго, буквально через минуту он кончил вам в рот. Но вы не собирались так быстро заканчивать особенно когда <<$boyA>> сидел рядом пунцовый от злости. Вы взяли парня за член и продолжили дрочить что-бы он окончательно не упал, а сами демонстративно повернулись к своему, теперь уже бывшему парню, и немного поиграв со спермой во рту проглотили её. Затем вы вновь повернулись к африканцу и продолжили, не выпуская его член из рук вы языком начали ласкать его яйца, затем взяли их целиком в рот и начали посасывать то выпуская изо рта одно то вновь вбирая в себя оба, когда член африканца вновь стоял, вы переключились на него, медленно и методично вы облизывали каждый сантиметр его фалоса, затем начали посасывать головку, громко причмокивая, после вы спокойно и методично начали сосать его пытаясь вобрать его в себя целиком и так как член был весьма скромных размеров вам это удалось, и что бы поставить точку, вы втолкнули себе в рот и его яйца. На этом <<$boyA>> не сдержался и прокричав что-то про то что вы шлюха и как он вас ненавидит убежал, вы же спокойно доделали парню минет и проглотив сперму пошли прочь.'

		act 'Уйти':gt'park','start'
	end
end

if $ARGS[0] = 'billsvid':
	cla
	*clr
	minut += 60
	manna += 10
	bfA += 3
	gs'stat'

	picrand = RAND(51,52)
	'<center><img src="images/img/boysvid/bil<<picrand>>.jpg"></center>'
	'<<$boyA>> оплатил стол в отдельной кабинке и вы пошли играть'

	act 'Играть':
		cla
		*clr
		minut += 60

		'<center><img src="images/img/boysvid/bil1<<picrand>>.jpg"></center>'
		'Во время игры <<$boyA>> подходит к вам сзади и его руки начинают скользить по вашим бедрам а губы тянутся к шеи.'

		act 'Не здесь':
			cla
			*clr
			'<center><img src="images/img/boysvid/bil0<<picrand>>.jpg"></center>'
			'Вы убрали его руку со словами "Ну не здесь же".'
			'Когда ваше время закончилось <<$boyA>> сказал что ему нужно бежать и ушел.'

			act 'Уйти':gt'torgcentr'
		end
		act 'Пусть продолжает':
			cla
			*clr
			'<center><img src="images/img/boysvid/bil2<<picrand>>.jpg"></center>'
			'Вы положили кий на стол и расслабляетесь позволяя ему продолжать ласкать ваше тело, его поцелуи спускаются все ниже и ниже.'

			act 'Пусть продолжает':
				svidboysex = 1
				svidboykino = 1
				bfA += 5
				gt'sex','kuni'
			end
			act 'Стоп, хватит':
				cla
				*clr
				'<center><img src="images/img/boysvid/bil0<<picrand>>.jpg"></center>'
				'Вы убрали его руку со словами "Ну не здесь же"'
				'Когда ваше время закончилось <<$boyA>> сказал что ему нужно бежать и ушел.'

				act 'Уйти':gt'torgcentr'
			end
		end
	end
end

if $ARGS[0] = 'kafesvid':
	cla
	*clr
	minut += 60
	manna += 10
	bfA += 3
	gs'stat'

	'<center><img src="images/img/boysvid/kafe0.jpg"></center>'
	'Вы и <<$boyA>> зашли в небольшое кафе в центе, похоже что популярностью оно не пользуется, посетителей почти нет, вы сели за столик в одной из отдельных кабинок.'

	act 'Ждать заказ':
		cla
		*clr
		minut += 60

		'<center><img src="images/img/boysvid/kafe1.jpg"></center>'
		'Как только вам принесли заказ <<$boyA>> начал приставать к вам, он так и норовил поцеловать вас, а его руки скользили по вашему телу, то лаская грудь, то сжимая ягодицы.'

		act 'Не здесь':
			cla
			*clr
			'<center><img src="images/img/boysvid/kafe0.jpg"></center>'
			'Вы убрали его руку со словами "Ну не здесь же"'
			'Спустя некоторое время <<$boyA>> сказал что ему нужно бежать и ушел.'

			act 'Уйти':gt'down'
		end
		act 'Пусть продолжает':
			cla
			*clr
			'<center><img src="images/img/boysvid/kafe2.jpg"></center>'
			'Вскоре вы остаетесь почти без одежды, а <<$boyA>> уже целовал вам низ живота, опускаясь к лобку.'

			act 'Пусть продолжает':
				svidboysex = 1
				svidboykafe = 1
				bfA += 5
				picrand = 53
				gt'sex','kuni'
			end
			act 'Стоп, хватит':
				cla
				*clr
				'<center><img src="images/img/boysvid/kafe0.jpg"></center>'
				'В последний момент вы все таки пришли в себя и осознавая что вы сейчас в кафе, оттолкнули его "Нет хватит мы же в кафе, потерпи до дома"'
				'Но вскоре <<$boyA>> сказал что ему нужно бежать и ушел.'

				act 'Уйти':gt'down'
			end
		end
	end
end
--- svidboy ---------------------------------
