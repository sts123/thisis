# katalkinAlko
gs'stat'

if hour < 8:
	'Полицейские наконец то перепились и повалились спать кто где.'

	act 'Уйти':minut += 1 & gt'vokzalGin'

	exit
end

if alko < 6:
	'Вы выпили рюмку водки вместе с полицейскими. Вам опять подливают в рюмку водки.'

	act 'Выпить рюмку':alko += 2 & minut += 30 & gt $curloc
elseif alko >= 6:
	'Вы окончательно захмелели и едва сидите на стуле.'
end

if katGangbang = 0:
	!
elseif katGangbang > 0:
	if katGangbangDay = daystart:
		!
	elseif katGangbangDay < daystart:
		!
	end
end

act 'Уйти':minut += 2 & gt'vokzalGin'
--- katalkinAlko ---------------------------------

