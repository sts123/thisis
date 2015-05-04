# magik
!Выбор магической атаки
if round >= 0:
	if spelltuman > 0:'Накрыть местность туманом <a href="exec:GT ''spell'',''tuman''">создать заклинание</a>'
	if spellklon > 0:'Подменить себя клоном <a href="exec:GT ''spell'',''klon''">создать заклинание</a>'
	if spellstun > 0:'Парализовать противника <a href="exec:GT ''spell'',''stun''">создать заклинание</a>'
	if spellweap > 0 and weapon > 0:'Вложить энергию в оружие <a href="exec:GT ''spell'',''weap''">создать заклинание</a>'
	if spellwind > 0:'Сдуть туман <a href="exec:GT ''spell'',''wind''">создать заклинание</a>'
	if spellklon2 > 0:'Подменить себя клонами (3 штуки) <a href="exec:GT ''spell'',''klon2''">создать заклинание</a>'
	if spellenergo > 0:'Создать слабый энерго щит <a href="exec:GT ''spell'',''energo''">создать заклинание</a>'
	if spellinit > 0:'Создать слабое замедление времени <a href="exec:GT ''spell'',''init''">создать заклинание</a>'
	if spellhel > 0:'Лечить себя <a href="exec:GT ''spell'',''hel''">создать заклинание</a>'
	if spellhand > 0:'Разящая ладонь <a href="exec:GT ''spell'',''hand''">создать заклинание</a>'
	if spellreset > 0 or spellunmat > 0:'<b><font color = red>СИЛЫ РИКУДО</font></b>'
	if spellreset > 0:'Сила Рикудо "Подчерпнуть собранную энергию" <a href="exec:GT ''spell'',''reset''">создать заклинание</a>'
	if spellunmat > 0:'Сила Рикудо "Не материальность" <a href="exec:GT ''spell'',''unmat''">создать заклинание</a>'
	if spellfire1 > 0:'<b><font color = red>ШКОЛА ОГНЯ</font></b>'
	if spellfire1 > 0:'Пламя <a href="exec:GT ''spell'',''fire1''">создать заклинание</a>'

	if round >= 3:
		if spellfire2 > 0:'Высвобождение огня <a href="exec:GT ''spell'',''fire2''">создать заклинание</a>'
		if spellfire3 > 0:'Барьер огня <a href="exec:GT ''spell'',''fire3''">создать заклинание</a>'
	end
	if round >= 6:
		if spellfire4 > 0:'Огненный шторм <a href="exec:GT ''spell'',''fire4''">создать заклинание</a>'
		if spellfire5 > 0:'Пламенный щит <a href="exec:GT ''spell'',''fire5''">создать заклинание</a>'
	end

	if spellele1 > 0:'<b><font color = red>ШКОЛА ЭЛЕКТРИЧЕСТВА</font></b>'
	if spellele1 > 0:'Разряд <a href="exec:GT ''spell'',''ele1''">создать заклинание</a>'

	if round >= 3:
		if spellele2 > 0:'Молния <a href="exec:GT ''spell'',''ele2''">создать заклинание</a>'
		if spellele3 > 0:'Электро барьер <a href="exec:GT ''spell'',''ele3''">создать заклинание</a>'
	end
	if round >= 6:
		if spellele4 > 0:'Танец тысячи птиц <a href="exec:GT ''spell'',''ele4''">создать заклинание</a>'
		if spellele5 > 0:'Пляшущая сфера <a href="exec:GT ''spell'',''ele5''">создать заклинание</a>'
	end

	if spellert1 > 0:'<b><font color = red>ШКОЛА ЗЕМЛИ</font></b>'
	if spellert1 > 0:'Зыбучий песок <a href="exec:GT ''spell'',''ert1''">создать заклинание</a>'

	if round >= 3:
		if spellert2 > 0:'Активная защита <a href="exec:GT ''spell'',''ert2''">создать заклинание</a>'
		if spellert3 > 0:'Пропасть <a href="exec:GT ''spell'',''ert3''">создать заклинание</a>'
	end
	if round >= 6:
		if spellert4 > 0:'Абсолютная защита <a href="exec:GT ''spell'',''ert4''">создать заклинание</a>'
		if spellert5 > 0:'Сандо <a href="exec:GT ''spell'',''ert5''">создать заклинание</a>'
	end

	if spellwind1 > 0:'<b><font color = red>ШКОЛА ВЕТРА</font></b>'
	if spellwind1 > 0:'Порыв ветра <a href="exec:GT ''spell'',''wind1''">создать заклинание</a>'

	if round >= 3:
		if spellwind2 > 0:'Ужасающее давление <a href="exec:GT ''spell'',''wind2''">создать заклинание</a>'
		if spellwind3 > 0:'Вакуумная защитная сфера <a href="exec:GT ''spell'',''wind3''">создать заклинание</a>'
	end
	if round >= 6:
		if spellwind4 > 0:'Вакуумные снаряды <a href="exec:GT ''spell'',''wind4''">создать заклинание</a>'
		if spellwind5 > 0:'Пожирающий вакуум <a href="exec:GT ''spell'',''wind5''">создать заклинание</a>'
	end

	if spellwater1 > 0:'<b><font color = red>ШКОЛА ВОДЫ</font></b>'
	if spellwater1 > 0:'Ручей манны <a href="exec:GT ''spell'',''water1''">создать заклинание</a>'

	if round >= 3:
		if spellwater2 > 0:'Затопление <a href="exec:GT ''spell'',''water2''">создать заклинание</a>'
		if spellwater3 > 0:'Водяной пузырь <a href="exec:GT ''spell'',''water3''">создать заклинание</a>'
	end
	if round >= 6:
		if spellwater4 > 0:'Водяная акулья ракета <a href="exec:GT ''spell'',''water4''">создать заклинание</a>'
		if spellwater5 > 0:'Великий потоп <a href="exec:GT ''spell'',''water5''">создать заклинание</a>'
	end
end

act 'Физическая атака':gt'boxing'
--- magik ---------------------------------

