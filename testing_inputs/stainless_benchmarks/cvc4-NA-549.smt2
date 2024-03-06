; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4078 () Bool)

(assert start!4078)

(declare-fun b!32409 () Bool)

(declare-fun res!14908 () Bool)

(declare-fun e!16473 () Bool)

(assert (=> b!32409 (=> (not res!14908) (not e!16473))))

(declare-datatypes () ((T!1853 (T!1854 (val!99 Int)))))

(declare-fun y!785 () T!1853)

(declare-fun y!798 () T!1853)

(declare-fun i!263 () Int)

(declare-fun i!272 () Int)

(assert (=> b!32409 (= res!14908 (and (= i!272 i!263) (= y!798 y!785)))))

(declare-fun b!32410 () Bool)

(declare-fun e!16474 () Bool)

(declare-fun tp!6732 () Bool)

(declare-fun tp!6736 () Bool)

(assert (=> b!32410 (= e!16474 (and tp!6732 tp!6736))))

(declare-fun b!32411 () Bool)

(declare-fun res!14909 () Bool)

(assert (=> b!32411 (=> (not res!14909) (not e!16473))))

(declare-datatypes () ((List!368 (Cons!362 (h!279 T!1853) (t!4382 List!368)) (Nil!363))))

(declare-fun thiss!2798 () List!368)

(declare-datatypes () ((Conc!76 (CC!75 (left!720 Conc!76) (right!723 Conc!76)) (Single!75 (x!8986 T!1853)) (Empty!86))))

(declare-fun xs!586 () Conc!76)

(declare-fun toList!123 (Conc!76) List!368)

(assert (=> b!32411 (= res!14909 (= thiss!2798 (toList!123 xs!586)))))

(declare-fun b!32412 () Bool)

(declare-fun res!14901 () Bool)

(assert (=> b!32412 (=> (not res!14901) (not e!16473))))

(declare-fun balanced!69 (Conc!76) Bool)

(assert (=> b!32412 (= res!14901 (balanced!69 xs!586))))

(declare-fun b!32413 () Bool)

(declare-fun res!14898 () Bool)

(assert (=> b!32413 (=> (not res!14898) (not e!16473))))

(declare-fun size!286 (Conc!76) Int)

(assert (=> b!32413 (= res!14898 (< i!263 (size!286 xs!586)))))

(declare-fun b!32414 () Bool)

(declare-fun e!16475 () Bool)

(assert (=> b!32414 (= e!16473 e!16475)))

(declare-fun res!14906 () Bool)

(assert (=> b!32414 (=> res!14906 e!16475)))

(assert (=> b!32414 (= res!14906 (> 0 i!272))))

(declare-fun b!32415 () Bool)

(declare-fun res!14899 () Bool)

(assert (=> b!32415 (=> (not res!14899) (not e!16473))))

(declare-fun isEmpty!330 (Conc!76) Bool)

(assert (=> b!32415 (= res!14899 (not (isEmpty!330 xs!586)))))

(declare-fun b!32416 () Bool)

(declare-fun e!16472 () Bool)

(declare-fun tp_is_empty!197 () Bool)

(assert (=> b!32416 (= e!16472 tp_is_empty!197)))

(declare-fun b!32417 () Bool)

(declare-fun res!14902 () Bool)

(assert (=> b!32417 (=> (not res!14902) (not e!16473))))

(declare-fun res!5578 () Conc!76)

(declare-fun level!60 (Conc!76) Int)

(assert (=> b!32417 (= res!14902 (= (level!60 res!5578) (level!60 xs!586)))))

(declare-fun b!32418 () Bool)

(declare-fun res!14910 () Bool)

(assert (=> b!32418 (=> (not res!14910) (not e!16473))))

(assert (=> b!32418 (= res!14910 (< i!263 (size!286 (left!720 xs!586))))))

(declare-fun b!32419 () Bool)

(assert (=> b!32419 (= e!16474 tp_is_empty!197)))

(declare-fun b!32420 () Bool)

(declare-fun res!14896 () Bool)

(assert (=> b!32420 (=> (not res!14896) (not e!16473))))

(declare-fun update!8 (Conc!76 Int T!1853) Conc!76)

(assert (=> b!32420 (= res!14896 (= res!5578 (CC!75 (update!8 (left!720 xs!586) i!263 y!785) (right!723 xs!586))))))

(declare-fun b!32421 () Bool)

(declare-fun res!14900 () Bool)

(assert (=> b!32421 (=> (not res!14900) (not e!16473))))

(declare-fun concInv!68 (Conc!76) Bool)

(assert (=> b!32421 (= res!14900 (concInv!68 res!5578))))

(declare-fun b!32422 () Bool)

(declare-fun size!287 (List!368) Int)

(assert (=> b!32422 (= e!16475 (>= i!272 (size!287 thiss!2798)))))

