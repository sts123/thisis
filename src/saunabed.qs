# saunabed
$metka = $ARGS[0]
$loc = $CURLOC
gs'stat'

'<center><b>Кровать</b></center>'
'<center><img src="images/pics/son.jpg"></center>'

if son < 10:
	if budon = 1:
		act 'Спать до звонка будильника в <<alarm1>> часов <<alarm2>> минут':
			cls
			inSleep = 1
			:markson
			needminut = 60-minut
			sec += needminut*60
			son += 3
			gs'stat'

			if son >= 23 or alarm1 = hour and alarm2 = minut:
				inSleep = 2
				gt $locBroom, $metkaBroom
			else
				jump 'markson'
			end
		end
	end
	act 'Спать сколько захотите':
		cls
		inSleep = 1
		:markson
		needminut = 60-minut
		sec += needminut*60
		son += 3
		gs'stat'
		if son < 23:jump 'markson'
		inSleep = 2
		gt $locBroom, $metkaBroom
	end
end

if budon = 1:
	'Будильник заведен на <<alarm1>> часов <<alarm2>> минут'

	act 'Отключить будильник':budon = 0 & gt $curloc
else
	act 'Включить будильник':budon = 1 & gt $curloc
end

act 'Установить время будильника':gt'saunabud'
act 'Встать с кровати':sec += 5 & gt $locBroom, $metkaBroom
--- saunabed ---------------------------------

