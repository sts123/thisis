# generation
y = 0
:markmonthfightx
y += 1
:markturnirotbory
x = 0
:markturnirotborz
x += 1
turnirFighter[x] = RAND(2,NPCrost)
if x < 2:jump'markturnirotborz'
if turnirFighter[1] = turnirFighter[2]:jump'markturnirotbory'
a = turnirFighter[1]
i = turnirFighter[2]
gs'Autofight'
turnirFighter[1] = 0
turnirFighter[2] = 0
if y < 20:jump'markmonthfightx'
--- generation ---------------------------------