(declare-fun b!32423 () Bool)

(declare-fun tp!6734 () Bool)

(declare-fun tp!6735 () Bool)

(assert (=> b!32423 (= e!16472 (and tp!6734 tp!6735))))

(declare-fun b!32424 () Bool)

(declare-fun res!14907 () Bool)

(assert (=> b!32424 (=> (not res!14907) (not e!16473))))

(assert (=> b!32424 (= res!14907 (balanced!69 res!5578))))

(declare-fun b!32425 () Bool)

(declare-fun res!14905 () Bool)

(assert (=> b!32425 (=> (not res!14905) (not e!16473))))

(assert (=> b!32425 (= res!14905 (>= i!263 0))))

(declare-fun b!32426 () Bool)

(declare-fun res!14903 () Bool)

(assert (=> b!32426 (=> (not res!14903) (not e!16473))))

(declare-fun instAppendUpdateAxiom!4 (Conc!76 Int T!1853) Bool)

(assert (=> b!32426 (= res!14903 (instAppendUpdateAxiom!4 xs!586 i!263 y!785))))

(declare-fun res!14904 () Bool)

(assert (=> start!4078 (=> (not res!14904) (not e!16473))))

(assert (=> start!4078 (= res!14904 (concInv!68 xs!586))))

(assert (=> start!4078 e!16473))

(assert (=> start!4078 e!16472))

(assert (=> start!4078 e!16474))

(assert (=> start!4078 tp_is_empty!197))

(declare-fun e!16471 () Bool)

(assert (=> start!4078 e!16471))

(assert (=> start!4078 true))

(declare-fun b!32427 () Bool)

(declare-fun tp!6733 () Bool)

(assert (=> b!32427 (= e!16471 (and tp_is_empty!197 tp!6733))))

(declare-fun b!32428 () Bool)

(declare-fun res!14897 () Bool)

(assert (=> b!32428 (=> (not res!14897) (not e!16473))))

(assert (=> b!32428 (= res!14897 (not (is-Single!75 xs!586)))))

(assert (= (and start!4078 res!14904) b!32412))

(assert (= (and b!32412 res!14901) b!32415))

(assert (= (and b!32415 res!14899) b!32425))

(assert (= (and b!32425 res!14905) b!32413))

(assert (= (and b!32413 res!14898) b!32428))

(assert (= (and b!32428 res!14897) b!32418))

(assert (= (and b!32418 res!14910) b!32420))

(assert (= (and b!32420 res!14896) b!32426))

(assert (= (and b!32426 res!14903) b!32417))

(assert (= (and b!32417 res!14902) b!32421))

(assert (= (and b!32421 res!14900) b!32424))

(assert (= (and b!32424 res!14907) b!32411))

(assert (= (and b!32411 res!14909) b!32409))

(assert (= (and b!32409 res!14908) b!32414))

(assert (= (and b!32414 (not res!14906)) b!32422))

(assert (= (and start!4078 (is-CC!75 xs!586)) b!32423))

(assert (= (and start!4078 (is-Single!75 xs!586)) b!32416))

(assert (= (and start!4078 (is-CC!75 res!5578)) b!32410))

(assert (= (and start!4078 (is-Single!75 res!5578)) b!32419))

(assert (= (and start!4078 (is-Cons!362 thiss!2798)) b!32427))

(declare-fun m!35049 () Bool)

(assert (=> b!32422 m!35049))

(declare-fun m!35051 () Bool)

(assert (=> b!32411 m!35051))

(declare-fun m!35053 () Bool)

(assert (=> b!32418 m!35053))

(declare-fun m!35055 () Bool)

(assert (=> b!32413 m!35055))

(declare-fun m!35057 () Bool)

(assert (=> start!4078 m!35057))

(declare-fun m!35059 () Bool)

(assert (=> b!32421 m!35059))

(declare-fun m!35061 () Bool)

(assert (=> b!32420 m!35061))

(declare-fun m!35063 () Bool)

(assert (=> b!32424 m!35063))

(declare-fun m!35065 () Bool)

(assert (=> b!32417 m!35065))

(declare-fun m!35067 () Bool)

(assert (=> b!32417 m!35067))

(declare-fun m!35069 () Bool)

(assert (=> b!32415 m!35069))

(declare-fun m!35071 () Bool)

(assert (=> b!32412 m!35071))

(declare-fun m!35073 () Bool)

(assert (=> b!32426 m!35073))

(push 1)

(assert (not b!32421))

(assert (not start!4078))

(assert (not b!32420))

(assert (not b!32415))

(assert (not b!32423))

(assert (not b!32418))

(assert tp_is_empty!197)

(assert (not b!32422))

(assert (not b!32426))

(assert (not b!32413))

(assert (not b!32412))

(assert (not b!32417))

(assert (not b!32424))

(assert (not b!32411))

(assert (not b!32410))

