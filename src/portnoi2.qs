# portnoi2
poshvalldrop = 0

o = 0
:jensmet
o += 1
if jeans[o] = 1 and jeansB[o] ! bedra:poshvalldrop += 1
if o ! 5:jump'jensmet'

o = 0
:shortmet
o += 1
if short[o] = 1 and shortB[o] ! bedra:poshvalldrop += 1
if o ! 5:jump'shortmet'

o = 0
:skirtmet
o += 1
if skirt[o] = 1 and skirtB[o] ! bedra:poshvalldrop += 1
if o ! 5:jump'skirtmet'

o = 0
:dressmet
o += 1
if dress[o] = 1 and dressB[o] ! bedra:poshvalldrop += 1
if o ! 24:jump'dressmet'

o = 0
:profimet
o += 1
if profi[o] = 1 and profiB[o] ! bedra:poshvalldrop += 1
if o ! 2:jump'profimet'

o = 0
:pantsmet
o += 1
if pants[o] = 1 and pantsB[o] ! bedra:poshvalldrop += 1
if o ! 5:jump'pantsmet'

o = 0
:latexmet
o += 1
if latex[o] = 1 and latexB[o] ! bedra:poshvalldrop += 1
if o ! 2:jump'latexmet'

o = 0
:hookermet
o += 1
if hooker[o] = 1 and hookerB[o] ! bedra:poshvalldrop += 1
if o ! 5:jump'hookermet'

o = 0
:odekismet
o += 1
if odekis[o] = 1 and odekisB[o] ! bedra:poshvalldrop += 1
if o ! 10:jump'odekismet'

o = 0
:newclomet
o += 1
if newclo[o] = 1 and newcloB[o] ! bedra:poshvalldrop += 1
if o ! 130:jump'newclomet'

if money < poshvalldrop*500:
	'У вас недостаточно денег, стоимость ушивки всей одежды <<poshvalldrop*500>> руб.'

	act 'Выйти':gt'clener','start'

	exit
elseif money >= poshvalldrop*500:
	money -= poshvalldrop*500

	o = 0
	:jensmet1
	o += 1
	if jeans[o] = 1 and jeansB[o] ! bedra:jeansB[o] = bedra
	if o ! 5:jump'jensmet1'

	o = 0
	:shortmet1
	o += 1
	if short[o] = 1 and shortB[o] ! bedra:shortB[o] = bedra
	if o ! 5:jump'shortmet1'

	o = 0
	:skirtmet1
	o += 1
	if skirt[o] = 1 and skirtB[o] ! bedra:skirtB[o] = bedra
	if o ! 5:jump'skirtmet1'

	o = 0
	:dressmet1
	o += 1
	if dress[o] = 1 and dressB[o] ! bedra:dressB[o] = bedra
	if o ! 24:jump'dressmet1'

	o = 0
	:profimet1
	o += 1
	if profi[o] = 1 and profiB[o] ! bedra:profiB[o] = bedra
	if o ! 2:jump'profimet1'

	o = 0
	:pantsmet1
	o += 1
	if pants[o] = 1 and pantsB[o] ! bedra:pantsB[o] = bedra
	if o ! 5:jump'pantsmet1'

	o = 0
	:latexmet1
	o += 1
	if latex[o] = 1 and latexB[o] ! bedra:latexB[o] = bedra
	if o ! 2:jump'latexmet1'

	o = 0
	:hookermet1
	o += 1
	if hooker[o] = 1 and hookerB[o] ! bedra:hookerB[o] = bedra
	if o ! 5:jump'hookermet1'

	o = 0
	:odekismet1
	o += 1
	if odekis[o] = 1 and odekisB[o] ! bedra:odekisB[o] = bedra
	if o ! 10:jump'odekismet1'

	o = 0
	:newclomet1
	o += 1
	if newclo[o] = 1 and newcloB[o] ! bedra:newcloB[o] = bedra
	if o ! 130:jump'newclomet1'

	'Вам ушили всю одежду за <<poshvalldrop*500>> руб.'

	act 'Выйти':gt'clener','start'

	exit
end
--- portnoi2 ---------------------------------

