# TimofeiMetro
minut += 1
sosedMetroDay = day
gs'stat'

!'<center><img src="images/qwest/sosed.jpg"></center>'
'Тимофей увидел вас и поздоровался "Привет Света."'
if cumfrot = 0 and cumface = 0 and sosedSlut = 0:'Вы немного поболтали с Тимофеем пока ехали в метро.'

if sosedSlut = 1:
	'После приветствия Тимофей всем своим видом показывает что ему не интересно ваше дальнейшее общение.'
elseif sosedSlut = 0:
	if cumfrot > 0 or cumface > 0:
		sosedSlut = 1

		if cumface > 0:
			'Он озадаченно посмотрел на ваше лицо. "Свет, у тебя лицо в чем то перемазано." Он удивленно посмотрел на вас и через секунду он понял, что у вас на лице сперма. "Это что? Сперма?"'
		else
			'Он начал с вами весело болтать, потом вдруг заметил сперму на вашей одежде, его глаза заметно округлились "Это что? Сперма?"'
		end

		act 'Оправдываться':
			cls
			gs'stat'

			'Вы начали оправдываться, утверждая что это все случайность и вы абсолютно ни при чем. Но Тимофей откровенно не верит вам и слушает вас без всякого интереса.'

			act 'Выйти из вагона':gt'metro','start'
		end
	end
end

act 'Выйти из вагона':gt'metro','start'
--- TimofeiMetro ---------------------------------

