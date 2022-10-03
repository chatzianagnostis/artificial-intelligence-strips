(define (problem Monster1)
(:domain Monsters)
(:objects
x loc1 loc2 loc3 loc4 loc5 loc6 hole1 monster1 treasure1 )
(:init
(hero x) (cave loc1) (cave loc2) (cave loc3) (cave loc4) (cave loc5) (cave loc6)
(hole hole1) (monster monster1) (treasure treasure1)

(free loc1) (free loc2) (free loc3) (free loc4) (goto loc1 loc2) (goto loc1 loc5)
(goto loc1 loc6) (goto loc2 loc1) (goto loc2 loc3) (goto loc3 loc2) 
(goto loc3 loc4) (goto loc4 loc3) (goto loc5 loc4) (goto loc6 loc4) 

(at x loc1) (isT treasure1 loc4)(located hole1 loc5) (is monster1 loc6)
)
(:goal (and
(at x loc1)
(not (isT treasure1 loc4))
)
)
)
