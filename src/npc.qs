# npc
i = NPCnow
:markgenernpc
i += 1
!силовые и моральные качества

slut[i] = 0

musle[i] = RAND(25,100)
flex[i] = RAND(25,80)
stamina[i] = RAND(200,300)
wipo[i] = RAND(30,60)
!техника
Bteh[i] = RAND(0,100)
Uteh[i] = RAND(0,100)
Zteh[i] = RAND(0,100)

if i = 2:
	musle[i] = 200
	flex[i] = 100
	stamina[i] = 300
	wipo[i] = 100
	!техника
	Bteh[i] += 200
	Uteh[i] += 200
	Zteh[i] += 200
elseif i = 10:
	musle[i] += 50
	wipo[i] += 30
elseif i = 15:
	musle[i] += 30
	flex[i] += 40
	stamina[i] += 100
	wipo[i] += 20
	!техника
	Bteh[i] += 20
	Uteh[i] += 20
	Zteh[i] += 20
elseif i = 32:
	musle[i] += 100
	flex[i] += 100
elseif i = 36:
	flex[i] += 100
elseif i = 51:
	Bteh[i] += 100
	Uteh[i] += 100
	Zteh[i] += 100
elseif i = 52:
	stamina[i] += 300
	wipo[i] += 60
elseif i = 60:
	musle[i] += 200
	wipo[i] += 40
elseif i = 78:
	flex[i] += 50
	wipo[i] += 30
elseif i = 100:
	musle[i] += 100
	flex[i] += 100
	stamina[i] += 200
	wipo[i] += 30
	!техника
	Bteh[i] += 100
	Uteh[i] += 100
	Zteh[i] += 100
elseif i = 107:
	musle[i] += 10
	flex[i] += 10
	stamina[i] += 100
	wipo[i] += 100
elseif i = 123:
	flex[i] += 100
	stamina[i] += 100
	wipo[i] += 30
elseif i = 137:
	musle[i] += 70
	wipo[i] += 20
elseif i = 170:
	musle[i] += 100
	stamina[i] += 100
	wipo[i] += 30
elseif i = 235:
	Bteh[i] += 100
	Uteh[i] += 100
	Zteh[i] += 100
elseif i = 236:
	flex[i] += 60
	stamina[i] += 100
	wipo[i] += 20
elseif i = 255:
	musle[i] += 30
	flex[i] += 30
	stamina[i] += 100
	wipo[i] += 60
	!техника
	Bteh[i] += 400
	Uteh[i] += 400
	Zteh[i] += 400
elseif i = 265:
	musle[i] += 100
	flex[i] += 100
	stamina[i] += 150
	wipo[i] += 80
	!техника
	Bteh[i] += 60
	Uteh[i] += 60
	Zteh[i] += 60
end

irand = i
gs'namer'

if i < NPCnum:jump'markgenernpc'
--- npc ---------------------------------