(assert (not b!32427))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!32439 () Bool)

(declare-fun res!14919 () Bool)

(declare-fun e!16481 () Bool)

(assert (=> b!32439 (=> (not res!14919) (not e!16481))))

(assert (=> b!32439 (= res!14919 (concInv!68 (left!720 res!5578)))))

(declare-fun d!16611 () Bool)

(declare-fun res!14922 () Bool)

(declare-fun e!16480 () Bool)

(assert (=> d!16611 (=> res!14922 e!16480)))

(assert (=> d!16611 (= res!14922 (not (is-CC!75 res!5578)))))

(assert (=> d!16611 (= (concInv!68 res!5578) e!16480)))

(declare-fun b!32440 () Bool)

(assert (=> b!32440 (= e!16481 (concInv!68 (right!723 res!5578)))))

(declare-fun b!32437 () Bool)

(assert (=> b!32437 (= e!16480 e!16481)))

(declare-fun res!14920 () Bool)

(assert (=> b!32437 (=> (not res!14920) (not e!16481))))

(assert (=> b!32437 (= res!14920 (not (isEmpty!330 (left!720 res!5578))))))

(declare-fun b!32438 () Bool)

(declare-fun res!14921 () Bool)

(assert (=> b!32438 (=> (not res!14921) (not e!16481))))

(assert (=> b!32438 (= res!14921 (not (isEmpty!330 (right!723 res!5578))))))

(assert (= (and d!16611 (not res!14922)) b!32437))

(assert (= (and b!32437 res!14920) b!32438))

(assert (= (and b!32438 res!14921) b!32439))

(assert (= (and b!32439 res!14919) b!32440))

(declare-fun m!35075 () Bool)

(assert (=> b!32439 m!35075))

(declare-fun m!35077 () Bool)

(assert (=> b!32440 m!35077))

(declare-fun m!35079 () Bool)

(assert (=> b!32437 m!35079))

(declare-fun m!35081 () Bool)

(assert (=> b!32438 m!35081))

(assert (=> b!32421 d!16611))

(declare-fun b!32446 () Bool)

(declare-fun e!16484 () Int)

(declare-fun lt!6170 () Int)

(declare-fun lt!6169 () Int)

(assert (=> b!32446 (= e!16484 (+ 1 (ite (>= lt!6170 lt!6169) lt!6170 lt!6169)))))

(assert (=> b!32446 (= lt!6169 (level!60 (right!723 res!5578)))))

(assert (=> b!32446 (= lt!6170 (level!60 (left!720 res!5578)))))

(declare-fun d!16613 () Bool)

(declare-fun lt!6171 () Int)

(assert (=> d!16613 (>= lt!6171 0)))

(assert (=> d!16613 (= lt!6171 e!16484)))

(declare-fun c!7031 () Bool)

(assert (=> d!16613 (= c!7031 (or (is-Empty!86 res!5578) (is-Single!75 res!5578)))))

(assert (=> d!16613 (= (level!60 res!5578) lt!6171)))

(declare-fun b!32445 () Bool)

(assert (=> b!32445 (= e!16484 0)))

(assert (= (and d!16613 c!7031) b!32445))

(assert (= (and d!16613 (not c!7031)) b!32446))

(declare-fun m!35083 () Bool)

(assert (=> b!32446 m!35083))

(declare-fun m!35085 () Bool)

(assert (=> b!32446 m!35085))

(assert (=> b!32417 d!16613))

(declare-fun b!32448 () Bool)

(declare-fun e!16485 () Int)

(declare-fun lt!6173 () Int)

(declare-fun lt!6172 () Int)

(assert (=> b!32448 (= e!16485 (+ 1 (ite (>= lt!6173 lt!6172) lt!6173 lt!6172)))))

(assert (=> b!32448 (= lt!6172 (level!60 (right!723 xs!586)))))

(assert (=> b!32448 (= lt!6173 (level!60 (left!720 xs!586)))))

(declare-fun d!16615 () Bool)

(declare-fun lt!6174 () Int)

(assert (=> d!16615 (>= lt!6174 0)))

(assert (=> d!16615 (= lt!6174 e!16485)))

(declare-fun c!7032 () Bool)

(assert (=> d!16615 (= c!7032 (or (is-Empty!86 xs!586) (is-Single!75 xs!586)))))

(assert (=> d!16615 (= (level!60 xs!586) lt!6174)))

(declare-fun b!32447 () Bool)

(assert (=> b!32447 (= e!16485 0)))

(assert (= (and d!16615 c!7032) b!32447))

(assert (= (and d!16615 (not c!7032)) b!32448))

(declare-fun m!35087 () Bool)

(assert (=> b!32448 m!35087))

(declare-fun m!35089 () Bool)

(assert (=> b!32448 m!35089))

(assert (=> b!32417 d!16615))

(declare-fun d!16617 () Bool)

