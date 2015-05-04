# portnoi1
if $ARGS[0] = 'start':
	gs'stat'
	cla

	if odetjeans = 1 and numdress ! 1 and jeans[1] = 1 or odetjeans = 0 and jeans[1] = 1:'Джинсы 1 (Оставшаяся прочность <<jeansH[1]>>, Размер бедер <<jeansB[1]>>) <a href="exec:numdres = 1 & GT ''portnoi1'',''jeans''">ушить</a>'
	if odetjeans = 1 and numdress ! 2 and jeans[2] = 1 or odetjeans = 0 and jeans[2] = 1:'Джинсы 2 (Оставшаяся прочность <<jeansH[2]>>, Размер бедер <<jeansB[2]>>) <a href="exec:numdres = 2 & GT ''portnoi1'',''jeans''">ушить</a>'
	if odetjeans = 1 and numdress ! 3 and jeans[3] = 1 or odetjeans = 0 and jeans[3] = 1:'Джинсы 3 (Оставшаяся прочность <<jeansH[3]>>, Размер бедер <<jeansB[3]>>) <a href="exec:numdres = 3 & GT ''portnoi1'',''jeans''">ушить</a>'
	if odetjeans = 1 and numdress ! 4 and jeans[4] = 1 or odetjeans = 0 and jeans[4] = 1:'Джинсы 4 (Оставшаяся прочность <<jeansH[4]>>, Размер бедер <<jeansB[4]>>) <a href="exec:numdres = 4 & GT ''portnoi1'',''jeans''">ушить</a>'
	if odetjeans = 1 and numdress ! 5 and jeans[5] = 1 or odetjeans = 0 and jeans[5] = 1:'Джинсы 5 (Оставшаяся прочность <<jeansH[5]>>, Размер бедер <<jeansB[5]>>) <a href="exec:numdres = 5 & GT ''portnoi1'',''jeans''">ушить</a>'

	if odetshort = 1 and numdress ! 1 and short[1] = 1 or odetshort = 0 and short[1] = 1:'Черные шорты с фиолетовой майкой (Оставшаяся прочность <<shortH[1]>>, Размер бедер <<shortB[1]>>) <a href="exec:numdres = 1 & GT ''portnoi1'',''short''">ушить</a>'
	if odetshort = 1 and numdress ! 2 and short[2] = 1 or odetshort = 0 and short[2] = 1:'Черные шорты с полосатой майкой (Оставшаяся прочность <<shortH[2]>>, Размер бедер <<shortB[2]>>) <a href="exec:numdres = 2 & GT ''portnoi1'',''short''">ушить</a>'
	if odetshort = 1 and numdress ! 3 and short[3] = 1 or odetshort = 0 and short[3] = 1:'Черные шорты с черной майкой (Оставшаяся прочность <<shortH[3]>>, Размер бедер <<shortB[3]>>) <a href="exec:numdres = 3 & GT ''portnoi1'',''short''">ушить</a>'
	if odetshort = 1 and numdress ! 4 and short[4] = 1 or odetshort = 0 and short[4] = 1:'Розовые шорты с розовым топиком (Оставшаяся прочность <<shortH[4]>>, Размер бедер <<shortB[4]>>) <a href="exec:numdres = 4 & GT ''portnoi1'',''short''">ушить</a>'
	if odetshort = 1 and numdress ! 5 and short[5] = 1 or odetshort = 0 and short[5] = 1:'Сексуальные белые шорты (Оставшаяся прочность <<shortH[5]>>, Размер бедер <<shortB[5]>>) <a href="exec:numdres = 5 & GT ''portnoi1'',''short''">ушить</a>'

	if odetskirt = 1 and numdress ! 1 and skirt[1] = 1 or odetskirt = 0 and skirt[1] = 1:'Белая юбка с цветастой блузкой (Оставшаяся прочность <<skirtH[1]>>, Размер бедер <<skirtB[1]>>) <a href="exec:numdres = 1 & GT ''portnoi1'',''skirt''">ушить</a>'
	if odetskirt = 1 and numdress ! 2 and skirt[2] = 1 or odetskirt = 0 and skirt[2] = 1:'Черная кожаная юбка с красной кофтой (Оставшаяся прочность <<skirtH[2]>>, Размер бедер <<skirtB[2]>>) <a href="exec:numdres = 2 & GT ''portnoi1'',''skirt''">ушить</a>'
	if odetskirt = 1 and numdress ! 3 and skirt[3] = 1 or odetskirt = 0 and skirt[3] = 1:'Белая юбка с полосатой блузкой (Оставшаяся прочность <<skirtH[3]>>, Размер бедер <<skirtB[3]>>) <a href="exec:numdres = 3 & GT ''portnoi1'',''skirt''">ушить</a>'
	if odetskirt = 1 and numdress ! 4 and skirt[4] = 1 or odetskirt = 0 and skirt[4] = 1:'Белая юбка с цветастой блузкой (Оставшаяся прочность <<skirtH[4]>>, Размер бедер <<skirtB[4]>>) <a href="exec:numdres = 4 & GT ''portnoi1'',''skirt''">ушить</a>'
	if odetskirt = 1 and numdress ! 5 and skirt[5] = 1 or odetskirt = 0 and skirt[5] = 1:'Черная кожаная юбка с красной блузкой (Оставшаяся прочность <<skirtH[5]>>, Размер бедер <<skirtB[5]>>) <a href="exec:numdres = 5 & GT ''portnoi1'',''skirt''">ушить</a>'

	if odetdress = 1 and numdress ! 1 and dress[1] = 1 or odetdress = 0 and dress[1] = 1:'Черное платье (Оставшаяся прочность <<dressH[1]>>, Размер бедер <<dressB[1]>>) <a href="exec:numdres = 1 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 2 and dress[2] = 1 or odetdress = 0 and dress[2] = 1:'Желтое платье (Оставшаяся прочность <<dressH[2]>>, Размер бедер <<dressB[2]>>) <a href="exec:numdres = 2 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 3 and dress[3] = 1 or odetdress = 0 and dress[3] = 1:'Синее платье (Оставшаяся прочность <<dressH[3]>>, Размер бедер <<dressB[3]>>) <a href="exec:numdres = 3 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 4 and dress[4] = 1 or odetdress = 0 and dress[4] = 1:'Черное короткое платье (Оставшаяся прочность <<dressH[4]>>, Размер бедер <<dressB[4]>>) <a href="exec:numdres = 4 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 5 and dress[5] = 1 or odetdress = 0 and dress[5] = 1:'Красное длинное платье (Оставшаяся прочность <<dressH[5]>>, Размер бедер <<dressB[5]>>) <a href="exec:numdres = 5 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 6 and dress[6] = 1 or odetdress = 0 and dress[6] = 1:'Красное в горошек платье (Оставшаяся прочность <<dressH[6]>>, Размер бедер <<dressB[6]>>) <a href="exec:numdres = 6 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 7 and dress[7] = 1 or odetdress = 0 and dress[7] = 1:'Коричневое платье (Оставшаяся прочность <<dressH[7]>>, Размер бедер <<dressB[7]>>) <a href="exec:numdres = 7 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 8 and dress[8] = 1 or odetdress = 0 and dress[8] = 1:'Платье 8(Оставшаяся прочность <<dressH[8]>>, Размер бедер <<dressB[8]>>) <a href="exec:numdres = 8 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 9 and dress[9] = 1 or odetdress = 0 and dress[9] = 1:'Платье 9(Оставшаяся прочность <<dressH[9]>>, Размер бедер <<dressB[9]>>) <a href="exec:numdres = 9 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 10 and dress[10] = 1 or odetdress = 0 and dress[10] = 1:'Платье 10(Оставшаяся прочность <<dressH[10]>>, Размер бедер <<dressB[10]>>) <a href="exec:numdres = 10 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 11 and dress[11] = 1 or odetdress = 0 and dress[11] = 1:'Платье 11(Оставшаяся прочность <<dressH[11]>>, Размер бедер <<dressB[11]>>) <a href="exec:numdres = 11 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 12 and dress[12] = 1 or odetdress = 0 and dress[12] = 1:'Платье 12(Оставшаяся прочность <<dressH[12]>>, Размер бедер <<dressB[12]>>) <a href="exec:numdres = 12 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 13 and dress[13] = 1 or odetdress = 0 and dress[13] = 1:'Платье 13(Оставшаяся прочность <<dressH[13]>>, Размер бедер <<dressB[13]>>) <a href="exec:numdres = 13 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 14 and dress[14] = 1 or odetdress = 0 and dress[14] = 1:'Платье 14(Оставшаяся прочность <<dressH[14]>>, Размер бедер <<dressB[14]>>) <a href="exec:numdres = 14 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 15 and dress[15] = 1 or odetdress = 0 and dress[15] = 1:'Платье 15(Оставшаяся прочность <<dressH[15]>>, Размер бедер <<dressB[15]>>) <a href="exec:numdres = 15 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 16 and dress[16] = 1 or odetdress = 0 and dress[16] = 1:'Платье 16(Оставшаяся прочность <<dressH[16]>>, Размер бедер <<dressB[16]>>) <a href="exec:numdres = 16 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 17 and dress[17] = 1 or odetdress = 0 and dress[17] = 1:'Платье 17(Оставшаяся прочность <<dressH[17]>>, Размер бедер <<dressB[17]>>) <a href="exec:numdres = 17 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 18 and dress[18] = 1 or odetdress = 0 and dress[18] = 1:'Платье 18(Оставшаяся прочность <<dressH[18]>>, Размер бедер <<dressB[18]>>) <a href="exec:numdres = 18 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 19 and dress[19] = 1 or odetdress = 0 and dress[19] = 1:'Платье 19(Оставшаяся прочность <<dressH[19]>>, Размер бедер <<dressB[19]>>) <a href="exec:numdres = 19 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 20 and dress[20] = 1 or odetdress = 0 and dress[20] = 1:'Платье 20(Оставшаяся прочность <<dressH[20]>>, Размер бедер <<dressB[20]>>) <a href="exec:numdres = 20 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 21 and dress[21] = 1 or odetdress = 0 and dress[21] = 1:'Платье 21(Оставшаяся прочность <<dressH[21]>>, Размер бедер <<dressB[21]>>) <a href="exec:numdres = 21 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 22 and dress[22] = 1 or odetdress = 0 and dress[22] = 1:'Платье 22(Оставшаяся прочность <<dressH[22]>>, Размер бедер <<dressB[22]>>) <a href="exec:numdres = 22 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 23 and dress[23] = 1 or odetdress = 0 and dress[23] = 1:'Платье 23(Оставшаяся прочность <<dressH[23]>>, Размер бедер <<dressB[23]>>) <a href="exec:numdres = 23 & GT ''portnoi1'',''dress''">ушить</a>'
	if odetdress = 1 and numdress ! 24 and dress[24] = 1 or odetdress = 0 and dress[24] = 1:'Платье 24(Оставшаяся прочность <<dressH[24]>>, Размер бедер <<dressB[24]>>) <a href="exec:numdres = 24 & GT ''portnoi1'',''dress''">ушить</a>'

	if odetprofi = 1 and numdress ! 1 and profi[1] = 1 or odetprofi = 0 and profi[1] = 1:'Офисная одежда 1(Оставшаяся прочность <<profiH[1]>>, Размер бедер <<profiB[1]>>) <a href="exec:numdres = 1 & GT ''portnoi1'',''profi''">ушить</a>'
	if odetprofi = 1 and numdress ! 2 and profi[2] = 1 or odetprofi = 0 and profi[2] = 1:'Офисная одежда 2(Оставшаяся прочность <<profiH[2]>>, Размер бедер <<profiB[2]>>) <a href="exec:numdres = 2 & GT ''portnoi1'',''profi''">ушить</a>'

	if odetpants = 1 and numdress ! 1 and pants[1] = 1 or odetpants = 0 and pants[1] = 1:'Черные обтягивающие леггинсы с черным топиком (Оставшаяся прочность <<pantsH[1]>>, Размер бедер <<pantsB[1]>>) <a href="exec:numdres = 1 & GT ''portnoi1'',''pants''">ушить</a>'
	if odetpants = 1 and numdress ! 2 and pants[2] = 1 or odetpants = 0 and pants[2] = 1:'Черные обтягивающие леггинсы с красной блузкой (Оставшаяся прочность <<pantsH[2]>>, Размер бедер <<pantsB[2]>>) <a href="exec:numdres = 2 & GT ''portnoi1'',''pants''">ушить</a>'
	if odetpants = 1 and numdress ! 3 and pants[3] = 1 or odetpants = 0 and pants[3] = 1:'Фиолетовые обтягивающие леггинсы с черным топиком (Оставшаяся прочность <<pantsH[3]>>, Размер бедер <<pantsB[3]>>) <a href="exec:numdres = 3 & GT ''portnoi1'',''pants''">ушить</a>'
	if odetpants = 1 and numdress ! 4 and pants[4] = 1 or odetpants = 0 and pants[4] = 1:'Черные обтягивающие леггинсы с черным коротким топиком (Оставшаяся прочность <<pantsH[4]>>, Размер бедер <<pantsB[4]>>) <a href="exec:numdres = 4 & GT ''portnoi1'',''pants''">ушить</a>'
	if odetpants = 1 and numdress ! 5 and pants[5] = 1 or odetpants = 0 and pants[5] = 1:'Белые обтягивающие джинсы с черным топиком (Оставшаяся прочность <<pantsH[5]>>, Размер бедер <<pantsB[5]>>) <a href="exec:numdres = 5 & GT ''portnoi1'',''pants''">ушить</a>'

	if odetlatex = 1 and numdress ! 1 and latex[1] = 1 or odetlatex = 0 and latex[1] = 1:'Черный комбинезон из латекса (Оставшаяся прочность <<latexH[1]>>, Размер бедер <<latexB[1]>>) <a href="exec:numdres = 1 & GT ''portnoi1'',''latex''">ушить</a>'
	if odetlatex = 1 and numdress ! 2 and latex[2] = 1 or odetlatex = 0 and latex[2] = 1:'Фиолетовое платье из латекса (Оставшаяся прочность <<latexH[2]>>, Размер бедер <<latexB[2]>>) <a href="exec:numdres = 2 & GT ''portnoi1'',''latex''">ушить</a>'

	if odethooker = 1 and numdress ! 1 and hooker[1] = 1 or odethooker = 0 and hooker[1] = 1:'Наряд проститутки №1 (Оставшаяся прочность <<hookerH[1]>>, Размер бедер <<hookerB[1]>>) <a href="exec:numdres = 1 & GT ''portnoi1'',''hooker''">ушить</a>'
	if odethooker = 1 and numdress ! 2 and hooker[2] = 1 or odethooker = 0 and hooker[2] = 1:'Наряд проститутки №2 (Оставшаяся прочность <<hookerH[2]>>, Размер бедер <<hookerB[2]>>) <a href="exec:numdres = 2 & GT ''portnoi1'',''hooker''">ушить</a>'
	if odethooker = 1 and numdress ! 3 and hooker[3] = 1 or odethooker = 0 and hooker[3] = 1:'Наряд проститутки №3 (Оставшаяся прочность <<hookerH[3]>>, Размер бедер <<hookerB[3]>>) <a href="exec:numdres = 3 & GT ''portnoi1'',''hooker''">ушить</a>'
	if odethooker = 1 and numdress ! 4 and hooker[4] = 1 or odethooker = 0 and hooker[4] = 1:'Наряд проститутки №4 (Оставшаяся прочность <<hookerH[4]>>, Размер бедер <<hookerB[4]>>) <a href="exec:numdres = 4 & GT ''portnoi1'',''hooker''">ушить</a>'
	if odethooker = 1 and numdress ! 5 and hooker[5] = 1 or odethooker = 0 and hooker[5] = 1:'Наряд проститутки №5 (Оставшаяся прочность <<hookerH[5]>>, Размер бедер <<hookerB[5]>>) <a href="exec:numdres = 5 & GT ''portnoi1'',''hooker''">ушить</a>'

	if odetkis = 1 and numdress ! 1 and odekis[1] = 1 or odetkis = 0 and odekis[1] = 1:'Молодёжный наряд №1 (Оставшаяся прочность <<odekisH[1]>>, Размер бедер <<odekisB[1]>>) <a href="exec:numdres = 1 & GT ''portnoi1'',''odekis''">ушить</a>'
	if odetkis = 1 and numdress ! 2 and odekis[2] = 1 or odetkis = 0 and odekis[2] = 1:'Молодёжный наряд №2 (Оставшаяся прочность <<odekisH[2]>>, Размер бедер <<odekisB[2]>>) <a href="exec:numdres = 2 & GT ''portnoi1'',''odekis''">ушить</a>'
	if odetkis = 1 and numdress ! 3 and odekis[3] = 1 or odetkis = 0 and odekis[3] = 1:'Молодёжный наряд №3 (Оставшаяся прочность <<odekisH[3]>>, Размер бедер <<odekisB[3]>>) <a href="exec:numdres = 3 & GT ''portnoi1'',''odekis''">ушить</a>'
	if odetkis = 1 and numdress ! 4 and odekis[4] = 1 or odetkis = 0 and odekis[4] = 1:'Молодёжный наряд №4 (Оставшаяся прочность <<odekisH[4]>>, Размер бедер <<odekisB[4]>>) <a href="exec:numdres = 4 & GT ''portnoi1'',''odekis''">ушить</a>'
	if odetkis = 1 and numdress ! 5 and odekis[5] = 1 or odetkis = 0 and odekis[5] = 1:'Молодёжный наряд №5 (Оставшаяся прочность <<odekisH[5]>>, Размер бедер <<odekisB[5]>>) <a href="exec:numdres = 5 & GT ''portnoi1'',''odekis''">ушить</a>'
	if odetkis = 1 and numdress ! 6 and odekis[6] = 1 or odetkis = 0 and odekis[6] = 1:'Молодёжный наряд №6 (Оставшаяся прочность <<odekisH[6]>>, Размер бедер <<odekisB[6]>>) <a href="exec:numdres = 6 & GT ''portnoi1'',''odekis''">ушить</a>'
	if odetkis = 1 and numdress ! 7 and odekis[7] = 1 or odetkis = 0 and odekis[7] = 1:'Молодёжный наряд №7 (Оставшаяся прочность <<odekisH[7]>>, Размер бедер <<odekisB[7]>>) <a href="exec:numdres = 7 & GT ''portnoi1'',''odekis''">ушить</a>'
	if odetkis = 1 and numdress ! 8 and odekis[8] = 1 or odetkis = 0 and odekis[8] = 1:'Молодёжный наряд №8 (Оставшаяся прочность <<odekisH[8]>>, Размер бедер <<odekisB[8]>>) <a href="exec:numdres = 8 & GT ''portnoi1'',''odekis''">ушить</a>'
	if odetkis = 1 and numdress ! 9 and odekis[9] = 1 or odetkis = 0 and odekis[9] = 1:'Молодёжный наряд №9 (Оставшаяся прочность <<odekisH[9]>>, Размер бедер <<odekisB[9]>>) <a href="exec:numdres = 9 & GT ''portnoi1'',''odekis''">ушить</a>'
	if odetkis = 1 and numdress ! 10 and odekis[10] = 1 or odetkis = 0 and odekis[10] = 1:'Молодёжный наряд №10 (Оставшаяся прочность <<odekisH[10]>>, Размер бедер <<odekisB[10]>>) <a href="exec:numdres = 10 & GT ''portnoi1'',''odekis''">ушить</a>'

	if odetnewclo = 1 and numdress ! 1 and newclo[1] = 1 or odetnewclo = 0 and newclo[1] = 1:'Одежда из Модницы №1 (Оставшаяся прочность <<newcloH[1]>>, Размер бедер <<newcloB[1]>>) <a href="exec:numdres = 1 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 2 and newclo[2] = 1 or odetnewclo = 0 and newclo[2] = 1:'Одежда из Модницы №2 (Оставшаяся прочность <<newcloH[2]>>, Размер бедер <<newcloB[2]>>) <a href="exec:numdres = 2 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 3 and newclo[3] = 1 or odetnewclo = 0 and newclo[3] = 1:'Одежда из Модницы №3 (Оставшаяся прочность <<newcloH[3]>>, Размер бедер <<newcloB[3]>>) <a href="exec:numdres = 3 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 4 and newclo[4] = 1 or odetnewclo = 0 and newclo[4] = 1:'Одежда из Модницы №4 (Оставшаяся прочность <<newcloH[4]>>, Размер бедер <<newcloB[4]>>) <a href="exec:numdres = 4 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 5 and newclo[5] = 1 or odetnewclo = 0 and newclo[5] = 1:'Одежда из Модницы №5 (Оставшаяся прочность <<newcloH[5]>>, Размер бедер <<newcloB[5]>>) <a href="exec:numdres = 5 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 6 and newclo[6] = 1 or odetnewclo = 0 and newclo[6] = 1:'Одежда из Модницы №6 (Оставшаяся прочность <<newcloH[6]>>, Размер бедер <<newcloB[6]>>) <a href="exec:numdres = 6 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 7 and newclo[7] = 1 or odetnewclo = 0 and newclo[7] = 1:'Одежда из Модницы №7 (Оставшаяся прочность <<newcloH[7]>>, Размер бедер <<newcloB[7]>>) <a href="exec:numdres = 7 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 8 and newclo[8] = 1 or odetnewclo = 0 and newclo[8] = 1:'Одежда из Модницы №8 (Оставшаяся прочность <<newcloH[8]>>, Размер бедер <<newcloB[8]>>) <a href="exec:numdres = 8 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 9 and newclo[9] = 1 or odetnewclo = 0 and newclo[9] = 1:'Одежда из Модницы №9 (Оставшаяся прочность <<newcloH[9]>>, Размер бедер <<newcloB[9]>>) <a href="exec:numdres = 9 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 10 and newclo[10] = 1 or odetnewclo = 0 and newclo[10] = 1:'Одежда из Модницы №10 (Оставшаяся прочность <<newcloH[10]>>, Размер бедер <<newcloB[10]>>) <a href="exec:numdres = 10 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 11 and newclo[11] = 1 or odetnewclo = 0 and newclo[11] = 1:'Одежда из Модницы №11 (Оставшаяся прочность <<newcloH[11]>>, Размер бедер <<newcloB[11]>>) <a href="exec:numdres = 11 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 12 and newclo[12] = 1 or odetnewclo = 0 and newclo[12] = 1:'Одежда из Модницы №12 (Оставшаяся прочность <<newcloH[12]>>, Размер бедер <<newcloB[12]>>) <a href="exec:numdres = 12 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 13 and newclo[13] = 1 or odetnewclo = 0 and newclo[13] = 1:'Одежда из Модницы №13 (Оставшаяся прочность <<newcloH[13]>>, Размер бедер <<newcloB[13]>>) <a href="exec:numdres = 13 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 14 and newclo[14] = 1 or odetnewclo = 0 and newclo[14] = 1:'Одежда из Модницы №14 (Оставшаяся прочность <<newcloH[14]>>, Размер бедер <<newcloB[14]>>) <a href="exec:numdres = 14 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 15 and newclo[15] = 1 or odetnewclo = 0 and newclo[15] = 1:'Одежда из Модницы №15 (Оставшаяся прочность <<newcloH[15]>>, Размер бедер <<newcloB[15]>>) <a href="exec:numdres = 15 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 16 and newclo[16] = 1 or odetnewclo = 0 and newclo[16] = 1:'Одежда из Модницы №16 (Оставшаяся прочность <<newcloH[16]>>, Размер бедер <<newcloB[16]>>) <a href="exec:numdres = 16 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 17 and newclo[17] = 1 or odetnewclo = 0 and newclo[17] = 1:'Одежда из Модницы №17 (Оставшаяся прочность <<newcloH[17]>>, Размер бедер <<newcloB[17]>>) <a href="exec:numdres = 17 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 18 and newclo[18] = 1 or odetnewclo = 0 and newclo[18] = 1:'Одежда из Модницы №18 (Оставшаяся прочность <<newcloH[18]>>, Размер бедер <<newcloB[18]>>) <a href="exec:numdres = 18 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 19 and newclo[19] = 1 or odetnewclo = 0 and newclo[19] = 1:'Одежда из Модницы №19 (Оставшаяся прочность <<newcloH[19]>>, Размер бедер <<newcloB[19]>>) <a href="exec:numdres = 19 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 20 and newclo[20] = 1 or odetnewclo = 0 and newclo[20] = 1:'Одежда из Модницы №20 (Оставшаяся прочность <<newcloH[20]>>, Размер бедер <<newcloB[20]>>) <a href="exec:numdres = 20 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 21 and newclo[21] = 1 or odetnewclo = 0 and newclo[21] = 1:'Одежда из Модницы №21 (Оставшаяся прочность <<newcloH[21]>>, Размер бедер <<newcloB[21]>>) <a href="exec:numdres = 21 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 22 and newclo[22] = 1 or odetnewclo = 0 and newclo[22] = 1:'Одежда из Модницы №22 (Оставшаяся прочность <<newcloH[22]>>, Размер бедер <<newcloB[22]>>) <a href="exec:numdres = 22 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 23 and newclo[23] = 1 or odetnewclo = 0 and newclo[23] = 1:'Одежда из Модницы №23 (Оставшаяся прочность <<newcloH[23]>>, Размер бедер <<newcloB[23]>>) <a href="exec:numdres = 23 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 24 and newclo[24] = 1 or odetnewclo = 0 and newclo[24] = 1:'Одежда из Модницы №24 (Оставшаяся прочность <<newcloH[24]>>, Размер бедер <<newcloB[24]>>) <a href="exec:numdres = 24 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 25 and newclo[25] = 1 or odetnewclo = 0 and newclo[25] = 1:'Одежда из Модницы №25 (Оставшаяся прочность <<newcloH[25]>>, Размер бедер <<newcloB[25]>>) <a href="exec:numdres = 25 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 26 and newclo[26] = 1 or odetnewclo = 0 and newclo[26] = 1:'Одежда из Модницы №26 (Оставшаяся прочность <<newcloH[26]>>, Размер бедер <<newcloB[26]>>) <a href="exec:numdres = 26 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 27 and newclo[27] = 1 or odetnewclo = 0 and newclo[27] = 1:'Одежда из Модницы №27 (Оставшаяся прочность <<newcloH[27]>>, Размер бедер <<newcloB[27]>>) <a href="exec:numdres = 27 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 28 and newclo[28] = 1 or odetnewclo = 0 and newclo[28] = 1:'Одежда из Модницы №28 (Оставшаяся прочность <<newcloH[28]>>, Размер бедер <<newcloB[28]>>) <a href="exec:numdres = 28 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 29 and newclo[29] = 1 or odetnewclo = 0 and newclo[29] = 1:'Одежда из Модницы №29 (Оставшаяся прочность <<newcloH[29]>>, Размер бедер <<newcloB[29]>>) <a href="exec:numdres = 29 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 30 and newclo[30] = 1 or odetnewclo = 0 and newclo[30] = 1:'Одежда из Модницы №30 (Оставшаяся прочность <<newcloH[30]>>, Размер бедер <<newcloB[30]>>) <a href="exec:numdres = 30 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 31 and newclo[31] = 1 or odetnewclo = 0 and newclo[31] = 1:'Одежда из Модницы №31 (Оставшаяся прочность <<newcloH[31]>>, Размер бедер <<newcloB[31]>>) <a href="exec:numdres = 31 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 32 and newclo[32] = 1 or odetnewclo = 0 and newclo[32] = 1:'Одежда из Модницы №32 (Оставшаяся прочность <<newcloH[32]>>, Размер бедер <<newcloB[32]>>) <a href="exec:numdres = 32 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 33 and newclo[33] = 1 or odetnewclo = 0 and newclo[33] = 1:'Одежда из Модницы №33 (Оставшаяся прочность <<newcloH[33]>>, Размер бедер <<newcloB[33]>>) <a href="exec:numdres = 33 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 34 and newclo[34] = 1 or odetnewclo = 0 and newclo[34] = 1:'Одежда из Модницы №34 (Оставшаяся прочность <<newcloH[34]>>, Размер бедер <<newcloB[34]>>) <a href="exec:numdres = 34 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 35 and newclo[35] = 1 or odetnewclo = 0 and newclo[35] = 1:'Одежда из Модницы №35 (Оставшаяся прочность <<newcloH[35]>>, Размер бедер <<newcloB[35]>>) <a href="exec:numdres = 35 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 36 and newclo[36] = 1 or odetnewclo = 0 and newclo[36] = 1:'Одежда из Модницы №36 (Оставшаяся прочность <<newcloH[36]>>, Размер бедер <<newcloB[36]>>) <a href="exec:numdres = 36 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 37 and newclo[37] = 1 or odetnewclo = 0 and newclo[37] = 1:'Одежда из Модницы №37 (Оставшаяся прочность <<newcloH[37]>>, Размер бедер <<newcloB[37]>>) <a href="exec:numdres = 37 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 38 and newclo[38] = 1 or odetnewclo = 0 and newclo[38] = 1:'Одежда из Модницы №38 (Оставшаяся прочность <<newcloH[38]>>, Размер бедер <<newcloB[38]>>) <a href="exec:numdres = 38 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 39 and newclo[39] = 1 or odetnewclo = 0 and newclo[39] = 1:'Одежда из Модницы №39 (Оставшаяся прочность <<newcloH[39]>>, Размер бедер <<newcloB[39]>>) <a href="exec:numdres = 39 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 40 and newclo[40] = 1 or odetnewclo = 0 and newclo[40] = 1:'Одежда из Модницы №40 (Оставшаяся прочность <<newcloH[40]>>, Размер бедер <<newcloB[40]>>) <a href="exec:numdres = 40 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 41 and newclo[41] = 1 or odetnewclo = 0 and newclo[41] = 1:'Одежда из Модницы №41 (Оставшаяся прочность <<newcloH[41]>>, Размер бедер <<newcloB[41]>>) <a href="exec:numdres = 41 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 42 and newclo[42] = 1 or odetnewclo = 0 and newclo[42] = 1:'Одежда из Модницы №42 (Оставшаяся прочность <<newcloH[42]>>, Размер бедер <<newcloB[42]>>) <a href="exec:numdres = 42 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 43 and newclo[43] = 1 or odetnewclo = 0 and newclo[43] = 1:'Одежда из Модницы №43 (Оставшаяся прочность <<newcloH[43]>>, Размер бедер <<newcloB[43]>>) <a href="exec:numdres = 43 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 44 and newclo[44] = 1 or odetnewclo = 0 and newclo[44] = 1:'Одежда из Модницы №44 (Оставшаяся прочность <<newcloH[44]>>, Размер бедер <<newcloB[44]>>) <a href="exec:numdres = 44 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 45 and newclo[45] = 1 or odetnewclo = 0 and newclo[45] = 1:'Одежда из Модницы №45 (Оставшаяся прочность <<newcloH[45]>>, Размер бедер <<newcloB[45]>>) <a href="exec:numdres = 45 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 46 and newclo[46] = 1 or odetnewclo = 0 and newclo[46] = 1:'Одежда из Модницы №46 (Оставшаяся прочность <<newcloH[46]>>, Размер бедер <<newcloB[46]>>) <a href="exec:numdres = 46 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 47 and newclo[47] = 1 or odetnewclo = 0 and newclo[47] = 1:'Одежда из Модницы №47 (Оставшаяся прочность <<newcloH[47]>>, Размер бедер <<newcloB[47]>>) <a href="exec:numdres = 47 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 48 and newclo[48] = 1 or odetnewclo = 0 and newclo[48] = 1:'Одежда из Модницы №48 (Оставшаяся прочность <<newcloH[48]>>, Размер бедер <<newcloB[48]>>) <a href="exec:numdres = 48 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 49 and newclo[49] = 1 or odetnewclo = 0 and newclo[49] = 1:'Одежда из Модницы №49 (Оставшаяся прочность <<newcloH[49]>>, Размер бедер <<newcloB[49]>>) <a href="exec:numdres = 49 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 50 and newclo[50] = 1 or odetnewclo = 0 and newclo[50] = 1:'Одежда из Модницы №50 (Оставшаяся прочность <<newcloH[50]>>, Размер бедер <<newcloB[50]>>) <a href="exec:numdres = 50 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 51 and newclo[51] = 1 or odetnewclo = 0 and newclo[51] = 1:'Одежда из Модницы №51 (Оставшаяся прочность <<newcloH[51]>>, Размер бедер <<newcloB[51]>>) <a href="exec:numdres = 51 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 52 and newclo[52] = 1 or odetnewclo = 0 and newclo[52] = 1:'Одежда из Модницы №52 (Оставшаяся прочность <<newcloH[52]>>, Размер бедер <<newcloB[52]>>) <a href="exec:numdres = 52 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 53 and newclo[53] = 1 or odetnewclo = 0 and newclo[53] = 1:'Одежда из Модницы №53 (Оставшаяся прочность <<newcloH[53]>>, Размер бедер <<newcloB[53]>>) <a href="exec:numdres = 53 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 54 and newclo[54] = 1 or odetnewclo = 0 and newclo[54] = 1:'Одежда из Модницы №54 (Оставшаяся прочность <<newcloH[54]>>, Размер бедер <<newcloB[54]>>) <a href="exec:numdres = 54 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 55 and newclo[55] = 1 or odetnewclo = 0 and newclo[55] = 1:'Одежда из Модницы №55 (Оставшаяся прочность <<newcloH[55]>>, Размер бедер <<newcloB[55]>>) <a href="exec:numdres = 55 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 56 and newclo[56] = 1 or odetnewclo = 0 and newclo[56] = 1:'Одежда из Модницы №56 (Оставшаяся прочность <<newcloH[56]>>, Размер бедер <<newcloB[56]>>) <a href="exec:numdres = 56 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 57 and newclo[57] = 1 or odetnewclo = 0 and newclo[57] = 1:'Одежда из Модницы №57 (Оставшаяся прочность <<newcloH[57]>>, Размер бедер <<newcloB[57]>>) <a href="exec:numdres = 57 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 58 and newclo[58] = 1 or odetnewclo = 0 and newclo[58] = 1:'Одежда из Модницы №58 (Оставшаяся прочность <<newcloH[58]>>, Размер бедер <<newcloB[58]>>) <a href="exec:numdres = 58 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 59 and newclo[59] = 1 or odetnewclo = 0 and newclo[59] = 1:'Одежда из Модницы №59 (Оставшаяся прочность <<newcloH[59]>>, Размер бедер <<newcloB[59]>>) <a href="exec:numdres = 59 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 60 and newclo[60] = 1 or odetnewclo = 0 and newclo[60] = 1:'Одежда из Модницы №60 (Оставшаяся прочность <<newcloH[60]>>, Размер бедер <<newcloB[60]>>) <a href="exec:numdres = 60 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 61 and newclo[61] = 1 or odetnewclo = 0 and newclo[61] = 1:'Одежда из Модницы №61 (Оставшаяся прочность <<newcloH[61]>>, Размер бедер <<newcloB[61]>>) <a href="exec:numdres = 61 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 62 and newclo[62] = 1 or odetnewclo = 0 and newclo[62] = 1:'Одежда из Модницы №62 (Оставшаяся прочность <<newcloH[62]>>, Размер бедер <<newcloB[62]>>) <a href="exec:numdres = 62 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 63 and newclo[63] = 1 or odetnewclo = 0 and newclo[63] = 1:'Одежда из Модницы №63 (Оставшаяся прочность <<newcloH[63]>>, Размер бедер <<newcloB[63]>>) <a href="exec:numdres = 63 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 64 and newclo[64] = 1 or odetnewclo = 0 and newclo[64] = 1:'Одежда из Модницы №64 (Оставшаяся прочность <<newcloH[64]>>, Размер бедер <<newcloB[64]>>) <a href="exec:numdres = 64 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 65 and newclo[65] = 1 or odetnewclo = 0 and newclo[65] = 1:'Одежда из Модницы №65 (Оставшаяся прочность <<newcloH[65]>>, Размер бедер <<newcloB[65]>>) <a href="exec:numdres = 65 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 66 and newclo[66] = 1 or odetnewclo = 0 and newclo[66] = 1:'Одежда из Модницы №66 (Оставшаяся прочность <<newcloH[66]>>, Размер бедер <<newcloB[66]>>) <a href="exec:numdres = 66 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 67 and newclo[67] = 1 or odetnewclo = 0 and newclo[67] = 1:'Одежда из Модницы №67 (Оставшаяся прочность <<newcloH[67]>>, Размер бедер <<newcloB[67]>>) <a href="exec:numdres = 67 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 68 and newclo[68] = 1 or odetnewclo = 0 and newclo[68] = 1:'Одежда из Модницы №68 (Оставшаяся прочность <<newcloH[68]>>, Размер бедер <<newcloB[68]>>) <a href="exec:numdres = 68 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 69 and newclo[69] = 1 or odetnewclo = 0 and newclo[69] = 1:'Одежда из Модницы №69 (Оставшаяся прочность <<newcloH[69]>>, Размер бедер <<newcloB[69]>>) <a href="exec:numdres = 69 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 70 and newclo[70] = 1 or odetnewclo = 0 and newclo[70] = 1:'Одежда из Модницы №70 (Оставшаяся прочность <<newcloH[70]>>, Размер бедер <<newcloB[70]>>) <a href="exec:numdres = 70 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 71 and newclo[71] = 1 or odetnewclo = 0 and newclo[71] = 1:'Одежда из Модницы №71 (Оставшаяся прочность <<newcloH[71]>>, Размер бедер <<newcloB[71]>>) <a href="exec:numdres = 71 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 72 and newclo[72] = 1 or odetnewclo = 0 and newclo[72] = 1:'Одежда из Модницы №72 (Оставшаяся прочность <<newcloH[72]>>, Размер бедер <<newcloB[72]>>) <a href="exec:numdres = 72 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 73 and newclo[73] = 1 or odetnewclo = 0 and newclo[73] = 1:'Одежда из Модницы №73 (Оставшаяся прочность <<newcloH[73]>>, Размер бедер <<newcloB[73]>>) <a href="exec:numdres = 73 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 74 and newclo[74] = 1 or odetnewclo = 0 and newclo[74] = 1:'Одежда из Модницы №74 (Оставшаяся прочность <<newcloH[74]>>, Размер бедер <<newcloB[74]>>) <a href="exec:numdres = 74 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 75 and newclo[75] = 1 or odetnewclo = 0 and newclo[75] = 1:'Одежда из Модницы №75 (Оставшаяся прочность <<newcloH[75]>>, Размер бедер <<newcloB[75]>>) <a href="exec:numdres = 75 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 76 and newclo[76] = 1 or odetnewclo = 0 and newclo[76] = 1:'Одежда из Модницы №76 (Оставшаяся прочность <<newcloH[76]>>, Размер бедер <<newcloB[76]>>) <a href="exec:numdres = 76 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 77 and newclo[77] = 1 or odetnewclo = 0 and newclo[77] = 1:'Одежда из Модницы №77 (Оставшаяся прочность <<newcloH[77]>>, Размер бедер <<newcloB[77]>>) <a href="exec:numdres = 77 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 78 and newclo[78] = 1 or odetnewclo = 0 and newclo[78] = 1:'Одежда из Модницы №78 (Оставшаяся прочность <<newcloH[78]>>, Размер бедер <<newcloB[78]>>) <a href="exec:numdres = 78 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 79 and newclo[79] = 1 or odetnewclo = 0 and newclo[79] = 1:'Одежда из Модницы №79 (Оставшаяся прочность <<newcloH[79]>>, Размер бедер <<newcloB[79]>>) <a href="exec:numdres = 79 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 80 and newclo[80] = 1 or odetnewclo = 0 and newclo[80] = 1:'Одежда из Модницы №80 (Оставшаяся прочность <<newcloH[80]>>, Размер бедер <<newcloB[80]>>) <a href="exec:numdres = 80 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 81 and newclo[81] = 1 or odetnewclo = 0 and newclo[81] = 1:'Одежда из Модницы №81 (Оставшаяся прочность <<newcloH[81]>>, Размер бедер <<newcloB[81]>>) <a href="exec:numdres = 81 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 82 and newclo[82] = 1 or odetnewclo = 0 and newclo[82] = 1:'Одежда из Модницы №82 (Оставшаяся прочность <<newcloH[82]>>, Размер бедер <<newcloB[82]>>) <a href="exec:numdres = 82 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 83 and newclo[83] = 1 or odetnewclo = 0 and newclo[83] = 1:'Одежда из Модницы №83 (Оставшаяся прочность <<newcloH[83]>>, Размер бедер <<newcloB[83]>>) <a href="exec:numdres = 83 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 84 and newclo[84] = 1 or odetnewclo = 0 and newclo[84] = 1:'Одежда из Модницы №84 (Оставшаяся прочность <<newcloH[84]>>, Размер бедер <<newcloB[84]>>) <a href="exec:numdres = 84 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 85 and newclo[85] = 1 or odetnewclo = 0 and newclo[85] = 1:'Одежда из Модницы №85 (Оставшаяся прочность <<newcloH[85]>>, Размер бедер <<newcloB[85]>>) <a href="exec:numdres = 85 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 86 and newclo[86] = 1 or odetnewclo = 0 and newclo[86] = 1:'Одежда из Модницы №86 (Оставшаяся прочность <<newcloH[86]>>, Размер бедер <<newcloB[86]>>) <a href="exec:numdres = 86 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 87 and newclo[87] = 1 or odetnewclo = 0 and newclo[87] = 1:'Одежда из Модницы №87 (Оставшаяся прочность <<newcloH[87]>>, Размер бедер <<newcloB[87]>>) <a href="exec:numdres = 87 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 88 and newclo[88] = 1 or odetnewclo = 0 and newclo[88] = 1:'Одежда из Модницы №88 (Оставшаяся прочность <<newcloH[88]>>, Размер бедер <<newcloB[88]>>) <a href="exec:numdres = 88 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 89 and newclo[89] = 1 or odetnewclo = 0 and newclo[89] = 1:'Одежда из Модницы №89 (Оставшаяся прочность <<newcloH[89]>>, Размер бедер <<newcloB[89]>>) <a href="exec:numdres = 89 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 90 and newclo[90] = 1 or odetnewclo = 0 and newclo[90] = 1:'Одежда из Модницы №90 (Оставшаяся прочность <<newcloH[90]>>, Размер бедер <<newcloB[90]>>) <a href="exec:numdres = 90 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 91 and newclo[91] = 1 or odetnewclo = 0 and newclo[91] = 1:'Одежда из Модницы №91 (Оставшаяся прочность <<newcloH[91]>>, Размер бедер <<newcloB[91]>>) <a href="exec:numdres = 91 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 92 and newclo[92] = 1 or odetnewclo = 0 and newclo[92] = 1:'Одежда из Модницы №92 (Оставшаяся прочность <<newcloH[92]>>, Размер бедер <<newcloB[92]>>) <a href="exec:numdres = 92 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 93 and newclo[93] = 1 or odetnewclo = 0 and newclo[93] = 1:'Одежда из Модницы №93 (Оставшаяся прочность <<newcloH[93]>>, Размер бедер <<newcloB[93]>>) <a href="exec:numdres = 93 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 94 and newclo[94] = 1 or odetnewclo = 0 and newclo[94] = 1:'Одежда из Модницы №94 (Оставшаяся прочность <<newcloH[94]>>, Размер бедер <<newcloB[94]>>) <a href="exec:numdres = 94 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 95 and newclo[95] = 1 or odetnewclo = 0 and newclo[95] = 1:'Одежда из Модницы №95 (Оставшаяся прочность <<newcloH[95]>>, Размер бедер <<newcloB[95]>>) <a href="exec:numdres = 95 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 96 and newclo[96] = 1 or odetnewclo = 0 and newclo[96] = 1:'Одежда из Модницы №96 (Оставшаяся прочность <<newcloH[96]>>, Размер бедер <<newcloB[96]>>) <a href="exec:numdres = 96 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 97 and newclo[97] = 1 or odetnewclo = 0 and newclo[97] = 1:'Одежда из Модницы №97 (Оставшаяся прочность <<newcloH[97]>>, Размер бедер <<newcloB[97]>>) <a href="exec:numdres = 97 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 98 and newclo[98] = 1 or odetnewclo = 0 and newclo[98] = 1:'Одежда из Модницы №98 (Оставшаяся прочность <<newcloH[98]>>, Размер бедер <<newcloB[98]>>) <a href="exec:numdres = 98 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 99 and newclo[99] = 1 or odetnewclo = 0 and newclo[99] = 1:'Одежда из Модницы №99 (Оставшаяся прочность <<newcloH[99]>>, Размер бедер <<newcloB[99]>>) <a href="exec:numdres = 99 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 100 and newclo[100] = 1 or odetnewclo = 0 and newclo[100] = 1:'Одежда из Модницы №100 (Оставшаяся прочность <<newcloH[100]>>, Размер бедер <<newcloB[100]>>) <a href="exec:numdres = 100 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 101 and newclo[101] = 1 or odetnewclo = 0 and newclo[101] = 1:'Одежда из Модницы №101 (Оставшаяся прочность <<newcloH[101]>>, Размер бедер <<newcloB[101]>>) <a href="exec:numdres = 101 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 102 and newclo[102] = 1 or odetnewclo = 0 and newclo[102] = 1:'Одежда из Модницы №102 (Оставшаяся прочность <<newcloH[102]>>, Размер бедер <<newcloB[102]>>) <a href="exec:numdres = 102 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 103 and newclo[103] = 1 or odetnewclo = 0 and newclo[103] = 1:'Одежда из Модницы №103 (Оставшаяся прочность <<newcloH[103]>>, Размер бедер <<newcloB[103]>>) <a href="exec:numdres = 103 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 104 and newclo[104] = 1 or odetnewclo = 0 and newclo[104] = 1:'Одежда из Модницы №104 (Оставшаяся прочность <<newcloH[104]>>, Размер бедер <<newcloB[104]>>) <a href="exec:numdres = 104 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 105 and newclo[105] = 1 or odetnewclo = 0 and newclo[105] = 1:'Одежда из Модницы №105 (Оставшаяся прочность <<newcloH[105]>>, Размер бедер <<newcloB[105]>>) <a href="exec:numdres = 105 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 106 and newclo[106] = 1 or odetnewclo = 0 and newclo[106] = 1:'Одежда из Модницы №106 (Оставшаяся прочность <<newcloH[106]>>, Размер бедер <<newcloB[106]>>) <a href="exec:numdres = 106 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 107 and newclo[107] = 1 or odetnewclo = 0 and newclo[107] = 1:'Одежда из Модницы №107 (Оставшаяся прочность <<newcloH[107]>>, Размер бедер <<newcloB[107]>>) <a href="exec:numdres = 107 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 108 and newclo[108] = 1 or odetnewclo = 0 and newclo[108] = 1:'Одежда из Модницы №108 (Оставшаяся прочность <<newcloH[108]>>, Размер бедер <<newcloB[108]>>) <a href="exec:numdres = 108 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 109 and newclo[109] = 1 or odetnewclo = 0 and newclo[109] = 1:'Одежда из Модницы №109 (Оставшаяся прочность <<newcloH[109]>>, Размер бедер <<newcloB[109]>>) <a href="exec:numdres = 109 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 110 and newclo[110] = 1 or odetnewclo = 0 and newclo[110] = 1:'Одежда из Модницы №110 (Оставшаяся прочность <<newcloH[110]>>, Размер бедер <<newcloB[110]>>) <a href="exec:numdres = 110 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 111 and newclo[111] = 1 or odetnewclo = 0 and newclo[111] = 1:'Одежда из Модницы №111 (Оставшаяся прочность <<newcloH[111]>>, Размер бедер <<newcloB[111]>>) <a href="exec:numdres = 111 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 112 and newclo[112] = 1 or odetnewclo = 0 and newclo[112] = 1:'Одежда из Модницы №112 (Оставшаяся прочность <<newcloH[112]>>, Размер бедер <<newcloB[112]>>) <a href="exec:numdres = 112 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 113 and newclo[113] = 1 or odetnewclo = 0 and newclo[113] = 1:'Одежда из Модницы №113 (Оставшаяся прочность <<newcloH[113]>>, Размер бедер <<newcloB[113]>>) <a href="exec:numdres = 113 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 114 and newclo[114] = 1 or odetnewclo = 0 and newclo[114] = 1:'Одежда из Модницы №114 (Оставшаяся прочность <<newcloH[114]>>, Размер бедер <<newcloB[114]>>) <a href="exec:numdres = 114 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 115 and newclo[115] = 1 or odetnewclo = 0 and newclo[115] = 1:'Одежда из Модницы №115 (Оставшаяся прочность <<newcloH[115]>>, Размер бедер <<newcloB[115]>>) <a href="exec:numdres = 115 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 116 and newclo[116] = 1 or odetnewclo = 0 and newclo[116] = 1:'Одежда из Модницы №116 (Оставшаяся прочность <<newcloH[116]>>, Размер бедер <<newcloB[116]>>) <a href="exec:numdres = 116 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 117 and newclo[117] = 1 or odetnewclo = 0 and newclo[117] = 1:'Одежда из Модницы №117 (Оставшаяся прочность <<newcloH[117]>>, Размер бедер <<newcloB[117]>>) <a href="exec:numdres = 117 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 118 and newclo[118] = 1 or odetnewclo = 0 and newclo[118] = 1:'Одежда из Модницы №118 (Оставшаяся прочность <<newcloH[118]>>, Размер бедер <<newcloB[118]>>) <a href="exec:numdres = 118 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 119 and newclo[119] = 1 or odetnewclo = 0 and newclo[119] = 1:'Одежда из Модницы №119 (Оставшаяся прочность <<newcloH[119]>>, Размер бедер <<newcloB[119]>>) <a href="exec:numdres = 119 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 120 and newclo[120] = 1 or odetnewclo = 0 and newclo[120] = 1:'Одежда из Модницы №120 (Оставшаяся прочность <<newcloH[120]>>, Размер бедер <<newcloB[120]>>) <a href="exec:numdres = 120 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 121 and newclo[121] = 1 or odetnewclo = 0 and newclo[121] = 1:'Одежда из Модницы №121 (Оставшаяся прочность <<newcloH[121]>>, Размер бедер <<newcloB[121]>>) <a href="exec:numdres = 121 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 122 and newclo[122] = 1 or odetnewclo = 0 and newclo[122] = 1:'Одежда из Модницы №122 (Оставшаяся прочность <<newcloH[122]>>, Размер бедер <<newcloB[122]>>) <a href="exec:numdres = 122 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 123 and newclo[123] = 1 or odetnewclo = 0 and newclo[123] = 1:'Одежда из Модницы №123 (Оставшаяся прочность <<newcloH[123]>>, Размер бедер <<newcloB[123]>>) <a href="exec:numdres = 123 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 124 and newclo[124] = 1 or odetnewclo = 0 and newclo[124] = 1:'Одежда из Модницы №124 (Оставшаяся прочность <<newcloH[124]>>, Размер бедер <<newcloB[124]>>) <a href="exec:numdres = 124 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 125 and newclo[125] = 1 or odetnewclo = 0 and newclo[125] = 1:'Одежда из Модницы №125 (Оставшаяся прочность <<newcloH[125]>>, Размер бедер <<newcloB[125]>>) <a href="exec:numdres = 125 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 126 and newclo[126] = 1 or odetnewclo = 0 and newclo[126] = 1:'Одежда из Модницы №126 (Оставшаяся прочность <<newcloH[126]>>, Размер бедер <<newcloB[126]>>) <a href="exec:numdres = 126 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 127 and newclo[127] = 1 or odetnewclo = 0 and newclo[127] = 1:'Одежда из Модницы №127 (Оставшаяся прочность <<newcloH[127]>>, Размер бедер <<newcloB[127]>>) <a href="exec:numdres = 127 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 128 and newclo[128] = 1 or odetnewclo = 0 and newclo[128] = 1:'Одежда из Модницы №128 (Оставшаяся прочность <<newcloH[128]>>, Размер бедер <<newcloB[128]>>) <a href="exec:numdres = 128 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 129 and newclo[129] = 1 or odetnewclo = 0 and newclo[129] = 1:'Одежда из Модницы №129 (Оставшаяся прочность <<newcloH[129]>>, Размер бедер <<newcloB[129]>>) <a href="exec:numdres = 129 & GT ''portnoi1'',''newclo''">ушить</a>'
	if odetnewclo = 1 and numdress ! 130 and newclo[130] = 1 or odetnewclo = 0 and newclo[130] = 1:'Одежда из Модницы №130 (Оставшаяся прочность <<newcloH[130]>>, Размер бедер <<newcloB[130]>>) <a href="exec:numdres = 130 & GT ''portnoi1'',''newclo''">ушить</a>'

	act 'Закончить':gt'clener','start'
