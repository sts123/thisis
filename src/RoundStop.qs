# RoundStop
gs'fightStat'

stoper = 0

if crouch = 1 and croonce = 0:crouch = 0 & croonce = 1
if crouch = 0 and croonce = 0:crouch = 1 & croonce = 1

croonce = 0

if crouch = 1:$text = 'Встать вашей сопернице на четвереньки, а вам произвести захват сзади.'
if crouch = 0:$text = 'Встать вам на четвереньки, а вашей сопернице произвести захват сзади.'

'Рефери поднимает вас с соперницей и командует. <<$text>>'

act 'Выполнить указания рефери':
	gt'FightCrouch'
end
--- RoundStop ---------------------------------

