# kid
if $ARGS[0] = 'start':
	clr
	gs'stat'

	'Ваш ребенок, <<$polreb[1]>> по имени <<$kidname[1]>>. Дата рождения <<daykid[1]>>.<<monthkid[1]>>.<<yearkid[1]>>г. Возраст <<kidage[1]>>'
	''

	if kidage[1] < 1:'<<$kidname[1]>> младенец и лежит в кроватке.'

	if kidage[1] >= 1 and kidage[1] < 7:
		if hour >= 9 and hour <= 21:
			'<<$kidname[1]>> играет с игрушками.'
		else
			'<<$kidname[1]>> спит в кроватке.'
		end
	end
	if kidage[1] >= 7 and kidage[1] < 18:
		if hour >= 21 or hour <= 8:
			'<<$kidname[1]>> спит в кровати.'
		else
			'<<$kidname[1]>> сидит у телевизора.'
		end
	end

	act 'Уйти':
		cla
		gt'sitr'
	end
end
--- kid ---------------------------------