(assert (=> d!16617 (= (isEmpty!330 xs!586) (= xs!586 Empty!86))))

(assert (=> b!32415 d!16617))

(declare-fun b!32458 () Bool)

(declare-fun res!14931 () Bool)

(declare-fun e!16491 () Bool)

(assert (=> b!32458 (=> (not res!14931) (not e!16491))))

(assert (=> b!32458 (= res!14931 (<= (- (level!60 (left!720 res!5578)) (level!60 (right!723 res!5578))) 1))))

(declare-fun b!32460 () Bool)

(assert (=> b!32460 (= e!16491 (balanced!69 (right!723 res!5578)))))

(declare-fun b!32459 () Bool)

(declare-fun res!14934 () Bool)

(assert (=> b!32459 (=> (not res!14934) (not e!16491))))

(assert (=> b!32459 (= res!14934 (balanced!69 (left!720 res!5578)))))

(declare-fun d!16619 () Bool)

(declare-fun res!14932 () Bool)

(declare-fun e!16490 () Bool)

(assert (=> d!16619 (=> res!14932 e!16490)))

(assert (=> d!16619 (= res!14932 (not (is-CC!75 res!5578)))))

(assert (=> d!16619 (= (balanced!69 res!5578) e!16490)))

(declare-fun b!32457 () Bool)

(assert (=> b!32457 (= e!16490 e!16491)))

(declare-fun res!14933 () Bool)

(assert (=> b!32457 (=> (not res!14933) (not e!16491))))

(assert (=> b!32457 (= res!14933 (>= (- (level!60 (left!720 res!5578)) (level!60 (right!723 res!5578))) (- 1)))))

(assert (= (and d!16619 (not res!14932)) b!32457))

(assert (= (and b!32457 res!14933) b!32458))

(assert (= (and b!32458 res!14931) b!32459))

(assert (= (and b!32459 res!14934) b!32460))

(assert (=> b!32458 m!35085))

(assert (=> b!32458 m!35083))

(declare-fun m!35091 () Bool)

(assert (=> b!32460 m!35091))

(declare-fun m!35093 () Bool)

(assert (=> b!32459 m!35093))

(assert (=> b!32457 m!35085))

(assert (=> b!32457 m!35083))

(assert (=> b!32424 d!16619))

(declare-fun b!32471 () Bool)

(declare-fun e!16497 () Int)

(assert (=> b!32471 (= e!16497 1)))

(declare-fun b!32470 () Bool)

(declare-fun e!16496 () Int)

(assert (=> b!32470 (= e!16496 e!16497)))

(declare-fun c!7038 () Bool)

(assert (=> b!32470 (= c!7038 (is-Single!75 xs!586))))

(declare-fun b!32472 () Bool)

(assert (=> b!32472 (= e!16497 (+ (size!286 (left!720 xs!586)) (size!286 (right!723 xs!586))))))

(declare-fun d!16621 () Bool)

(declare-fun lt!6177 () Int)

(assert (=> d!16621 (>= lt!6177 0)))

(assert (=> d!16621 (= lt!6177 e!16496)))

(declare-fun c!7037 () Bool)

(assert (=> d!16621 (= c!7037 (is-Empty!86 xs!586))))

(assert (=> d!16621 (= (size!286 xs!586) lt!6177)))

(declare-fun b!32469 () Bool)

(assert (=> b!32469 (= e!16496 0)))

(assert (= (and b!32470 c!7038) b!32471))

(assert (= (and b!32470 (not c!7038)) b!32472))

(assert (= (and d!16621 c!7037) b!32469))

(assert (= (and d!16621 (not c!7037)) b!32470))

(assert (=> b!32472 m!35053))

(declare-fun m!35095 () Bool)

(assert (=> b!32472 m!35095))

(assert (=> b!32413 d!16621))

(declare-fun b!32475 () Bool)

(declare-fun e!16499 () Int)

(assert (=> b!32475 (= e!16499 1)))

(declare-fun b!32474 () Bool)

(declare-fun e!16498 () Int)

(assert (=> b!32474 (= e!16498 e!16499)))

(declare-fun c!7040 () Bool)

(assert (=> b!32474 (= c!7040 (is-Single!75 (left!720 xs!586)))))

(declare-fun b!32476 () Bool)

(assert (=> b!32476 (= e!16499 (+ (size!286 (left!720 (left!720 xs!586))) (size!286 (right!723 (left!720 xs!586)))))))

(declare-fun d!16623 () Bool)

(declare-fun lt!6178 () Int)

(assert (=> d!16623 (>= lt!6178 0)))

(assert (=> d!16623 (= lt!6178 e!16498)))

(declare-fun c!7039 () Bool)

(assert (=> d!16623 (= c!7039 (is-Empty!86 (left!720 xs!586)))))

(assert (=> d!16623 (= (size!286 (left!720 xs!586)) lt!6178)))

