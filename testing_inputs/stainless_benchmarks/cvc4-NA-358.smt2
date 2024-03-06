; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2686 () Bool)

(assert start!2686)

(declare-fun res!4810 () Bool)

(declare-fun e!7156 () Bool)

(assert (=> start!2686 (=> (not res!4810) (not e!7156))))

(declare-datatypes () ((Tree!83 (Leaf!163) (Node!15 (left!573 Tree!83) (value!1456 Int) (right!576 Tree!83)))))

(declare-fun tree!73 () Tree!83)

(declare-fun isBST!0 (Tree!83) Bool)

(assert (=> start!2686 (= res!4810 (isBST!0 tree!73))))

(assert (=> start!2686 e!7156))

(assert (=> start!2686 true))

(declare-fun b!13037 () Bool)

(declare-fun res!4811 () Bool)

(assert (=> b!13037 (=> (not res!4811) (not e!7156))))

(declare-fun value!1445 () Int)

(declare-fun left!564 () Tree!83)

(declare-fun tree!82 () Tree!83)

(declare-fun value!1447 () Int)

(declare-fun value!1448 () Int)

(assert (=> b!13037 (= res!4811 (and (not (is-Leaf!163 tree!73)) (< (value!1456 tree!73) value!1445) (= left!564 (left!573 tree!73)) (= value!1447 (value!1456 tree!73)) (= tree!82 (right!576 tree!73)) (= value!1448 value!1445)))))

(declare-fun b!13038 () Bool)

(assert (=> b!13038 (= e!7156 (not (isBST!0 tree!82)))))

(assert (= (and start!2686 res!4810) b!13037))

(assert (= (and b!13037 res!4811) b!13038))

(declare-fun m!16387 () Bool)

(assert (=> start!2686 m!16387))

(declare-fun m!16389 () Bool)

(assert (=> b!13038 m!16389))

(push 1)

(assert (not b!13038))