end

if $ARGS[0] = 'jeans':
	cla

	'<center><img src="images/ode/jeans<<numdres>>.jpg"></center>'
	'(Оставшаяся прочность <<jeansH[numdres]>>, Размер бедер <<jeansB[numdres]>>)'

	act 'К списку':gt'portnoi1','start'

	if jeansB[numdres] ! bedra and money >= 500:
		'Можно ушить за 500 руб.'

		act 'Ушить':
			jeansB[numdres] = bedra
			money -= 500
			gt'portnoi1','start'
		end
	end
end

if $ARGS[0] = 'short':
	cla
	'<center><img src="images/ode/short<<numdres>>.jpg"></center>'
	'(Оставшаяся прочность <<shortH[numdres]>>, Размер бедер <<shortB[numdres]>>)'

	act 'К списку':gt'portnoi1','start'

	if shortB[numdres] ! bedra and money >= 500:
		'Можно ушить за 500 руб.'

		act 'Ушить':
			shortB[numdres] = bedra
			money -= 500
			gt'portnoi1','start'
		end
	end
end

if $ARGS[0] = 'skirt':
	cla
	'<center><img src="images/ode/skirt<<numdres>>.jpg"></center>'
	'(Оставшаяся прочность <<skirtH[numdres]>>, Размер бедер <<skirtB[numdres]>>)'

	act 'К списку':gt'portnoi1','start'

	if skirtB[numdres] ! bedra and money >= 500:
		'Можно ушить за 500 руб.'

		act 'Ушить':
			skirtB[numdres] = bedra
			money -= 500
			gt'portnoi1','start'
		end
	end
