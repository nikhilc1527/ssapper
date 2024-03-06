; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9872 () Bool)

(assert start!9872)

(declare-fun res!35042 () Bool)

(declare-fun e!38673 () Bool)

(assert (=> start!9872 (=> (not res!35042) (not e!38673))))

(declare-datatypes () ((List!599 (Nil!557) (Cons!556 (head!966 Int) (tail!987 List!599)))))

(declare-fun list!838 () List!599)

(declare-fun s!2021 () Int)

(declare-fun size!4 (List!599) Int)

(assert (=> start!9872 (= res!35042 (= (size!4 list!838) s!2021))))

(assert (=> start!9872 e!38673))

(assert (=> start!9872 true))

(declare-fun b!71499 () Bool)

(declare-fun e!38674 () Bool)

(declare-fun reverse_reverse_equivalence!0 (Int List!599) Bool)

(declare-fun reverse!1 (List!599) List!599)

(assert (=> b!71499 (= e!38674 (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 list!838))) (tail!987 (reverse!1 list!838))))))

(declare-fun b!71496 () Bool)

(declare-fun e!38676 () Bool)

(declare-datatypes () ((ProofOps!374 (ProofOps!375 (prop!496 Bool)))))

(declare-fun because!1 (ProofOps!374 Bool) Bool)

(assert (=> b!71496 (= e!38673 (not (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 list!838)) list!838)) e!38676)))))

(declare-fun res!35044 () Bool)

(assert (=> b!71496 (=> res!35044 e!38676)))

(declare-fun e!38675 () Bool)

(assert (=> b!71496 (= res!35044 (not e!38675))))

(declare-fun res!35043 () Bool)

(assert (=> b!71496 (=> (not res!35043) (not e!38675))))

(assert (=> b!71496 (= res!35043 (is-Cons!556 list!838))))

(declare-fun b!71497 () Bool)

(assert (=> b!71497 (= e!38675 (is-Cons!556 (reverse!1 list!838)))))

(declare-fun b!71498 () Bool)

(assert (=> b!71498 (= e!38676 e!38674)))

(declare-fun res!35045 () Bool)

(assert (=> b!71498 (=> (not res!35045) (not e!38674))))

(assert (=> b!71498 (= res!35045 (reverse_reverse_equivalence!0 (size!4 (tail!987 list!838)) (tail!987 list!838)))))

(assert (= (and start!9872 res!35042) b!71496))

(assert (= (and b!71496 res!35043) b!71497))

(assert (= (and b!71496 (not res!35044)) b!71498))

(assert (= (and b!71498 res!35045) b!71499))

(declare-fun m!71288 () Bool)

(assert (=> b!71498 m!71288))

(assert (=> b!71498 m!71288))

(declare-fun m!71290 () Bool)

(assert (=> b!71498 m!71290))

(declare-fun m!71292 () Bool)

(assert (=> start!9872 m!71292))

(declare-fun m!71294 () Bool)

(assert (=> b!71497 m!71294))

(assert (=> b!71496 m!71294))

(assert (=> b!71496 m!71294))

(declare-fun m!71296 () Bool)

(assert (=> b!71496 m!71296))

(declare-fun m!71298 () Bool)

(assert (=> b!71496 m!71298))

(assert (=> b!71499 m!71294))

(declare-fun m!71300 () Bool)

(assert (=> b!71499 m!71300))

(assert (=> b!71499 m!71300))

(declare-fun m!71302 () Bool)

(assert (=> b!71499 m!71302))

(push 1)

(assert (not b!71497))

(assert (not b!71496))

(assert (not b!71498))

(assert (not b!71499))

(assert (not start!9872))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54101 () Bool)

(assert (=> d!54101 (= (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 list!838)) list!838)) e!38676) (and e!38676 (prop!496 (ProofOps!375 (= (reverse!1 (reverse!1 list!838)) list!838)))))))

(assert (=> b!71496 d!54101))

(declare-fun b!71511 () Bool)

(declare-fun e!38682 () Bool)

(declare-fun lt!15195 () List!599)

(assert (=> b!71511 (= e!38682 (= (size!4 lt!15195) (size!4 (reverse!1 list!838))))))

(declare-fun b!71510 () Bool)

(declare-fun res!35052 () Bool)

(assert (=> b!71510 (=> (not res!35052) (not e!38682))))

(declare-datatypes () ((Option!505 (Some!481 (x!28612 Int)) (None!482))))

(declare-fun lastOption!1 (List!599) Option!505)

(declare-fun headOption!1 (List!599) Option!505)

(assert (=> b!71510 (= res!35052 (= (lastOption!1 (reverse!1 list!838)) (headOption!1 lt!15195)))))

(declare-fun d!54103 () Bool)

(assert (=> d!54103 e!38682))

(declare-fun res!35051 () Bool)

(assert (=> d!54103 (=> (not res!35051) (not e!38682))))

(assert (=> d!54103 (= res!35051 (= (lastOption!1 lt!15195) (headOption!1 (reverse!1 list!838))))))

(declare-fun e!38681 () List!599)

(assert (=> d!54103 (= lt!15195 e!38681)))

(declare-fun c!17117 () Bool)

(assert (=> d!54103 (= c!17117 (is-Cons!556 (reverse!1 list!838)))))

(assert (=> d!54103 (= (reverse!1 (reverse!1 list!838)) lt!15195)))

(declare-fun b!71509 () Bool)

(assert (=> b!71509 (= e!38681 Nil!557)))

(declare-fun b!71508 () Bool)

(declare-fun addLast!0 (List!599 Int) List!599)

(assert (=> b!71508 (= e!38681 (addLast!0 (reverse!1 (tail!987 (reverse!1 list!838))) (head!966 (reverse!1 list!838))))))

(assert (= (and d!54103 c!17117) b!71508))

(assert (= (and d!54103 (not c!17117)) b!71509))

(assert (= (and d!54103 res!35051) b!71510))

(assert (= (and b!71510 res!35052) b!71511))

(declare-fun m!71304 () Bool)

(assert (=> b!71511 m!71304))

(assert (=> b!71511 m!71294))

(declare-fun m!71306 () Bool)

(assert (=> b!71511 m!71306))

(assert (=> b!71510 m!71294))

(declare-fun m!71308 () Bool)

(assert (=> b!71510 m!71308))

(declare-fun m!71310 () Bool)

(assert (=> b!71510 m!71310))

(declare-fun m!71312 () Bool)

(assert (=> d!54103 m!71312))

(assert (=> d!54103 m!71294))

(declare-fun m!71314 () Bool)

(assert (=> d!54103 m!71314))

(declare-fun m!71316 () Bool)

(assert (=> b!71508 m!71316))

(assert (=> b!71508 m!71316))

(declare-fun m!71318 () Bool)

(assert (=> b!71508 m!71318))

(assert (=> b!71496 d!54103))

(declare-fun b!71515 () Bool)

(declare-fun e!38684 () Bool)

(declare-fun lt!15196 () List!599)

(assert (=> b!71515 (= e!38684 (= (size!4 lt!15196) (size!4 list!838)))))

(declare-fun b!71514 () Bool)

(declare-fun res!35054 () Bool)

(assert (=> b!71514 (=> (not res!35054) (not e!38684))))

(assert (=> b!71514 (= res!35054 (= (lastOption!1 list!838) (headOption!1 lt!15196)))))

(declare-fun d!54105 () Bool)

(assert (=> d!54105 e!38684))

(declare-fun res!35053 () Bool)

(assert (=> d!54105 (=> (not res!35053) (not e!38684))))

(assert (=> d!54105 (= res!35053 (= (lastOption!1 lt!15196) (headOption!1 list!838)))))

(declare-fun e!38683 () List!599)

(assert (=> d!54105 (= lt!15196 e!38683)))

(declare-fun c!17118 () Bool)

(assert (=> d!54105 (= c!17118 (is-Cons!556 list!838))))

(assert (=> d!54105 (= (reverse!1 list!838) lt!15196)))

(declare-fun b!71513 () Bool)

(assert (=> b!71513 (= e!38683 Nil!557)))

(declare-fun b!71512 () Bool)

(assert (=> b!71512 (= e!38683 (addLast!0 (reverse!1 (tail!987 list!838)) (head!966 list!838)))))

(assert (= (and d!54105 c!17118) b!71512))

(assert (= (and d!54105 (not c!17118)) b!71513))

(assert (= (and d!54105 res!35053) b!71514))

(assert (= (and b!71514 res!35054) b!71515))

(declare-fun m!71320 () Bool)

(assert (=> b!71515 m!71320))

(assert (=> b!71515 m!71292))

(declare-fun m!71322 () Bool)

(assert (=> b!71514 m!71322))

(declare-fun m!71324 () Bool)

(assert (=> b!71514 m!71324))

(declare-fun m!71326 () Bool)

(assert (=> d!54105 m!71326))

(declare-fun m!71328 () Bool)

(assert (=> d!54105 m!71328))

(declare-fun m!71330 () Bool)

(assert (=> b!71512 m!71330))

(assert (=> b!71512 m!71330))

(declare-fun m!71332 () Bool)

(assert (=> b!71512 m!71332))

(assert (=> b!71496 d!54105))

(assert (=> b!71497 d!54105))

(declare-fun d!54107 () Bool)

(declare-fun lt!15199 () Int)

(assert (=> d!54107 (>= lt!15199 0)))

(declare-fun e!38687 () Int)

(assert (=> d!54107 (= lt!15199 e!38687)))

(declare-fun c!17121 () Bool)

(assert (=> d!54107 (= c!17121 (is-Nil!557 list!838))))

(assert (=> d!54107 (= (size!4 list!838) lt!15199)))

(declare-fun b!71520 () Bool)

(assert (=> b!71520 (= e!38687 0)))

(declare-fun b!71521 () Bool)

(assert (=> b!71521 (= e!38687 (+ 1 (size!4 (tail!987 list!838))))))

(assert (= (and d!54107 c!17121) b!71520))

(assert (= (and d!54107 (not c!17121)) b!71521))

(assert (=> b!71521 m!71288))

(assert (=> start!9872 d!54107))

(declare-fun d!54109 () Bool)

(declare-fun e!38694 () Bool)

(assert (=> d!54109 (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 list!838))) (tail!987 list!838))) e!38694)))

(declare-fun res!35061 () Bool)

(assert (=> d!54109 (=> res!35061 e!38694)))

(declare-fun e!38695 () Bool)

(assert (=> d!54109 (= res!35061 (not e!38695))))

(declare-fun res!35063 () Bool)

(assert (=> d!54109 (=> (not res!35063) (not e!38695))))

(assert (=> d!54109 (= res!35063 (is-Cons!556 (tail!987 list!838)))))

(assert (=> d!54109 (= (size!4 (tail!987 list!838)) (size!4 (tail!987 list!838)))))

(assert (=> d!54109 (= (reverse_reverse_equivalence!0 (size!4 (tail!987 list!838)) (tail!987 list!838)) true)))

(declare-fun b!71528 () Bool)

(assert (=> b!71528 (= e!38695 (is-Cons!556 (reverse!1 (tail!987 list!838))))))

(declare-fun b!71529 () Bool)

(declare-fun e!38696 () Bool)

(assert (=> b!71529 (= e!38694 e!38696)))

(declare-fun res!35062 () Bool)

(assert (=> b!71529 (=> (not res!35062) (not e!38696))))

(assert (=> b!71529 (= res!35062 (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 list!838))) (tail!987 (tail!987 list!838))))))

(declare-fun b!71530 () Bool)

(assert (=> b!71530 (= e!38696 (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 list!838)))) (tail!987 (reverse!1 (tail!987 list!838)))))))

(assert (= (and d!54109 res!35063) b!71528))

(assert (= (and d!54109 (not res!35061)) b!71529))

(assert (= (and b!71529 res!35062) b!71530))

(assert (=> d!54109 m!71330))

(assert (=> d!54109 m!71330))

(declare-fun m!71334 () Bool)

(assert (=> d!54109 m!71334))

(declare-fun m!71336 () Bool)

(assert (=> d!54109 m!71336))

(assert (=> d!54109 m!71288))

(assert (=> b!71528 m!71330))

(declare-fun m!71338 () Bool)

(assert (=> b!71529 m!71338))

(assert (=> b!71529 m!71338))

(declare-fun m!71340 () Bool)

(assert (=> b!71529 m!71340))

(assert (=> b!71530 m!71330))

(declare-fun m!71342 () Bool)

(assert (=> b!71530 m!71342))

(assert (=> b!71530 m!71342))

(declare-fun m!71344 () Bool)

(assert (=> b!71530 m!71344))

(assert (=> b!71498 d!54109))

(declare-fun d!54111 () Bool)

(declare-fun lt!15200 () Int)

(assert (=> d!54111 (>= lt!15200 0)))

(declare-fun e!38697 () Int)

(assert (=> d!54111 (= lt!15200 e!38697)))

(declare-fun c!17122 () Bool)

(assert (=> d!54111 (= c!17122 (is-Nil!557 (tail!987 list!838)))))

(assert (=> d!54111 (= (size!4 (tail!987 list!838)) lt!15200)))

(declare-fun b!71531 () Bool)

(assert (=> b!71531 (= e!38697 0)))

(declare-fun b!71532 () Bool)

(assert (=> b!71532 (= e!38697 (+ 1 (size!4 (tail!987 (tail!987 list!838)))))))

(assert (= (and d!54111 c!17122) b!71531))

(assert (= (and d!54111 (not c!17122)) b!71532))

(assert (=> b!71532 m!71338))

(assert (=> b!71498 d!54111))

(declare-fun d!54113 () Bool)

(declare-fun e!38698 () Bool)

(assert (=> d!54113 (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (reverse!1 list!838)))) (tail!987 (reverse!1 list!838)))) e!38698)))

(declare-fun res!35064 () Bool)

(assert (=> d!54113 (=> res!35064 e!38698)))

(declare-fun e!38699 () Bool)

(assert (=> d!54113 (= res!35064 (not e!38699))))

(declare-fun res!35066 () Bool)

(assert (=> d!54113 (=> (not res!35066) (not e!38699))))

(assert (=> d!54113 (= res!35066 (is-Cons!556 (tail!987 (reverse!1 list!838))))))

(assert (=> d!54113 (= (size!4 (tail!987 (reverse!1 list!838))) (size!4 (tail!987 (reverse!1 list!838))))))

(assert (=> d!54113 (= (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 list!838))) (tail!987 (reverse!1 list!838))) true)))

(declare-fun b!71533 () Bool)

(assert (=> b!71533 (= e!38699 (is-Cons!556 (reverse!1 (tail!987 (reverse!1 list!838)))))))

(declare-fun b!71534 () Bool)

(declare-fun e!38700 () Bool)

(assert (=> b!71534 (= e!38698 e!38700)))

(declare-fun res!35065 () Bool)

(assert (=> b!71534 (=> (not res!35065) (not e!38700))))

(assert (=> b!71534 (= res!35065 (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 (reverse!1 list!838)))) (tail!987 (tail!987 (reverse!1 list!838)))))))

(declare-fun b!71535 () Bool)

(assert (=> b!71535 (= e!38700 (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))) (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))

(assert (= (and d!54113 res!35066) b!71533))

(assert (= (and d!54113 (not res!35064)) b!71534))

(assert (= (and b!71534 res!35065) b!71535))

(assert (=> d!54113 m!71316))

(assert (=> d!54113 m!71316))

(declare-fun m!71346 () Bool)

(assert (=> d!54113 m!71346))

(declare-fun m!71348 () Bool)

(assert (=> d!54113 m!71348))

(assert (=> d!54113 m!71300))

(assert (=> b!71533 m!71316))

(declare-fun m!71350 () Bool)

(assert (=> b!71534 m!71350))

(assert (=> b!71534 m!71350))

(declare-fun m!71352 () Bool)

(assert (=> b!71534 m!71352))

(assert (=> b!71535 m!71316))

(declare-fun m!71354 () Bool)

(assert (=> b!71535 m!71354))

(assert (=> b!71535 m!71354))

(declare-fun m!71356 () Bool)

(assert (=> b!71535 m!71356))

(assert (=> b!71499 d!54113))

(declare-fun d!54115 () Bool)

(declare-fun lt!15201 () Int)

(assert (=> d!54115 (>= lt!15201 0)))

(declare-fun e!38701 () Int)

(assert (=> d!54115 (= lt!15201 e!38701)))

(declare-fun c!17123 () Bool)

(assert (=> d!54115 (= c!17123 (is-Nil!557 (tail!987 (reverse!1 list!838))))))

(assert (=> d!54115 (= (size!4 (tail!987 (reverse!1 list!838))) lt!15201)))

(declare-fun b!71536 () Bool)

(assert (=> b!71536 (= e!38701 0)))

(declare-fun b!71537 () Bool)

(assert (=> b!71537 (= e!38701 (+ 1 (size!4 (tail!987 (tail!987 (reverse!1 list!838))))))))

(assert (= (and d!54115 c!17123) b!71536))

(assert (= (and d!54115 (not c!17123)) b!71537))

(assert (=> b!71537 m!71350))

(assert (=> b!71499 d!54115))

(assert (=> b!71499 d!54105))

(push 1)

(assert (not b!71514))

(assert (not b!71530))

(assert (not d!54113))

(assert (not b!71510))

(assert (not b!71508))

(assert (not b!71534))

(assert (not b!71535))

(assert (not b!71533))

(assert (not b!71528))

(assert (not b!71521))

(assert (not b!71511))

(assert (not b!71512))

(assert (not b!71532))

(assert (not d!54103))

(assert (not d!54109))

(assert (not d!54105))

(assert (not b!71529))

(assert (not b!71537))

(assert (not b!71515))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54117 () Bool)

(declare-fun e!38702 () Bool)

(assert (=> d!54117 (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))) (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))) e!38702)))

(declare-fun res!35067 () Bool)

(assert (=> d!54117 (=> res!35067 e!38702)))

(declare-fun e!38703 () Bool)

(assert (=> d!54117 (= res!35067 (not e!38703))))

(declare-fun res!35069 () Bool)

(assert (=> d!54117 (=> (not res!35069) (not e!38703))))

(assert (=> d!54117 (= res!35069 (is-Cons!556 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))

(assert (=> d!54117 (= (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))) (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))

(assert (=> d!54117 (= (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))) (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))) true)))

(declare-fun b!71538 () Bool)

(assert (=> b!71538 (= e!38703 (is-Cons!556 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))))

(declare-fun b!71539 () Bool)

(declare-fun e!38704 () Bool)

(assert (=> b!71539 (= e!38702 e!38704)))

(declare-fun res!35068 () Bool)

(assert (=> b!71539 (=> (not res!35068) (not e!38704))))

(assert (=> b!71539 (= res!35068 (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))) (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))))

(declare-fun b!71540 () Bool)

(assert (=> b!71540 (= e!38704 (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))) (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))))

(assert (= (and d!54117 res!35069) b!71538))

(assert (= (and d!54117 (not res!35067)) b!71539))

(assert (= (and b!71539 res!35068) b!71540))

(declare-fun m!71358 () Bool)

(assert (=> d!54117 m!71358))

(assert (=> d!54117 m!71358))

(declare-fun m!71360 () Bool)

(assert (=> d!54117 m!71360))

(declare-fun m!71362 () Bool)

(assert (=> d!54117 m!71362))

(assert (=> d!54117 m!71354))

(assert (=> b!71538 m!71358))

(declare-fun m!71364 () Bool)

(assert (=> b!71539 m!71364))

(assert (=> b!71539 m!71364))

(declare-fun m!71366 () Bool)

(assert (=> b!71539 m!71366))

(assert (=> b!71540 m!71358))

(declare-fun m!71368 () Bool)

(assert (=> b!71540 m!71368))

(assert (=> b!71540 m!71368))

(declare-fun m!71370 () Bool)

(assert (=> b!71540 m!71370))

(assert (=> b!71535 d!54117))

(declare-fun d!54119 () Bool)

(declare-fun lt!15202 () Int)

(assert (=> d!54119 (>= lt!15202 0)))

(declare-fun e!38705 () Int)

(assert (=> d!54119 (= lt!15202 e!38705)))

(declare-fun c!17124 () Bool)

(assert (=> d!54119 (= c!17124 (is-Nil!557 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))

(assert (=> d!54119 (= (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))) lt!15202)))