(declare-fun b!32473 () Bool)

(assert (=> b!32473 (= e!16498 0)))

(assert (= (and b!32474 c!7040) b!32475))

(assert (= (and b!32474 (not c!7040)) b!32476))

(assert (= (and d!16623 c!7039) b!32473))

(assert (= (and d!16623 (not c!7039)) b!32474))

(declare-fun m!35097 () Bool)

(assert (=> b!32476 m!35097))

(declare-fun m!35099 () Bool)

(assert (=> b!32476 m!35099))

(assert (=> b!32418 d!16623))

(declare-fun b!32479 () Bool)

(declare-fun res!14935 () Bool)

(declare-fun e!16501 () Bool)

(assert (=> b!32479 (=> (not res!14935) (not e!16501))))

(assert (=> b!32479 (= res!14935 (concInv!68 (left!720 xs!586)))))

(declare-fun d!16625 () Bool)

(declare-fun res!14938 () Bool)

(declare-fun e!16500 () Bool)

(assert (=> d!16625 (=> res!14938 e!16500)))

(assert (=> d!16625 (= res!14938 (not (is-CC!75 xs!586)))))

(assert (=> d!16625 (= (concInv!68 xs!586) e!16500)))

(declare-fun b!32480 () Bool)

(assert (=> b!32480 (= e!16501 (concInv!68 (right!723 xs!586)))))

(declare-fun b!32477 () Bool)

(assert (=> b!32477 (= e!16500 e!16501)))

(declare-fun res!14936 () Bool)

(assert (=> b!32477 (=> (not res!14936) (not e!16501))))

(assert (=> b!32477 (= res!14936 (not (isEmpty!330 (left!720 xs!586))))))

(declare-fun b!32478 () Bool)

(declare-fun res!14937 () Bool)

(assert (=> b!32478 (=> (not res!14937) (not e!16501))))

(assert (=> b!32478 (= res!14937 (not (isEmpty!330 (right!723 xs!586))))))

(assert (= (and d!16625 (not res!14938)) b!32477))

(assert (= (and b!32477 res!14936) b!32478))

(assert (= (and b!32478 res!14937) b!32479))

(assert (= (and b!32479 res!14935) b!32480))

(declare-fun m!35101 () Bool)

(assert (=> b!32479 m!35101))

(declare-fun m!35103 () Bool)

(assert (=> b!32480 m!35103))

(declare-fun m!35105 () Bool)

(assert (=> b!32477 m!35105))

(declare-fun m!35107 () Bool)

(assert (=> b!32478 m!35107))

(assert (=> start!4078 d!16625))

(declare-fun d!16627 () Bool)

(declare-fun lt!6181 () Int)

(assert (=> d!16627 (>= lt!6181 0)))

(declare-fun e!16504 () Int)

(assert (=> d!16627 (= lt!6181 e!16504)))

(declare-fun c!7043 () Bool)

(assert (=> d!16627 (= c!7043 (is-Nil!363 thiss!2798))))

(assert (=> d!16627 (= (size!287 thiss!2798) lt!6181)))

(declare-fun b!32485 () Bool)

(assert (=> b!32485 (= e!16504 0)))

(declare-fun b!32486 () Bool)

(assert (=> b!32486 (= e!16504 (+ 1 (size!287 (t!4382 thiss!2798))))))

(assert (= (and d!16627 c!7043) b!32485))

(assert (= (and d!16627 (not c!7043)) b!32486))

(declare-fun m!35109 () Bool)

(assert (=> b!32486 m!35109))

(assert (=> b!32422 d!16627))

(declare-fun b!32497 () Bool)

(declare-fun e!16509 () List!368)

(assert (=> b!32497 (= e!16509 (Cons!362 (x!8986 xs!586) Nil!363))))

(declare-fun d!16629 () Bool)

(declare-fun lt!6184 () List!368)

(assert (=> d!16629 (= (size!287 lt!6184) (size!286 xs!586))))

(declare-fun e!16510 () List!368)

(assert (=> d!16629 (= lt!6184 e!16510)))

(declare-fun c!7048 () Bool)

(assert (=> d!16629 (= c!7048 (is-Empty!86 xs!586))))

(assert (=> d!16629 (= (toList!123 xs!586) lt!6184)))

(declare-fun b!32495 () Bool)

(assert (=> b!32495 (= e!16510 Nil!363)))

(declare-fun b!32498 () Bool)

(declare-fun ++!48 (List!368 List!368) List!368)

(assert (=> b!32498 (= e!16509 (++!48 (toList!123 (left!720 xs!586)) (toList!123 (right!723 xs!586))))))

(declare-fun b!32496 () Bool)

(assert (=> b!32496 (= e!16510 e!16509)))

(declare-fun c!7049 () Bool)

(assert (=> b!32496 (= c!7049 (is-Single!75 xs!586))))