end

if $ARGS[0] = 'dress':
	cla
	'<center><img src="images/ode/dress<<numdres>>.jpg"></center>'
	'(Оставшаяся прочность <<dressH[numdres]>>, Размер бедер <<dressB[numdres]>>)'

	act 'К списку':gt'portnoi1','start'

	if dressB[numdres] ! bedra and money >= 500:
		'Можно ушить за 500 руб.'

		act 'Ушить':
			dressB[numdres] = bedra
			money -= 500
			gt'portnoi1','start'
		end
	end
end

if $ARGS[0] = 'profi':
	cla
	'<center><img src="images/ode/profi<<numdres>>.jpg"></center>'
	'(Оставшаяся прочность <<profiH[numdres]>>, Размер бедер <<profiB[numdres]>>)'

	act 'К списку':gt'portnoi1','start'

	if profiB[numdres] ! bedra and money >= 500:
		'Можно ушить за 500 руб.'

		act 'Ушить':
			profiB[numdres] = bedra
			money -= 500
			gt'portnoi1','start'
		end
	end
end

if $ARGS[0] = 'pants':
	cla
	'<center><img src="images/ode/pants<<numdres>>.jpg"></center>'
	'(Оставшаяся прочность <<pantsH[numdres]>>, Размер бедер <<pantsB[numdres]>>)'

	act 'К списку':gt'portnoi1','start'

	if pantsB[numdres] ! bedra and money >= 500:
		'Можно ушить за 500 руб.'

		act 'Ушить':
			pantsB[numdres] = bedra
			money -= 500
			gt'portnoi1','start'
		end
	end
