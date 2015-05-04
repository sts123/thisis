# dangeon
$dundincif = {
	cls
	gs'stat'

	'8809 = 6'
	'7111 = 0'
	'2172 = 0'
	'6666 = 4'
	'1111 = 0'
	'3213 = 0'
	'7662 = 2'
	'9312 = 1'
	'0000 = 4'
	'2222 = 0'
	'3333 = 0'
	'5555 = 0'
	'8193 = 3'
	'8096 = 5'
	'7777 = 0'
	'9999 = 4'
	'7756 = 1'
	'6855 = 3'
	'9881 = 5'
	'5531 = 0'
	'Есть умный смысл в дурачестве таком, ведь часто умный ходит дураком.'

	act 'Отойти от надписи':gt $curloc
}

$dundinboch = {
	cls
	if openstateDM2 = 0:openstateDM2 = 1
	gs'stat'

	'Бой часов раздастся вскоре, помиритесь те кто в ссоре.'

	act 'Отойти от бочки':gt $curloc
}

$dundinsvitok = {
	cls
	svitokRTS = 1
	heart += 1
	gs'stat'

	'Вы взяли в руки свиток и он рассыпался. Вас как будто обдало ветром. Вы прислушались к ощущениям и поняли что в вас что то поменялось. Вы чувствуете как где-то, как будто в другом измерении бьется еще одно сердце принадлежащее вам, которое умрет вместо вас в бою.'

	act 'Отойти':gt $curloc
}

gs'stat'

if dungeonMark = 0:
	'<center><img src="images/picPRE/dunPRE.jpg"></center>'
	'Рукотворная пещера в глубине которой видно дверь.'

	act 'Вылезти из подземелья':minut += 5 & gt'obekt2'
	act 'Войти в дверь':minut += 5 & dungeonMark = 1 & gt $curloc
elseif dungeonMark = 1:
	'<center><img src="images/picPRE/dunPRE1.jpg"></center>'
	'Довольно большая и пустынная комната в которой ничего нет кроме кучи костей в углу.'

	act 'Выйти':minut += 5 & dungeonMark = 0 & gt $curloc
	act 'Идти в глубь':minut += 5 & dungeonMark = 2 & gt $curloc
elseif dungeonMark = 2:
	if svitokRTS = 1:
		exit
	end

	'<center><img src="images/picPRE/dunPRE2.jpg"></center>'
	'Полуразрушенная галерея в углублениях которой видны двери в другие комнаты.'

	act 'Выйти из галереи':minut += 5 & dungeonMark = 1 & gt $curloc
	act 'Войти в 1ю комнату':minut += 5 & dungeonMark = 3 & gt $curloc
	act 'Войти в 2ю комнату':
		cls

		if openstateDM = 1:
			minut += 5
			dungeonMark = 4
			gt $curloc
		end
		if openstateDM = 0:
			:markanotherrand
			DMN[1] = RAND(0,9)
			DMN[2] = RAND(0,9)
			DMN[3] = RAND(0,9)
			DMN[4] = RAND(0,9)
			if DMN[1] = DMN[2] and DMN[1] = DMN[3] and DMN[1] = DMN[4]:jump'markanotherrand'
			if DMN[1] = 8 and DMN[2] = 8 and DMN[3] = 0 and DMN[4] = 9:jump'markanotherrand'
			if DMN[1] = 7 and DMN[2] = 1 and DMN[3] = 1 and DMN[4] = 1:jump'markanotherrand'
			if DMN[1] = 2 and DMN[2] = 1 and DMN[3] = 7 and DMN[4] = 2:jump'markanotherrand'
			if DMN[1] = 3 and DMN[2] = 2 and DMN[3] = 1 and DMN[4] = 3:jump'markanotherrand'
			if DMN[1] = 7 and DMN[2] = 6 and DMN[3] = 6 and DMN[4] = 2:jump'markanotherrand'
			if DMN[1] = 9 and DMN[2] = 3 and DMN[3] = 1 and DMN[4] = 2:jump'markanotherrand'
			if DMN[1] = 8 and DMN[2] = 1 and DMN[3] = 9 and DMN[4] = 3:jump'markanotherrand'
			if DMN[1] = 8 and DMN[2] = 0 and DMN[3] = 9 and DMN[4] = 6:jump'markanotherrand'
			if DMN[1] = 7 and DMN[2] = 7 and DMN[3] = 5 and DMN[4] = 6:jump'markanotherrand'
			if DMN[1] = 6 and DMN[2] = 8 and DMN[3] = 5 and DMN[4] = 5:jump'markanotherrand'
			if DMN[1] = 9 and DMN[2] = 8 and DMN[3] = 8 and DMN[4] = 1:jump'markanotherrand'
			if DMN[1] = 5 and DMN[2] = 5 and DMN[3] = 3 and DMN[4] = 1:jump'markanotherrand'
			i = 0
			numdmr = 0
			:markdnm
			i += 1

			if DMN[i] = 0 or DMN[i] = 6 or DMN[i] = 9:
				numdmr += 1
			elseif DMN[i] = 8:
				numdmr += 2
			end

			if i < 4:jump'markdnm'

			numberOSDM = input("<<DMN[1]>><<DMN[2]>><<DMN[3]>><<DMN[4]>>=?")
			if numberOSDM < 0 or numberOSDM > 8 or numdmr ! numberOSDM:
				MSG("Тишина, ничего не изменилось")
				gt $curloc
			else
				openstateDM = 1
				MSG("В двери что то щелкнуло")
				gt $curloc
			end
		end
	end

	if openstateDM2 = 2:act 'Войти в 3ю комнату':minut += 5 & dungeonMark = 5 & gt $curloc
elseif dungeonMark = 3:
	'<center><img src="images/picPRE/dunPRE3.jpg"></center>'
	'Комната в которой по центру стоит каменное возвышение на котором стоят различные запыленные склянки.'
	'На стене нацарапаны какие то <a href="exec:dynamic $dundincif ">знаки</a>.'

	act 'Выйти из комнаты':minut += 5 & dungeonMark = 2 & gt $curloc
elseif dungeonMark = 4:
	'<center><img src="images/picPRE/dunPRE4.jpg"></center>'
	'Комнатушка в которой стоят какие то <a href="exec:dynamic $dundinboch ">бочки</a>.'

	act 'Выйти из комнаты':minut += 5 & dungeonMark = 2 & gt $curloc

	if openstateDM2 = 1:
		'В другой бочке вы видите устройство куда можно ввести цифры.'
		act 'Ввести цифры':
			cls

			numberOSDM2 = input("12,1,1,1,2,1,3,?,?,?,?")
			if numberOSDM2 = rikudootvet:
				openstateDM2 = 2
				MSG("Снаружи что то загрохотало.")
			else
				MSG("Тишина, ничего не изменилось")
			end
			gt $curloc
		end
	end
elseif dungeonMark = 5:
	'<center><img src="images/picPRE/dunPRE5.jpg"></center>'
	'Комната в которой по середине, на каменном троне сидит скелет покрытый паутиной.'

	if svitokRTS = 0:'В руках у скелета лежит <a href="exec:dynamic $dundinsvitok ">свиток</a>.'

	act 'Выйти из комнаты':minut += 5 & dungeonMark = 2 & gt $curloc
end
--- dangeon ---------------------------------

