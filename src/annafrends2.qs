# annafrends2
gs'stat'

'Полторашка пива была быстро выпита и парни достали новую бутылку.'

temarand = RAND(0,1)
if temarand = 0:
	gennpc = RAND(0,2)
	if gennpc = 0:
		'Аня подошла к вам. "Свет, пойдем в туалет."'
	elseif gennpc = 1:
		'Лена подошла к вам. "Свет, ты не хочешь в туалет?"'
	elseif gennpc = 2:
		'Ира подошла к вам. "Света, ты не хочешь сходить кое куда?"'
	end

	act 'Пойти вместе':gt'annafrendtoilet'
elseif temarand = 1:
	'Пацаны пошли за угол клуба, что бы опорожнить мочевой пузырь оставив девчонок одних.'
end
if temarand = 2:
	''
end
if temarand = 3:
	''
end
if temarand = 4:
	''
end
if temarand = 5:
	''
end
if temarand = 6:
	''
end
if temarand = 7:
	''
end

act 'Уйти':SiSonWork = 0 & SiSgdk = 0 & gt'gdk'
--- annafrends2 ---------------------------------