(assert (not start!2686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!13049 () Bool)

(declare-fun m!16391 () Bool)

(assert (=> b!13049 m!16391))

(declare-fun inst!30 () Bool)

(declare-fun x!7414 () Int)

(declare-fun content!21 (Tree!83) (Set Int))

(assert (=> b!13049 (= inst!30 (=> true (or (not (member x!7414 (content!21 (left!573 tree!82)))) (< x!7414 (value!1456 tree!82)))))))

(declare-fun m!16393 () Bool)

(assert (=> b!13049 m!16393))

(declare-fun b!13050 () Bool)

(declare-fun m!16395 () Bool)

(assert (=> b!13050 m!16395))

(declare-fun inst!31 () Bool)

(declare-fun x!7415 () Int)

(assert (=> b!13050 (= inst!31 (=> true (or (not (member x!7415 (content!21 (right!576 tree!82)))) (< (value!1456 tree!82) x!7415))))))

(declare-fun m!16397 () Bool)

(assert (=> b!13050 m!16397))

(declare-fun bs!3448 () Bool)

(declare-fun neg-inst!18 () Bool)

(assert (= bs!3448 neg-inst!18))

(assert (=> bs!3448 m!16391))

(declare-fun bs!3449 () Bool)

(declare-fun s!384 () Bool)

(assert (= bs!3449 (and neg-inst!18 s!384)))

(assert (=> bs!3449 (=> true (or (not (member x!7414 (content!21 (left!573 tree!82)))) (< x!7414 (value!1456 tree!82))))))

(assert (=> m!16393 s!384))

(declare-fun bs!3450 () Bool)

(assert (= bs!3450 (and neg-inst!18 b!13049)))

(assert (=> bs!3450 (= true inst!30)))

(declare-fun bs!3451 () Bool)

(declare-fun neg-inst!19 () Bool)

(assert (= bs!3451 neg-inst!19))

(assert (=> bs!3451 m!16395))

(declare-fun bs!3452 () Bool)

(declare-fun s!386 () Bool)

(assert (= bs!3452 (and neg-inst!19 s!386)))

(assert (=> bs!3452 (=> true (or (not (member x!7415 (content!21 (right!576 tree!82)))) (< (value!1456 tree!82) x!7415)))))

(assert (=> m!16397 s!386))

(declare-fun bs!3453 () Bool)

(assert (= bs!3453 (and neg-inst!19 b!13050)))

(assert (=> bs!3453 (= true inst!31)))

(declare-fun b!13047 () Bool)

(declare-fun e!7161 () Bool)

(declare-fun e!7162 () Bool)

(assert (=> b!13047 (= e!7161 e!7162)))

(declare-fun res!4821 () Bool)

(assert (=> b!13047 (=> (not res!4821) (not e!7162))))

(assert (=> b!13047 (= res!4821 (isBST!0 (left!573 tree!82)))))

(declare-fun d!10207 () Bool)

(declare-fun res!4822 () Bool)

(assert (=> d!10207 (=> res!4822 e!7161)))

(assert (=> d!10207 (= res!4822 (is-Leaf!163 tree!82))))

(assert (=> d!10207 (= (isBST!0 tree!82) e!7161)))

(declare-fun b!13048 () Bool)

(declare-fun res!4820 () Bool)

(assert (=> b!13048 (=> (not res!4820) (not e!7162))))

(assert (=> b!13048 (= res!4820 (isBST!0 (right!576 tree!82)))))

(assert (=> b!13050 (= e!7162 inst!31)))

(declare-fun res!4823 () Bool)

(assert (=> b!13049 (=> (not res!4823) (not e!7162))))

(assert (=> b!13049 (= res!4823 inst!30)))

(assert (= (and d!10207 (not res!4822)) b!13047))

(assert (= (and b!13047 res!4821) b!13048))

(assert (= (and b!13048 res!4820) b!13049))

(assert (= neg-inst!18 inst!30))

(assert (= (and b!13049 res!4823) b!13050))

(assert (= neg-inst!19 inst!31))

(declare-fun m!16399 () Bool)

(assert (=> b!13047 m!16399))

(declare-fun m!16401 () Bool)

(assert (=> b!13048 m!16401))

(assert (=> b!13038 d!10207))

(declare-fun b!13053 () Bool)

(declare-fun m!16403 () Bool)

(assert (=> b!13053 m!16403))

(declare-fun inst!32 () Bool)

(declare-fun x!7416 () Int)

(assert (=> b!13053 (= inst!32 (=> true (or (not (member x!7416 (content!21 (left!573 tree!73)))) (< x!7416 (value!1456 tree!73)))))))

(declare-fun m!16405 () Bool)

(assert (=> b!13053 m!16405))

(declare-fun bs!3454 () Bool)

(assert (= bs!3454 (and b!13053 b!13049)))

(assert (=> (and bs!3454 (= (content!21 (left!573 tree!73)) (content!21 (left!573 tree!82))) (= (value!1456 tree!73) (value!1456 tree!82))) (= inst!32 inst!30)))

(declare-fun bs!3455 () Bool)

(assert (= bs!3455 (and b!13053 neg-inst!18)))

(assert (=> (and bs!3455 (= (content!21 (left!573 tree!73)) (content!21 (left!573 tree!82))) (= (value!1456 tree!73) (value!1456 tree!82))) (= inst!32 true)))

(declare-fun b!13054 () Bool)

(declare-fun m!16407 () Bool)

(assert (=> b!13054 m!16407))

(declare-fun inst!33 () Bool)

(declare-fun x!7417 () Int)

(assert (=> b!13054 (= inst!33 (=> true (or (not (member x!7417 (content!21 (right!576 tree!73)))) (< (value!1456 tree!73) x!7417))))))

(declare-fun m!16409 () Bool)

(assert (=> b!13054 m!16409))

(declare-fun bs!3456 () Bool)

(assert (= bs!3456 (and b!13054 b!13050)))

(assert (=> (and bs!3456 (= (content!21 (right!576 tree!73)) (content!21 (right!576 tree!82))) (= (value!1456 tree!73) (value!1456 tree!82))) (= inst!33 inst!31)))

(declare-fun bs!3457 () Bool)

(assert (= bs!3457 (and b!13054 neg-inst!19)))

(assert (=> (and bs!3457 (= (content!21 (right!576 tree!73)) (content!21 (right!576 tree!82))) (= (value!1456 tree!73) (value!1456 tree!82))) (= inst!33 true)))

(declare-fun bs!3458 () Bool)

(declare-fun neg-inst!20 () Bool)

(assert (= bs!3458 neg-inst!20))

(assert (=> bs!3458 m!16403))

(declare-fun bs!3459 () Bool)

(declare-fun s!388 () Bool)

(assert (= bs!3459 (and neg-inst!20 s!388)))

(assert (=> bs!3459 (=> true (or (not (member x!7416 (content!21 (left!573 tree!73)))) (< x!7416 (value!1456 tree!73))))))

(assert (=> m!16405 s!388))

(declare-fun bs!3460 () Bool)

(assert (= bs!3460 (and neg-inst!20 b!13049)))

(assert (=> (and bs!3460 (= (content!21 (left!573 tree!73)) (content!21 (left!573 tree!82))) (= (value!1456 tree!73) (value!1456 tree!82))) (= true inst!30)))

(declare-fun bs!3461 () Bool)

(assert (= bs!3461 (and neg-inst!20 b!13053)))

(assert (=> bs!3461 (= true inst!32)))

(declare-fun bs!3462 () Bool)

(assert (= bs!3462 (and neg-inst!20 neg-inst!18)))

(assert (=> (and bs!3462 (= (content!21 (left!573 tree!73)) (content!21 (left!573 tree!82))) (= (value!1456 tree!73) (value!1456 tree!82))) (= true true)))

(declare-fun bs!3463 () Bool)

(declare-fun neg-inst!21 () Bool)

(assert (= bs!3463 neg-inst!21))

(assert (=> bs!3463 m!16407))

(declare-fun bs!3464 () Bool)

(declare-fun s!390 () Bool)

(assert (= bs!3464 (and neg-inst!21 s!390)))

(assert (=> bs!3464 (=> true (or (not (member x!7417 (content!21 (right!576 tree!73)))) (< (value!1456 tree!73) x!7417)))))

(assert (=> m!16409 s!390))

(declare-fun bs!3465 () Bool)

(assert (= bs!3465 (and neg-inst!21 b!13054)))

(assert (=> bs!3465 (= true inst!33)))

(declare-fun bs!3466 () Bool)

(assert (= bs!3466 (and neg-inst!21 b!13050)))

(assert (=> (and bs!3466 (= (content!21 (right!576 tree!73)) (content!21 (right!576 tree!82))) (= (value!1456 tree!73) (value!1456 tree!82))) (= true inst!31)))

(declare-fun bs!3467 () Bool)

(assert (= bs!3467 (and neg-inst!21 neg-inst!19)))

(assert (=> (and bs!3467 (= (content!21 (right!576 tree!73)) (content!21 (right!576 tree!82))) (= (value!1456 tree!73) (value!1456 tree!82))) (= true true)))

(declare-fun b!13051 () Bool)

(declare-fun e!7163 () Bool)

(declare-fun e!7164 () Bool)

(assert (=> b!13051 (= e!7163 e!7164)))

(declare-fun res!4825 () Bool)

(assert (=> b!13051 (=> (not res!4825) (not e!7164))))

(assert (=> b!13051 (= res!4825 (isBST!0 (left!573 tree!73)))))

(declare-fun d!10209 () Bool)

(declare-fun res!4826 () Bool)

(assert (=> d!10209 (=> res!4826 e!7163)))

(assert (=> d!10209 (= res!4826 (is-Leaf!163 tree!73))))

(assert (=> d!10209 (= (isBST!0 tree!73) e!7163)))

(declare-fun b!13052 () Bool)

(declare-fun res!4824 () Bool)

(assert (=> b!13052 (=> (not res!4824) (not e!7164))))

(assert (=> b!13052 (= res!4824 (isBST!0 (right!576 tree!73)))))

(assert (=> b!13054 (= e!7164 inst!33)))

(declare-fun res!4827 () Bool)

(assert (=> b!13053 (=> (not res!4827) (not e!7164))))

(assert (=> b!13053 (= res!4827 inst!32)))

(assert (= (and d!10209 (not res!4826)) b!13051))

(assert (= (and b!13051 res!4825) b!13052))

(assert (= (and b!13052 res!4824) b!13053))

(assert (= neg-inst!20 inst!32))

(assert (= (and b!13053 res!4827) b!13054))

(assert (= neg-inst!21 inst!33))

(declare-fun m!16411 () Bool)

(assert (=> b!13051 m!16411))

(declare-fun m!16413 () Bool)

(assert (=> b!13052 m!16413))

(assert (=> start!2686 d!10209))

(push 1)

(assert (not neg-inst!21))

(assert (not b!13047))

(assert (not b!13048))

(assert (not neg-inst!19))

(assert (not b!13050))

(assert (not b!13053))

(assert (not b!13054))

(assert (not neg-inst!18))

(assert (not b!13052))

(assert (not b!13049))

(assert (not b!13051))

(assert (not neg-inst!20))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