(assert (= (and b!32496 c!7049) b!32497))

(assert (= (and b!32496 (not c!7049)) b!32498))

(assert (= (and d!16629 c!7048) b!32495))

(assert (= (and d!16629 (not c!7048)) b!32496))

(declare-fun m!35111 () Bool)

(assert (=> d!16629 m!35111))

(assert (=> d!16629 m!35055))

(declare-fun m!35113 () Bool)

(assert (=> b!32498 m!35113))

(declare-fun m!35115 () Bool)

(assert (=> b!32498 m!35115))

(assert (=> b!32498 m!35113))

(assert (=> b!32498 m!35115))

(declare-fun m!35117 () Bool)

(assert (=> b!32498 m!35117))

(assert (=> b!32411 d!16629))

(declare-fun b!32500 () Bool)

(declare-fun res!14940 () Bool)

(declare-fun e!16512 () Bool)

(assert (=> b!32500 (=> (not res!14940) (not e!16512))))

(assert (=> b!32500 (= res!14940 (<= (- (level!60 (left!720 xs!586)) (level!60 (right!723 xs!586))) 1))))

(declare-fun b!32502 () Bool)

(assert (=> b!32502 (= e!16512 (balanced!69 (right!723 xs!586)))))

(declare-fun b!32501 () Bool)

(declare-fun res!14943 () Bool)

(assert (=> b!32501 (=> (not res!14943) (not e!16512))))

(assert (=> b!32501 (= res!14943 (balanced!69 (left!720 xs!586)))))

(declare-fun d!16631 () Bool)

(declare-fun res!14941 () Bool)

(declare-fun e!16511 () Bool)

(assert (=> d!16631 (=> res!14941 e!16511)))

(assert (=> d!16631 (= res!14941 (not (is-CC!75 xs!586)))))

(assert (=> d!16631 (= (balanced!69 xs!586) e!16511)))

(declare-fun b!32499 () Bool)

(assert (=> b!32499 (= e!16511 e!16512)))

(declare-fun res!14942 () Bool)

(assert (=> b!32499 (=> (not res!14942) (not e!16512))))

(assert (=> b!32499 (= res!14942 (>= (- (level!60 (left!720 xs!586)) (level!60 (right!723 xs!586))) (- 1)))))

(assert (= (and d!16631 (not res!14941)) b!32499))

(assert (= (and b!32499 res!14942) b!32500))

(assert (= (and b!32500 res!14940) b!32501))

(assert (= (and b!32501 res!14943) b!32502))

(assert (=> b!32500 m!35089))

(assert (=> b!32500 m!35087))

(declare-fun m!35119 () Bool)

(assert (=> b!32502 m!35119))

(declare-fun m!35121 () Bool)

(assert (=> b!32501 m!35121))

(assert (=> b!32499 m!35089))

(assert (=> b!32499 m!35087))

(assert (=> b!32412 d!16631))

(declare-fun d!16633 () Bool)

(declare-fun e!16518 () Bool)

(assert (=> d!16633 e!16518))

(declare-fun res!14949 () Bool)

(assert (=> d!16633 (=> res!14949 e!16518)))

(assert (=> d!16633 (= res!14949 (not (is-CC!75 xs!586)))))

(declare-fun e!16517 () Bool)

(assert (=> d!16633 e!16517))

(declare-fun res!14948 () Bool)

(assert (=> d!16633 (=> (not res!14948) (not e!16517))))

(assert (=> d!16633 (= res!14948 (>= i!263 0))))

(assert (=> d!16633 (= (instAppendUpdateAxiom!4 xs!586 i!263 y!785) true)))

(declare-fun b!32507 () Bool)

(assert (=> b!32507 (= e!16517 (< i!263 (size!286 xs!586)))))

(declare-fun b!32508 () Bool)

(declare-fun appendUpdate!3 (List!368 List!368 Int T!1853) Bool)

(assert (=> b!32508 (= e!16518 (appendUpdate!3 (toList!123 (left!720 xs!586)) (toList!123 (right!723 xs!586)) i!263 y!785))))

(assert (= (and d!16633 res!14948) b!32507))

(assert (= (and d!16633 (not res!14949)) b!32508))

(assert (=> b!32507 m!35055))

(assert (=> b!32508 m!35113))

(assert (=> b!32508 m!35115))

(assert (=> b!32508 m!35113))

(assert (=> b!32508 m!35115))

(declare-fun m!35123 () Bool)

(assert (=> b!32508 m!35123))

(assert (=> b!32426 d!16633))

(declare-fun d!16635 () Bool)

(declare-fun e!16530 () Bool)

(assert (=> d!16635 e!16530))

(declare-fun res!14969 () Bool)

(assert (=> d!16635 (=> (not res!14969) (not e!16530))))

(assert (=> d!16635 (= res!14969 (instAppendUpdateAxiom!4 (left!720 xs!586) i!263 y!785))))