(declare-fun b!71541 () Bool)

(assert (=> b!71541 (= e!38705 0)))

(declare-fun b!71542 () Bool)

(assert (=> b!71542 (= e!38705 (+ 1 (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))))

(assert (= (and d!54119 c!17124) b!71541))

(assert (= (and d!54119 (not c!17124)) b!71542))

(assert (=> b!71542 m!71364))

(assert (=> b!71535 d!54119))

(declare-fun b!71546 () Bool)

(declare-fun e!38707 () Bool)

(declare-fun lt!15203 () List!599)

(assert (=> b!71546 (= e!38707 (= (size!4 lt!15203) (size!4 (tail!987 (reverse!1 list!838)))))))

(declare-fun b!71545 () Bool)

(declare-fun res!35071 () Bool)

(assert (=> b!71545 (=> (not res!35071) (not e!38707))))

(assert (=> b!71545 (= res!35071 (= (lastOption!1 (tail!987 (reverse!1 list!838))) (headOption!1 lt!15203)))))

(declare-fun d!54121 () Bool)

(assert (=> d!54121 e!38707))

(declare-fun res!35070 () Bool)

(assert (=> d!54121 (=> (not res!35070) (not e!38707))))

(assert (=> d!54121 (= res!35070 (= (lastOption!1 lt!15203) (headOption!1 (tail!987 (reverse!1 list!838)))))))

(declare-fun e!38706 () List!599)

(assert (=> d!54121 (= lt!15203 e!38706)))

(declare-fun c!17125 () Bool)

(assert (=> d!54121 (= c!17125 (is-Cons!556 (tail!987 (reverse!1 list!838))))))

(assert (=> d!54121 (= (reverse!1 (tail!987 (reverse!1 list!838))) lt!15203)))

(declare-fun b!71544 () Bool)

(assert (=> b!71544 (= e!38706 Nil!557)))

(declare-fun b!71543 () Bool)

(assert (=> b!71543 (= e!38706 (addLast!0 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838)))) (head!966 (tail!987 (reverse!1 list!838)))))))

(assert (= (and d!54121 c!17125) b!71543))

(assert (= (and d!54121 (not c!17125)) b!71544))

(assert (= (and d!54121 res!35070) b!71545))

(assert (= (and b!71545 res!35071) b!71546))

(declare-fun m!71372 () Bool)

(assert (=> b!71546 m!71372))

(assert (=> b!71546 m!71300))

(declare-fun m!71374 () Bool)

(assert (=> b!71545 m!71374))

(declare-fun m!71376 () Bool)

(assert (=> b!71545 m!71376))

(declare-fun m!71378 () Bool)

(assert (=> d!54121 m!71378))

(declare-fun m!71380 () Bool)

(assert (=> d!54121 m!71380))

(declare-fun m!71382 () Bool)

(assert (=> b!71543 m!71382))

(assert (=> b!71543 m!71382))

(declare-fun m!71384 () Bool)

(assert (=> b!71543 m!71384))

(assert (=> b!71535 d!54121))

(assert (=> b!71533 d!54121))

(declare-fun d!54123 () Bool)

(declare-fun lt!15204 () Int)

(assert (=> d!54123 (>= lt!15204 0)))

(declare-fun e!38708 () Int)

(assert (=> d!54123 (= lt!15204 e!38708)))

(declare-fun c!17126 () Bool)

(assert (=> d!54123 (= c!17126 (is-Nil!557 lt!15196))))

(assert (=> d!54123 (= (size!4 lt!15196) lt!15204)))

(declare-fun b!71547 () Bool)

(assert (=> b!71547 (= e!38708 0)))

(declare-fun b!71548 () Bool)

(assert (=> b!71548 (= e!38708 (+ 1 (size!4 (tail!987 lt!15196))))))

(assert (= (and d!54123 c!17126) b!71547))

(assert (= (and d!54123 (not c!17126)) b!71548))

(declare-fun m!71386 () Bool)

(assert (=> b!71548 m!71386))

(assert (=> b!71515 d!54123))

(assert (=> b!71515 d!54107))

(declare-fun d!54125 () Bool)

(declare-fun e!38709 () Bool)

(assert (=> d!54125 (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (tail!987 list!838)))) (tail!987 (tail!987 list!838)))) e!38709)))

(declare-fun res!35072 () Bool)

(assert (=> d!54125 (=> res!35072 e!38709)))

(declare-fun e!38710 () Bool)

(assert (=> d!54125 (= res!35072 (not e!38710))))

(declare-fun res!35074 () Bool)

(assert (=> d!54125 (=> (not res!35074) (not e!38710))))

(assert (=> d!54125 (= res!35074 (is-Cons!556 (tail!987 (tail!987 list!838))))))

(assert (=> d!54125 (= (size!4 (tail!987 (tail!987 list!838))) (size!4 (tail!987 (tail!987 list!838))))))

(assert (=> d!54125 (= (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 list!838))) (tail!987 (tail!987 list!838))) true)))

(declare-fun b!71549 () Bool)

(assert (=> b!71549 (= e!38710 (is-Cons!556 (reverse!1 (tail!987 (tail!987 list!838)))))))

(declare-fun b!71550 () Bool)

(declare-fun e!38711 () Bool)

(assert (=> b!71550 (= e!38709 e!38711)))

(declare-fun res!35073 () Bool)

(assert (=> b!71550 (=> (not res!35073) (not e!38711))))

(assert (=> b!71550 (= res!35073 (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 (tail!987 list!838)))) (tail!987 (tail!987 (tail!987 list!838)))))))

(declare-fun b!71551 () Bool)

(assert (=> b!71551 (= e!38711 (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 (tail!987 list!838))))) (tail!987 (reverse!1 (tail!987 (tail!987 list!838))))))))

(assert (= (and d!54125 res!35074) b!71549))

(assert (= (and d!54125 (not res!35072)) b!71550))

(assert (= (and b!71550 res!35073) b!71551))

(declare-fun m!71388 () Bool)

(assert (=> d!54125 m!71388))

(assert (=> d!54125 m!71388))

(declare-fun m!71390 () Bool)

(assert (=> d!54125 m!71390))

(declare-fun m!71392 () Bool)

(assert (=> d!54125 m!71392))

(assert (=> d!54125 m!71338))

(assert (=> b!71549 m!71388))

(declare-fun m!71394 () Bool)

(assert (=> b!71550 m!71394))

(assert (=> b!71550 m!71394))

(declare-fun m!71396 () Bool)

(assert (=> b!71550 m!71396))

(assert (=> b!71551 m!71388))

(declare-fun m!71398 () Bool)

(assert (=> b!71551 m!71398))

(assert (=> b!71551 m!71398))

(declare-fun m!71400 () Bool)

(assert (=> b!71551 m!71400))

(assert (=> b!71529 d!54125))

(declare-fun d!54127 () Bool)

(declare-fun lt!15205 () Int)

(assert (=> d!54127 (>= lt!15205 0)))

(declare-fun e!38712 () Int)

(assert (=> d!54127 (= lt!15205 e!38712)))

(declare-fun c!17127 () Bool)

(assert (=> d!54127 (= c!17127 (is-Nil!557 (tail!987 (tail!987 list!838))))))

(assert (=> d!54127 (= (size!4 (tail!987 (tail!987 list!838))) lt!15205)))

(declare-fun b!71552 () Bool)

(assert (=> b!71552 (= e!38712 0)))

(declare-fun b!71553 () Bool)

(assert (=> b!71553 (= e!38712 (+ 1 (size!4 (tail!987 (tail!987 (tail!987 list!838))))))))

(assert (= (and d!54127 c!17127) b!71552))

(assert (= (and d!54127 (not c!17127)) b!71553))

(assert (=> b!71553 m!71394))

(assert (=> b!71529 d!54127))

(declare-fun d!54129 () Bool)

(declare-fun lt!15206 () Int)

(assert (=> d!54129 (>= lt!15206 0)))

(declare-fun e!38713 () Int)

(assert (=> d!54129 (= lt!15206 e!38713)))

(declare-fun c!17128 () Bool)

(assert (=> d!54129 (= c!17128 (is-Nil!557 lt!15195))))

(assert (=> d!54129 (= (size!4 lt!15195) lt!15206)))

(declare-fun b!71554 () Bool)

(assert (=> b!71554 (= e!38713 0)))

(declare-fun b!71555 () Bool)

(assert (=> b!71555 (= e!38713 (+ 1 (size!4 (tail!987 lt!15195))))))

(assert (= (and d!54129 c!17128) b!71554))

(assert (= (and d!54129 (not c!17128)) b!71555))

(declare-fun m!71402 () Bool)

(assert (=> b!71555 m!71402))

(assert (=> b!71511 d!54129))

(declare-fun d!54131 () Bool)

(declare-fun lt!15207 () Int)

(assert (=> d!54131 (>= lt!15207 0)))

(declare-fun e!38714 () Int)

(assert (=> d!54131 (= lt!15207 e!38714)))

(declare-fun c!17129 () Bool)

(assert (=> d!54131 (= c!17129 (is-Nil!557 (reverse!1 list!838)))))

(assert (=> d!54131 (= (size!4 (reverse!1 list!838)) lt!15207)))

(declare-fun b!71556 () Bool)

(assert (=> b!71556 (= e!38714 0)))

(declare-fun b!71557 () Bool)

(assert (=> b!71557 (= e!38714 (+ 1 (size!4 (tail!987 (reverse!1 list!838)))))))

(assert (= (and d!54131 c!17129) b!71556))

(assert (= (and d!54131 (not c!17129)) b!71557))

(assert (=> b!71557 m!71300))

(assert (=> b!71511 d!54131))

(declare-fun b!71568 () Bool)

(declare-fun res!35083 () Bool)

(declare-fun e!38719 () Bool)

(assert (=> b!71568 (=> (not res!35083) (not e!38719))))

(declare-fun lt!15210 () List!599)

(assert (=> b!71568 (= res!35083 (= (lastOption!1 lt!15210) (Some!481 (head!966 (reverse!1 list!838)))))))

(declare-fun b!71569 () Bool)

(assert (=> b!71569 (= e!38719 (= (+ (size!4 (reverse!1 (tail!987 (reverse!1 list!838)))) 1) (size!4 lt!15210)))))

(declare-fun b!71570 () Bool)

(declare-fun e!38720 () List!599)

(assert (=> b!71570 (= e!38720 (Cons!556 (head!966 (reverse!1 (tail!987 (reverse!1 list!838)))) (addLast!0 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))) (head!966 (reverse!1 list!838)))))))

(declare-fun b!71571 () Bool)

(assert (=> b!71571 (= e!38720 (Cons!556 (head!966 (reverse!1 list!838)) Nil!557))))

(declare-fun d!54133 () Bool)

(assert (=> d!54133 e!38719))

(declare-fun res!35084 () Bool)

(assert (=> d!54133 (=> (not res!35084) (not e!38719))))

(assert (=> d!54133 (= res!35084 (is-Cons!556 lt!15210))))

(assert (=> d!54133 (= lt!15210 e!38720)))

(declare-fun c!17132 () Bool)

(assert (=> d!54133 (= c!17132 (is-Cons!556 (reverse!1 (tail!987 (reverse!1 list!838)))))))

(assert (=> d!54133 (= (addLast!0 (reverse!1 (tail!987 (reverse!1 list!838))) (head!966 (reverse!1 list!838))) lt!15210)))

(declare-fun b!71572 () Bool)

(declare-fun res!35082 () Bool)

(assert (=> b!71572 (=> (not res!35082) (not e!38719))))

(declare-fun init!2 (List!599) List!599)

(assert (=> b!71572 (= res!35082 (= (init!2 lt!15210) (reverse!1 (tail!987 (reverse!1 list!838)))))))

(assert (= (and d!54133 c!17132) b!71570))

(assert (= (and d!54133 (not c!17132)) b!71571))

(assert (= (and d!54133 res!35084) b!71568))

(assert (= (and b!71568 res!35083) b!71572))

(assert (= (and b!71572 res!35082) b!71569))

(declare-fun m!71404 () Bool)

(assert (=> b!71568 m!71404))

(assert (=> b!71569 m!71316))

(declare-fun m!71406 () Bool)

(assert (=> b!71569 m!71406))

(declare-fun m!71408 () Bool)

(assert (=> b!71569 m!71408))

(declare-fun m!71410 () Bool)

(assert (=> b!71570 m!71410))

(declare-fun m!71412 () Bool)

(assert (=> b!71572 m!71412))

(assert (=> b!71508 d!54133))

(assert (=> b!71508 d!54121))

(declare-fun d!54135 () Bool)

(assert (=> d!54135 (= (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (reverse!1 list!838)))) (tail!987 (reverse!1 list!838)))) e!38698) (and e!38698 (prop!496 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (reverse!1 list!838)))) (tail!987 (reverse!1 list!838)))))))))

(assert (=> d!54113 d!54135))

(declare-fun b!71576 () Bool)

(declare-fun e!38722 () Bool)

(declare-fun lt!15211 () List!599)

(assert (=> b!71576 (= e!38722 (= (size!4 lt!15211) (size!4 (reverse!1 (tail!987 (reverse!1 list!838))))))))

(declare-fun b!71575 () Bool)

(declare-fun res!35086 () Bool)

(assert (=> b!71575 (=> (not res!35086) (not e!38722))))

(assert (=> b!71575 (= res!35086 (= (lastOption!1 (reverse!1 (tail!987 (reverse!1 list!838)))) (headOption!1 lt!15211)))))

(declare-fun d!54137 () Bool)

(assert (=> d!54137 e!38722))

(declare-fun res!35085 () Bool)

(assert (=> d!54137 (=> (not res!35085) (not e!38722))))

(assert (=> d!54137 (= res!35085 (= (lastOption!1 lt!15211) (headOption!1 (reverse!1 (tail!987 (reverse!1 list!838))))))))

(declare-fun e!38721 () List!599)

(assert (=> d!54137 (= lt!15211 e!38721)))

(declare-fun c!17133 () Bool)

(assert (=> d!54137 (= c!17133 (is-Cons!556 (reverse!1 (tail!987 (reverse!1 list!838)))))))

(assert (=> d!54137 (= (reverse!1 (reverse!1 (tail!987 (reverse!1 list!838)))) lt!15211)))

(declare-fun b!71574 () Bool)

(assert (=> b!71574 (= e!38721 Nil!557)))

(declare-fun b!71573 () Bool)

(assert (=> b!71573 (= e!38721 (addLast!0 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))) (head!966 (reverse!1 (tail!987 (reverse!1 list!838))))))))

(assert (= (and d!54137 c!17133) b!71573))

(assert (= (and d!54137 (not c!17133)) b!71574))

(assert (= (and d!54137 res!35085) b!71575))

(assert (= (and b!71575 res!35086) b!71576))

(declare-fun m!71414 () Bool)

(assert (=> b!71576 m!71414))

(assert (=> b!71576 m!71316))

(assert (=> b!71576 m!71406))

(assert (=> b!71575 m!71316))

(declare-fun m!71416 () Bool)

(assert (=> b!71575 m!71416))

(declare-fun m!71418 () Bool)

(assert (=> b!71575 m!71418))

(declare-fun m!71420 () Bool)

(assert (=> d!54137 m!71420))

(assert (=> d!54137 m!71316))

(declare-fun m!71422 () Bool)

(assert (=> d!54137 m!71422))

(assert (=> b!71573 m!71358))

(assert (=> b!71573 m!71358))

(declare-fun m!71424 () Bool)

(assert (=> b!71573 m!71424))

(assert (=> d!54113 d!54137))

(assert (=> d!54113 d!54121))

(assert (=> d!54113 d!54115))

(declare-fun b!71587 () Bool)

(declare-fun e!38728 () Option!505)

(assert (=> b!71587 (= e!38728 (lastOption!1 (tail!987 (reverse!1 list!838))))))

(declare-fun b!71586 () Bool)

(declare-fun e!38727 () Option!505)

(assert (=> b!71586 (= e!38727 e!38728)))

(declare-fun c!17139 () Bool)

(assert (=> b!71586 (= c!17139 (is-Cons!556 (reverse!1 list!838)))))

(declare-fun b!71585 () Bool)

(assert (=> b!71585 (= e!38727 (Some!481 (head!966 (reverse!1 list!838))))))

(declare-fun d!54139 () Bool)

(declare-fun c!17138 () Bool)

(assert (=> d!54139 (= c!17138 (and (is-Cons!556 (reverse!1 list!838)) (is-Nil!557 (tail!987 (reverse!1 list!838)))))))

(assert (=> d!54139 (= (lastOption!1 (reverse!1 list!838)) e!38727)))

(declare-fun b!71588 () Bool)

(assert (=> b!71588 (= e!38728 None!482)))

(assert (= (and b!71586 c!17139) b!71587))

(assert (= (and b!71586 (not c!17139)) b!71588))

(assert (= (and d!54139 c!17138) b!71585))

(assert (= (and d!54139 (not c!17138)) b!71586))

(assert (=> b!71587 m!71374))

(assert (=> b!71510 d!54139))

(declare-fun d!54141 () Bool)

(assert (=> d!54141 (= (headOption!1 lt!15195) (ite (is-Cons!556 lt!15195) (Some!481 (head!966 lt!15195)) None!482))))

(assert (=> b!71510 d!54141))

(declare-fun b!71591 () Bool)

(declare-fun e!38730 () Option!505)

(assert (=> b!71591 (= e!38730 (lastOption!1 (tail!987 lt!15196)))))

(declare-fun b!71590 () Bool)

(declare-fun e!38729 () Option!505)

(assert (=> b!71590 (= e!38729 e!38730)))

(declare-fun c!17141 () Bool)

(assert (=> b!71590 (= c!17141 (is-Cons!556 lt!15196))))

(declare-fun b!71589 () Bool)

(assert (=> b!71589 (= e!38729 (Some!481 (head!966 lt!15196)))))

(declare-fun d!54143 () Bool)

(declare-fun c!17140 () Bool)

(assert (=> d!54143 (= c!17140 (and (is-Cons!556 lt!15196) (is-Nil!557 (tail!987 lt!15196))))))

(assert (=> d!54143 (= (lastOption!1 lt!15196) e!38729)))

(declare-fun b!71592 () Bool)

(assert (=> b!71592 (= e!38730 None!482)))

(assert (= (and b!71590 c!17141) b!71591))

(assert (= (and b!71590 (not c!17141)) b!71592))

(assert (= (and d!54143 c!17140) b!71589))

(assert (= (and d!54143 (not c!17140)) b!71590))

(declare-fun m!71426 () Bool)

(assert (=> b!71591 m!71426))

(assert (=> d!54105 d!54143))

(declare-fun d!54145 () Bool)

(assert (=> d!54145 (= (headOption!1 list!838) (ite (is-Cons!556 list!838) (Some!481 (head!966 list!838)) None!482))))

(assert (=> d!54105 d!54145))

(declare-fun b!71595 () Bool)

(declare-fun e!38732 () Option!505)

(assert (=> b!71595 (= e!38732 (lastOption!1 (tail!987 lt!15195)))))

(declare-fun b!71594 () Bool)

(declare-fun e!38731 () Option!505)

(assert (=> b!71594 (= e!38731 e!38732)))

(declare-fun c!17143 () Bool)

(assert (=> b!71594 (= c!17143 (is-Cons!556 lt!15195))))

(declare-fun b!71593 () Bool)

(assert (=> b!71593 (= e!38731 (Some!481 (head!966 lt!15195)))))

(declare-fun d!54147 () Bool)

(declare-fun c!17142 () Bool)

(assert (=> d!54147 (= c!17142 (and (is-Cons!556 lt!15195) (is-Nil!557 (tail!987 lt!15195))))))

(assert (=> d!54147 (= (lastOption!1 lt!15195) e!38731)))

(declare-fun b!71596 () Bool)

(assert (=> b!71596 (= e!38732 None!482)))

(assert (= (and b!71594 c!17143) b!71595))

(assert (= (and b!71594 (not c!17143)) b!71596))

(assert (= (and d!54147 c!17142) b!71593))

(assert (= (and d!54147 (not c!17142)) b!71594))

(declare-fun m!71428 () Bool)

(assert (=> b!71595 m!71428))

(assert (=> d!54103 d!54147))

