# fbDorm
gs'stat'
gs'fbDormD'

'<<$bname>> привел вас к птушной общаге. "Ну что, пойдем в мою комнату."'

dynamic $d_fbd_start

act 'Э... Я передумала':
	cls
	minut += 5
	gs'stat'

	'Увидив что <<$bname>> привел вас в общагу вы решили отступить пока не поздно. <<$bname>> начал вас уговаривать, обещая что все будет нормально, никто ничего не узнает.'

	if dom > 0:
		'Но вы были непреклонны и как вас не уговаривал парень все же решили уйти.'

		act 'Уйти':gt'gorodok'
	else
		'Парню удалось вас уговорить и вы закусили губу размышляя, почему же из вас все веревки вьют, и не придется ли раскаиваться за этот свой поступок.'

		dynamic $d_fbd_start
	end
end
--- fbDorm ---------------------------------

