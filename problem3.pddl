(define (problem Monster3)
(:domain Monsters)
(:objects
x loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8 loc9 hole1 monster1 monster2 boots1
javelin bow  treasure1 treasure2)
(:init
(hero x) (cave loc1) (cave loc2) (cave loc3) (cave loc4) (cave loc5) (cave loc6)
(cave loc7) (cave loc8) (cave loc9) (hole hole1) (boots boots1) (monster monster1)
(monster monster2) (weapon javelin) (weapon bow) (treasure treasure1) 
(treasure treasure2)

(free loc1) (free loc2) (free loc4) (free loc6) (free loc8) (free loc9)

(goto loc1 loc2) (goto loc1 loc5) (goto loc2 loc1) (goto loc2 loc3) (goto loc3 loc2)
(goto loc3 loc4) (goto loc4 loc3) (goto loc5 loc2) (goto loc5 loc7) (goto loc5 loc6) 
(goto loc5 loc9) (goto loc6 loc5) (goto loc6 loc8) (goto loc7 loc4) (goto loc8 loc7)


(at x loc1) (isT treasure1 loc4) (isT treasure2 loc8) (located hole1 loc7) (is monster1 loc3)
(is monster2 loc5) (isW javelin loc2) (isW bow loc4) (isB boots1 loc6)
)
(:goal (and
(at x loc1)
(and (not (isT treasure1 loc4)) (not (isT treasure2 loc8)))
)
)
)