(declare-fun d!54149 () Bool)

(assert (=> d!54149 (= (headOption!1 (reverse!1 list!838)) (ite (is-Cons!556 (reverse!1 list!838)) (Some!481 (head!966 (reverse!1 list!838))) None!482))))

(assert (=> d!54103 d!54149))

(declare-fun d!54151 () Bool)

(assert (=> d!54151 (= (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 list!838))) (tail!987 list!838))) e!38694) (and e!38694 (prop!496 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 list!838))) (tail!987 list!838))))))))

(assert (=> d!54109 d!54151))

(declare-fun b!71600 () Bool)

(declare-fun e!38734 () Bool)

(declare-fun lt!15212 () List!599)

(assert (=> b!71600 (= e!38734 (= (size!4 lt!15212) (size!4 (reverse!1 (tail!987 list!838)))))))

(declare-fun b!71599 () Bool)

(declare-fun res!35088 () Bool)

(assert (=> b!71599 (=> (not res!35088) (not e!38734))))

(assert (=> b!71599 (= res!35088 (= (lastOption!1 (reverse!1 (tail!987 list!838))) (headOption!1 lt!15212)))))

(declare-fun d!54153 () Bool)

(assert (=> d!54153 e!38734))

(declare-fun res!35087 () Bool)

(assert (=> d!54153 (=> (not res!35087) (not e!38734))))

(assert (=> d!54153 (= res!35087 (= (lastOption!1 lt!15212) (headOption!1 (reverse!1 (tail!987 list!838)))))))

(declare-fun e!38733 () List!599)

(assert (=> d!54153 (= lt!15212 e!38733)))

(declare-fun c!17144 () Bool)

(assert (=> d!54153 (= c!17144 (is-Cons!556 (reverse!1 (tail!987 list!838))))))

(assert (=> d!54153 (= (reverse!1 (reverse!1 (tail!987 list!838))) lt!15212)))

(declare-fun b!71598 () Bool)

(assert (=> b!71598 (= e!38733 Nil!557)))

(declare-fun b!71597 () Bool)

(assert (=> b!71597 (= e!38733 (addLast!0 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838)))) (head!966 (reverse!1 (tail!987 list!838)))))))

(assert (= (and d!54153 c!17144) b!71597))

(assert (= (and d!54153 (not c!17144)) b!71598))

(assert (= (and d!54153 res!35087) b!71599))

(assert (= (and b!71599 res!35088) b!71600))

(declare-fun m!71430 () Bool)

(assert (=> b!71600 m!71430))

(assert (=> b!71600 m!71330))

(declare-fun m!71432 () Bool)

(assert (=> b!71600 m!71432))

(assert (=> b!71599 m!71330))

(declare-fun m!71434 () Bool)

(assert (=> b!71599 m!71434))

(declare-fun m!71436 () Bool)

(assert (=> b!71599 m!71436))

(declare-fun m!71438 () Bool)

(assert (=> d!54153 m!71438))

(assert (=> d!54153 m!71330))

(declare-fun m!71440 () Bool)

(assert (=> d!54153 m!71440))

(declare-fun m!71442 () Bool)

(assert (=> b!71597 m!71442))

(assert (=> b!71597 m!71442))

(declare-fun m!71444 () Bool)

(assert (=> b!71597 m!71444))

(assert (=> d!54109 d!54153))

(declare-fun b!71604 () Bool)

(declare-fun e!38736 () Bool)

(declare-fun lt!15213 () List!599)

(assert (=> b!71604 (= e!38736 (= (size!4 lt!15213) (size!4 (tail!987 list!838))))))

(declare-fun b!71603 () Bool)

(declare-fun res!35090 () Bool)

(assert (=> b!71603 (=> (not res!35090) (not e!38736))))

(assert (=> b!71603 (= res!35090 (= (lastOption!1 (tail!987 list!838)) (headOption!1 lt!15213)))))

(declare-fun d!54155 () Bool)

(assert (=> d!54155 e!38736))

(declare-fun res!35089 () Bool)

(assert (=> d!54155 (=> (not res!35089) (not e!38736))))

(assert (=> d!54155 (= res!35089 (= (lastOption!1 lt!15213) (headOption!1 (tail!987 list!838))))))

(declare-fun e!38735 () List!599)

(assert (=> d!54155 (= lt!15213 e!38735)))

(declare-fun c!17145 () Bool)

(assert (=> d!54155 (= c!17145 (is-Cons!556 (tail!987 list!838)))))

(assert (=> d!54155 (= (reverse!1 (tail!987 list!838)) lt!15213)))

(declare-fun b!71602 () Bool)

(assert (=> b!71602 (= e!38735 Nil!557)))

(declare-fun b!71601 () Bool)

(assert (=> b!71601 (= e!38735 (addLast!0 (reverse!1 (tail!987 (tail!987 list!838))) (head!966 (tail!987 list!838))))))

(assert (= (and d!54155 c!17145) b!71601))

(assert (= (and d!54155 (not c!17145)) b!71602))

(assert (= (and d!54155 res!35089) b!71603))

(assert (= (and b!71603 res!35090) b!71604))

(declare-fun m!71446 () Bool)

(assert (=> b!71604 m!71446))

(assert (=> b!71604 m!71288))

(declare-fun m!71448 () Bool)

(assert (=> b!71603 m!71448))

(declare-fun m!71450 () Bool)

(assert (=> b!71603 m!71450))

(declare-fun m!71452 () Bool)

(assert (=> d!54155 m!71452))

(declare-fun m!71454 () Bool)

(assert (=> d!54155 m!71454))

(assert (=> b!71601 m!71388))

(assert (=> b!71601 m!71388))

(declare-fun m!71456 () Bool)

(assert (=> b!71601 m!71456))

(assert (=> d!54109 d!54155))

(assert (=> d!54109 d!54111))

(declare-fun d!54157 () Bool)

(declare-fun e!38737 () Bool)

(assert (=> d!54157 (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838))))) (tail!987 (reverse!1 (tail!987 list!838))))) e!38737)))

(declare-fun res!35091 () Bool)

(assert (=> d!54157 (=> res!35091 e!38737)))

(declare-fun e!38738 () Bool)

(assert (=> d!54157 (= res!35091 (not e!38738))))

(declare-fun res!35093 () Bool)

(assert (=> d!54157 (=> (not res!35093) (not e!38738))))

(assert (=> d!54157 (= res!35093 (is-Cons!556 (tail!987 (reverse!1 (tail!987 list!838)))))))

(assert (=> d!54157 (= (size!4 (tail!987 (reverse!1 (tail!987 list!838)))) (size!4 (tail!987 (reverse!1 (tail!987 list!838)))))))

(assert (=> d!54157 (= (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 list!838)))) (tail!987 (reverse!1 (tail!987 list!838)))) true)))

(declare-fun b!71605 () Bool)

(assert (=> b!71605 (= e!38738 (is-Cons!556 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838))))))))

(declare-fun b!71606 () Bool)

(declare-fun e!38739 () Bool)

(assert (=> b!71606 (= e!38737 e!38739)))

(declare-fun res!35092 () Bool)

(assert (=> b!71606 (=> (not res!35092) (not e!38739))))

(assert (=> b!71606 (= res!35092 (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 list!838))))) (tail!987 (tail!987 (reverse!1 (tail!987 list!838))))))))

(declare-fun b!71607 () Bool)

(assert (=> b!71607 (= e!38739 (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838)))))) (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838)))))))))

(assert (= (and d!54157 res!35093) b!71605))

(assert (= (and d!54157 (not res!35091)) b!71606))

(assert (= (and b!71606 res!35092) b!71607))

(assert (=> d!54157 m!71442))

(assert (=> d!54157 m!71442))

(declare-fun m!71458 () Bool)

(assert (=> d!54157 m!71458))

(declare-fun m!71460 () Bool)

(assert (=> d!54157 m!71460))

(assert (=> d!54157 m!71342))

(assert (=> b!71605 m!71442))

(declare-fun m!71462 () Bool)

(assert (=> b!71606 m!71462))

(assert (=> b!71606 m!71462))

(declare-fun m!71464 () Bool)

(assert (=> b!71606 m!71464))

(assert (=> b!71607 m!71442))

(declare-fun m!71466 () Bool)

(assert (=> b!71607 m!71466))

(assert (=> b!71607 m!71466))

(declare-fun m!71468 () Bool)

(assert (=> b!71607 m!71468))

(assert (=> b!71530 d!54157))

(declare-fun d!54159 () Bool)

(declare-fun lt!15214 () Int)

(assert (=> d!54159 (>= lt!15214 0)))

(declare-fun e!38740 () Int)

(assert (=> d!54159 (= lt!15214 e!38740)))

(declare-fun c!17146 () Bool)

(assert (=> d!54159 (= c!17146 (is-Nil!557 (tail!987 (reverse!1 (tail!987 list!838)))))))

(assert (=> d!54159 (= (size!4 (tail!987 (reverse!1 (tail!987 list!838)))) lt!15214)))

(declare-fun b!71608 () Bool)

(assert (=> b!71608 (= e!38740 0)))

(declare-fun b!71609 () Bool)

(assert (=> b!71609 (= e!38740 (+ 1 (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 list!838)))))))))

(assert (= (and d!54159 c!17146) b!71608))

(assert (= (and d!54159 (not c!17146)) b!71609))

(assert (=> b!71609 m!71462))

(assert (=> b!71530 d!54159))

(assert (=> b!71530 d!54155))

(declare-fun d!54161 () Bool)

(declare-fun lt!15215 () Int)

(assert (=> d!54161 (>= lt!15215 0)))

(declare-fun e!38741 () Int)

(assert (=> d!54161 (= lt!15215 e!38741)))

(declare-fun c!17147 () Bool)

(assert (=> d!54161 (= c!17147 (is-Nil!557 (tail!987 (tail!987 (reverse!1 list!838)))))))

(assert (=> d!54161 (= (size!4 (tail!987 (tail!987 (reverse!1 list!838)))) lt!15215)))

(declare-fun b!71610 () Bool)

(assert (=> b!71610 (= e!38741 0)))

(declare-fun b!71611 () Bool)

(assert (=> b!71611 (= e!38741 (+ 1 (size!4 (tail!987 (tail!987 (tail!987 (reverse!1 list!838)))))))))

(assert (= (and d!54161 c!17147) b!71610))

(assert (= (and d!54161 (not c!17147)) b!71611))

(declare-fun m!71470 () Bool)

(assert (=> b!71611 m!71470))

(assert (=> b!71537 d!54161))

(declare-fun d!54163 () Bool)

(declare-fun e!38742 () Bool)

(assert (=> d!54163 (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838))))) (tail!987 (tail!987 (reverse!1 list!838))))) e!38742)))

(declare-fun res!35094 () Bool)

(assert (=> d!54163 (=> res!35094 e!38742)))

(declare-fun e!38743 () Bool)

(assert (=> d!54163 (= res!35094 (not e!38743))))

(declare-fun res!35096 () Bool)

(assert (=> d!54163 (=> (not res!35096) (not e!38743))))

(assert (=> d!54163 (= res!35096 (is-Cons!556 (tail!987 (tail!987 (reverse!1 list!838)))))))

(assert (=> d!54163 (= (size!4 (tail!987 (tail!987 (reverse!1 list!838)))) (size!4 (tail!987 (tail!987 (reverse!1 list!838)))))))

(assert (=> d!54163 (= (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 (reverse!1 list!838)))) (tail!987 (tail!987 (reverse!1 list!838)))) true)))

(declare-fun b!71612 () Bool)

(assert (=> b!71612 (= e!38743 (is-Cons!556 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838))))))))

(declare-fun b!71613 () Bool)

(declare-fun e!38744 () Bool)

(assert (=> b!71613 (= e!38742 e!38744)))

(declare-fun res!35095 () Bool)

(assert (=> b!71613 (=> (not res!35095) (not e!38744))))

(assert (=> b!71613 (= res!35095 (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 (tail!987 (reverse!1 list!838))))) (tail!987 (tail!987 (tail!987 (reverse!1 list!838))))))))

(declare-fun b!71614 () Bool)

(assert (=> b!71614 (= e!38744 (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838)))))) (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838)))))))))

(assert (= (and d!54163 res!35096) b!71612))

(assert (= (and d!54163 (not res!35094)) b!71613))

(assert (= (and b!71613 res!35095) b!71614))

(assert (=> d!54163 m!71382))

(assert (=> d!54163 m!71382))

(declare-fun m!71472 () Bool)

(assert (=> d!54163 m!71472))

(declare-fun m!71474 () Bool)

(assert (=> d!54163 m!71474))

(assert (=> d!54163 m!71350))

(assert (=> b!71612 m!71382))

(assert (=> b!71613 m!71470))

(assert (=> b!71613 m!71470))

(declare-fun m!71476 () Bool)

(assert (=> b!71613 m!71476))

(assert (=> b!71614 m!71382))

(declare-fun m!71478 () Bool)

(assert (=> b!71614 m!71478))

(assert (=> b!71614 m!71478))

(declare-fun m!71480 () Bool)

(assert (=> b!71614 m!71480))

(assert (=> b!71534 d!54163))

(assert (=> b!71534 d!54161))

(assert (=> b!71532 d!54127))

(declare-fun b!71617 () Bool)

(declare-fun e!38746 () Option!505)

(assert (=> b!71617 (= e!38746 (lastOption!1 (tail!987 list!838)))))

(declare-fun b!71616 () Bool)

(declare-fun e!38745 () Option!505)

(assert (=> b!71616 (= e!38745 e!38746)))

(declare-fun c!17149 () Bool)

(assert (=> b!71616 (= c!17149 (is-Cons!556 list!838))))

(declare-fun b!71615 () Bool)

(assert (=> b!71615 (= e!38745 (Some!481 (head!966 list!838)))))

(declare-fun d!54165 () Bool)

(declare-fun c!17148 () Bool)

(assert (=> d!54165 (= c!17148 (and (is-Cons!556 list!838) (is-Nil!557 (tail!987 list!838))))))

(assert (=> d!54165 (= (lastOption!1 list!838) e!38745)))

(declare-fun b!71618 () Bool)

(assert (=> b!71618 (= e!38746 None!482)))

(assert (= (and b!71616 c!17149) b!71617))

(assert (= (and b!71616 (not c!17149)) b!71618))

(assert (= (and d!54165 c!17148) b!71615))

(assert (= (and d!54165 (not c!17148)) b!71616))

(assert (=> b!71617 m!71448))

(assert (=> b!71514 d!54165))

(declare-fun d!54167 () Bool)

(assert (=> d!54167 (= (headOption!1 lt!15196) (ite (is-Cons!556 lt!15196) (Some!481 (head!966 lt!15196)) None!482))))

(assert (=> b!71514 d!54167))

(assert (=> b!71521 d!54111))

(declare-fun b!71619 () Bool)

(declare-fun res!35098 () Bool)

(declare-fun e!38747 () Bool)

(assert (=> b!71619 (=> (not res!35098) (not e!38747))))

(declare-fun lt!15216 () List!599)

(assert (=> b!71619 (= res!35098 (= (lastOption!1 lt!15216) (Some!481 (head!966 list!838))))))

(declare-fun b!71620 () Bool)

(assert (=> b!71620 (= e!38747 (= (+ (size!4 (reverse!1 (tail!987 list!838))) 1) (size!4 lt!15216)))))

(declare-fun b!71621 () Bool)

(declare-fun e!38748 () List!599)

(assert (=> b!71621 (= e!38748 (Cons!556 (head!966 (reverse!1 (tail!987 list!838))) (addLast!0 (tail!987 (reverse!1 (tail!987 list!838))) (head!966 list!838))))))

(declare-fun b!71622 () Bool)

(assert (=> b!71622 (= e!38748 (Cons!556 (head!966 list!838) Nil!557))))

(declare-fun d!54169 () Bool)

(assert (=> d!54169 e!38747))

(declare-fun res!35099 () Bool)

(assert (=> d!54169 (=> (not res!35099) (not e!38747))))

(assert (=> d!54169 (= res!35099 (is-Cons!556 lt!15216))))

(assert (=> d!54169 (= lt!15216 e!38748)))

(declare-fun c!17150 () Bool)

(assert (=> d!54169 (= c!17150 (is-Cons!556 (reverse!1 (tail!987 list!838))))))

(assert (=> d!54169 (= (addLast!0 (reverse!1 (tail!987 list!838)) (head!966 list!838)) lt!15216)))

(declare-fun b!71623 () Bool)

(declare-fun res!35097 () Bool)

(assert (=> b!71623 (=> (not res!35097) (not e!38747))))

(assert (=> b!71623 (= res!35097 (= (init!2 lt!15216) (reverse!1 (tail!987 list!838))))))

(assert (= (and d!54169 c!17150) b!71621))

(assert (= (and d!54169 (not c!17150)) b!71622))

(assert (= (and d!54169 res!35099) b!71619))

(assert (= (and b!71619 res!35098) b!71623))

(assert (= (and b!71623 res!35097) b!71620))

(declare-fun m!71482 () Bool)

(assert (=> b!71619 m!71482))

(assert (=> b!71620 m!71330))

(assert (=> b!71620 m!71432))

(declare-fun m!71484 () Bool)

(assert (=> b!71620 m!71484))

(declare-fun m!71486 () Bool)

(assert (=> b!71621 m!71486))

(declare-fun m!71488 () Bool)

(assert (=> b!71623 m!71488))

(assert (=> b!71512 d!54169))

(assert (=> b!71512 d!54155))

(assert (=> b!71528 d!54155))

(push 1)

(assert (not b!71601))

(assert (not b!71613))

(assert (not b!71573))

(assert (not b!71548))

(assert (not b!71538))

(assert (not b!71568))

(assert (not b!71542))

(assert (not b!71611))

(assert (not d!54117))

(assert (not b!71606))

(assert (not b!71549))

(assert (not d!54137))

(assert (not d!54121))

(assert (not b!71550))

(assert (not b!71620))

(assert (not b!71555))

(assert (not b!71575))

(assert (not b!71617))

(assert (not b!71599))

(assert (not b!71553))

(assert (not b!71603))

(assert (not b!71623))

(assert (not b!71587))

(assert (not d!54125))

(assert (not b!71600))

(assert (not b!71595))

(assert (not b!71604))

(assert (not b!71569))

(assert (not b!71591))

(assert (not b!71621))

(assert (not d!54153))

(assert (not b!71545))

(assert (not b!71546))

(assert (not b!71576))

(assert (not b!71557))

(assert (not b!71605))

(assert (not b!71570))

(assert (not b!71607))

(assert (not b!71609))

(assert (not d!54157))

(assert (not b!71543))

(assert (not d!54155))

(assert (not b!71539))

(assert (not b!71612))

(assert (not d!54163))

(assert (not b!71614))

(assert (not b!71551))

(assert (not b!71619))

(assert (not b!71572))

(assert (not b!71597))

(assert (not b!71540))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!71624 () Bool)

(declare-fun res!35101 () Bool)

(declare-fun e!38749 () Bool)

(assert (=> b!71624 (=> (not res!35101) (not e!38749))))

(declare-fun lt!15217 () List!599)

(assert (=> b!71624 (= res!35101 (= (lastOption!1 lt!15217) (Some!481 (head!966 (tail!987 (reverse!1 list!838))))))))

(declare-fun b!71625 () Bool)

(assert (=> b!71625 (= e!38749 (= (+ (size!4 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838))))) 1) (size!4 lt!15217)))))

(declare-fun b!71626 () Bool)

(declare-fun e!38750 () List!599)

(assert (=> b!71626 (= e!38750 (Cons!556 (head!966 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838))))) (addLast!0 (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838))))) (head!966 (tail!987 (reverse!1 list!838))))))))

(declare-fun b!71627 () Bool)

(assert (=> b!71627 (= e!38750 (Cons!556 (head!966 (tail!987 (reverse!1 list!838))) Nil!557))))

(declare-fun d!54171 () Bool)

(assert (=> d!54171 e!38749))

(declare-fun res!35102 () Bool)

(assert (=> d!54171 (=> (not res!35102) (not e!38749))))

(assert (=> d!54171 (= res!35102 (is-Cons!556 lt!15217))))

(assert (=> d!54171 (= lt!15217 e!38750)))

(declare-fun c!17151 () Bool)

