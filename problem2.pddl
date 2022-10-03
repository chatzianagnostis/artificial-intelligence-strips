(define (problem Monster2)
(:domain Monsters)
(:objects
x loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8 loc9 hole1 monster1 treasure1 weapon1 boots1)
(:init
(hero x) (cave loc1) (cave loc2) (cave loc3) (cave loc4) (cave loc5) (cave loc6)
(hole hole1) (monster monster1) (treasure treasure1) (weapon weapon1)(boots boots1)

(free loc1) (free loc2) (free loc4) (free loc5) (free loc6) (free loc8) (free loc9)

(goto loc1 loc2) (goto loc1 loc5) (goto loc2 loc1) (goto loc2 loc3) (goto loc3 loc2)
(goto loc3 loc4) (goto loc4 loc3) (goto loc5 loc2) (goto loc5 loc7) (goto loc5 loc6) 
(goto loc5 loc9) (goto loc6 loc5) (goto loc6 loc8) (goto loc7 loc4) (goto loc8 loc6)

(at x loc1) (located hole1 loc7) (is monster1 loc3) (isT treasure1 loc4) (isW weapon1 loc6)
(isB boots1 loc8)
)
(:goal (and
(at x loc1)
(not (isT treasure1 loc4))
)
)
)