(declare-fun lt!6187 () Conc!76)

(declare-fun e!16533 () Conc!76)

(assert (=> d!16635 (= lt!6187 e!16533)))

(declare-fun c!7055 () Bool)

(assert (=> d!16635 (= c!7055 (is-Single!75 (left!720 xs!586)))))

(declare-fun e!16531 () Bool)

(assert (=> d!16635 e!16531))

(declare-fun res!14971 () Bool)

(assert (=> d!16635 (=> (not res!14971) (not e!16531))))

(declare-fun e!16532 () Bool)

(assert (=> d!16635 (= res!14971 e!16532)))

(declare-fun res!14970 () Bool)

(assert (=> d!16635 (=> (not res!14970) (not e!16532))))

(assert (=> d!16635 (= res!14970 (concInv!68 (left!720 xs!586)))))

(assert (=> d!16635 (= (update!8 (left!720 xs!586) i!263 y!785) lt!6187)))

(declare-fun b!32533 () Bool)

(declare-fun res!14972 () Bool)

(assert (=> b!32533 (=> (not res!14972) (not e!16530))))

(assert (=> b!32533 (= res!14972 (= (level!60 lt!6187) (level!60 (left!720 xs!586))))))

(declare-fun b!32534 () Bool)

(declare-fun updated!6 (List!368 Int T!1853) List!368)

(assert (=> b!32534 (= e!16530 (= (toList!123 lt!6187) (updated!6 (toList!123 (left!720 xs!586)) i!263 y!785)))))

(declare-fun b!32535 () Bool)

(declare-fun res!14967 () Bool)

(assert (=> b!32535 (=> (not res!14967) (not e!16530))))

(assert (=> b!32535 (= res!14967 (balanced!69 lt!6187))))

(declare-fun b!32536 () Bool)

(declare-fun res!14974 () Bool)

(assert (=> b!32536 (=> (not res!14974) (not e!16531))))

(assert (=> b!32536 (= res!14974 (>= i!263 0))))

(declare-fun b!32537 () Bool)

(assert (=> b!32537 (= e!16531 (< i!263 (size!286 (left!720 xs!586))))))

(declare-fun b!32538 () Bool)

(assert (=> b!32538 (= e!16532 (balanced!69 (left!720 xs!586)))))

(declare-fun b!32539 () Bool)

(declare-fun res!14973 () Bool)

(assert (=> b!32539 (=> (not res!14973) (not e!16531))))

(assert (=> b!32539 (= res!14973 (not (isEmpty!330 (left!720 xs!586))))))

(declare-fun e!16529 () Conc!76)

(declare-fun b!32540 () Bool)

(assert (=> b!32540 (= e!16529 (CC!75 (left!720 (left!720 xs!586)) (update!8 (right!723 (left!720 xs!586)) (- i!263 (size!286 (left!720 (left!720 xs!586)))) y!785)))))

(declare-fun b!32541 () Bool)

(declare-fun res!14968 () Bool)

(assert (=> b!32541 (=> (not res!14968) (not e!16530))))

(assert (=> b!32541 (= res!14968 (concInv!68 lt!6187))))

(declare-fun b!32542 () Bool)

(assert (=> b!32542 (= e!16529 (CC!75 (update!8 (left!720 (left!720 xs!586)) i!263 y!785) (right!723 (left!720 xs!586))))))

(declare-fun b!32543 () Bool)

(assert (=> b!32543 (= e!16533 e!16529)))

(declare-fun c!7054 () Bool)

(assert (=> b!32543 (= c!7054 (< i!263 (size!286 (left!720 (left!720 xs!586)))))))

(declare-fun b!32544 () Bool)

(assert (=> b!32544 (= e!16533 (Single!75 y!785))))

(assert (= (and d!16635 res!14970) b!32538))

(assert (= (and d!16635 res!14971) b!32539))

(assert (= (and b!32539 res!14973) b!32536))

(assert (= (and b!32536 res!14974) b!32537))

(assert (= (and b!32543 c!7054) b!32542))

(assert (= (and b!32543 (not c!7054)) b!32540))

(assert (= (and d!16635 c!7055) b!32544))

(assert (= (and d!16635 (not c!7055)) b!32543))

(assert (= (and d!16635 res!14969) b!32533))

(assert (= (and b!32533 res!14972) b!32541))

(assert (= (and b!32541 res!14968) b!32535))

(assert (= (and b!32535 res!14967) b!32534))

(assert (=> b!32539 m!35105))

(declare-fun m!35125 () Bool)

(assert (=> b!32542 m!35125))

(assert (=> b!32537 m!35053))

(declare-fun m!35127 () Bool)

(assert (=> b!32535 m!35127))

(declare-fun m!35129 () Bool)

(assert (=> b!32541 m!35129))

(declare-fun m!35131 () Bool)