(assert (=> d!54171 (= c!17151 (is-Cons!556 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838))))))))

(assert (=> d!54171 (= (addLast!0 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838)))) (head!966 (tail!987 (reverse!1 list!838)))) lt!15217)))

(declare-fun b!71628 () Bool)

(declare-fun res!35100 () Bool)

(assert (=> b!71628 (=> (not res!35100) (not e!38749))))

(assert (=> b!71628 (= res!35100 (= (init!2 lt!15217) (reverse!1 (tail!987 (tail!987 (reverse!1 list!838))))))))

(assert (= (and d!54171 c!17151) b!71626))

(assert (= (and d!54171 (not c!17151)) b!71627))

(assert (= (and d!54171 res!35102) b!71624))

(assert (= (and b!71624 res!35101) b!71628))

(assert (= (and b!71628 res!35100) b!71625))

(declare-fun m!71490 () Bool)

(assert (=> b!71624 m!71490))

(assert (=> b!71625 m!71382))

(declare-fun m!71492 () Bool)

(assert (=> b!71625 m!71492))

(declare-fun m!71494 () Bool)

(assert (=> b!71625 m!71494))

(declare-fun m!71496 () Bool)

(assert (=> b!71626 m!71496))

(declare-fun m!71498 () Bool)

(assert (=> b!71628 m!71498))

(assert (=> b!71543 d!54171))

(declare-fun b!71632 () Bool)

(declare-fun e!38752 () Bool)

(declare-fun lt!15218 () List!599)

(assert (=> b!71632 (= e!38752 (= (size!4 lt!15218) (size!4 (tail!987 (tail!987 (reverse!1 list!838))))))))

(declare-fun b!71631 () Bool)

(declare-fun res!35104 () Bool)

(assert (=> b!71631 (=> (not res!35104) (not e!38752))))

(assert (=> b!71631 (= res!35104 (= (lastOption!1 (tail!987 (tail!987 (reverse!1 list!838)))) (headOption!1 lt!15218)))))

(declare-fun d!54173 () Bool)

(assert (=> d!54173 e!38752))

(declare-fun res!35103 () Bool)

(assert (=> d!54173 (=> (not res!35103) (not e!38752))))

(assert (=> d!54173 (= res!35103 (= (lastOption!1 lt!15218) (headOption!1 (tail!987 (tail!987 (reverse!1 list!838))))))))

(declare-fun e!38751 () List!599)

(assert (=> d!54173 (= lt!15218 e!38751)))

(declare-fun c!17152 () Bool)

(assert (=> d!54173 (= c!17152 (is-Cons!556 (tail!987 (tail!987 (reverse!1 list!838)))))))

(assert (=> d!54173 (= (reverse!1 (tail!987 (tail!987 (reverse!1 list!838)))) lt!15218)))

(declare-fun b!71630 () Bool)

(assert (=> b!71630 (= e!38751 Nil!557)))

(declare-fun b!71629 () Bool)

(assert (=> b!71629 (= e!38751 (addLast!0 (reverse!1 (tail!987 (tail!987 (tail!987 (reverse!1 list!838))))) (head!966 (tail!987 (tail!987 (reverse!1 list!838))))))))

(assert (= (and d!54173 c!17152) b!71629))

(assert (= (and d!54173 (not c!17152)) b!71630))

(assert (= (and d!54173 res!35103) b!71631))

(assert (= (and b!71631 res!35104) b!71632))

(declare-fun m!71500 () Bool)

(assert (=> b!71632 m!71500))

(assert (=> b!71632 m!71350))

(declare-fun m!71502 () Bool)

(assert (=> b!71631 m!71502))

(declare-fun m!71504 () Bool)

(assert (=> b!71631 m!71504))

(declare-fun m!71506 () Bool)

(assert (=> d!54173 m!71506))

(declare-fun m!71508 () Bool)

(assert (=> d!54173 m!71508))

(declare-fun m!71510 () Bool)

(assert (=> b!71629 m!71510))

(assert (=> b!71629 m!71510))

(declare-fun m!71512 () Bool)

(assert (=> b!71629 m!71512))

(assert (=> b!71543 d!54173))

(assert (=> b!71557 d!54115))

(assert (=> b!71612 d!54173))

(declare-fun b!71635 () Bool)

(declare-fun e!38754 () Option!505)

(assert (=> b!71635 (= e!38754 (lastOption!1 (tail!987 lt!15210)))))

(declare-fun b!71634 () Bool)

(declare-fun e!38753 () Option!505)

(assert (=> b!71634 (= e!38753 e!38754)))

(declare-fun c!17154 () Bool)

(assert (=> b!71634 (= c!17154 (is-Cons!556 lt!15210))))

(declare-fun b!71633 () Bool)

(assert (=> b!71633 (= e!38753 (Some!481 (head!966 lt!15210)))))

(declare-fun d!54175 () Bool)

(declare-fun c!17153 () Bool)

(assert (=> d!54175 (= c!17153 (and (is-Cons!556 lt!15210) (is-Nil!557 (tail!987 lt!15210))))))

(assert (=> d!54175 (= (lastOption!1 lt!15210) e!38753)))

(declare-fun b!71636 () Bool)

(assert (=> b!71636 (= e!38754 None!482)))

(assert (= (and b!71634 c!17154) b!71635))

(assert (= (and b!71634 (not c!17154)) b!71636))

(assert (= (and d!54175 c!17153) b!71633))

(assert (= (and d!54175 (not c!17153)) b!71634))

(declare-fun m!71514 () Bool)

(assert (=> b!71635 m!71514))

(assert (=> b!71568 d!54175))

(declare-fun d!54177 () Bool)

(declare-fun lt!15219 () Int)

(assert (=> d!54177 (>= lt!15219 0)))

(declare-fun e!38755 () Int)

(assert (=> d!54177 (= lt!15219 e!38755)))

(declare-fun c!17155 () Bool)

(assert (=> d!54177 (= c!17155 (is-Nil!557 (tail!987 (tail!987 (tail!987 (reverse!1 list!838))))))))

(assert (=> d!54177 (= (size!4 (tail!987 (tail!987 (tail!987 (reverse!1 list!838))))) lt!15219)))

(declare-fun b!71637 () Bool)

(assert (=> b!71637 (= e!38755 0)))

(declare-fun b!71638 () Bool)

(assert (=> b!71638 (= e!38755 (+ 1 (size!4 (tail!987 (tail!987 (tail!987 (tail!987 (reverse!1 list!838))))))))))

(assert (= (and d!54177 c!17155) b!71637))

(assert (= (and d!54177 (not c!17155)) b!71638))

(declare-fun m!71516 () Bool)

(assert (=> b!71638 m!71516))

(assert (=> b!71611 d!54177))

(declare-fun b!71641 () Bool)

(declare-fun e!38757 () Option!505)

(assert (=> b!71641 (= e!38757 (lastOption!1 (tail!987 (tail!987 list!838))))))

(declare-fun b!71640 () Bool)

(declare-fun e!38756 () Option!505)

(assert (=> b!71640 (= e!38756 e!38757)))

(declare-fun c!17157 () Bool)

(assert (=> b!71640 (= c!17157 (is-Cons!556 (tail!987 list!838)))))

(declare-fun b!71639 () Bool)

(assert (=> b!71639 (= e!38756 (Some!481 (head!966 (tail!987 list!838))))))

(declare-fun d!54179 () Bool)

(declare-fun c!17156 () Bool)

(assert (=> d!54179 (= c!17156 (and (is-Cons!556 (tail!987 list!838)) (is-Nil!557 (tail!987 (tail!987 list!838)))))))

(assert (=> d!54179 (= (lastOption!1 (tail!987 list!838)) e!38756)))

(declare-fun b!71642 () Bool)

(assert (=> b!71642 (= e!38757 None!482)))

(assert (= (and b!71640 c!17157) b!71641))

(assert (= (and b!71640 (not c!17157)) b!71642))

(assert (= (and d!54179 c!17156) b!71639))

(assert (= (and d!54179 (not c!17156)) b!71640))

(declare-fun m!71518 () Bool)

(assert (=> b!71641 m!71518))

(assert (=> b!71617 d!54179))

(declare-fun b!71643 () Bool)

(declare-fun res!35106 () Bool)

(declare-fun e!38758 () Bool)

(assert (=> b!71643 (=> (not res!35106) (not e!38758))))

(declare-fun lt!15220 () List!599)

(assert (=> b!71643 (= res!35106 (= (lastOption!1 lt!15220) (Some!481 (head!966 list!838))))))

(declare-fun b!71644 () Bool)

(assert (=> b!71644 (= e!38758 (= (+ (size!4 (tail!987 (reverse!1 (tail!987 list!838)))) 1) (size!4 lt!15220)))))

(declare-fun b!71645 () Bool)

(declare-fun e!38759 () List!599)

(assert (=> b!71645 (= e!38759 (Cons!556 (head!966 (tail!987 (reverse!1 (tail!987 list!838)))) (addLast!0 (tail!987 (tail!987 (reverse!1 (tail!987 list!838)))) (head!966 list!838))))))

(declare-fun b!71646 () Bool)

(assert (=> b!71646 (= e!38759 (Cons!556 (head!966 list!838) Nil!557))))

(declare-fun d!54181 () Bool)

(assert (=> d!54181 e!38758))

(declare-fun res!35107 () Bool)

(assert (=> d!54181 (=> (not res!35107) (not e!38758))))

(assert (=> d!54181 (= res!35107 (is-Cons!556 lt!15220))))

(assert (=> d!54181 (= lt!15220 e!38759)))

(declare-fun c!17158 () Bool)

(assert (=> d!54181 (= c!17158 (is-Cons!556 (tail!987 (reverse!1 (tail!987 list!838)))))))

(assert (=> d!54181 (= (addLast!0 (tail!987 (reverse!1 (tail!987 list!838))) (head!966 list!838)) lt!15220)))

(declare-fun b!71647 () Bool)

(declare-fun res!35105 () Bool)

(assert (=> b!71647 (=> (not res!35105) (not e!38758))))

(assert (=> b!71647 (= res!35105 (= (init!2 lt!15220) (tail!987 (reverse!1 (tail!987 list!838)))))))

(assert (= (and d!54181 c!17158) b!71645))

(assert (= (and d!54181 (not c!17158)) b!71646))

(assert (= (and d!54181 res!35107) b!71643))

(assert (= (and b!71643 res!35106) b!71647))

(assert (= (and b!71647 res!35105) b!71644))

(declare-fun m!71520 () Bool)

(assert (=> b!71643 m!71520))

(assert (=> b!71644 m!71342))

(declare-fun m!71522 () Bool)

(assert (=> b!71644 m!71522))

(declare-fun m!71524 () Bool)

(assert (=> b!71645 m!71524))

(declare-fun m!71526 () Bool)

(assert (=> b!71647 m!71526))

(assert (=> b!71621 d!54181))

(declare-fun d!54183 () Bool)

(declare-fun lt!15221 () Int)

(assert (=> d!54183 (>= lt!15221 0)))

(declare-fun e!38760 () Int)

(assert (=> d!54183 (= lt!15221 e!38760)))

(declare-fun c!17159 () Bool)

(assert (=> d!54183 (= c!17159 (is-Nil!557 lt!15212))))

(assert (=> d!54183 (= (size!4 lt!15212) lt!15221)))

(declare-fun b!71648 () Bool)

(assert (=> b!71648 (= e!38760 0)))

(declare-fun b!71649 () Bool)

(assert (=> b!71649 (= e!38760 (+ 1 (size!4 (tail!987 lt!15212))))))

(assert (= (and d!54183 c!17159) b!71648))

(assert (= (and d!54183 (not c!17159)) b!71649))

(declare-fun m!71528 () Bool)

(assert (=> b!71649 m!71528))

(assert (=> b!71600 d!54183))

(declare-fun d!54185 () Bool)

(declare-fun lt!15222 () Int)

(assert (=> d!54185 (>= lt!15222 0)))

(declare-fun e!38761 () Int)

(assert (=> d!54185 (= lt!15222 e!38761)))

(declare-fun c!17160 () Bool)

(assert (=> d!54185 (= c!17160 (is-Nil!557 (reverse!1 (tail!987 list!838))))))

(assert (=> d!54185 (= (size!4 (reverse!1 (tail!987 list!838))) lt!15222)))

(declare-fun b!71650 () Bool)

(assert (=> b!71650 (= e!38761 0)))

(declare-fun b!71651 () Bool)

(assert (=> b!71651 (= e!38761 (+ 1 (size!4 (tail!987 (reverse!1 (tail!987 list!838))))))))

(assert (= (and d!54185 c!17160) b!71650))

(assert (= (and d!54185 (not c!17160)) b!71651))

(assert (=> b!71651 m!71342))

(assert (=> b!71600 d!54185))

(declare-fun b!71652 () Bool)

(declare-fun res!35109 () Bool)

(declare-fun e!38762 () Bool)

(assert (=> b!71652 (=> (not res!35109) (not e!38762))))

(declare-fun lt!15223 () List!599)

(assert (=> b!71652 (= res!35109 (= (lastOption!1 lt!15223) (Some!481 (head!966 (reverse!1 (tail!987 (reverse!1 list!838)))))))))

(declare-fun b!71653 () Bool)

(assert (=> b!71653 (= e!38762 (= (+ (size!4 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))) 1) (size!4 lt!15223)))))

(declare-fun b!71654 () Bool)

(declare-fun e!38763 () List!599)

(assert (=> b!71654 (= e!38763 (Cons!556 (head!966 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))) (addLast!0 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))) (head!966 (reverse!1 (tail!987 (reverse!1 list!838)))))))))

(declare-fun b!71655 () Bool)

(assert (=> b!71655 (= e!38763 (Cons!556 (head!966 (reverse!1 (tail!987 (reverse!1 list!838)))) Nil!557))))

(declare-fun d!54187 () Bool)

(assert (=> d!54187 e!38762))

(declare-fun res!35110 () Bool)

(assert (=> d!54187 (=> (not res!35110) (not e!38762))))

(assert (=> d!54187 (= res!35110 (is-Cons!556 lt!15223))))

(assert (=> d!54187 (= lt!15223 e!38763)))

(declare-fun c!17161 () Bool)

(assert (=> d!54187 (= c!17161 (is-Cons!556 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))))

(assert (=> d!54187 (= (addLast!0 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))) (head!966 (reverse!1 (tail!987 (reverse!1 list!838))))) lt!15223)))

(declare-fun b!71656 () Bool)

(declare-fun res!35108 () Bool)

(assert (=> b!71656 (=> (not res!35108) (not e!38762))))

(assert (=> b!71656 (= res!35108 (= (init!2 lt!15223) (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))))

(assert (= (and d!54187 c!17161) b!71654))

(assert (= (and d!54187 (not c!17161)) b!71655))

(assert (= (and d!54187 res!35110) b!71652))

(assert (= (and b!71652 res!35109) b!71656))

(assert (= (and b!71656 res!35108) b!71653))

(declare-fun m!71530 () Bool)

(assert (=> b!71652 m!71530))

(assert (=> b!71653 m!71358))

(declare-fun m!71532 () Bool)

(assert (=> b!71653 m!71532))

(declare-fun m!71534 () Bool)

(assert (=> b!71653 m!71534))

(declare-fun m!71536 () Bool)

(assert (=> b!71654 m!71536))

(declare-fun m!71538 () Bool)

(assert (=> b!71656 m!71538))

(assert (=> b!71573 d!54187))

(declare-fun b!71660 () Bool)

(declare-fun e!38765 () Bool)

(declare-fun lt!15224 () List!599)

(assert (=> b!71660 (= e!38765 (= (size!4 lt!15224) (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))))

(declare-fun b!71659 () Bool)

(declare-fun res!35112 () Bool)

(assert (=> b!71659 (=> (not res!35112) (not e!38765))))

(assert (=> b!71659 (= res!35112 (= (lastOption!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))) (headOption!1 lt!15224)))))

(declare-fun d!54189 () Bool)

(assert (=> d!54189 e!38765))

(declare-fun res!35111 () Bool)

(assert (=> d!54189 (=> (not res!35111) (not e!38765))))

(assert (=> d!54189 (= res!35111 (= (lastOption!1 lt!15224) (headOption!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))))

(declare-fun e!38764 () List!599)

(assert (=> d!54189 (= lt!15224 e!38764)))

(declare-fun c!17162 () Bool)

(assert (=> d!54189 (= c!17162 (is-Cons!556 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))

(assert (=> d!54189 (= (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))) lt!15224)))

(declare-fun b!71658 () Bool)

(assert (=> b!71658 (= e!38764 Nil!557)))

(declare-fun b!71657 () Bool)

(assert (=> b!71657 (= e!38764 (addLast!0 (reverse!1 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))) (head!966 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))))

(assert (= (and d!54189 c!17162) b!71657))

(assert (= (and d!54189 (not c!17162)) b!71658))

(assert (= (and d!54189 res!35111) b!71659))

(assert (= (and b!71659 res!35112) b!71660))

(declare-fun m!71540 () Bool)

(assert (=> b!71660 m!71540))

(assert (=> b!71660 m!71354))

(declare-fun m!71542 () Bool)

(assert (=> b!71659 m!71542))

(declare-fun m!71544 () Bool)

(assert (=> b!71659 m!71544))

(declare-fun m!71546 () Bool)

(assert (=> d!54189 m!71546))

(declare-fun m!71548 () Bool)

(assert (=> d!54189 m!71548))

(declare-fun m!71550 () Bool)

(assert (=> b!71657 m!71550))

(assert (=> b!71657 m!71550))

(declare-fun m!71552 () Bool)

(assert (=> b!71657 m!71552))

(assert (=> b!71573 d!54189))

(declare-fun b!71661 () Bool)

(declare-fun res!35114 () Bool)

(declare-fun e!38766 () Bool)

(assert (=> b!71661 (=> (not res!35114) (not e!38766))))

(declare-fun lt!15225 () List!599)

(assert (=> b!71661 (= res!35114 (= (lastOption!1 lt!15225) (Some!481 (head!966 (reverse!1 list!838)))))))

(declare-fun b!71662 () Bool)

(assert (=> b!71662 (= e!38766 (= (+ (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))) 1) (size!4 lt!15225)))))

(declare-fun b!71663 () Bool)

(declare-fun e!38767 () List!599)

(assert (=> b!71663 (= e!38767 (Cons!556 (head!966 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))) (addLast!0 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))) (head!966 (reverse!1 list!838)))))))

(declare-fun b!71664 () Bool)

(assert (=> b!71664 (= e!38767 (Cons!556 (head!966 (reverse!1 list!838)) Nil!557))))

(declare-fun d!54191 () Bool)

(assert (=> d!54191 e!38766))

(declare-fun res!35115 () Bool)

(assert (=> d!54191 (=> (not res!35115) (not e!38766))))

(assert (=> d!54191 (= res!35115 (is-Cons!556 lt!15225))))

(assert (=> d!54191 (= lt!15225 e!38767)))

(declare-fun c!17163 () Bool)

(assert (=> d!54191 (= c!17163 (is-Cons!556 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))

(assert (=> d!54191 (= (addLast!0 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))) (head!966 (reverse!1 list!838))) lt!15225)))

(declare-fun b!71665 () Bool)

(declare-fun res!35113 () Bool)

(assert (=> b!71665 (=> (not res!35113) (not e!38766))))

(assert (=> b!71665 (= res!35113 (= (init!2 lt!15225) (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))

(assert (= (and d!54191 c!17163) b!71663))

(assert (= (and d!54191 (not c!17163)) b!71664))

(assert (= (and d!54191 res!35115) b!71661))

(assert (= (and b!71661 res!35114) b!71665))

(assert (= (and b!71665 res!35113) b!71662))

(declare-fun m!71554 () Bool)

(assert (=> b!71661 m!71554))

(assert (=> b!71662 m!71354))

(declare-fun m!71556 () Bool)

(assert (=> b!71662 m!71556))

(declare-fun m!71558 () Bool)

(assert (=> b!71663 m!71558))

(declare-fun m!71560 () Bool)

(assert (=> b!71665 m!71560))

(assert (=> b!71570 d!54191))

(declare-fun d!54193 () Bool)

(declare-fun e!38768 () Bool)

(assert (=> d!54193 (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838))))))) (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838))))))) e!38768)))

