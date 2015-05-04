# billsvid
minut += 60
bilrand = 0
manna += 10
bilsvidukiy = 0
bilsvidkiy = 0
gs'stat'

'<center><b>Бильярдная</b></center>'
'<center><img src="images/img/bilsvid/0.jpg"></center>'
'Вы и <<$telsob>> арендовали отдельную кабинку'

act 'Играть':
	if $telsob = 'Алла':
		alla += 1

		if alla >= 20:
			bilrand = RAND(0,10)
			if bilrand > 0 and bilrand < 3:gt'billsvid','1'
			if bilrand > 2 and bilrand < 5:gt'billsvid','2'
			if bilrand = 0 or bilrand > 4:gt'billsvid','3'
		elseif alla < 20:
			gt'billsvid','3'
		end
	elseif $telsob = 'Маша':
		masha += 1

		if masha >= 20:
			bilrand = RAND(0,10)
			if bilrand > 0 and bilrand < 3:gt'billsvid','1'
			if bilrand > 2 and bilrand < 5:gt'billsvid','2'
			if bilrand = 0 or bilrand > 4:gt'billsvid','3'
		elseif masha < 20:
			gt'billsvid','3'
		end
	elseif $telsob = 'Катя':
		kat += 1

		if kat >= 20:
			bilrand = RAND(0,10)
			if bilrand > 0 and bilrand < 3:gt'billsvid','1'
			if bilrand > 2 and bilrand < 5:gt'billsvid','2'
			if bilrand = 0 or bilrand > 4:gt'billsvid','3'
		elseif kat < 20:
			gt'billsvid','3'
		end
	end
end

if $ARGS[0] = '1':
	cla
	*clr
	'<center><img src="images/img/bilsvid/1.jpg"></center>'
	'Когда вы в очередной раз нагнулись над столом для удара, <<$telsob>> подошла сзади и её руки проскользнули по вашим бедрам, спине и остановились на груди.'

	act 'Не сейчас <<$telsob>>':gt'billsvid','3'
	act 'Поцеловать её':
		cla
		*clr
		lesbian += 1

		'<center><img src="images/img/bilsvid/2.jpg"></center>'
		'Вы развернулись и поцеловали её, в ответ <<$telsob>> быстро сняла с себя одежду, стащила все с вас и откинув вас на стол запрыгнула сверху, продолжая целовать.'

		act 'Сделать ей куни':gt'billsvid','10'
		act 'Куни':gt'billsvid','11'
	end
end

if $ARGS[0] = '10':
	cla
	*clr
	'<center><img src="images/img/bilsvid/4.jpg"></center>'
	'Вы поставили её раком к столу, а сами опустившись на корточки припали губами к её киске. Вы целовали её и ласкали языком пока она не кончила.'

	act 'Куни':gt'billsvid','11'

	if bilsvidkiy = 0:act 'Поиграть с кием':gt'billsvid','12'
	if bilsvidukiy = 0:act 'Попросить её поиграть с кием':gt'billsvid','13'
end

if $ARGS[0] = '11':
	cla
	*clr
	'<center><img src="images/img/bilsvid/3.jpg"></center>'
	'Вы встали у стола раздвинув ноги, а <<$telsob>> опустившись перед вами на колени принялась целовать вашу киску, но её язычок никак не мог довести вас до желаемого состояния.'

	act 'Сделать ей куни':gt'billsvid','10'

	if bilsvidkiy = 0:act 'Поиграть с кием':gt'billsvid','12'
	if bilsvidukiy = 0:act 'Попросить её поиграть с кием':gt'billsvid','13'
end

if $ARGS[0] = '12':
	cla
	*clr
	bilsvidkiy = 1

	'<center><img src="images/img/bilsvid/6.jpg"></center>'
	'<<$telsob>> залезла на стол и широко развела ноги. Взяв в руки кий вы облизали ручку и медленно вставили его её в вагину. <<$telsob>> старательно подмахивала в такт вашим движениям и через несколько минут рухнула на стол содрогаясь в оргазме.'

	if bilsvidukiy = 0:act 'Попросить её поиграть с кием':gt'billsvid','13'

	act 'Закончить':gt'billsvid','3'
end

if $ARGS[0] = '13':
	cla
	*clr
	orgasm += 1
	vagina += 1
	bilsvidukiy = 1

	'<center><img src="images/img/bilsvid/5.jpg"></center>'
	'Вы уселись на край стола, закинув одну ногу на стол и протянули её кий, "Попадешь в лузу?". <<$telsob>> улыбнулась, и демонстративно проведя языком по рукоятке кия, быстро вставила его вам киску, вы аж взвизгнули от неожиданности. Пока она старательно трахала вас кием, проворачивая его в разные стороны, вы массировали свой клитор пальчиком. Спустя несколько минут приятная нега разлилась по вашему телу, и вы на секунду отключились от накрывшего вас оргазма.'

	if bilsvidkiy = 0:act 'Поиграть с кием':gt'billsvid','12'

	act 'Закончить':gt'billsvid','3'
end

if $ARGS[0] = '2':
	cla
	*clr
	'<center><img src="images/img/bilsvid/10.jpg"></center>'
	'В процессе игры <<$telsob>> постоянно пытается вас приобнять, то проведет рукой по бедрам, то невзначай дотронется до груди.'

	act 'Продолжить играть':gt'billsvid','3'
	act 'Поцеловать её':
		cla
		*clr
		lesbian += 1

		'<center><img src="images/img/bilsvid/11.jpg"></center>'
		'Когда <<$telsob>> в очередной раз положила руку вам на живот, вы придвинулись к ней ближе и поцеловали, её рука тут же скользнула вам под одежду и остановилась на груди.'

		act 'Продолжить':
			cla
			*clr
			'<center><img src="images/img/bilsvid/12.jpg"></center>'
			'<<$telsob>> опустилась на колени и снимая с вас одежду начала целовать ваш лобок спускаясь ниже, пока её язычок не достиг вашей киски.'

			act 'Полизать её':
				cla
				*clr
				'<center><img src="images/img/bilsvid/13.jpg"></center>'
				'Подняв её с колен вы развернули её лицом к столу и задрав ей ногу на стол, начали целовать её киску, то лаская языком, то втягивая в себя её губки.'

				act 'Продолжить':
					cla
					*clr
					'<center><img src="images/img/bilsvid/14.jpg"></center>'
					'Развернув её лицом к себе, вы положили её на стол и разведя ей ноги продолжили ласкать киску языком пока она не кончила.'

					act 'Дать её полизать':
						cla
						*clr
						'<center><img src="images/img/bilsvid/15.jpg"></center>'
						'Когда <<$telsob>> кончила, вы залезли на стол и расположили свою киску прямо перед её лицом, <<$telsob>> тут же принялась ласкать её, раздвинув пальчиками губки она старалась поглубже засунуть язык.'

						act 'Полизать её':
							cla
							*clr
							orgasm += 1

							'<center><img src="images/img/bilsvid/16.jpg"></center>'
							'Вы развернулись так что киска была над её лицом, а сами начали лизать её киску, через несколько минут вы почувствовали как её тело задрожало и <<$telsob>> застонав, сильно прижалась к вашей киске, после чего и вас окутали приятные волны оргазма.'

							act 'Закончить':gt'billsvid','3'
						end
					end
				end
			end
		end
	end
end

if $ARGS[0] = '3':
	cla
	horny = 0
	minut += 60
	gs'stat'

	'Когда вы закончили играть <<$telsob>> сказала что ей нужно бежать и ушла'

	act 'Уйти':gt'torgcentr'
end
--- billsvid ---------------------------------