end

if $ARGS[0] = 'latex':
	cla
	'<center><img src="images/ode/latex<<numdres>>.jpg"></center>'
	'(Оставшаяся прочность <<latexH[numdres]>>, Размер бедер <<latexB[numdres]>>)'

	act 'К списку':gt'portnoi1','start'

	if latexB[numdres] ! bedra and money >= 500:
		'Можно ушить за 500 руб.'

		act 'Ушить':
			latexB[numdres] = bedra
			money -= 500
			gt'portnoi1','start'
		end
	end
end

if $ARGS[0] = 'hooker':
	cla
	'<center><img src="images/ode/hooker<<numdres>>.jpg"></center>'
	'(Оставшаяся прочность <<hookerH[numdres]>>, Размер бедер <<hookerB[numdres]>>)'

	act 'К списку':gt'portnoi1','start'

	if hookerB[numdres] ! bedra and money >= 500:
		'Можно ушить за 500 руб.'

		act 'Ушить':
			hookerB[numdres] = bedra
			money -= 500
			gt'portnoi1','start'
		end
	end
end

if $ARGS[0] = 'odekis':
	cla
	'<center><img src="images/ode/k<<numdres>>.jpg"></center>'
	'(Оставшаяся прочность <<odekisH[numdres]>>, Размер бедер <<odekisB[numdres]>>)'

	act 'К списку':gt'portnoi1','start'

	if odekisB[numdres] ! bedra and money >= 500:
		'Можно ушить за 500 руб.'

		act 'Ушить':
			odekisB[numdres] = bedra
			money -= 500
			gt'portnoi1','start'
		end
	end
end

if $ARGS[0] = 'newclo':
	cla
	'<center><img src="images/ode/<<numdres>>.jpg"></center>'
	'(Оставшаяся прочность <<newcloH[numdres]>>, Размер бедер <<newcloB[numdres]>>)'

	act 'К списку':gt'portnoi1','start'

	if newcloB[numdres] ! bedra and money >= 500:
		'Можно ушить за 500 руб.'

		act 'Ушить':
			newcloB[numdres] = bedra
			money -= 500
			gt'portnoi1','start'
		end
	end
end
--- portnoi1 ---------------------------------