(declare-fun res!35116 () Bool)

(assert (=> d!54193 (=> res!35116 e!38768)))

(declare-fun e!38769 () Bool)

(assert (=> d!54193 (= res!35116 (not e!38769))))

(declare-fun res!35118 () Bool)

(assert (=> d!54193 (=> (not res!35118) (not e!38769))))

(assert (=> d!54193 (= res!35118 (is-Cons!556 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838)))))))))

(assert (=> d!54193 (= (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838)))))) (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838)))))))))

(assert (=> d!54193 (= (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838)))))) (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838)))))) true)))

(declare-fun b!71666 () Bool)

(assert (=> b!71666 (= e!38769 (is-Cons!556 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838))))))))))

(declare-fun b!71667 () Bool)

(declare-fun e!38770 () Bool)

(assert (=> b!71667 (= e!38768 e!38770)))

(declare-fun res!35117 () Bool)

(assert (=> b!71667 (=> (not res!35117) (not e!38770))))

(assert (=> b!71667 (= res!35117 (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838))))))) (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838))))))))))

(declare-fun b!71668 () Bool)

(assert (=> b!71668 (= e!38770 (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838)))))))) (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838)))))))))))

(assert (= (and d!54193 res!35118) b!71666))

(assert (= (and d!54193 (not res!35116)) b!71667))

(assert (= (and b!71667 res!35117) b!71668))

(declare-fun m!71562 () Bool)

(assert (=> d!54193 m!71562))

(assert (=> d!54193 m!71562))

(declare-fun m!71564 () Bool)

(assert (=> d!54193 m!71564))

(declare-fun m!71566 () Bool)

(assert (=> d!54193 m!71566))

(assert (=> d!54193 m!71466))

(assert (=> b!71666 m!71562))

(declare-fun m!71568 () Bool)

(assert (=> b!71667 m!71568))

(assert (=> b!71667 m!71568))

(declare-fun m!71570 () Bool)

(assert (=> b!71667 m!71570))

(assert (=> b!71668 m!71562))

(declare-fun m!71572 () Bool)

(assert (=> b!71668 m!71572))

(assert (=> b!71668 m!71572))

(declare-fun m!71574 () Bool)

(assert (=> b!71668 m!71574))

(assert (=> b!71607 d!54193))

(declare-fun d!54195 () Bool)

(declare-fun lt!15226 () Int)

(assert (=> d!54195 (>= lt!15226 0)))

(declare-fun e!38771 () Int)

(assert (=> d!54195 (= lt!15226 e!38771)))

(declare-fun c!17164 () Bool)

(assert (=> d!54195 (= c!17164 (is-Nil!557 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838)))))))))

(assert (=> d!54195 (= (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838)))))) lt!15226)))

(declare-fun b!71669 () Bool)

(assert (=> b!71669 (= e!38771 0)))

(declare-fun b!71670 () Bool)

(assert (=> b!71670 (= e!38771 (+ 1 (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838)))))))))))

(assert (= (and d!54195 c!17164) b!71669))

(assert (= (and d!54195 (not c!17164)) b!71670))

(assert (=> b!71670 m!71568))

(assert (=> b!71607 d!54195))

(declare-fun b!71674 () Bool)

(declare-fun e!38773 () Bool)

(declare-fun lt!15227 () List!599)

(assert (=> b!71674 (= e!38773 (= (size!4 lt!15227) (size!4 (tail!987 (reverse!1 (tail!987 list!838))))))))

(declare-fun b!71673 () Bool)

(declare-fun res!35120 () Bool)

(assert (=> b!71673 (=> (not res!35120) (not e!38773))))

(assert (=> b!71673 (= res!35120 (= (lastOption!1 (tail!987 (reverse!1 (tail!987 list!838)))) (headOption!1 lt!15227)))))

(declare-fun d!54197 () Bool)

(assert (=> d!54197 e!38773))

(declare-fun res!35119 () Bool)

(assert (=> d!54197 (=> (not res!35119) (not e!38773))))

(assert (=> d!54197 (= res!35119 (= (lastOption!1 lt!15227) (headOption!1 (tail!987 (reverse!1 (tail!987 list!838))))))))

(declare-fun e!38772 () List!599)

(assert (=> d!54197 (= lt!15227 e!38772)))

(declare-fun c!17165 () Bool)

(assert (=> d!54197 (= c!17165 (is-Cons!556 (tail!987 (reverse!1 (tail!987 list!838)))))))

(assert (=> d!54197 (= (reverse!1 (tail!987 (reverse!1 (tail!987 list!838)))) lt!15227)))

(declare-fun b!71672 () Bool)

(assert (=> b!71672 (= e!38772 Nil!557)))

(declare-fun b!71671 () Bool)

(assert (=> b!71671 (= e!38772 (addLast!0 (reverse!1 (tail!987 (tail!987 (reverse!1 (tail!987 list!838))))) (head!966 (tail!987 (reverse!1 (tail!987 list!838))))))))

(assert (= (and d!54197 c!17165) b!71671))

(assert (= (and d!54197 (not c!17165)) b!71672))

(assert (= (and d!54197 res!35119) b!71673))

(assert (= (and b!71673 res!35120) b!71674))

(declare-fun m!71576 () Bool)

(assert (=> b!71674 m!71576))

(assert (=> b!71674 m!71342))

(declare-fun m!71578 () Bool)

(assert (=> b!71673 m!71578))

(declare-fun m!71580 () Bool)

(assert (=> b!71673 m!71580))

(declare-fun m!71582 () Bool)

(assert (=> d!54197 m!71582))

(declare-fun m!71584 () Bool)

(assert (=> d!54197 m!71584))

(declare-fun m!71586 () Bool)

(assert (=> b!71671 m!71586))

(assert (=> b!71671 m!71586))

(declare-fun m!71588 () Bool)

(assert (=> b!71671 m!71588))

(assert (=> b!71607 d!54197))

(declare-fun d!54199 () Bool)

(declare-fun lt!15228 () Int)

(assert (=> d!54199 (>= lt!15228 0)))

(declare-fun e!38774 () Int)

(assert (=> d!54199 (= lt!15228 e!38774)))

(declare-fun c!17166 () Bool)

(assert (=> d!54199 (= c!17166 (is-Nil!557 lt!15203))))

(assert (=> d!54199 (= (size!4 lt!15203) lt!15228)))

(declare-fun b!71675 () Bool)

(assert (=> b!71675 (= e!38774 0)))

(declare-fun b!71676 () Bool)

(assert (=> b!71676 (= e!38774 (+ 1 (size!4 (tail!987 lt!15203))))))

(assert (= (and d!54199 c!17166) b!71675))

(assert (= (and d!54199 (not c!17166)) b!71676))

(declare-fun m!71590 () Bool)

(assert (=> b!71676 m!71590))

(assert (=> b!71546 d!54199))

(assert (=> b!71546 d!54115))

(declare-fun b!71679 () Bool)

(declare-fun e!38776 () Option!505)

(assert (=> b!71679 (= e!38776 (lastOption!1 (tail!987 lt!15213)))))

(declare-fun b!71678 () Bool)

(declare-fun e!38775 () Option!505)

(assert (=> b!71678 (= e!38775 e!38776)))

(declare-fun c!17168 () Bool)

(assert (=> b!71678 (= c!17168 (is-Cons!556 lt!15213))))

(declare-fun b!71677 () Bool)

(assert (=> b!71677 (= e!38775 (Some!481 (head!966 lt!15213)))))

(declare-fun d!54201 () Bool)

(declare-fun c!17167 () Bool)

(assert (=> d!54201 (= c!17167 (and (is-Cons!556 lt!15213) (is-Nil!557 (tail!987 lt!15213))))))

(assert (=> d!54201 (= (lastOption!1 lt!15213) e!38775)))

(declare-fun b!71680 () Bool)

(assert (=> b!71680 (= e!38776 None!482)))

(assert (= (and b!71678 c!17168) b!71679))

(assert (= (and b!71678 (not c!17168)) b!71680))

(assert (= (and d!54201 c!17167) b!71677))

(assert (= (and d!54201 (not c!17167)) b!71678))

(declare-fun m!71592 () Bool)

(assert (=> b!71679 m!71592))

(assert (=> d!54155 d!54201))

(declare-fun d!54203 () Bool)

(assert (=> d!54203 (= (headOption!1 (tail!987 list!838)) (ite (is-Cons!556 (tail!987 list!838)) (Some!481 (head!966 (tail!987 list!838))) None!482))))

(assert (=> d!54155 d!54203))

(declare-fun b!71684 () Bool)

(declare-fun e!38778 () Bool)

(declare-fun lt!15229 () List!599)

(assert (=> b!71684 (= e!38778 (= (size!4 lt!15229) (size!4 (tail!987 (tail!987 list!838)))))))

(declare-fun b!71683 () Bool)

(declare-fun res!35122 () Bool)

(assert (=> b!71683 (=> (not res!35122) (not e!38778))))

(assert (=> b!71683 (= res!35122 (= (lastOption!1 (tail!987 (tail!987 list!838))) (headOption!1 lt!15229)))))

(declare-fun d!54205 () Bool)

(assert (=> d!54205 e!38778))

(declare-fun res!35121 () Bool)

(assert (=> d!54205 (=> (not res!35121) (not e!38778))))

(assert (=> d!54205 (= res!35121 (= (lastOption!1 lt!15229) (headOption!1 (tail!987 (tail!987 list!838)))))))

(declare-fun e!38777 () List!599)

(assert (=> d!54205 (= lt!15229 e!38777)))

(declare-fun c!17169 () Bool)

(assert (=> d!54205 (= c!17169 (is-Cons!556 (tail!987 (tail!987 list!838))))))

(assert (=> d!54205 (= (reverse!1 (tail!987 (tail!987 list!838))) lt!15229)))

(declare-fun b!71682 () Bool)

(assert (=> b!71682 (= e!38777 Nil!557)))

(declare-fun b!71681 () Bool)

(assert (=> b!71681 (= e!38777 (addLast!0 (reverse!1 (tail!987 (tail!987 (tail!987 list!838)))) (head!966 (tail!987 (tail!987 list!838)))))))

(assert (= (and d!54205 c!17169) b!71681))

(assert (= (and d!54205 (not c!17169)) b!71682))

(assert (= (and d!54205 res!35121) b!71683))

(assert (= (and b!71683 res!35122) b!71684))

(declare-fun m!71594 () Bool)

(assert (=> b!71684 m!71594))

(assert (=> b!71684 m!71338))

(assert (=> b!71683 m!71518))

(declare-fun m!71596 () Bool)

(assert (=> b!71683 m!71596))

(declare-fun m!71598 () Bool)

(assert (=> d!54205 m!71598))

(declare-fun m!71600 () Bool)

(assert (=> d!54205 m!71600))

(declare-fun m!71602 () Bool)

(assert (=> b!71681 m!71602))

(assert (=> b!71681 m!71602))

(declare-fun m!71604 () Bool)

(assert (=> b!71681 m!71604))

(assert (=> b!71549 d!54205))

(declare-fun d!54207 () Bool)

(assert (=> d!54207 (= (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (tail!987 list!838)))) (tail!987 (tail!987 list!838)))) e!38709) (and e!38709 (prop!496 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (tail!987 list!838)))) (tail!987 (tail!987 list!838)))))))))

(assert (=> d!54125 d!54207))

(declare-fun b!71688 () Bool)

(declare-fun e!38780 () Bool)

(declare-fun lt!15230 () List!599)

(assert (=> b!71688 (= e!38780 (= (size!4 lt!15230) (size!4 (reverse!1 (tail!987 (tail!987 list!838))))))))

(declare-fun b!71687 () Bool)

(declare-fun res!35124 () Bool)

(assert (=> b!71687 (=> (not res!35124) (not e!38780))))

(assert (=> b!71687 (= res!35124 (= (lastOption!1 (reverse!1 (tail!987 (tail!987 list!838)))) (headOption!1 lt!15230)))))

(declare-fun d!54209 () Bool)

(assert (=> d!54209 e!38780))

(declare-fun res!35123 () Bool)

(assert (=> d!54209 (=> (not res!35123) (not e!38780))))

(assert (=> d!54209 (= res!35123 (= (lastOption!1 lt!15230) (headOption!1 (reverse!1 (tail!987 (tail!987 list!838))))))))

(declare-fun e!38779 () List!599)

(assert (=> d!54209 (= lt!15230 e!38779)))

(declare-fun c!17170 () Bool)

(assert (=> d!54209 (= c!17170 (is-Cons!556 (reverse!1 (tail!987 (tail!987 list!838)))))))

(assert (=> d!54209 (= (reverse!1 (reverse!1 (tail!987 (tail!987 list!838)))) lt!15230)))

(declare-fun b!71686 () Bool)

(assert (=> b!71686 (= e!38779 Nil!557)))

(declare-fun b!71685 () Bool)

(assert (=> b!71685 (= e!38779 (addLast!0 (reverse!1 (tail!987 (reverse!1 (tail!987 (tail!987 list!838))))) (head!966 (reverse!1 (tail!987 (tail!987 list!838))))))))

(assert (= (and d!54209 c!17170) b!71685))

(assert (= (and d!54209 (not c!17170)) b!71686))

(assert (= (and d!54209 res!35123) b!71687))

(assert (= (and b!71687 res!35124) b!71688))

(declare-fun m!71606 () Bool)

(assert (=> b!71688 m!71606))

(assert (=> b!71688 m!71388))

(declare-fun m!71608 () Bool)

(assert (=> b!71688 m!71608))

(assert (=> b!71687 m!71388))

(declare-fun m!71610 () Bool)

(assert (=> b!71687 m!71610))

(declare-fun m!71612 () Bool)

(assert (=> b!71687 m!71612))

(declare-fun m!71614 () Bool)

(assert (=> d!54209 m!71614))

(assert (=> d!54209 m!71388))

(declare-fun m!71616 () Bool)

(assert (=> d!54209 m!71616))

(declare-fun m!71618 () Bool)

(assert (=> b!71685 m!71618))

(assert (=> b!71685 m!71618))

(declare-fun m!71620 () Bool)

(assert (=> b!71685 m!71620))

(assert (=> d!54125 d!54209))

(assert (=> d!54125 d!54205))

(assert (=> d!54125 d!54127))

(declare-fun d!54211 () Bool)

(declare-fun lt!15231 () Int)

(assert (=> d!54211 (>= lt!15231 0)))

(declare-fun e!38781 () Int)

(assert (=> d!54211 (= lt!15231 e!38781)))

(declare-fun c!17171 () Bool)

(assert (=> d!54211 (= c!17171 (is-Nil!557 (tail!987 (tail!987 (tail!987 list!838)))))))

(assert (=> d!54211 (= (size!4 (tail!987 (tail!987 (tail!987 list!838)))) lt!15231)))

(declare-fun b!71689 () Bool)

(assert (=> b!71689 (= e!38781 0)))

(declare-fun b!71690 () Bool)

(assert (=> b!71690 (= e!38781 (+ 1 (size!4 (tail!987 (tail!987 (tail!987 (tail!987 list!838)))))))))

(assert (= (and d!54211 c!17171) b!71689))

(assert (= (and d!54211 (not c!17171)) b!71690))

(declare-fun m!71622 () Bool)

(assert (=> b!71690 m!71622))

(assert (=> b!71553 d!54211))

(declare-fun b!71691 () Bool)

(declare-fun res!35126 () Bool)

(declare-fun e!38782 () Bool)

(assert (=> b!71691 (=> (not res!35126) (not e!38782))))

(declare-fun lt!15232 () List!599)

(assert (=> b!71691 (= res!35126 (= (lastOption!1 lt!15232) (Some!481 (head!966 (reverse!1 (tail!987 list!838))))))))

(declare-fun b!71692 () Bool)

(assert (=> b!71692 (= e!38782 (= (+ (size!4 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838))))) 1) (size!4 lt!15232)))))

(declare-fun b!71693 () Bool)

(declare-fun e!38783 () List!599)

(assert (=> b!71693 (= e!38783 (Cons!556 (head!966 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838))))) (addLast!0 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838))))) (head!966 (reverse!1 (tail!987 list!838))))))))

(declare-fun b!71694 () Bool)

(assert (=> b!71694 (= e!38783 (Cons!556 (head!966 (reverse!1 (tail!987 list!838))) Nil!557))))

(declare-fun d!54213 () Bool)

(assert (=> d!54213 e!38782))

(declare-fun res!35127 () Bool)

(assert (=> d!54213 (=> (not res!35127) (not e!38782))))

(assert (=> d!54213 (= res!35127 (is-Cons!556 lt!15232))))

(assert (=> d!54213 (= lt!15232 e!38783)))

(declare-fun c!17172 () Bool)

(assert (=> d!54213 (= c!17172 (is-Cons!556 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838))))))))

(assert (=> d!54213 (= (addLast!0 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838)))) (head!966 (reverse!1 (tail!987 list!838)))) lt!15232)))

(declare-fun b!71695 () Bool)

(declare-fun res!35125 () Bool)

(assert (=> b!71695 (=> (not res!35125) (not e!38782))))

(assert (=> b!71695 (= res!35125 (= (init!2 lt!15232) (reverse!1 (tail!987 (reverse!1 (tail!987 list!838))))))))

(assert (= (and d!54213 c!17172) b!71693))

(assert (= (and d!54213 (not c!17172)) b!71694))

(assert (= (and d!54213 res!35127) b!71691))

(assert (= (and b!71691 res!35126) b!71695))

(assert (= (and b!71695 res!35125) b!71692))

(declare-fun m!71624 () Bool)

(assert (=> b!71691 m!71624))

(assert (=> b!71692 m!71442))

(declare-fun m!71626 () Bool)

(assert (=> b!71692 m!71626))

(declare-fun m!71628 () Bool)

(assert (=> b!71692 m!71628))

(declare-fun m!71630 () Bool)

(assert (=> b!71693 m!71630))

(declare-fun m!71632 () Bool)

(assert (=> b!71695 m!71632))

(assert (=> b!71597 d!54213))

(assert (=> b!71597 d!54197))

(declare-fun d!54215 () Bool)

(declare-fun e!38784 () Bool)

(assert (=> d!54215 (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (tail!987 (tail!987 (reverse!1 list!838)))))) (tail!987 (tail!987 (tail!987 (reverse!1 list!838)))))) e!38784)))

(declare-fun res!35128 () Bool)

(assert (=> d!54215 (=> res!35128 e!38784)))

(declare-fun e!38785 () Bool)

(assert (=> d!54215 (= res!35128 (not e!38785))))

(declare-fun res!35130 () Bool)

(assert (=> d!54215 (=> (not res!35130) (not e!38785))))

(assert (=> d!54215 (= res!35130 (is-Cons!556 (tail!987 (tail!987 (tail!987 (reverse!1 list!838))))))))

(assert (=> d!54215 (= (size!4 (tail!987 (tail!987 (tail!987 (reverse!1 list!838))))) (size!4 (tail!987 (tail!987 (tail!987 (reverse!1 list!838))))))))

(assert (=> d!54215 (= (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 (tail!987 (reverse!1 list!838))))) (tail!987 (tail!987 (tail!987 (reverse!1 list!838))))) true)))

(declare-fun b!71696 () Bool)

(assert (=> b!71696 (= e!38785 (is-Cons!556 (reverse!1 (tail!987 (tail!987 (tail!987 (reverse!1 list!838)))))))))

(declare-fun b!71697 () Bool)

(declare-fun e!38786 () Bool)

(assert (=> b!71697 (= e!38784 e!38786)))

(declare-fun res!35129 () Bool)

(assert (=> b!71697 (=> (not res!35129) (not e!38786))))

(assert (=> b!71697 (= res!35129 (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 (tail!987 (tail!987 (reverse!1 list!838)))))) (tail!987 (tail!987 (tail!987 (tail!987 (reverse!1 list!838)))))))))

(declare-fun b!71698 () Bool)

(assert (=> b!71698 (= e!38786 (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 (tail!987 (tail!987 (reverse!1 list!838))))))) (tail!987 (reverse!1 (tail!987 (tail!987 (tail!987 (reverse!1 list!838))))))))))

(assert (= (and d!54215 res!35130) b!71696))

(assert (= (and d!54215 (not res!35128)) b!71697))

(assert (= (and b!71697 res!35129) b!71698))

