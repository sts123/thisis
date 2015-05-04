# BMloc
gs'stat'

'<<$text>>'

act 'Танцевать':
	cls
	gs'stat'

	if bmFrend[Tboynum] = 0:
		if bmHJ[Tboynum] > 0 or bmBJ[Tboynum] > 0 or bmSEX[Tboynum] > 0 or bmANAL[Tboynum] > 0 or bmGANG[Tboynum] > 0:
			if bmHJ[Tboynum] > 0:$text2 = 'ты как то ручкой меня ласкала'
			if bmBJ[Tboynum] > 0:$text2 = 'ты брала у меня в рот'
			if bmSEX[Tboynum] > 0:$text2 = 'мы с тобой переспали'
			if bmANAL[Tboynum] > 0:$text2 = 'я тебя взял в попку'
			if bmGANG[Tboynum] > 0:$text2 = 'я тебя с другом оттрахал'

			'<<$niknameboy>> говорит вам "Помнишь меня, <<$text2>>. Я <<$bmNane[Tboynum]>>"'
		else
			if bmKISS[Tboynum] > 0 or bmTITS[Tboynum] > 0:
				'<<$niknameboy>> говорит вам "Помнишь меня, мы как то с тобой вместе пили пиво. Я <<$bmNane[Tboynum]>>"'
			else
				'<<$niknameboy>> говорит вам "Помнишь меня, мы как то с тобой вместе танцевали. Я <<$bmNane[Tboynum]>>"'
			end
		end
	else
		if bmFrend[Tboynum] = 1:
		end
		if bmFrend[Tboynum] = 2:
		end
		if bmFrend[Tboynum] = 3:
		end
	end

	if bmTip[Tboynum] = 0:'После танца <<$bmNane[Tboynum]>> предлагает вам выйти и попить пивка.'
	if bmTip[Tboynum] = 1:'После танца <<$bmNane[Tboynum]>> предлагает вам пойти бухнуть.'
	if bmTip[Tboynum] = 2:'После танца <<$bmNane[Tboynum]>> предлагает вам поехать к нему в отель.'

	act 'Согласиться':
		cls
		boynumBlock = 1
		if bmTip[Tboynum] = 0:gt'EvBoyBuh'
		if bmTip[Tboynum] = 1:gt'EvgopBuh'
		if bmTip[Tboynum] = 2:gt'EvOtelMan'
	end
	act 'Отказаться':
		cls
		willpower += RAND(0,1)
		gt'gdkin'
	end
end

act 'Уйти':gt'gdkin'
--- BMloc ---------------------------------

