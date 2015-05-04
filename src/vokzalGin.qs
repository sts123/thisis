# vokzalGin
$metka = $ARGS[0]
$loc = $CURLOC

clr
frost = 0
poezddalsled = 0
gs'vokdin'
gs'vokdinvera'
gs'vokmantoiev'
gs'stat'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

'<center><H4>Вокзал</H4></center>'
'<center><img src="images/qwest/alter/vokzal.jpg"></center>'
'В центре вокзала зал ожидания и <a href="exec:dynamic $din_vokzalg_kassi">кассы</a> с табло. В одном крыле находятся <a href="exec:dynamic $din_vokzalg_kabinet">кабинеты начальства</a>, а в другом <a href="exec:minut += 1 & dynamic $din_vokzalg_toilet">туалеты</a>.'

if katalkinSexOnce >= 1:'<a href="exec:minut += 5 & gt''katalkin''">отделение полиции</a>'

if podbros = 0:
	podrand = RAND(0,1)
	if money >= 1000 and hour >= 8 and hour <= 20 and podrand = 0:
		'Идя по вокзалу вы замечаете как у мужчины выпадает толстый <a href="exec:dynamic $din_vokzalg_podbros">кошелек</a>.'
	end
end

act 'Уйти':minut += 3 & gt'vokzalG'

if vokzalVork >= 1:
	if cleZalDay ! day:
		act 'Мыть пол в зале ожидания':
			cls
			cleZalDay = day
			minut += 60
			sweat += 1
			if vital < 15:vital += RAND(0,1)
			if stren < 15:stren += RAND(0,1)
			gs'stat'

			'<center><img src="images/pic/clener1.jpg"></center>'
			'Вы взяли инвентарь, налили воды в ведро и стали мыть пол в зале ожидания.'

			act 'Уйти':minut += 1 & gt'vokzalGin'
		end
	end

	if cleMTDay ! day:
		act 'Мыть пол в мужском туалете':
			cls
			cleMTDay = day
			minut += 30
			sweat += 1
			if vital < 15:vital += RAND(0,1)
			if stren < 15:stren += RAND(0,1)
			gs'stat'

			'<center><img src="images/pic/clener1.jpg"></center>'
			'Вы взяли инвентарь, налили воды в ведро и пошли в мужской туалет.'

			dynamic $d_vok_man_toilet_event

			!'Вы стали мыть пол в мужском туалете, после чего начали оттирать унитазы.'

			act 'Уйти':minut += 1 & gt'vokzalGin'
		end
	end

	if cleWTDay ! day:
		act 'Мыть пол в женском туалете':
			cls
			cleWTDay = day
			minut += 30
			sweat += 1
			if vital < 15:vital += RAND(0,1)
			if stren < 15:stren += RAND(0,1)
			gs'stat'

			'<center><img src="images/pic/clener1.jpg"></center>'
			'Вы взяли инвентарь, налили воды в ведро и стали мыть пол в женском туалете, после чего начали оттирать унитазы.'

			dynamic $d_vokzal_vera_talk

			act 'Уйти':minut += 1 & gt'vokzalGin'
		end
	end

	if cleMTDay = day and cleWTDay = day and cleZalDay = day and cleZarplatDay ! day:
		act 'Получить зарплату':
			cls
			cleZarplatDay = day
			vokzalVork += 1
			money += 250
			minut += 3
			gs'stat'

			'Вы зашли в кассу и получили свои деньги.'

			act 'Уйти':minut += 1 & gt'vokzalGin'
		end
	end
end

if hour = 11 and minut = 0:
	poezddalsled = 1

	'К платформе прибывает поезд дальнего следования.'
elseif hour = 11 and minut > 0 and minut < 30:
	poezddalsled = 1

	'У платформы стоит поезд дальнего следования.'
elseif hour = 11 and minut = 30:
	poezddalsled = 1

	'От платформы отбывает поезд дальнего следования.'
elseif hour = 18 and minut = 0:
	poezddalsled = 1

	'К платформе прибывает поезд дальнего следования.'
elseif hour = 18 and minut > 0 and minut < 30:
	poezddalsled = 1

	'У платформы стоит поезд дальнего следования.'
elseif hour = 18 and minut = 30:
	poezddalsled = 1

	'От платформы отбывает поезд дальнего следования.'
end

if poezddalsled = 1:
	'По платформе суетливо бегают торгаши втюхивающие свои товары пассажирам поезда. Со стороны за всей этой суетой следит полиция.'

	if tovarL > 0:
		act 'Втюхивать свой товар пассажирам':gt'vokzaltorg'
	end
end
--- vokzalGin ---------------------------------

