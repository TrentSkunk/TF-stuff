; tempgag.tf by Trent (about damned time too)
;
;
; Usage: /tempgag <minutes-to-gag> <pattern-to-gag>
;
;
; What it does: Let's you gag text that matches a pattern,
; and automatically ungag it after a specified period of
; time. Great for trying to talk to someone in a noisy
; room...just gag the noise until you're done. That
; way you don't accidentally permanently gag folks
; you don't want to permanently gag. }:)
;

 /set gagcount=1


 /def tempgag = \ 
 	/def -F -ag -t'%{-1}' tempgag_%{gagcount} =%;\
 	/repeat -0:%{1} 1 /undef tempgag_%{gagcount}%;\
 	/test ++gagcount