(assert (=> d!54215 m!71510))

(assert (=> d!54215 m!71510))

(declare-fun m!71634 () Bool)

(assert (=> d!54215 m!71634))

(declare-fun m!71636 () Bool)

(assert (=> d!54215 m!71636))

(assert (=> d!54215 m!71470))

(assert (=> b!71696 m!71510))

(assert (=> b!71697 m!71516))

(assert (=> b!71697 m!71516))

(declare-fun m!71638 () Bool)

(assert (=> b!71697 m!71638))

(assert (=> b!71698 m!71510))

(declare-fun m!71640 () Bool)

(assert (=> b!71698 m!71640))

(assert (=> b!71698 m!71640))

(declare-fun m!71642 () Bool)

(assert (=> b!71698 m!71642))

(assert (=> b!71613 d!54215))

(assert (=> b!71613 d!54177))

(assert (=> b!71603 d!54179))

(declare-fun d!54217 () Bool)

(assert (=> d!54217 (= (headOption!1 lt!15213) (ite (is-Cons!556 lt!15213) (Some!481 (head!966 lt!15213)) None!482))))

(assert (=> b!71603 d!54217))

(declare-fun d!54219 () Bool)

(declare-fun lt!15233 () Int)

(assert (=> d!54219 (>= lt!15233 0)))

(declare-fun e!38787 () Int)

(assert (=> d!54219 (= lt!15233 e!38787)))

(declare-fun c!17173 () Bool)

(assert (=> d!54219 (= c!17173 (is-Nil!557 (tail!987 (tail!987 (reverse!1 (tail!987 list!838))))))))

(assert (=> d!54219 (= (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 list!838))))) lt!15233)))

(declare-fun b!71699 () Bool)

(assert (=> b!71699 (= e!38787 0)))

(declare-fun b!71700 () Bool)

(assert (=> b!71700 (= e!38787 (+ 1 (size!4 (tail!987 (tail!987 (tail!987 (reverse!1 (tail!987 list!838))))))))))

(assert (= (and d!54219 c!17173) b!71699))

(assert (= (and d!54219 (not c!17173)) b!71700))

(declare-fun m!71644 () Bool)

(assert (=> b!71700 m!71644))

(assert (=> b!71609 d!54219))

(assert (=> b!71620 d!54185))

(declare-fun d!54221 () Bool)

(declare-fun lt!15234 () Int)

(assert (=> d!54221 (>= lt!15234 0)))

(declare-fun e!38788 () Int)

(assert (=> d!54221 (= lt!15234 e!38788)))

(declare-fun c!17174 () Bool)

(assert (=> d!54221 (= c!17174 (is-Nil!557 lt!15216))))

(assert (=> d!54221 (= (size!4 lt!15216) lt!15234)))

(declare-fun b!71701 () Bool)

(assert (=> b!71701 (= e!38788 0)))

(declare-fun b!71702 () Bool)

(assert (=> b!71702 (= e!38788 (+ 1 (size!4 (tail!987 lt!15216))))))

(assert (= (and d!54221 c!17174) b!71701))

(assert (= (and d!54221 (not c!17174)) b!71702))

(declare-fun m!71646 () Bool)

(assert (=> b!71702 m!71646))

(assert (=> b!71620 d!54221))

(declare-fun d!54223 () Bool)

(declare-fun e!38789 () Bool)

(assert (=> d!54223 (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))) (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))) e!38789)))

(declare-fun res!35131 () Bool)

(assert (=> d!54223 (=> res!35131 e!38789)))

(declare-fun e!38790 () Bool)

(assert (=> d!54223 (= res!35131 (not e!38790))))

(declare-fun res!35133 () Bool)

(assert (=> d!54223 (=> (not res!35133) (not e!38790))))

(assert (=> d!54223 (= res!35133 (is-Cons!556 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))))

(assert (=> d!54223 (= (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))) (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))))

(assert (=> d!54223 (= (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))) (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))) true)))

(declare-fun b!71703 () Bool)

(assert (=> b!71703 (= e!38790 (is-Cons!556 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))))))

(declare-fun b!71704 () Bool)

(declare-fun e!38791 () Bool)

(assert (=> b!71704 (= e!38789 e!38791)))

(declare-fun res!35132 () Bool)

(assert (=> b!71704 (=> (not res!35132) (not e!38791))))

(assert (=> b!71704 (= res!35132 (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))) (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))))))

(declare-fun b!71705 () Bool)

(assert (=> b!71705 (= e!38791 (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))) (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))))))

(assert (= (and d!54223 res!35133) b!71703))

(assert (= (and d!54223 (not res!35131)) b!71704))

(assert (= (and b!71704 res!35132) b!71705))

(declare-fun m!71648 () Bool)

(assert (=> d!54223 m!71648))

(assert (=> d!54223 m!71648))

(declare-fun m!71650 () Bool)

(assert (=> d!54223 m!71650))

(declare-fun m!71652 () Bool)

(assert (=> d!54223 m!71652))

(assert (=> d!54223 m!71368))

(assert (=> b!71703 m!71648))

(declare-fun m!71654 () Bool)

(assert (=> b!71704 m!71654))

(assert (=> b!71704 m!71654))

(declare-fun m!71656 () Bool)

(assert (=> b!71704 m!71656))

(assert (=> b!71705 m!71648))

(declare-fun m!71658 () Bool)

(assert (=> b!71705 m!71658))

(assert (=> b!71705 m!71658))

(declare-fun m!71660 () Bool)

(assert (=> b!71705 m!71660))

(assert (=> b!71540 d!54223))

(declare-fun d!54225 () Bool)

(declare-fun lt!15235 () Int)

(assert (=> d!54225 (>= lt!15235 0)))

(declare-fun e!38792 () Int)

(assert (=> d!54225 (= lt!15235 e!38792)))

(declare-fun c!17175 () Bool)

(assert (=> d!54225 (= c!17175 (is-Nil!557 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))))

(assert (=> d!54225 (= (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))) lt!15235)))

(declare-fun b!71706 () Bool)

(assert (=> b!71706 (= e!38792 0)))

(declare-fun b!71707 () Bool)

(assert (=> b!71707 (= e!38792 (+ 1 (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))))))

(assert (= (and d!54225 c!17175) b!71706))

(assert (= (and d!54225 (not c!17175)) b!71707))

(assert (=> b!71707 m!71654))

(assert (=> b!71540 d!54225))

(assert (=> b!71540 d!54189))

(declare-fun d!54227 () Bool)

(declare-fun lt!15236 () Int)

(assert (=> d!54227 (>= lt!15236 0)))

(declare-fun e!38793 () Int)

(assert (=> d!54227 (= lt!15236 e!38793)))

(declare-fun c!17176 () Bool)

(assert (=> d!54227 (= c!17176 (is-Nil!557 lt!15211))))

(assert (=> d!54227 (= (size!4 lt!15211) lt!15236)))

(declare-fun b!71708 () Bool)

(assert (=> b!71708 (= e!38793 0)))

(declare-fun b!71709 () Bool)

(assert (=> b!71709 (= e!38793 (+ 1 (size!4 (tail!987 lt!15211))))))

(assert (= (and d!54227 c!17176) b!71708))

(assert (= (and d!54227 (not c!17176)) b!71709))

(declare-fun m!71662 () Bool)

(assert (=> b!71709 m!71662))

(assert (=> b!71576 d!54227))

(declare-fun d!54229 () Bool)

(declare-fun lt!15237 () Int)

(assert (=> d!54229 (>= lt!15237 0)))

(declare-fun e!38794 () Int)

(assert (=> d!54229 (= lt!15237 e!38794)))

(declare-fun c!17177 () Bool)

(assert (=> d!54229 (= c!17177 (is-Nil!557 (reverse!1 (tail!987 (reverse!1 list!838)))))))

(assert (=> d!54229 (= (size!4 (reverse!1 (tail!987 (reverse!1 list!838)))) lt!15237)))

(declare-fun b!71710 () Bool)

(assert (=> b!71710 (= e!38794 0)))

(declare-fun b!71711 () Bool)

(assert (=> b!71711 (= e!38794 (+ 1 (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))))

(assert (= (and d!54229 c!17177) b!71710))

(assert (= (and d!54229 (not c!17177)) b!71711))

(assert (=> b!71711 m!71354))

(assert (=> b!71576 d!54229))

(declare-fun b!71714 () Bool)

(declare-fun e!38796 () Option!505)

(assert (=> b!71714 (= e!38796 (lastOption!1 (tail!987 (tail!987 (reverse!1 list!838)))))))

(declare-fun b!71713 () Bool)

(declare-fun e!38795 () Option!505)

(assert (=> b!71713 (= e!38795 e!38796)))

(declare-fun c!17179 () Bool)

(assert (=> b!71713 (= c!17179 (is-Cons!556 (tail!987 (reverse!1 list!838))))))

(declare-fun b!71712 () Bool)

(assert (=> b!71712 (= e!38795 (Some!481 (head!966 (tail!987 (reverse!1 list!838)))))))

(declare-fun d!54231 () Bool)

(declare-fun c!17178 () Bool)

(assert (=> d!54231 (= c!17178 (and (is-Cons!556 (tail!987 (reverse!1 list!838))) (is-Nil!557 (tail!987 (tail!987 (reverse!1 list!838))))))))

(assert (=> d!54231 (= (lastOption!1 (tail!987 (reverse!1 list!838))) e!38795)))

(declare-fun b!71715 () Bool)

(assert (=> b!71715 (= e!38796 None!482)))

(assert (= (and b!71713 c!17179) b!71714))

(assert (= (and b!71713 (not c!17179)) b!71715))

(assert (= (and d!54231 c!17178) b!71712))

(assert (= (and d!54231 (not c!17178)) b!71713))

(assert (=> b!71714 m!71502))

(assert (=> b!71545 d!54231))

(declare-fun d!54233 () Bool)

(assert (=> d!54233 (= (headOption!1 lt!15203) (ite (is-Cons!556 lt!15203) (Some!481 (head!966 lt!15203)) None!482))))

(assert (=> b!71545 d!54233))

(declare-fun d!54235 () Bool)

(declare-fun e!38797 () Bool)

(assert (=> d!54235 (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))) (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))) e!38797)))

(declare-fun res!35134 () Bool)

(assert (=> d!54235 (=> res!35134 e!38797)))

(declare-fun e!38798 () Bool)

(assert (=> d!54235 (= res!35134 (not e!38798))))

(declare-fun res!35136 () Bool)

(assert (=> d!54235 (=> (not res!35136) (not e!38798))))

(assert (=> d!54235 (= res!35136 (is-Cons!556 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))))

(assert (=> d!54235 (= (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))) (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))))

(assert (=> d!54235 (= (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))) (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))) true)))

(declare-fun b!71716 () Bool)

(assert (=> b!71716 (= e!38798 (is-Cons!556 (reverse!1 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))))

(declare-fun b!71717 () Bool)

(declare-fun e!38799 () Bool)

(assert (=> b!71717 (= e!38797 e!38799)))

(declare-fun res!35135 () Bool)

(assert (=> b!71717 (=> (not res!35135) (not e!38799))))

(assert (=> b!71717 (= res!35135 (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))) (tail!987 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))))

(declare-fun b!71718 () Bool)

(assert (=> b!71718 (= e!38799 (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))) (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))))))

(assert (= (and d!54235 res!35136) b!71716))

(assert (= (and d!54235 (not res!35134)) b!71717))

(assert (= (and b!71717 res!35135) b!71718))

(assert (=> d!54235 m!71550))

(assert (=> d!54235 m!71550))

(declare-fun m!71664 () Bool)

(assert (=> d!54235 m!71664))

(declare-fun m!71666 () Bool)

(assert (=> d!54235 m!71666))

(assert (=> d!54235 m!71364))

(assert (=> b!71716 m!71550))

(declare-fun m!71668 () Bool)

(assert (=> b!71717 m!71668))

(assert (=> b!71717 m!71668))

(declare-fun m!71670 () Bool)

(assert (=> b!71717 m!71670))

(assert (=> b!71718 m!71550))

(declare-fun m!71672 () Bool)

(assert (=> b!71718 m!71672))

(assert (=> b!71718 m!71672))

(declare-fun m!71674 () Bool)

(assert (=> b!71718 m!71674))

(assert (=> b!71539 d!54235))

(declare-fun d!54237 () Bool)

(declare-fun lt!15238 () Int)

(assert (=> d!54237 (>= lt!15238 0)))

(declare-fun e!38800 () Int)

(assert (=> d!54237 (= lt!15238 e!38800)))

(declare-fun c!17180 () Bool)

(assert (=> d!54237 (= c!17180 (is-Nil!557 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))))

(assert (=> d!54237 (= (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))) lt!15238)))

(declare-fun b!71719 () Bool)

(assert (=> b!71719 (= e!38800 0)))

(declare-fun b!71720 () Bool)

(assert (=> b!71720 (= e!38800 (+ 1 (size!4 (tail!987 (tail!987 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))))))

(assert (= (and d!54237 c!17180) b!71719))

(assert (= (and d!54237 (not c!17180)) b!71720))

(assert (=> b!71720 m!71668))

(assert (=> b!71539 d!54237))

(declare-fun b!71723 () Bool)

(declare-fun e!38802 () Option!505)

(assert (=> b!71723 (= e!38802 (lastOption!1 (tail!987 (reverse!1 (tail!987 list!838)))))))

(declare-fun b!71722 () Bool)

(declare-fun e!38801 () Option!505)

(assert (=> b!71722 (= e!38801 e!38802)))

(declare-fun c!17182 () Bool)

(assert (=> b!71722 (= c!17182 (is-Cons!556 (reverse!1 (tail!987 list!838))))))

(declare-fun b!71721 () Bool)

(assert (=> b!71721 (= e!38801 (Some!481 (head!966 (reverse!1 (tail!987 list!838)))))))

(declare-fun d!54239 () Bool)

(declare-fun c!17181 () Bool)

(assert (=> d!54239 (= c!17181 (and (is-Cons!556 (reverse!1 (tail!987 list!838))) (is-Nil!557 (tail!987 (reverse!1 (tail!987 list!838))))))))

(assert (=> d!54239 (= (lastOption!1 (reverse!1 (tail!987 list!838))) e!38801)))

(declare-fun b!71724 () Bool)

(assert (=> b!71724 (= e!38802 None!482)))

(assert (= (and b!71722 c!17182) b!71723))

(assert (= (and b!71722 (not c!17182)) b!71724))

(assert (= (and d!54239 c!17181) b!71721))

(assert (= (and d!54239 (not c!17181)) b!71722))

(assert (=> b!71723 m!71578))

(assert (=> b!71599 d!54239))

(declare-fun d!54241 () Bool)

(assert (=> d!54241 (= (headOption!1 lt!15212) (ite (is-Cons!556 lt!15212) (Some!481 (head!966 lt!15212)) None!482))))

(assert (=> b!71599 d!54241))

(declare-fun d!54243 () Bool)

(assert (=> d!54243 (= (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))) (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))) e!38702) (and e!38702 (prop!496 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))) (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))))))

(assert (=> d!54117 d!54243))

(declare-fun b!71728 () Bool)

(declare-fun e!38804 () Bool)

(declare-fun lt!15239 () List!599)

(assert (=> b!71728 (= e!38804 (= (size!4 lt!15239) (size!4 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))))

(declare-fun b!71727 () Bool)

(declare-fun res!35138 () Bool)

(assert (=> b!71727 (=> (not res!35138) (not e!38804))))

(assert (=> b!71727 (= res!35138 (= (lastOption!1 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))) (headOption!1 lt!15239)))))

(declare-fun d!54245 () Bool)

(assert (=> d!54245 e!38804))

(declare-fun res!35137 () Bool)

(assert (=> d!54245 (=> (not res!35137) (not e!38804))))

(assert (=> d!54245 (= res!35137 (= (lastOption!1 lt!15239) (headOption!1 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))))

(declare-fun e!38803 () List!599)

(assert (=> d!54245 (= lt!15239 e!38803)))

(declare-fun c!17183 () Bool)

(assert (=> d!54245 (= c!17183 (is-Cons!556 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))))

(assert (=> d!54245 (= (reverse!1 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))) lt!15239)))

(declare-fun b!71726 () Bool)

(assert (=> b!71726 (= e!38803 Nil!557)))

(declare-fun b!71725 () Bool)

(assert (=> b!71725 (= e!38803 (addLast!0 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))) (head!966 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))))

(assert (= (and d!54245 c!17183) b!71725))

(assert (= (and d!54245 (not c!17183)) b!71726))

(assert (= (and d!54245 res!35137) b!71727))

(assert (= (and b!71727 res!35138) b!71728))

(declare-fun m!71676 () Bool)

(assert (=> b!71728 m!71676))

(assert (=> b!71728 m!71358))

(assert (=> b!71728 m!71532))

(assert (=> b!71727 m!71358))

(declare-fun m!71678 () Bool)

(assert (=> b!71727 m!71678))

(declare-fun m!71680 () Bool)

(assert (=> b!71727 m!71680))

(declare-fun m!71682 () Bool)

(assert (=> d!54245 m!71682))

(assert (=> d!54245 m!71358))

(declare-fun m!71684 () Bool)

(assert (=> d!54245 m!71684))

(assert (=> b!71725 m!71648))

(assert (=> b!71725 m!71648))

(declare-fun m!71686 () Bool)

(assert (=> b!71725 m!71686))

(assert (=> d!54117 d!54245))

(assert (=> d!54117 d!54189))

(assert (=> d!54117 d!54119))

(assert (=> b!71538 d!54189))

(declare-fun b!71737 () Bool)

(declare-fun e!38809 () List!599)

(assert (=> b!71737 (= e!38809 Nil!557)))

(declare-fun b!71739 () Bool)

(declare-fun e!38810 () List!599)

(assert (=> b!71739 (= e!38810 (Cons!556 (head!966 lt!15210) (init!2 (tail!987 lt!15210))))))

(declare-fun b!71738 () Bool)

(assert (=> b!71738 (= e!38809 e!38810)))

(declare-fun c!17189 () Bool)

(assert (=> b!71738 (= c!17189 (is-Cons!556 lt!15210))))

(declare-fun d!54247 () Bool)

(declare-fun c!17188 () Bool)

(assert (=> d!54247 (= c!17188 (and (is-Cons!556 lt!15210) (is-Nil!557 (tail!987 lt!15210))))))

(assert (=> d!54247 (= (init!2 lt!15210) e!38809)))

(declare-fun b!71740 () Bool)

(assert (=> b!71740 (= e!38810 Nil!557)))

(assert (= (and b!71738 c!17189) b!71739))

(assert (= (and b!71738 (not c!17189)) b!71740))

(assert (= (and d!54247 c!17188) b!71737))

(assert (= (and d!54247 (not c!17188)) b!71738))

(declare-fun m!71688 () Bool)

(assert (=> b!71739 m!71688))

(assert (=> b!71572 d!54247))

(assert (=> b!71605 d!54197))

(declare-fun b!71743 () Bool)

(declare-fun e!38812 () Option!505)

(assert (=> b!71743 (= e!38812 (lastOption!1 (tail!987 (tail!987 lt!15196))))))

(declare-fun b!71742 () Bool)

(declare-fun e!38811 () Option!505)

(assert (=> b!71742 (= e!38811 e!38812)))

(declare-fun c!17191 () Bool)

(assert (=> b!71742 (= c!17191 (is-Cons!556 (tail!987 lt!15196)))))

(declare-fun b!71741 () Bool)

(assert (=> b!71741 (= e!38811 (Some!481 (head!966 (tail!987 lt!15196))))))

(declare-fun d!54249 () Bool)

(declare-fun c!17190 () Bool)

(assert (=> d!54249 (= c!17190 (and (is-Cons!556 (tail!987 lt!15196)) (is-Nil!557 (tail!987 (tail!987 lt!15196)))))))

(assert (=> d!54249 (= (lastOption!1 (tail!987 lt!15196)) e!38811)))

(declare-fun b!71744 () Bool)

(assert (=> b!71744 (= e!38812 None!482)))

(assert (= (and b!71742 c!17191) b!71743))

(assert (= (and b!71742 (not c!17191)) b!71744))

(assert (= (and d!54249 c!17190) b!71741))

(assert (= (and d!54249 (not c!17190)) b!71742))

