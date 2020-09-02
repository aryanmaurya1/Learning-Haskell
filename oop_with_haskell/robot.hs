module Robot where

robot :: (a, b, c) -> ((a, b, c) -> t) -> t
robot (name, attack, hp) = \message -> message (name, attack, hp)

name (n, _, _) = n
attack (_, a, _) = a
hp (_, _, h) = h

getName :: (((a, b, c) -> a) -> t) -> t
getName aRobot = aRobot name

getAttack aRobot = aRobot attack
getHP aRobot = aRobot hp

setName :: (((a1, b, c) -> ((a2, b, c) -> t1) -> t1) -> t2) -> a2 -> t2
setName aRobot newName = aRobot (\(n, a, h) -> robot (newName, a, h))

setAttack aRobot newAttack = aRobot (\(n, a, h) -> robot (n, newAttack, h))
setHP aRobot newHP = aRobot (\(n, a, h) -> robot (n, a, newHP))


killerRobot = robot ("Kill3r", 25, 100)
