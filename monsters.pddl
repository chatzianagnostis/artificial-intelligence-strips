(define (domain Monsters)
(:requirements :strips)
(:predicates 
    (hero ?X) (cave ?C) (hole ?H) (monster ?M) (treasure ?T) (weapon ?W) (boots ?B)
    (at ?hero1 ?cave2) (have ?hero1 ?weapon2) (wear ?hero1 ?boots2)
    (located ?hole1 ?cave2) (is ?monster1 ?cave2) (isT ?treasure1 ?cave2) 
    (isW ?weapon1 ?cave2) (isB ?boots1 ?cave2) (goto ?cave1 ?cave2) (free ?C1)
)   
(:action Move
    :parameters ( ?X ?C1 ?C2 )
    :precondition (and (hero ?X) (cave ?C1) (cave ?C2) (at ?X ?C1) (goto ?C1 ?C2)
                    (free ?C2))
    :effect (and (at ?X ?C2) (not (at ?X ?C1)))
)

(:action BeRich
    :parameters ( ?X ?T ?C )
    :precondition (and (hero ?X) (treasure ?T) (cave ?C)
                (at ?X ?C) (isT ?T ?C))
    :effect (not (isT ?T ?C))
)

(:action PickWeapon
    :parameters ( ?X ?W ?C )
    :precondition (and (hero ?X) (weapon ?W) (cave ?C)
                (at ?X ?C) (isW ?W ?C))
    :effect (and (have ?X ?W) (not (isW ?W ?C)))
)

(:action PickBoots
    :parameters ( ?X ?B ?C )
    :precondition (and (hero ?X) (boots ?B) (cave ?C)
                (at ?X ?C) (isB ?B ?C))
    :effect (and (wear ?X ?B) (not (isB ?B ?C)))
)

(:action Attack
    :parameters ( ?X ?C1 ?C2 ?M ?W )
    :precondition (and (hero ?X) (cave ?C1) (cave ?C2) (monster ?M) (weapon ?W)
                (at ?X ?C1) (goto ?C1 ?C2) (is ?M ?C2) (have ?X ?W))
    :effect (and (at ?X ?C2) (not (at ?X ?C1)) (not(have ?X ?W)) (not (is ?M ?C2)) (free ?C2))
)

(:action Jump
    :parameters ( ?X ?C1 ?C2 ?H ?B )
    :precondition (and (hero ?X) (cave ?C1) (cave ?C2) (hole ?H) (boots ?B)
                (at ?X ?C1) (goto ?C1 ?C2) (wear ?X ?B) (located ?H ?C2))
    :effect (and (at ?X ?C2) (not (at ?X ?C1)) (not (wear ?X ?B)))
)

)