(declare-fun m!71690 () Bool)

(assert (=> b!71743 m!71690))

(assert (=> b!71591 d!54249))

(declare-fun b!71747 () Bool)

(declare-fun e!38814 () Option!505)

(assert (=> b!71747 (= e!38814 (lastOption!1 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838))))))))

(declare-fun b!71746 () Bool)

(declare-fun e!38813 () Option!505)

(assert (=> b!71746 (= e!38813 e!38814)))

(declare-fun c!17193 () Bool)

(assert (=> b!71746 (= c!17193 (is-Cons!556 (reverse!1 (tail!987 (reverse!1 list!838)))))))

(declare-fun b!71745 () Bool)

(assert (=> b!71745 (= e!38813 (Some!481 (head!966 (reverse!1 (tail!987 (reverse!1 list!838))))))))

(declare-fun d!54251 () Bool)

(declare-fun c!17192 () Bool)

(assert (=> d!54251 (= c!17192 (and (is-Cons!556 (reverse!1 (tail!987 (reverse!1 list!838)))) (is-Nil!557 (tail!987 (reverse!1 (tail!987 (reverse!1 list!838)))))))))

(assert (=> d!54251 (= (lastOption!1 (reverse!1 (tail!987 (reverse!1 list!838)))) e!38813)))

(declare-fun b!71748 () Bool)

(assert (=> b!71748 (= e!38814 None!482)))

(assert (= (and b!71746 c!17193) b!71747))

(assert (= (and b!71746 (not c!17193)) b!71748))

(assert (= (and d!54251 c!17192) b!71745))

(assert (= (and d!54251 (not c!17192)) b!71746))

(assert (=> b!71747 m!71542))

(assert (=> b!71575 d!54251))

(declare-fun d!54253 () Bool)

(assert (=> d!54253 (= (headOption!1 lt!15211) (ite (is-Cons!556 lt!15211) (Some!481 (head!966 lt!15211)) None!482))))

(assert (=> b!71575 d!54253))

(declare-fun d!54255 () Bool)

(declare-fun e!38815 () Bool)

(assert (=> d!54255 (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (tail!987 (reverse!1 (tail!987 list!838)))))) (tail!987 (tail!987 (reverse!1 (tail!987 list!838)))))) e!38815)))

(declare-fun res!35139 () Bool)

(assert (=> d!54255 (=> res!35139 e!38815)))

(declare-fun e!38816 () Bool)

(assert (=> d!54255 (= res!35139 (not e!38816))))

(declare-fun res!35141 () Bool)

(assert (=> d!54255 (=> (not res!35141) (not e!38816))))

(assert (=> d!54255 (= res!35141 (is-Cons!556 (tail!987 (tail!987 (reverse!1 (tail!987 list!838))))))))

(assert (=> d!54255 (= (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 list!838))))) (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 list!838))))))))

(assert (=> d!54255 (= (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 list!838))))) (tail!987 (tail!987 (reverse!1 (tail!987 list!838))))) true)))

(declare-fun b!71749 () Bool)

(assert (=> b!71749 (= e!38816 (is-Cons!556 (reverse!1 (tail!987 (tail!987 (reverse!1 (tail!987 list!838)))))))))

(declare-fun b!71750 () Bool)

(declare-fun e!38817 () Bool)

(assert (=> b!71750 (= e!38815 e!38817)))

(declare-fun res!35140 () Bool)

(assert (=> b!71750 (=> (not res!35140) (not e!38817))))

(assert (=> b!71750 (= res!35140 (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 (tail!987 (reverse!1 (tail!987 list!838)))))) (tail!987 (tail!987 (tail!987 (reverse!1 (tail!987 list!838)))))))))

(declare-fun b!71751 () Bool)

(assert (=> b!71751 (= e!38817 (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 (tail!987 list!838))))))) (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 (tail!987 list!838))))))))))

(assert (= (and d!54255 res!35141) b!71749))

(assert (= (and d!54255 (not res!35139)) b!71750))

(assert (= (and b!71750 res!35140) b!71751))

(assert (=> d!54255 m!71586))

(assert (=> d!54255 m!71586))

(declare-fun m!71692 () Bool)

(assert (=> d!54255 m!71692))

(declare-fun m!71694 () Bool)

(assert (=> d!54255 m!71694))

(assert (=> d!54255 m!71462))

(assert (=> b!71749 m!71586))

(assert (=> b!71750 m!71644))

(assert (=> b!71750 m!71644))

(declare-fun m!71696 () Bool)

(assert (=> b!71750 m!71696))

(assert (=> b!71751 m!71586))

(declare-fun m!71698 () Bool)

(assert (=> b!71751 m!71698))

(assert (=> b!71751 m!71698))

(declare-fun m!71700 () Bool)

(assert (=> b!71751 m!71700))

(assert (=> b!71606 d!54255))

(assert (=> b!71606 d!54219))

(assert (=> b!71569 d!54229))

(declare-fun d!54257 () Bool)

(declare-fun lt!15240 () Int)

(assert (=> d!54257 (>= lt!15240 0)))

(declare-fun e!38818 () Int)

(assert (=> d!54257 (= lt!15240 e!38818)))

(declare-fun c!17194 () Bool)

(assert (=> d!54257 (= c!17194 (is-Nil!557 lt!15210))))

(assert (=> d!54257 (= (size!4 lt!15210) lt!15240)))

(declare-fun b!71752 () Bool)

(assert (=> b!71752 (= e!38818 0)))

(declare-fun b!71753 () Bool)

(assert (=> b!71753 (= e!38818 (+ 1 (size!4 (tail!987 lt!15210))))))

(assert (= (and d!54257 c!17194) b!71752))

(assert (= (and d!54257 (not c!17194)) b!71753))

(declare-fun m!71702 () Bool)

(assert (=> b!71753 m!71702))

(assert (=> b!71569 d!54257))

(declare-fun b!71754 () Bool)

(declare-fun e!38819 () List!599)

(assert (=> b!71754 (= e!38819 Nil!557)))

(declare-fun b!71756 () Bool)

(declare-fun e!38820 () List!599)

(assert (=> b!71756 (= e!38820 (Cons!556 (head!966 lt!15216) (init!2 (tail!987 lt!15216))))))

(declare-fun b!71755 () Bool)

(assert (=> b!71755 (= e!38819 e!38820)))

(declare-fun c!17196 () Bool)

(assert (=> b!71755 (= c!17196 (is-Cons!556 lt!15216))))

(declare-fun d!54259 () Bool)

(declare-fun c!17195 () Bool)

(assert (=> d!54259 (= c!17195 (and (is-Cons!556 lt!15216) (is-Nil!557 (tail!987 lt!15216))))))

(assert (=> d!54259 (= (init!2 lt!15216) e!38819)))

(declare-fun b!71757 () Bool)

(assert (=> b!71757 (= e!38820 Nil!557)))

(assert (= (and b!71755 c!17196) b!71756))

(assert (= (and b!71755 (not c!17196)) b!71757))

(assert (= (and d!54259 c!17195) b!71754))

(assert (= (and d!54259 (not c!17195)) b!71755))

(declare-fun m!71704 () Bool)

(assert (=> b!71756 m!71704))

(assert (=> b!71623 d!54259))

(declare-fun d!54261 () Bool)

(declare-fun e!38821 () Bool)

(assert (=> d!54261 (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (tail!987 (tail!987 list!838))))) (tail!987 (tail!987 (tail!987 list!838))))) e!38821)))

(declare-fun res!35142 () Bool)

(assert (=> d!54261 (=> res!35142 e!38821)))

(declare-fun e!38822 () Bool)

(assert (=> d!54261 (= res!35142 (not e!38822))))

(declare-fun res!35144 () Bool)

(assert (=> d!54261 (=> (not res!35144) (not e!38822))))

(assert (=> d!54261 (= res!35144 (is-Cons!556 (tail!987 (tail!987 (tail!987 list!838)))))))

(assert (=> d!54261 (= (size!4 (tail!987 (tail!987 (tail!987 list!838)))) (size!4 (tail!987 (tail!987 (tail!987 list!838)))))))

(assert (=> d!54261 (= (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 (tail!987 list!838)))) (tail!987 (tail!987 (tail!987 list!838)))) true)))

(declare-fun b!71758 () Bool)

(assert (=> b!71758 (= e!38822 (is-Cons!556 (reverse!1 (tail!987 (tail!987 (tail!987 list!838))))))))

(declare-fun b!71759 () Bool)

(declare-fun e!38823 () Bool)

(assert (=> b!71759 (= e!38821 e!38823)))

(declare-fun res!35143 () Bool)

(assert (=> b!71759 (=> (not res!35143) (not e!38823))))

(assert (=> b!71759 (= res!35143 (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 (tail!987 (tail!987 list!838))))) (tail!987 (tail!987 (tail!987 (tail!987 list!838))))))))

(declare-fun b!71760 () Bool)

(assert (=> b!71760 (= e!38823 (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 (tail!987 (tail!987 list!838)))))) (tail!987 (reverse!1 (tail!987 (tail!987 (tail!987 list!838)))))))))

(assert (= (and d!54261 res!35144) b!71758))

(assert (= (and d!54261 (not res!35142)) b!71759))

(assert (= (and b!71759 res!35143) b!71760))

(assert (=> d!54261 m!71602))

(assert (=> d!54261 m!71602))

(declare-fun m!71706 () Bool)

(assert (=> d!54261 m!71706))

(declare-fun m!71708 () Bool)

(assert (=> d!54261 m!71708))

(assert (=> d!54261 m!71394))

(assert (=> b!71758 m!71602))

(assert (=> b!71759 m!71622))

(assert (=> b!71759 m!71622))

(declare-fun m!71710 () Bool)

(assert (=> b!71759 m!71710))

(assert (=> b!71760 m!71602))

(declare-fun m!71712 () Bool)

(assert (=> b!71760 m!71712))

(assert (=> b!71760 m!71712))

(declare-fun m!71714 () Bool)

(assert (=> b!71760 m!71714))

(assert (=> b!71550 d!54261))

(assert (=> b!71550 d!54211))

(assert (=> b!71542 d!54237))

(declare-fun b!71761 () Bool)

(declare-fun res!35146 () Bool)

(declare-fun e!38824 () Bool)

(assert (=> b!71761 (=> (not res!35146) (not e!38824))))

(declare-fun lt!15241 () List!599)

(assert (=> b!71761 (= res!35146 (= (lastOption!1 lt!15241) (Some!481 (head!966 (tail!987 list!838)))))))

(declare-fun b!71762 () Bool)

(assert (=> b!71762 (= e!38824 (= (+ (size!4 (reverse!1 (tail!987 (tail!987 list!838)))) 1) (size!4 lt!15241)))))

(declare-fun b!71763 () Bool)

(declare-fun e!38825 () List!599)

(assert (=> b!71763 (= e!38825 (Cons!556 (head!966 (reverse!1 (tail!987 (tail!987 list!838)))) (addLast!0 (tail!987 (reverse!1 (tail!987 (tail!987 list!838)))) (head!966 (tail!987 list!838)))))))

(declare-fun b!71764 () Bool)

(assert (=> b!71764 (= e!38825 (Cons!556 (head!966 (tail!987 list!838)) Nil!557))))

(declare-fun d!54263 () Bool)

(assert (=> d!54263 e!38824))

(declare-fun res!35147 () Bool)

(assert (=> d!54263 (=> (not res!35147) (not e!38824))))

(assert (=> d!54263 (= res!35147 (is-Cons!556 lt!15241))))

(assert (=> d!54263 (= lt!15241 e!38825)))

(declare-fun c!17197 () Bool)

(assert (=> d!54263 (= c!17197 (is-Cons!556 (reverse!1 (tail!987 (tail!987 list!838)))))))

(assert (=> d!54263 (= (addLast!0 (reverse!1 (tail!987 (tail!987 list!838))) (head!966 (tail!987 list!838))) lt!15241)))

(declare-fun b!71765 () Bool)

(declare-fun res!35145 () Bool)

(assert (=> b!71765 (=> (not res!35145) (not e!38824))))

(assert (=> b!71765 (= res!35145 (= (init!2 lt!15241) (reverse!1 (tail!987 (tail!987 list!838)))))))

(assert (= (and d!54263 c!17197) b!71763))

(assert (= (and d!54263 (not c!17197)) b!71764))

(assert (= (and d!54263 res!35147) b!71761))

(assert (= (and b!71761 res!35146) b!71765))

(assert (= (and b!71765 res!35145) b!71762))

(declare-fun m!71716 () Bool)

(assert (=> b!71761 m!71716))

(assert (=> b!71762 m!71388))

(assert (=> b!71762 m!71608))

(declare-fun m!71718 () Bool)

(assert (=> b!71762 m!71718))

(declare-fun m!71720 () Bool)

(assert (=> b!71763 m!71720))

(declare-fun m!71722 () Bool)

(assert (=> b!71765 m!71722))

(assert (=> b!71601 d!54263))

(assert (=> b!71601 d!54205))

(declare-fun d!54265 () Bool)

(assert (=> d!54265 (= (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838))))) (tail!987 (tail!987 (reverse!1 list!838))))) e!38742) (and e!38742 (prop!496 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838))))) (tail!987 (tail!987 (reverse!1 list!838))))))))))

(assert (=> d!54163 d!54265))

(declare-fun b!71769 () Bool)

(declare-fun e!38827 () Bool)

(declare-fun lt!15242 () List!599)

(assert (=> b!71769 (= e!38827 (= (size!4 lt!15242) (size!4 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838)))))))))

(declare-fun b!71768 () Bool)

(declare-fun res!35149 () Bool)

(assert (=> b!71768 (=> (not res!35149) (not e!38827))))

(assert (=> b!71768 (= res!35149 (= (lastOption!1 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838))))) (headOption!1 lt!15242)))))

(declare-fun d!54267 () Bool)

(assert (=> d!54267 e!38827))

(declare-fun res!35148 () Bool)

(assert (=> d!54267 (=> (not res!35148) (not e!38827))))

(assert (=> d!54267 (= res!35148 (= (lastOption!1 lt!15242) (headOption!1 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838)))))))))

(declare-fun e!38826 () List!599)

(assert (=> d!54267 (= lt!15242 e!38826)))

(declare-fun c!17198 () Bool)

(assert (=> d!54267 (= c!17198 (is-Cons!556 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838))))))))

(assert (=> d!54267 (= (reverse!1 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838))))) lt!15242)))

(declare-fun b!71767 () Bool)

(assert (=> b!71767 (= e!38826 Nil!557)))

(declare-fun b!71766 () Bool)

(assert (=> b!71766 (= e!38826 (addLast!0 (reverse!1 (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838)))))) (head!966 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838)))))))))

(assert (= (and d!54267 c!17198) b!71766))

(assert (= (and d!54267 (not c!17198)) b!71767))

(assert (= (and d!54267 res!35148) b!71768))

(assert (= (and b!71768 res!35149) b!71769))

(declare-fun m!71724 () Bool)

(assert (=> b!71769 m!71724))

(assert (=> b!71769 m!71382))

(assert (=> b!71769 m!71492))

(assert (=> b!71768 m!71382))

(declare-fun m!71726 () Bool)

(assert (=> b!71768 m!71726))

(declare-fun m!71728 () Bool)

(assert (=> b!71768 m!71728))

(declare-fun m!71730 () Bool)

(assert (=> d!54267 m!71730))

(assert (=> d!54267 m!71382))

(declare-fun m!71732 () Bool)

(assert (=> d!54267 m!71732))

(declare-fun m!71734 () Bool)

(assert (=> b!71766 m!71734))

(assert (=> b!71766 m!71734))

(declare-fun m!71736 () Bool)

(assert (=> b!71766 m!71736))

(assert (=> d!54163 d!54267))

(assert (=> d!54163 d!54173))

(assert (=> d!54163 d!54161))

(declare-fun d!54269 () Bool)

(declare-fun lt!15243 () Int)

(assert (=> d!54269 (>= lt!15243 0)))

(declare-fun e!38828 () Int)

(assert (=> d!54269 (= lt!15243 e!38828)))

(declare-fun c!17199 () Bool)

(assert (=> d!54269 (= c!17199 (is-Nil!557 (tail!987 lt!15195)))))

(assert (=> d!54269 (= (size!4 (tail!987 lt!15195)) lt!15243)))

(declare-fun b!71770 () Bool)

(assert (=> b!71770 (= e!38828 0)))

(declare-fun b!71771 () Bool)

(assert (=> b!71771 (= e!38828 (+ 1 (size!4 (tail!987 (tail!987 lt!15195)))))))

(assert (= (and d!54269 c!17199) b!71770))

(assert (= (and d!54269 (not c!17199)) b!71771))

(declare-fun m!71738 () Bool)

(assert (=> b!71771 m!71738))

(assert (=> b!71555 d!54269))

(declare-fun d!54271 () Bool)

(declare-fun lt!15244 () Int)

(assert (=> d!54271 (>= lt!15244 0)))

(declare-fun e!38829 () Int)

(assert (=> d!54271 (= lt!15244 e!38829)))

(declare-fun c!17200 () Bool)

(assert (=> d!54271 (= c!17200 (is-Nil!557 (tail!987 lt!15196)))))

(assert (=> d!54271 (= (size!4 (tail!987 lt!15196)) lt!15244)))

(declare-fun b!71772 () Bool)

(assert (=> b!71772 (= e!38829 0)))

(declare-fun b!71773 () Bool)

(assert (=> b!71773 (= e!38829 (+ 1 (size!4 (tail!987 (tail!987 lt!15196)))))))

(assert (= (and d!54271 c!17200) b!71772))

(assert (= (and d!54271 (not c!17200)) b!71773))

(declare-fun m!71740 () Bool)

(assert (=> b!71773 m!71740))

(assert (=> b!71548 d!54271))

(declare-fun d!54273 () Bool)

(declare-fun e!38830 () Bool)

(assert (=> d!54273 (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (reverse!1 (tail!987 (tail!987 list!838)))))) (tail!987 (reverse!1 (tail!987 (tail!987 list!838)))))) e!38830)))

(declare-fun res!35150 () Bool)

(assert (=> d!54273 (=> res!35150 e!38830)))

(declare-fun e!38831 () Bool)

(assert (=> d!54273 (= res!35150 (not e!38831))))

(declare-fun res!35152 () Bool)

(assert (=> d!54273 (=> (not res!35152) (not e!38831))))

(assert (=> d!54273 (= res!35152 (is-Cons!556 (tail!987 (reverse!1 (tail!987 (tail!987 list!838))))))))

(assert (=> d!54273 (= (size!4 (tail!987 (reverse!1 (tail!987 (tail!987 list!838))))) (size!4 (tail!987 (reverse!1 (tail!987 (tail!987 list!838))))))))

(assert (=> d!54273 (= (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 (tail!987 list!838))))) (tail!987 (reverse!1 (tail!987 (tail!987 list!838))))) true)))

(declare-fun b!71774 () Bool)

(assert (=> b!71774 (= e!38831 (is-Cons!556 (reverse!1 (tail!987 (reverse!1 (tail!987 (tail!987 list!838)))))))))

(declare-fun b!71775 () Bool)

(declare-fun e!38832 () Bool)

(assert (=> b!71775 (= e!38830 e!38832)))

(declare-fun res!35151 () Bool)

(assert (=> b!71775 (=> (not res!35151) (not e!38832))))

(assert (=> b!71775 (= res!35151 (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 (tail!987 list!838)))))) (tail!987 (tail!987 (reverse!1 (tail!987 (tail!987 list!838)))))))))

(declare-fun b!71776 () Bool)

(assert (=> b!71776 (= e!38832 (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (tail!987 list!838))))))) (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (tail!987 list!838))))))))))

(assert (= (and d!54273 res!35152) b!71774))

(assert (= (and d!54273 (not res!35150)) b!71775))

(assert (= (and b!71775 res!35151) b!71776))

(assert (=> d!54273 m!71618))

(assert (=> d!54273 m!71618))

(declare-fun m!71742 () Bool)

(assert (=> d!54273 m!71742))

(declare-fun m!71744 () Bool)

(assert (=> d!54273 m!71744))

(assert (=> d!54273 m!71398))

(assert (=> b!71774 m!71618))

(declare-fun m!71746 () Bool)

(assert (=> b!71775 m!71746))

