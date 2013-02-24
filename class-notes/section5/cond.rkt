; avoid nested if-expressions when you can use cond-expressions instead
; (cond [e1a e1b]
;       [e2a e2b]
;       ...
;       [eNa eNb])
;
; e_a should be a test and e_b is what's evaluated if test passes
; good style: eNa should be #t
;
; anything other than #f is #t
