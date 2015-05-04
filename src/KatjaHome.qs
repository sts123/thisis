# KatjaHome
gs'stat'

if hour >= 17 and week < 6 and kanikuli = 0 and hour < 20 or hour >= 9 and week >= 6 and kanikuli = 0 and hour < 20 or hour >= 9 and kanikuli > 0 and hour < 20:
	'Дверь вам открыла мама Кати "Привет Света. Катя сейчас в своей комнате. Проходи."'

	act 'Идти в комнату Кати':gt'KatjaHomeTalk'
else
	if hour >= 9:'Дверь вам открыла мама Кати "Ой, привет Света. А Кати нет дома."'
	if hour < 9:'Дверь вам открыла мама Кати "Света. Ночь на улице, приходи не раньше девяти."'

	act 'Попрощаться и идти домой':gt'gorodok'
end
--- KatjaHome ---------------------------------