(assert (=> b!71775 m!71746))

(declare-fun m!71748 () Bool)

(assert (=> b!71775 m!71748))

(assert (=> b!71776 m!71618))

(declare-fun m!71750 () Bool)

(assert (=> b!71776 m!71750))

(assert (=> b!71776 m!71750))

(declare-fun m!71752 () Bool)

(assert (=> b!71776 m!71752))

(assert (=> b!71551 d!54273))

(declare-fun d!54275 () Bool)

(declare-fun lt!15245 () Int)

(assert (=> d!54275 (>= lt!15245 0)))

(declare-fun e!38833 () Int)

(assert (=> d!54275 (= lt!15245 e!38833)))

(declare-fun c!17201 () Bool)

(assert (=> d!54275 (= c!17201 (is-Nil!557 (tail!987 (reverse!1 (tail!987 (tail!987 list!838))))))))

(assert (=> d!54275 (= (size!4 (tail!987 (reverse!1 (tail!987 (tail!987 list!838))))) lt!15245)))

(declare-fun b!71777 () Bool)

(assert (=> b!71777 (= e!38833 0)))

(declare-fun b!71778 () Bool)

(assert (=> b!71778 (= e!38833 (+ 1 (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 (tail!987 list!838))))))))))

(assert (= (and d!54275 c!17201) b!71777))

(assert (= (and d!54275 (not c!17201)) b!71778))

(assert (=> b!71778 m!71746))

(assert (=> b!71551 d!54275))

(assert (=> b!71551 d!54205))

(declare-fun b!71781 () Bool)

(declare-fun e!38835 () Option!505)

(assert (=> b!71781 (= e!38835 (lastOption!1 (tail!987 lt!15211)))))

(declare-fun b!71780 () Bool)

(declare-fun e!38834 () Option!505)

(assert (=> b!71780 (= e!38834 e!38835)))

(declare-fun c!17203 () Bool)

(assert (=> b!71780 (= c!17203 (is-Cons!556 lt!15211))))

(declare-fun b!71779 () Bool)

(assert (=> b!71779 (= e!38834 (Some!481 (head!966 lt!15211)))))

(declare-fun d!54277 () Bool)

(declare-fun c!17202 () Bool)

(assert (=> d!54277 (= c!17202 (and (is-Cons!556 lt!15211) (is-Nil!557 (tail!987 lt!15211))))))

(assert (=> d!54277 (= (lastOption!1 lt!15211) e!38834)))

(declare-fun b!71782 () Bool)

(assert (=> b!71782 (= e!38835 None!482)))

(assert (= (and b!71780 c!17203) b!71781))

(assert (= (and b!71780 (not c!17203)) b!71782))

(assert (= (and d!54277 c!17202) b!71779))

(assert (= (and d!54277 (not c!17202)) b!71780))

(declare-fun m!71754 () Bool)

(assert (=> b!71781 m!71754))

(assert (=> d!54137 d!54277))

(declare-fun d!54279 () Bool)

(assert (=> d!54279 (= (headOption!1 (reverse!1 (tail!987 (reverse!1 list!838)))) (ite (is-Cons!556 (reverse!1 (tail!987 (reverse!1 list!838)))) (Some!481 (head!966 (reverse!1 (tail!987 (reverse!1 list!838))))) None!482))))

(assert (=> d!54137 d!54279))

(declare-fun b!71785 () Bool)

(declare-fun e!38837 () Option!505)

(assert (=> b!71785 (= e!38837 (lastOption!1 (tail!987 lt!15212)))))

(declare-fun b!71784 () Bool)

(declare-fun e!38836 () Option!505)

(assert (=> b!71784 (= e!38836 e!38837)))

(declare-fun c!17205 () Bool)

(assert (=> b!71784 (= c!17205 (is-Cons!556 lt!15212))))

(declare-fun b!71783 () Bool)

(assert (=> b!71783 (= e!38836 (Some!481 (head!966 lt!15212)))))

(declare-fun d!54281 () Bool)

(declare-fun c!17204 () Bool)

(assert (=> d!54281 (= c!17204 (and (is-Cons!556 lt!15212) (is-Nil!557 (tail!987 lt!15212))))))

(assert (=> d!54281 (= (lastOption!1 lt!15212) e!38836)))

(declare-fun b!71786 () Bool)

(assert (=> b!71786 (= e!38837 None!482)))

(assert (= (and b!71784 c!17205) b!71785))

(assert (= (and b!71784 (not c!17205)) b!71786))

(assert (= (and d!54281 c!17204) b!71783))

(assert (= (and d!54281 (not c!17204)) b!71784))

(declare-fun m!71756 () Bool)

(assert (=> b!71785 m!71756))

(assert (=> d!54153 d!54281))

(declare-fun d!54283 () Bool)

(assert (=> d!54283 (= (headOption!1 (reverse!1 (tail!987 list!838))) (ite (is-Cons!556 (reverse!1 (tail!987 list!838))) (Some!481 (head!966 (reverse!1 (tail!987 list!838)))) None!482))))

(assert (=> d!54153 d!54283))

(assert (=> b!71587 d!54231))

(declare-fun b!71789 () Bool)

(declare-fun e!38839 () Option!505)

(assert (=> b!71789 (= e!38839 (lastOption!1 (tail!987 (tail!987 lt!15195))))))

(declare-fun b!71788 () Bool)

(declare-fun e!38838 () Option!505)

(assert (=> b!71788 (= e!38838 e!38839)))

(declare-fun c!17207 () Bool)

(assert (=> b!71788 (= c!17207 (is-Cons!556 (tail!987 lt!15195)))))

(declare-fun b!71787 () Bool)

(assert (=> b!71787 (= e!38838 (Some!481 (head!966 (tail!987 lt!15195))))))

(declare-fun d!54285 () Bool)

(declare-fun c!17206 () Bool)

(assert (=> d!54285 (= c!17206 (and (is-Cons!556 (tail!987 lt!15195)) (is-Nil!557 (tail!987 (tail!987 lt!15195)))))))

(assert (=> d!54285 (= (lastOption!1 (tail!987 lt!15195)) e!38838)))

(declare-fun b!71790 () Bool)

(assert (=> b!71790 (= e!38839 None!482)))

(assert (= (and b!71788 c!17207) b!71789))

(assert (= (and b!71788 (not c!17207)) b!71790))

(assert (= (and d!54285 c!17206) b!71787))

(assert (= (and d!54285 (not c!17206)) b!71788))

(declare-fun m!71758 () Bool)

(assert (=> b!71789 m!71758))

(assert (=> b!71595 d!54285))

(declare-fun d!54287 () Bool)

(assert (=> d!54287 (= (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838))))) (tail!987 (reverse!1 (tail!987 list!838))))) e!38737) (and e!38737 (prop!496 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838))))) (tail!987 (reverse!1 (tail!987 list!838))))))))))

(assert (=> d!54157 d!54287))

(declare-fun b!71794 () Bool)

(declare-fun e!38841 () Bool)

(declare-fun lt!15246 () List!599)

(assert (=> b!71794 (= e!38841 (= (size!4 lt!15246) (size!4 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838)))))))))

(declare-fun b!71793 () Bool)

(declare-fun res!35154 () Bool)

(assert (=> b!71793 (=> (not res!35154) (not e!38841))))

(assert (=> b!71793 (= res!35154 (= (lastOption!1 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838))))) (headOption!1 lt!15246)))))

(declare-fun d!54289 () Bool)

(assert (=> d!54289 e!38841))

(declare-fun res!35153 () Bool)

(assert (=> d!54289 (=> (not res!35153) (not e!38841))))

(assert (=> d!54289 (= res!35153 (= (lastOption!1 lt!15246) (headOption!1 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838)))))))))

(declare-fun e!38840 () List!599)

(assert (=> d!54289 (= lt!15246 e!38840)))

(declare-fun c!17208 () Bool)

(assert (=> d!54289 (= c!17208 (is-Cons!556 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838))))))))

(assert (=> d!54289 (= (reverse!1 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838))))) lt!15246)))

(declare-fun b!71792 () Bool)

(assert (=> b!71792 (= e!38840 Nil!557)))

(declare-fun b!71791 () Bool)

(assert (=> b!71791 (= e!38840 (addLast!0 (reverse!1 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838)))))) (head!966 (reverse!1 (tail!987 (reverse!1 (tail!987 list!838)))))))))

(assert (= (and d!54289 c!17208) b!71791))

(assert (= (and d!54289 (not c!17208)) b!71792))

(assert (= (and d!54289 res!35153) b!71793))

(assert (= (and b!71793 res!35154) b!71794))

(declare-fun m!71760 () Bool)

(assert (=> b!71794 m!71760))

(assert (=> b!71794 m!71442))

(assert (=> b!71794 m!71626))

(assert (=> b!71793 m!71442))

(declare-fun m!71762 () Bool)

(assert (=> b!71793 m!71762))

(declare-fun m!71764 () Bool)

(assert (=> b!71793 m!71764))

(declare-fun m!71766 () Bool)

(assert (=> d!54289 m!71766))

(assert (=> d!54289 m!71442))

(declare-fun m!71768 () Bool)

(assert (=> d!54289 m!71768))

(assert (=> b!71791 m!71562))

(assert (=> b!71791 m!71562))

(declare-fun m!71770 () Bool)

(assert (=> b!71791 m!71770))

(assert (=> d!54157 d!54289))

(assert (=> d!54157 d!54197))

(assert (=> d!54157 d!54159))

(declare-fun d!54291 () Bool)

(declare-fun lt!15247 () Int)

(assert (=> d!54291 (>= lt!15247 0)))

(declare-fun e!38842 () Int)

(assert (=> d!54291 (= lt!15247 e!38842)))

(declare-fun c!17209 () Bool)

(assert (=> d!54291 (= c!17209 (is-Nil!557 lt!15213))))

(assert (=> d!54291 (= (size!4 lt!15213) lt!15247)))

(declare-fun b!71795 () Bool)

(assert (=> b!71795 (= e!38842 0)))

(declare-fun b!71796 () Bool)

(assert (=> b!71796 (= e!38842 (+ 1 (size!4 (tail!987 lt!15213))))))

(assert (= (and d!54291 c!17209) b!71795))

(assert (= (and d!54291 (not c!17209)) b!71796))

(declare-fun m!71772 () Bool)

(assert (=> b!71796 m!71772))

(assert (=> b!71604 d!54291))

(assert (=> b!71604 d!54111))

(declare-fun b!71799 () Bool)

(declare-fun e!38844 () Option!505)

(assert (=> b!71799 (= e!38844 (lastOption!1 (tail!987 lt!15216)))))

(declare-fun b!71798 () Bool)

(declare-fun e!38843 () Option!505)

(assert (=> b!71798 (= e!38843 e!38844)))

(declare-fun c!17211 () Bool)

(assert (=> b!71798 (= c!17211 (is-Cons!556 lt!15216))))

(declare-fun b!71797 () Bool)

(assert (=> b!71797 (= e!38843 (Some!481 (head!966 lt!15216)))))

(declare-fun d!54293 () Bool)

(declare-fun c!17210 () Bool)

(assert (=> d!54293 (= c!17210 (and (is-Cons!556 lt!15216) (is-Nil!557 (tail!987 lt!15216))))))

(assert (=> d!54293 (= (lastOption!1 lt!15216) e!38843)))

(declare-fun b!71800 () Bool)

(assert (=> b!71800 (= e!38844 None!482)))

(assert (= (and b!71798 c!17211) b!71799))

(assert (= (and b!71798 (not c!17211)) b!71800))

(assert (= (and d!54293 c!17210) b!71797))

(assert (= (and d!54293 (not c!17210)) b!71798))

(declare-fun m!71774 () Bool)

(assert (=> b!71799 m!71774))

(assert (=> b!71619 d!54293))

(declare-fun d!54295 () Bool)

(declare-fun e!38845 () Bool)

(assert (=> d!54295 (because!1 (ProofOps!375 (= (reverse!1 (reverse!1 (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838))))))) (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838))))))) e!38845)))

(declare-fun res!35155 () Bool)

(assert (=> d!54295 (=> res!35155 e!38845)))

(declare-fun e!38846 () Bool)

(assert (=> d!54295 (= res!35155 (not e!38846))))

(declare-fun res!35157 () Bool)

(assert (=> d!54295 (=> (not res!35157) (not e!38846))))

(assert (=> d!54295 (= res!35157 (is-Cons!556 (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838)))))))))

(assert (=> d!54295 (= (size!4 (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838)))))) (size!4 (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838)))))))))

(assert (=> d!54295 (= (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838)))))) (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838)))))) true)))

(declare-fun b!71801 () Bool)

(assert (=> b!71801 (= e!38846 (is-Cons!556 (reverse!1 (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838))))))))))

(declare-fun b!71802 () Bool)

(declare-fun e!38847 () Bool)

(assert (=> b!71802 (= e!38845 e!38847)))

(declare-fun res!35156 () Bool)

(assert (=> b!71802 (=> (not res!35156) (not e!38847))))

(assert (=> b!71802 (= res!35156 (reverse_reverse_equivalence!0 (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838))))))) (tail!987 (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838))))))))))

(declare-fun b!71803 () Bool)

(assert (=> b!71803 (= e!38847 (reverse_reverse_equivalence!0 (size!4 (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838)))))))) (tail!987 (reverse!1 (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838)))))))))))

(assert (= (and d!54295 res!35157) b!71801))

(assert (= (and d!54295 (not res!35155)) b!71802))

(assert (= (and b!71802 res!35156) b!71803))

(assert (=> d!54295 m!71734))

(assert (=> d!54295 m!71734))

(declare-fun m!71776 () Bool)

(assert (=> d!54295 m!71776))

(declare-fun m!71778 () Bool)

(assert (=> d!54295 m!71778))

(assert (=> d!54295 m!71478))

(assert (=> b!71801 m!71734))

(declare-fun m!71780 () Bool)

(assert (=> b!71802 m!71780))

(assert (=> b!71802 m!71780))

(declare-fun m!71782 () Bool)

(assert (=> b!71802 m!71782))

(assert (=> b!71803 m!71734))

(declare-fun m!71784 () Bool)

(assert (=> b!71803 m!71784))

(assert (=> b!71803 m!71784))

(declare-fun m!71786 () Bool)

(assert (=> b!71803 m!71786))

(assert (=> b!71614 d!54295))

(declare-fun d!54297 () Bool)

(declare-fun lt!15248 () Int)

(assert (=> d!54297 (>= lt!15248 0)))

(declare-fun e!38848 () Int)

(assert (=> d!54297 (= lt!15248 e!38848)))

(declare-fun c!17212 () Bool)

(assert (=> d!54297 (= c!17212 (is-Nil!557 (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838)))))))))

(assert (=> d!54297 (= (size!4 (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838)))))) lt!15248)))

(declare-fun b!71804 () Bool)

(assert (=> b!71804 (= e!38848 0)))

(declare-fun b!71805 () Bool)

(assert (=> b!71805 (= e!38848 (+ 1 (size!4 (tail!987 (tail!987 (reverse!1 (tail!987 (tail!987 (reverse!1 list!838)))))))))))

(assert (= (and d!54297 c!17212) b!71804))

(assert (= (and d!54297 (not c!17212)) b!71805))

(assert (=> b!71805 m!71780))

(assert (=> b!71614 d!54297))

(assert (=> b!71614 d!54173))

(declare-fun b!71808 () Bool)

(declare-fun e!38850 () Option!505)

(assert (=> b!71808 (= e!38850 (lastOption!1 (tail!987 lt!15203)))))

(declare-fun b!71807 () Bool)

(declare-fun e!38849 () Option!505)

(assert (=> b!71807 (= e!38849 e!38850)))

(declare-fun c!17214 () Bool)

(assert (=> b!71807 (= c!17214 (is-Cons!556 lt!15203))))

(declare-fun b!71806 () Bool)

(assert (=> b!71806 (= e!38849 (Some!481 (head!966 lt!15203)))))

(declare-fun d!54299 () Bool)

(declare-fun c!17213 () Bool)

(assert (=> d!54299 (= c!17213 (and (is-Cons!556 lt!15203) (is-Nil!557 (tail!987 lt!15203))))))

(assert (=> d!54299 (= (lastOption!1 lt!15203) e!38849)))

(declare-fun b!71809 () Bool)

(assert (=> b!71809 (= e!38850 None!482)))

(assert (= (and b!71807 c!17214) b!71808))

(assert (= (and b!71807 (not c!17214)) b!71809))

(assert (= (and d!54299 c!17213) b!71806))

(assert (= (and d!54299 (not c!17213)) b!71807))

(declare-fun m!71788 () Bool)

(assert (=> b!71808 m!71788))

(assert (=> d!54121 d!54299))

(declare-fun d!54301 () Bool)

(assert (=> d!54301 (= (headOption!1 (tail!987 (reverse!1 list!838))) (ite (is-Cons!556 (tail!987 (reverse!1 list!838))) (Some!481 (head!966 (tail!987 (reverse!1 list!838)))) None!482))))

(assert (=> d!54121 d!54301))

(push 1)

(assert (not d!54295))

(assert (not b!71765))

(assert (not b!71762))

(assert (not b!71665))

(assert (not b!71781))

(assert (not b!71796))

(assert (not b!71700))

(assert (not b!71718))

(assert (not b!71688))

(assert (not b!71702))

(assert (not b!71725))

(assert (not b!71749))

(assert (not b!71659))

(assert (not b!71676))

(assert (not b!71670))

(assert (not b!71776))

(assert (not b!71747))

(assert (not b!71794))

(assert (not b!71629))

(assert (not b!71690))

(assert (not b!71714))

(assert (not b!71705))

(assert (not b!71662))

(assert (not d!54223))

(assert (not b!71808))

(assert (not d!54245))

(assert (not b!71717))

(assert (not b!71653))

(assert (not b!71656))

(assert (not b!71652))

(assert (not b!71773))

(assert (not b!71793))

(assert (not b!71766))

(assert (not b!71716))

(assert (not d!54255))

(assert (not b!71695))

(assert (not b!71674))

(assert (not b!71774))

(assert (not b!71739))

(assert (not b!71791))

(assert (not b!71649))

(assert (not b!71707))

(assert (not b!71693))

(assert (not b!71661))

(assert (not b!71692))

(assert (not b!71785))

(assert (not b!71660))

(assert (not b!71638))

(assert (not b!71709))

(assert (not b!71651))

(assert (not b!71727))

(assert (not d!54189))

(assert (not b!71663))

(assert (not b!71644))

(assert (not b!71698))

(assert (not b!71631))

(assert (not b!71696))

(assert (not b!71760))

(assert (not b!71687))

(assert (not b!71666))

(assert (not b!71758))

(assert (not b!71681))

(assert (not b!71673))

(assert (not b!71751))

(assert (not b!71789))

(assert (not b!71704))

(assert (not b!71801))

(assert (not b!71626))

(assert (not b!71641))

(assert (not b!71643))

(assert (not d!54215))

(assert (not b!71803))

(assert (not d!54193))

(assert (not b!71743))

(assert (not b!71654))

(assert (not b!71667))

(assert (not b!71703))

(assert (not b!71805))

(assert (not d!54267))

(assert (not d!54261))

(assert (not b!71768))

(assert (not d!54173))

(assert (not d!54235))

(assert (not b!71711))

(assert (not b!71691))

(assert (not d!54205))

(assert (not b!71756))

(assert (not b!71799))

(assert (not b!71697))

(assert (not b!71624))

(assert (not b!71728))

(assert (not d!54209))

(assert (not d!54197))

(assert (not d!54273))

(assert (not b!71769))

(assert (not b!71625))

(assert (not b!71632))

(assert (not b!71720))

(assert (not b!71778))

(assert (not b!71753))

(assert (not b!71657))

(assert (not b!71635))

(assert (not b!71771))

(assert (not b!71671))

(assert (not d!54289))

(assert (not b!71668))

(assert (not b!71761))

(assert (not b!71645))

(assert (not b!71802))

(assert (not b!71628))

(assert (not b!71723))

(assert (not b!71647))

(assert (not b!71759))

(assert (not b!71679))

(assert (not b!71683))

(assert (not b!71750))

(assert (not b!71775))

(assert (not b!71684))

(assert (not b!71685))

(assert (not b!71763))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