(assert (=> b!32534 m!35131))

(assert (=> b!32534 m!35113))

(assert (=> b!32534 m!35113))

(declare-fun m!35133 () Bool)

(assert (=> b!32534 m!35133))

(assert (=> b!32538 m!35121))

(declare-fun m!35135 () Bool)

(assert (=> d!16635 m!35135))

(assert (=> d!16635 m!35101))

(assert (=> b!32543 m!35097))

(assert (=> b!32540 m!35097))

(declare-fun m!35137 () Bool)

(assert (=> b!32540 m!35137))

(declare-fun m!35139 () Bool)

(assert (=> b!32533 m!35139))

(assert (=> b!32533 m!35089))

(assert (=> b!32420 d!16635))

(declare-fun b!32549 () Bool)

(declare-fun e!16536 () Bool)

(declare-fun tp!6739 () Bool)

(assert (=> b!32549 (= e!16536 (and tp_is_empty!197 tp!6739))))

(assert (=> b!32427 (= tp!6733 e!16536)))

(assert (= (and b!32427 (is-Cons!362 (t!4382 thiss!2798))) b!32549))

(declare-fun b!32556 () Bool)

(declare-fun e!16539 () Bool)

(declare-fun tp!6744 () Bool)

(declare-fun tp!6745 () Bool)

(assert (=> b!32556 (= e!16539 (and tp!6744 tp!6745))))

(declare-fun b!32557 () Bool)

(assert (=> b!32557 (= e!16539 tp_is_empty!197)))

(assert (=> b!32423 (= tp!6734 e!16539)))

(assert (= (and b!32423 (is-CC!75 (left!720 xs!586))) b!32556))

(assert (= (and b!32423 (is-Single!75 (left!720 xs!586))) b!32557))

(declare-fun b!32558 () Bool)

(declare-fun e!16540 () Bool)

(declare-fun tp!6746 () Bool)

(declare-fun tp!6747 () Bool)

(assert (=> b!32558 (= e!16540 (and tp!6746 tp!6747))))

(declare-fun b!32559 () Bool)

(assert (=> b!32559 (= e!16540 tp_is_empty!197)))

(assert (=> b!32423 (= tp!6735 e!16540)))

(assert (= (and b!32423 (is-CC!75 (right!723 xs!586))) b!32558))

(assert (= (and b!32423 (is-Single!75 (right!723 xs!586))) b!32559))

(declare-fun b!32560 () Bool)

(declare-fun e!16541 () Bool)

(declare-fun tp!6748 () Bool)

(declare-fun tp!6749 () Bool)

(assert (=> b!32560 (= e!16541 (and tp!6748 tp!6749))))

(declare-fun b!32561 () Bool)

(assert (=> b!32561 (= e!16541 tp_is_empty!197)))

(assert (=> b!32410 (= tp!6732 e!16541)))

(assert (= (and b!32410 (is-CC!75 (left!720 res!5578))) b!32560))

(assert (= (and b!32410 (is-Single!75 (left!720 res!5578))) b!32561))

(declare-fun b!32562 () Bool)

(declare-fun e!16542 () Bool)

(declare-fun tp!6750 () Bool)

(declare-fun tp!6751 () Bool)

(assert (=> b!32562 (= e!16542 (and tp!6750 tp!6751))))

(declare-fun b!32563 () Bool)

(assert (=> b!32563 (= e!16542 tp_is_empty!197)))

(assert (=> b!32410 (= tp!6736 e!16542)))

(assert (= (and b!32410 (is-CC!75 (right!723 res!5578))) b!32562))

(assert (= (and b!32410 (is-Single!75 (right!723 res!5578))) b!32563))

(push 1)

(assert (not b!32480))

(assert (not b!32458))

(assert (not b!32562))

(assert (not b!32437))

(assert (not b!32498))

(assert (not b!32542))

(assert (not b!32457))

(assert (not b!32541))

(assert (not b!32508))

(assert (not b!32502))

(assert (not b!32540))

(assert (not b!32499))

(assert (not b!32535))

(assert (not b!32478))

(assert (not b!32539))

(assert tp_is_empty!197)

(assert (not b!32472))

(assert (not b!32476))

(assert (not b!32448))

(assert (not d!16629))

(assert (not b!32439))

(assert (not b!32500))

(assert (not b!32438))

(assert (not b!32538))

(assert (not b!32534))

(assert (not b!32558))

(assert (not b!32477))

(assert (not b!32446))

(assert (not b!32556))

(assert (not b!32560))

(assert (not b!32543))

(assert (not d!16635))

(assert (not b!32486))

(assert (not b!32549))

(assert (not b!32537))

(assert (not b!32459))

(assert (not b!32507))

(assert (not b!32533))

(assert (not b!32440))

(assert (not b!32501))

(assert (not b!32460))

(assert (not b!32479))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

