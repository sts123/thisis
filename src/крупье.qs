# крупье
clr
minut = minut + 5
gs'stat'

'<right><img src="images/casino/crup.jpg"></right>'
'- Чем я могу вам помочь?'

act 'Спросить правила':
	msg 'Правила очень просты.

	Для начала вы выбираете сумму которую хотите поставить.
	Но только учтите, что в нашем казино максимальная ставка составляет 1000 рублей.
	Затем вы выбираете на что поставить свои деньги. Есть 5 видов ставок:
	Цвет			-	1 к 1
	Чет/Нечет		-	1 к 1
	Мал/Большие	-	1 к 1
	Дюжина		-	1 к 2
	Ряд			-	1 к 2
	Число		-	1 к 36
	Ну а дальше все зависит только от вашего везения.'

	gt'крупье'
end
act 'Отойти от крупье':
	gt'рулетка'
end
--- крупье ---------------------------------

