; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2694 () Bool)

(assert start!2694)

(declare-fun res!4856 () Bool)

(declare-fun e!7181 () Bool)

(assert (=> start!2694 (=> (not res!4856) (not e!7181))))

(declare-datatypes () ((Tree!85 (Leaf!165) (Node!17 (left!575 Tree!85) (value!1458 Int) (right!578 Tree!85)))))

(declare-fun tree!73 () Tree!85)

(declare-fun isBST!0 (Tree!85) Bool)

(assert (=> start!2694 (= res!4856 (isBST!0 tree!73))))

(assert (=> start!2694 e!7181))

(assert (=> start!2694 true))

(declare-fun b!13083 () Bool)

(declare-fun res!4858 () Bool)

(assert (=> b!13083 (=> (not res!4858) (not e!7181))))

(declare-fun value!1445 () Int)

(declare-fun res!4800 () Tree!85)

(assert (=> b!13083 (= res!4858 (and (is-Leaf!165 tree!73) (= res!4800 (Node!17 Leaf!165 value!1445 Leaf!165))))))

(declare-fun b!13084 () Bool)

(declare-fun e!7180 () Bool)

(assert (=> b!13084 (= e!7181 (not e!7180))))

(declare-fun res!4857 () Bool)

(assert (=> b!13084 (=> (not res!4857) (not e!7180))))

(assert (=> b!13084 (= res!4857 (isBST!0 res!4800))))

(assert (=> b!13084 (is-Node!17 res!4800)))

(declare-fun b!13085 () Bool)

(declare-fun content!21 (Tree!85) (Set Int))

(assert (=> b!13085 (= e!7180 (= (content!21 res!4800) (union (content!21 tree!73) (insert value!1445 (as emptyset (Set Int))))))))

(assert (= (and start!2694 res!4856) b!13083))

(assert (= (and b!13083 res!4858) b!13084))

(assert (= (and b!13084 res!4857) b!13085))

(declare-fun m!16443 () Bool)

(assert (=> start!2694 m!16443))

(declare-fun m!16445 () Bool)

(assert (=> b!13084 m!16445))

(declare-fun m!16447 () Bool)

(assert (=> b!13085 m!16447))

(declare-fun m!16449 () Bool)

(assert (=> b!13085 m!16449))

(declare-fun m!16451 () Bool)

(assert (=> b!13085 m!16451))

(push 1)

(assert (not start!2694))

(assert (not b!13085))

(assert (not b!13084))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!13096 () Bool)

(declare-fun m!16453 () Bool)

(assert (=> b!13096 m!16453))

(declare-fun inst!46 () Bool)

(declare-fun x!7454 () Int)

(assert (=> b!13096 (= inst!46 (=> true (or (not (member x!7454 (content!21 (left!575 tree!73)))) (< x!7454 (value!1458 tree!73)))))))

(declare-fun m!16455 () Bool)

(assert (=> b!13096 m!16455))

(declare-fun b!13097 () Bool)

(declare-fun m!16457 () Bool)

(assert (=> b!13097 m!16457))

(declare-fun inst!47 () Bool)

(declare-fun x!7455 () Int)

(assert (=> b!13097 (= inst!47 (=> true (or (not (member x!7455 (content!21 (right!578 tree!73)))) (< (value!1458 tree!73) x!7455))))))

(declare-fun m!16459 () Bool)

(assert (=> b!13097 m!16459))

(declare-fun bs!3490 () Bool)

(declare-fun neg-inst!35 () Bool)

(assert (= bs!3490 neg-inst!35))

(assert (=> bs!3490 m!16453))

(declare-fun bs!3491 () Bool)

(declare-fun s!400 () Bool)

(assert (= bs!3491 (and neg-inst!35 s!400)))

(assert (=> bs!3491 (=> true (or (not (member x!7454 (content!21 (left!575 tree!73)))) (< x!7454 (value!1458 tree!73))))))

(assert (=> m!16455 s!400))

(declare-fun bs!3492 () Bool)

(assert (= bs!3492 (and neg-inst!35 b!13096)))

(assert (=> bs!3492 (= true inst!46)))

(declare-fun bs!3493 () Bool)

(declare-fun neg-inst!34 () Bool)

(assert (= bs!3493 neg-inst!34))

(assert (=> bs!3493 m!16457))

(declare-fun bs!3494 () Bool)

(declare-fun s!402 () Bool)

(assert (= bs!3494 (and neg-inst!34 s!402)))

(assert (=> bs!3494 (=> true (or (not (member x!7455 (content!21 (right!578 tree!73)))) (< (value!1458 tree!73) x!7455)))))

(assert (=> m!16459 s!402))

(declare-fun bs!3495 () Bool)

(assert (= bs!3495 (and neg-inst!34 b!13097)))

(assert (=> bs!3495 (= true inst!47)))

(declare-fun e!7186 () Bool)

(assert (=> b!13097 (= e!7186 inst!47)))

(declare-fun d!10215 () Bool)

(declare-fun res!4868 () Bool)

(declare-fun e!7187 () Bool)

(assert (=> d!10215 (=> res!4868 e!7187)))

(assert (=> d!10215 (= res!4868 (is-Leaf!165 tree!73))))

(assert (=> d!10215 (= (isBST!0 tree!73) e!7187)))

(declare-fun b!13095 () Bool)

(declare-fun res!4867 () Bool)

(assert (=> b!13095 (=> (not res!4867) (not e!7186))))

(assert (=> b!13095 (= res!4867 (isBST!0 (right!578 tree!73)))))

(declare-fun b!13094 () Bool)

(assert (=> b!13094 (= e!7187 e!7186)))

(declare-fun res!4870 () Bool)

(assert (=> b!13094 (=> (not res!4870) (not e!7186))))

(assert (=> b!13094 (= res!4870 (isBST!0 (left!575 tree!73)))))

(declare-fun res!4869 () Bool)

(assert (=> b!13096 (=> (not res!4869) (not e!7186))))

(assert (=> b!13096 (= res!4869 inst!46)))

(assert (= (and d!10215 (not res!4868)) b!13094))

(assert (= (and b!13094 res!4870) b!13095))

(assert (= (and b!13095 res!4867) b!13096))

(assert (= neg-inst!35 inst!46))

(assert (= (and b!13096 res!4869) b!13097))

(assert (= neg-inst!34 inst!47))

(declare-fun m!16461 () Bool)

(assert (=> b!13095 m!16461))

(declare-fun m!16463 () Bool)

(assert (=> b!13094 m!16463))

(assert (=> start!2694 d!10215))

(declare-fun d!10217 () Bool)

(declare-fun c!3693 () Bool)

(assert (=> d!10217 (= c!3693 (is-Leaf!165 res!4800))))

(declare-fun e!7190 () (Set Int))

(assert (=> d!10217 (= (content!21 res!4800) e!7190)))

(declare-fun b!13102 () Bool)

(assert (=> b!13102 (= e!7190 (as emptyset (Set Int)))))

(declare-fun b!13103 () Bool)

(assert (=> b!13103 (= e!7190 (union (union (content!21 (left!575 res!4800)) (insert (value!1458 res!4800) (as emptyset (Set Int)))) (content!21 (right!578 res!4800))))))

(assert (= (and d!10217 c!3693) b!13102))

(assert (= (and d!10217 (not c!3693)) b!13103))

(declare-fun m!16465 () Bool)

(assert (=> b!13103 m!16465))

(declare-fun m!16467 () Bool)

(assert (=> b!13103 m!16467))

(declare-fun m!16469 () Bool)

(assert (=> b!13103 m!16469))

(assert (=> b!13085 d!10217))

(declare-fun d!10219 () Bool)

(declare-fun c!3694 () Bool)

(assert (=> d!10219 (= c!3694 (is-Leaf!165 tree!73))))

(declare-fun e!7191 () (Set Int))

(assert (=> d!10219 (= (content!21 tree!73) e!7191)))

(declare-fun b!13104 () Bool)

(assert (=> b!13104 (= e!7191 (as emptyset (Set Int)))))

(declare-fun b!13105 () Bool)

(assert (=> b!13105 (= e!7191 (union (union (content!21 (left!575 tree!73)) (insert (value!1458 tree!73) (as emptyset (Set Int)))) (content!21 (right!578 tree!73))))))

(assert (= (and d!10219 c!3694) b!13104))

(assert (= (and d!10219 (not c!3694)) b!13105))

(assert (=> b!13105 m!16453))

(declare-fun m!16471 () Bool)

(assert (=> b!13105 m!16471))

(assert (=> b!13105 m!16457))

(assert (=> b!13085 d!10219))

(declare-fun b!13108 () Bool)

(assert (=> b!13108 m!16465))

(declare-fun inst!48 () Bool)

(declare-fun x!7456 () Int)

(assert (=> b!13108 (= inst!48 (=> true (or (not (member x!7456 (content!21 (left!575 res!4800)))) (< x!7456 (value!1458 res!4800)))))))

(declare-fun m!16473 () Bool)

(assert (=> b!13108 m!16473))

(declare-fun bs!3496 () Bool)

(assert (= bs!3496 (and b!13108 b!13096)))

(assert (=> (and bs!3496 (= (content!21 (left!575 res!4800)) (content!21 (left!575 tree!73))) (= (value!1458 res!4800) (value!1458 tree!73))) (= inst!48 inst!46)))

(declare-fun bs!3497 () Bool)

(assert (= bs!3497 (and b!13108 neg-inst!35)))

(assert (=> (and bs!3497 (= (content!21 (left!575 res!4800)) (content!21 (left!575 tree!73))) (= (value!1458 res!4800) (value!1458 tree!73))) (= inst!48 true)))

(declare-fun b!13109 () Bool)

(assert (=> b!13109 m!16469))

(declare-fun inst!49 () Bool)

(declare-fun x!7457 () Int)

(assert (=> b!13109 (= inst!49 (=> true (or (not (member x!7457 (content!21 (right!578 res!4800)))) (< (value!1458 res!4800) x!7457))))))

(declare-fun m!16475 () Bool)

(assert (=> b!13109 m!16475))

(declare-fun bs!3498 () Bool)

(assert (= bs!3498 (and b!13109 b!13097)))

(assert (=> (and bs!3498 (= (content!21 (right!578 res!4800)) (content!21 (right!578 tree!73))) (= (value!1458 res!4800) (value!1458 tree!73))) (= inst!49 inst!47)))

(declare-fun bs!3499 () Bool)

(assert (= bs!3499 (and b!13109 neg-inst!34)))

(assert (=> (and bs!3499 (= (content!21 (right!578 res!4800)) (content!21 (right!578 tree!73))) (= (value!1458 res!4800) (value!1458 tree!73))) (= inst!49 true)))

(declare-fun bs!3500 () Bool)

(declare-fun neg-inst!37 () Bool)

(assert (= bs!3500 neg-inst!37))

(assert (=> bs!3500 m!16465))

(declare-fun bs!3501 () Bool)

(declare-fun s!404 () Bool)

(assert (= bs!3501 (and neg-inst!37 s!404)))

(assert (=> bs!3501 (=> true (or (not (member x!7456 (content!21 (left!575 res!4800)))) (< x!7456 (value!1458 res!4800))))))

(assert (=> m!16473 s!404))

(declare-fun bs!3502 () Bool)

(assert (= bs!3502 (and neg-inst!37 b!13108)))

(assert (=> bs!3502 (= true inst!48)))

(declare-fun bs!3503 () Bool)

(assert (= bs!3503 (and neg-inst!37 b!13096)))

(assert (=> (and bs!3503 (= (content!21 (left!575 res!4800)) (content!21 (left!575 tree!73))) (= (value!1458 res!4800) (value!1458 tree!73))) (= true inst!46)))

(declare-fun bs!3504 () Bool)

(assert (= bs!3504 (and neg-inst!37 neg-inst!35)))

(assert (=> (and bs!3504 (= (content!21 (left!575 res!4800)) (content!21 (left!575 tree!73))) (= (value!1458 res!4800) (value!1458 tree!73))) (= true true)))

(declare-fun bs!3505 () Bool)

(declare-fun neg-inst!36 () Bool)

(assert (= bs!3505 neg-inst!36))

(assert (=> bs!3505 m!16469))

(declare-fun bs!3506 () Bool)

(declare-fun s!406 () Bool)

(assert (= bs!3506 (and neg-inst!36 s!406)))

(assert (=> bs!3506 (=> true (or (not (member x!7457 (content!21 (right!578 res!4800)))) (< (value!1458 res!4800) x!7457)))))

(assert (=> m!16475 s!406))

(declare-fun bs!3507 () Bool)

(assert (= bs!3507 (and neg-inst!36 b!13097)))

(assert (=> (and bs!3507 (= (content!21 (right!578 res!4800)) (content!21 (right!578 tree!73))) (= (value!1458 res!4800) (value!1458 tree!73))) (= true inst!47)))

(declare-fun bs!3508 () Bool)

(assert (= bs!3508 (and neg-inst!36 b!13109)))

(assert (=> bs!3508 (= true inst!49)))

(declare-fun bs!3509 () Bool)

(assert (= bs!3509 (and neg-inst!36 neg-inst!34)))

(assert (=> (and bs!3509 (= (content!21 (right!578 res!4800)) (content!21 (right!578 tree!73))) (= (value!1458 res!4800) (value!1458 tree!73))) (= true true)))

(declare-fun e!7192 () Bool)

(assert (=> b!13109 (= e!7192 inst!49)))

(declare-fun d!10221 () Bool)

(declare-fun res!4872 () Bool)

(declare-fun e!7193 () Bool)

(assert (=> d!10221 (=> res!4872 e!7193)))

(assert (=> d!10221 (= res!4872 (is-Leaf!165 res!4800))))

(assert (=> d!10221 (= (isBST!0 res!4800) e!7193)))

(declare-fun b!13107 () Bool)

(declare-fun res!4871 () Bool)

(assert (=> b!13107 (=> (not res!4871) (not e!7192))))

(assert (=> b!13107 (= res!4871 (isBST!0 (right!578 res!4800)))))

(declare-fun b!13106 () Bool)

(assert (=> b!13106 (= e!7193 e!7192)))

(declare-fun res!4874 () Bool)

(assert (=> b!13106 (=> (not res!4874) (not e!7192))))

(assert (=> b!13106 (= res!4874 (isBST!0 (left!575 res!4800)))))

(declare-fun res!4873 () Bool)

(assert (=> b!13108 (=> (not res!4873) (not e!7192))))

(assert (=> b!13108 (= res!4873 inst!48)))

(assert (= (and d!10221 (not res!4872)) b!13106))

(assert (= (and b!13106 res!4874) b!13107))

(assert (= (and b!13107 res!4871) b!13108))

(assert (= neg-inst!37 inst!48))

(assert (= (and b!13108 res!4873) b!13109))

(assert (= neg-inst!36 inst!49))

(declare-fun m!16477 () Bool)

(assert (=> b!13107 m!16477))

(declare-fun m!16479 () Bool)

(assert (=> b!13106 m!16479))

(assert (=> b!13084 d!10221))

(push 1)

(assert (not b!13108))

(assert (not b!13103))

(assert (not b!13106))

(assert (not b!13094))

(assert (not b!13095))

(assert (not neg-inst!37))

(assert (not neg-inst!34))

(assert (not b!13109))

(assert (not b!13097))

(assert (not b!13105))

(assert (not b!13096))

(assert (not b!13107))

(assert (not neg-inst!36))

(assert (not neg-inst!35))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10223 () Bool)

(declare-fun c!3695 () Bool)

(assert (=> d!10223 (= c!3695 (is-Leaf!165 (left!575 tree!73)))))

(declare-fun e!7194 () (Set Int))

(assert (=> d!10223 (= (content!21 (left!575 tree!73)) e!7194)))

(declare-fun b!13110 () Bool)

(assert (=> b!13110 (= e!7194 (as emptyset (Set Int)))))

(declare-fun b!13111 () Bool)

(assert (=> b!13111 (= e!7194 (union (union (content!21 (left!575 (left!575 tree!73))) (insert (value!1458 (left!575 tree!73)) (as emptyset (Set Int)))) (content!21 (right!578 (left!575 tree!73)))))))

(assert (= (and d!10223 c!3695) b!13110))

(assert (= (and d!10223 (not c!3695)) b!13111))

(declare-fun m!16481 () Bool)

(assert (=> b!13111 m!16481))

(declare-fun m!16483 () Bool)

(assert (=> b!13111 m!16483))

(declare-fun m!16485 () Bool)

(assert (=> b!13111 m!16485))

(assert (=> b!13096 d!10223))

(declare-fun b!13114 () Bool)

(declare-fun m!16487 () Bool)

(assert (=> b!13114 m!16487))

(declare-fun inst!50 () Bool)

(declare-fun x!7458 () Int)

(assert (=> b!13114 (= inst!50 (=> true (or (not (member x!7458 (content!21 (left!575 (right!578 tree!73))))) (< x!7458 (value!1458 (right!578 tree!73))))))))

(declare-fun m!16489 () Bool)

(assert (=> b!13114 m!16489))

(declare-fun bs!3510 () Bool)

(assert (= bs!3510 (and b!13114 b!13108)))

(assert (=> (and bs!3510 (= (content!21 (left!575 (right!578 tree!73))) (content!21 (left!575 res!4800))) (= (value!1458 (right!578 tree!73)) (value!1458 res!4800))) (= inst!50 inst!48)))

(declare-fun bs!3511 () Bool)

(assert (= bs!3511 (and b!13114 b!13096)))

(assert (=> (and bs!3511 (= (content!21 (left!575 (right!578 tree!73))) (content!21 (left!575 tree!73))) (= (value!1458 (right!578 tree!73)) (value!1458 tree!73))) (= inst!50 inst!46)))

(declare-fun bs!3512 () Bool)

(assert (= bs!3512 (and b!13114 neg-inst!37)))

(assert (=> (and bs!3512 (= (content!21 (left!575 (right!578 tree!73))) (content!21 (left!575 res!4800))) (= (value!1458 (right!578 tree!73)) (value!1458 res!4800))) (= inst!50 true)))

(declare-fun bs!3513 () Bool)

(assert (= bs!3513 (and b!13114 neg-inst!35)))

(assert (=> (and bs!3513 (= (content!21 (left!575 (right!578 tree!73))) (content!21 (left!575 tree!73))) (= (value!1458 (right!578 tree!73)) (value!1458 tree!73))) (= inst!50 true)))

(declare-fun b!13115 () Bool)

(declare-fun m!16491 () Bool)

(assert (=> b!13115 m!16491))

(declare-fun inst!51 () Bool)

(declare-fun x!7459 () Int)

(assert (=> b!13115 (= inst!51 (=> true (or (not (member x!7459 (content!21 (right!578 (right!578 tree!73))))) (< (value!1458 (right!578 tree!73)) x!7459))))))

(declare-fun m!16493 () Bool)

(assert (=> b!13115 m!16493))

(declare-fun bs!3514 () Bool)

(assert (= bs!3514 (and b!13115 neg-inst!36)))

(assert (=> (and bs!3514 (= (content!21 (right!578 (right!578 tree!73))) (content!21 (right!578 res!4800))) (= (value!1458 (right!578 tree!73)) (value!1458 res!4800))) (= inst!51 true)))

(declare-fun bs!3515 () Bool)

(assert (= bs!3515 (and b!13115 b!13097)))

(assert (=> (and bs!3515 (= (content!21 (right!578 (right!578 tree!73))) (content!21 (right!578 tree!73))) (= (value!1458 (right!578 tree!73)) (value!1458 tree!73))) (= inst!51 inst!47)))

(declare-fun bs!3516 () Bool)

(assert (= bs!3516 (and b!13115 b!13109)))

(assert (=> (and bs!3516 (= (content!21 (right!578 (right!578 tree!73))) (content!21 (right!578 res!4800))) (= (value!1458 (right!578 tree!73)) (value!1458 res!4800))) (= inst!51 inst!49)))

(declare-fun bs!3517 () Bool)

(assert (= bs!3517 (and b!13115 neg-inst!34)))

(assert (=> (and bs!3517 (= (content!21 (right!578 (right!578 tree!73))) (content!21 (right!578 tree!73))) (= (value!1458 (right!578 tree!73)) (value!1458 tree!73))) (= inst!51 true)))

(declare-fun bs!3518 () Bool)

(declare-fun neg-inst!39 () Bool)

(assert (= bs!3518 neg-inst!39))

(assert (=> bs!3518 m!16487))

(declare-fun bs!3519 () Bool)

(declare-fun s!408 () Bool)

(assert (= bs!3519 (and neg-inst!39 s!408)))

(assert (=> bs!3519 (=> true (or (not (member x!7458 (content!21 (left!575 (right!578 tree!73))))) (< x!7458 (value!1458 (right!578 tree!73)))))))

(assert (=> m!16489 s!408))

(declare-fun bs!3520 () Bool)

(assert (= bs!3520 (and neg-inst!39 b!13108)))

(assert (=> (and bs!3520 (= (content!21 (left!575 (right!578 tree!73))) (content!21 (left!575 res!4800))) (= (value!1458 (right!578 tree!73)) (value!1458 res!4800))) (= true inst!48)))

(declare-fun bs!3521 () Bool)

(assert (= bs!3521 (and neg-inst!39 b!13096)))

(assert (=> (and bs!3521 (= (content!21 (left!575 (right!578 tree!73))) (content!21 (left!575 tree!73))) (= (value!1458 (right!578 tree!73)) (value!1458 tree!73))) (= true inst!46)))

(declare-fun bs!3522 () Bool)

(assert (= bs!3522 (and neg-inst!39 neg-inst!37)))

(assert (=> (and bs!3522 (= (content!21 (left!575 (right!578 tree!73))) (content!21 (left!575 res!4800))) (= (value!1458 (right!578 tree!73)) (value!1458 res!4800))) (= true true)))

(declare-fun bs!3523 () Bool)

(assert (= bs!3523 (and neg-inst!39 neg-inst!35)))

(assert (=> (and bs!3523 (= (content!21 (left!575 (right!578 tree!73))) (content!21 (left!575 tree!73))) (= (value!1458 (right!578 tree!73)) (value!1458 tree!73))) (= true true)))

(declare-fun bs!3524 () Bool)

(assert (= bs!3524 (and neg-inst!39 b!13114)))

(assert (=> bs!3524 (= true inst!50)))

(declare-fun bs!3525 () Bool)

(declare-fun neg-inst!38 () Bool)

(assert (= bs!3525 neg-inst!38))

(assert (=> bs!3525 m!16491))

(declare-fun bs!3526 () Bool)

(declare-fun s!410 () Bool)

(assert (= bs!3526 (and neg-inst!38 s!410)))

(assert (=> bs!3526 (=> true (or (not (member x!7459 (content!21 (right!578 (right!578 tree!73))))) (< (value!1458 (right!578 tree!73)) x!7459)))))

(assert (=> m!16493 s!410))

(declare-fun bs!3527 () Bool)

(assert (= bs!3527 (and neg-inst!38 neg-inst!36)))

(assert (=> (and bs!3527 (= (content!21 (right!578 (right!578 tree!73))) (content!21 (right!578 res!4800))) (= (value!1458 (right!578 tree!73)) (value!1458 res!4800))) (= true true)))

(declare-fun bs!3528 () Bool)

(assert (= bs!3528 (and neg-inst!38 b!13097)))

(assert (=> (and bs!3528 (= (content!21 (right!578 (right!578 tree!73))) (content!21 (right!578 tree!73))) (= (value!1458 (right!578 tree!73)) (value!1458 tree!73))) (= true inst!47)))

(declare-fun bs!3529 () Bool)

(assert (= bs!3529 (and neg-inst!38 b!13115)))

(assert (=> bs!3529 (= true inst!51)))

(declare-fun bs!3530 () Bool)

(assert (= bs!3530 (and neg-inst!38 b!13109)))

(assert (=> (and bs!3530 (= (content!21 (right!578 (right!578 tree!73))) (content!21 (right!578 res!4800))) (= (value!1458 (right!578 tree!73)) (value!1458 res!4800))) (= true inst!49)))

(declare-fun bs!3531 () Bool)

(assert (= bs!3531 (and neg-inst!38 neg-inst!34)))

(assert (=> (and bs!3531 (= (content!21 (right!578 (right!578 tree!73))) (content!21 (right!578 tree!73))) (= (value!1458 (right!578 tree!73)) (value!1458 tree!73))) (= true true)))

(declare-fun e!7195 () Bool)

(assert (=> b!13115 (= e!7195 inst!51)))

(declare-fun d!10225 () Bool)

(declare-fun res!4876 () Bool)

(declare-fun e!7196 () Bool)

(assert (=> d!10225 (=> res!4876 e!7196)))

(assert (=> d!10225 (= res!4876 (is-Leaf!165 (right!578 tree!73)))))

(assert (=> d!10225 (= (isBST!0 (right!578 tree!73)) e!7196)))

(declare-fun b!13113 () Bool)

(declare-fun res!4875 () Bool)

(assert (=> b!13113 (=> (not res!4875) (not e!7195))))

(assert (=> b!13113 (= res!4875 (isBST!0 (right!578 (right!578 tree!73))))))

(declare-fun b!13112 () Bool)

(assert (=> b!13112 (= e!7196 e!7195)))

(declare-fun res!4878 () Bool)

(assert (=> b!13112 (=> (not res!4878) (not e!7195))))

(assert (=> b!13112 (= res!4878 (isBST!0 (left!575 (right!578 tree!73))))))

(declare-fun res!4877 () Bool)

(assert (=> b!13114 (=> (not res!4877) (not e!7195))))

(assert (=> b!13114 (= res!4877 inst!50)))

(assert (= (and d!10225 (not res!4876)) b!13112))

(assert (= (and b!13112 res!4878) b!13113))

(assert (= (and b!13113 res!4875) b!13114))

(assert (= neg-inst!39 inst!50))

(assert (= (and b!13114 res!4877) b!13115))

(assert (= neg-inst!38 inst!51))

(declare-fun m!16495 () Bool)

(assert (=> b!13113 m!16495))

(declare-fun m!16497 () Bool)

(assert (=> b!13112 m!16497))

(assert (=> b!13095 d!10225))

(assert (=> neg-inst!35 d!10223))

(declare-fun d!10227 () Bool)

(declare-fun c!3696 () Bool)

(assert (=> d!10227 (= c!3696 (is-Leaf!165 (left!575 res!4800)))))

(declare-fun e!7197 () (Set Int))

(assert (=> d!10227 (= (content!21 (left!575 res!4800)) e!7197)))

(declare-fun b!13116 () Bool)

(assert (=> b!13116 (= e!7197 (as emptyset (Set Int)))))

(declare-fun b!13117 () Bool)

(assert (=> b!13117 (= e!7197 (union (union (content!21 (left!575 (left!575 res!4800))) (insert (value!1458 (left!575 res!4800)) (as emptyset (Set Int)))) (content!21 (right!578 (left!575 res!4800)))))))

(assert (= (and d!10227 c!3696) b!13116))

(assert (= (and d!10227 (not c!3696)) b!13117))

(declare-fun m!16499 () Bool)

(assert (=> b!13117 m!16499))

(declare-fun m!16501 () Bool)

(assert (=> b!13117 m!16501))

(declare-fun m!16503 () Bool)

(assert (=> b!13117 m!16503))

(assert (=> b!13103 d!10227))

(declare-fun d!10229 () Bool)

(declare-fun c!3697 () Bool)

(assert (=> d!10229 (= c!3697 (is-Leaf!165 (right!578 res!4800)))))

(declare-fun e!7198 () (Set Int))

(assert (=> d!10229 (= (content!21 (right!578 res!4800)) e!7198)))

(declare-fun b!13118 () Bool)

(assert (=> b!13118 (= e!7198 (as emptyset (Set Int)))))

(declare-fun b!13119 () Bool)

(assert (=> b!13119 (= e!7198 (union (union (content!21 (left!575 (right!578 res!4800))) (insert (value!1458 (right!578 res!4800)) (as emptyset (Set Int)))) (content!21 (right!578 (right!578 res!4800)))))))

(assert (= (and d!10229 c!3697) b!13118))

(assert (= (and d!10229 (not c!3697)) b!13119))

(declare-fun m!16505 () Bool)

(assert (=> b!13119 m!16505))

(declare-fun m!16507 () Bool)

(assert (=> b!13119 m!16507))

(declare-fun m!16509 () Bool)

(assert (=> b!13119 m!16509))

(assert (=> b!13103 d!10229))

(declare-fun b!13122 () Bool)

(assert (=> b!13122 m!16505))

(declare-fun inst!52 () Bool)

(declare-fun x!7460 () Int)

(assert (=> b!13122 (= inst!52 (=> true (or (not (member x!7460 (content!21 (left!575 (right!578 res!4800))))) (< x!7460 (value!1458 (right!578 res!4800))))))))

(declare-fun m!16511 () Bool)

(assert (=> b!13122 m!16511))

(declare-fun bs!3532 () Bool)

(assert (= bs!3532 (and b!13122 b!13108)))

(assert (=> (and bs!3532 (= (content!21 (left!575 (right!578 res!4800))) (content!21 (left!575 res!4800))) (= (value!1458 (right!578 res!4800)) (value!1458 res!4800))) (= inst!52 inst!48)))

(declare-fun bs!3533 () Bool)

(assert (= bs!3533 (and b!13122 b!13096)))

(assert (=> (and bs!3533 (= (content!21 (left!575 (right!578 res!4800))) (content!21 (left!575 tree!73))) (= (value!1458 (right!578 res!4800)) (value!1458 tree!73))) (= inst!52 inst!46)))

(declare-fun bs!3534 () Bool)

(assert (= bs!3534 (and b!13122 neg-inst!37)))

(assert (=> (and bs!3534 (= (content!21 (left!575 (right!578 res!4800))) (content!21 (left!575 res!4800))) (= (value!1458 (right!578 res!4800)) (value!1458 res!4800))) (= inst!52 true)))

(declare-fun bs!3535 () Bool)

(assert (= bs!3535 (and b!13122 neg-inst!35)))

(assert (=> (and bs!3535 (= (content!21 (left!575 (right!578 res!4800))) (content!21 (left!575 tree!73))) (= (value!1458 (right!578 res!4800)) (value!1458 tree!73))) (= inst!52 true)))

(declare-fun bs!3536 () Bool)

(assert (= bs!3536 (and b!13122 b!13114)))

(assert (=> (and bs!3536 (= (content!21 (left!575 (right!578 res!4800))) (content!21 (left!575 (right!578 tree!73)))) (= (value!1458 (right!578 res!4800)) (value!1458 (right!578 tree!73)))) (= inst!52 inst!50)))

(declare-fun bs!3537 () Bool)

(assert (= bs!3537 (and b!13122 neg-inst!39)))

(assert (=> (and bs!3537 (= (content!21 (left!575 (right!578 res!4800))) (content!21 (left!575 (right!578 tree!73)))) (= (value!1458 (right!578 res!4800)) (value!1458 (right!578 tree!73)))) (= inst!52 true)))

(declare-fun b!13123 () Bool)

(assert (=> b!13123 m!16509))

(declare-fun inst!53 () Bool)

(declare-fun x!7461 () Int)

(assert (=> b!13123 (= inst!53 (=> true (or (not (member x!7461 (content!21 (right!578 (right!578 res!4800))))) (< (value!1458 (right!578 res!4800)) x!7461))))))

(declare-fun m!16513 () Bool)

(assert (=> b!13123 m!16513))

(declare-fun bs!3538 () Bool)

(assert (= bs!3538 (and b!13123 neg-inst!36)))

(assert (=> (and bs!3538 (= (content!21 (right!578 (right!578 res!4800))) (content!21 (right!578 res!4800))) (= (value!1458 (right!578 res!4800)) (value!1458 res!4800))) (= inst!53 true)))

(declare-fun bs!3539 () Bool)

(assert (= bs!3539 (and b!13123 b!13097)))

(assert (=> (and bs!3539 (= (content!21 (right!578 (right!578 res!4800))) (content!21 (right!578 tree!73))) (= (value!1458 (right!578 res!4800)) (value!1458 tree!73))) (= inst!53 inst!47)))

(declare-fun bs!3540 () Bool)

(assert (= bs!3540 (and b!13123 b!13109)))

(assert (=> (and bs!3540 (= (content!21 (right!578 (right!578 res!4800))) (content!21 (right!578 res!4800))) (= (value!1458 (right!578 res!4800)) (value!1458 res!4800))) (= inst!53 inst!49)))

(declare-fun bs!3541 () Bool)

(assert (= bs!3541 (and b!13123 neg-inst!34)))

(assert (=> (and bs!3541 (= (content!21 (right!578 (right!578 res!4800))) (content!21 (right!578 tree!73))) (= (value!1458 (right!578 res!4800)) (value!1458 tree!73))) (= inst!53 true)))

(declare-fun bs!3542 () Bool)

(assert (= bs!3542 (and b!13123 b!13115)))

(assert (=> (and bs!3542 (= (content!21 (right!578 (right!578 res!4800))) (content!21 (right!578 (right!578 tree!73)))) (= (value!1458 (right!578 res!4800)) (value!1458 (right!578 tree!73)))) (= inst!53 inst!51)))

(declare-fun bs!3543 () Bool)

(assert (= bs!3543 (and b!13123 neg-inst!38)))

(assert (=> (and bs!3543 (= (content!21 (right!578 (right!578 res!4800))) (content!21 (right!578 (right!578 tree!73)))) (= (value!1458 (right!578 res!4800)) (value!1458 (right!578 tree!73)))) (= inst!53 true)))

(declare-fun bs!3544 () Bool)

(declare-fun neg-inst!41 () Bool)

(assert (= bs!3544 neg-inst!41))

(assert (=> bs!3544 m!16505))

(declare-fun bs!3545 () Bool)

(declare-fun s!412 () Bool)

(assert (= bs!3545 (and neg-inst!41 s!412)))

(assert (=> bs!3545 (=> true (or (not (member x!7460 (content!21 (left!575 (right!578 res!4800))))) (< x!7460 (value!1458 (right!578 res!4800)))))))

(assert (=> m!16511 s!412))

(declare-fun bs!3546 () Bool)

(assert (= bs!3546 (and neg-inst!41 b!13108)))

(assert (=> (and bs!3546 (= (content!21 (left!575 (right!578 res!4800))) (content!21 (left!575 res!4800))) (= (value!1458 (right!578 res!4800)) (value!1458 res!4800))) (= true inst!48)))

(declare-fun bs!3547 () Bool)

(assert (= bs!3547 (and neg-inst!41 b!13096)))

(assert (=> (and bs!3547 (= (content!21 (left!575 (right!578 res!4800))) (content!21 (left!575 tree!73))) (= (value!1458 (right!578 res!4800)) (value!1458 tree!73))) (= true inst!46)))

(declare-fun bs!3548 () Bool)

(assert (= bs!3548 (and neg-inst!41 neg-inst!35)))

(assert (=> (and bs!3548 (= (content!21 (left!575 (right!578 res!4800))) (content!21 (left!575 tree!73))) (= (value!1458 (right!578 res!4800)) (value!1458 tree!73))) (= true true)))

(declare-fun bs!3549 () Bool)

(assert (= bs!3549 (and neg-inst!41 neg-inst!37)))

(assert (=> (and bs!3549 (= (content!21 (left!575 (right!578 res!4800))) (content!21 (left!575 res!4800))) (= (value!1458 (right!578 res!4800)) (value!1458 res!4800))) (= true true)))

(declare-fun bs!3550 () Bool)

(assert (= bs!3550 (and neg-inst!41 b!13122)))

(assert (=> bs!3550 (= true inst!52)))

(declare-fun bs!3551 () Bool)

(assert (= bs!3551 (and neg-inst!41 b!13114)))

(assert (=> (and bs!3551 (= (content!21 (left!575 (right!578 res!4800))) (content!21 (left!575 (right!578 tree!73)))) (= (value!1458 (right!578 res!4800)) (value!1458 (right!578 tree!73)))) (= true inst!50)))

(declare-fun bs!3552 () Bool)

(assert (= bs!3552 (and neg-inst!41 neg-inst!39)))

(assert (=> (and bs!3552 (= (content!21 (left!575 (right!578 res!4800))) (content!21 (left!575 (right!578 tree!73)))) (= (value!1458 (right!578 res!4800)) (value!1458 (right!578 tree!73)))) (= true true)))

(declare-fun bs!3553 () Bool)

(declare-fun neg-inst!40 () Bool)

(assert (= bs!3553 neg-inst!40))

(assert (=> bs!3553 m!16509))

(declare-fun bs!3554 () Bool)

(declare-fun s!414 () Bool)

(assert (= bs!3554 (and neg-inst!40 s!414)))

(assert (=> bs!3554 (=> true (or (not (member x!7461 (content!21 (right!578 (right!578 res!4800))))) (< (value!1458 (right!578 res!4800)) x!7461)))))

(assert (=> m!16513 s!414))

(declare-fun bs!3555 () Bool)

(assert (= bs!3555 (and neg-inst!40 neg-inst!36)))

(assert (=> (and bs!3555 (= (content!21 (right!578 (right!578 res!4800))) (content!21 (right!578 res!4800))) (= (value!1458 (right!578 res!4800)) (value!1458 res!4800))) (= true true)))

(declare-fun bs!3556 () Bool)

(assert (= bs!3556 (and neg-inst!40 b!13097)))

(assert (=> (and bs!3556 (= (content!21 (right!578 (right!578 res!4800))) (content!21 (right!578 tree!73))) (= (value!1458 (right!578 res!4800)) (value!1458 tree!73))) (= true inst!47)))

(declare-fun bs!3557 () Bool)

(assert (= bs!3557 (and neg-inst!40 b!13123)))

(assert (=> bs!3557 (= true inst!53)))

(declare-fun bs!3558 () Bool)

(assert (= bs!3558 (and neg-inst!40 b!13109)))

(assert (=> (and bs!3558 (= (content!21 (right!578 (right!578 res!4800))) (content!21 (right!578 res!4800))) (= (value!1458 (right!578 res!4800)) (value!1458 res!4800))) (= true inst!49)))

(declare-fun bs!3559 () Bool)

(assert (= bs!3559 (and neg-inst!40 neg-inst!34)))

(assert (=> (and bs!3559 (= (content!21 (right!578 (right!578 res!4800))) (content!21 (right!578 tree!73))) (= (value!1458 (right!578 res!4800)) (value!1458 tree!73))) (= true true)))

(declare-fun bs!3560 () Bool)

(assert (= bs!3560 (and neg-inst!40 b!13115)))

(assert (=> (and bs!3560 (= (content!21 (right!578 (right!578 res!4800))) (content!21 (right!578 (right!578 tree!73)))) (= (value!1458 (right!578 res!4800)) (value!1458 (right!578 tree!73)))) (= true inst!51)))

(declare-fun bs!3561 () Bool)

(assert (= bs!3561 (and neg-inst!40 neg-inst!38)))

(assert (=> (and bs!3561 (= (content!21 (right!578 (right!578 res!4800))) (content!21 (right!578 (right!578 tree!73)))) (= (value!1458 (right!578 res!4800)) (value!1458 (right!578 tree!73)))) (= true true)))

(declare-fun e!7199 () Bool)

(assert (=> b!13123 (= e!7199 inst!53)))

(declare-fun d!10231 () Bool)

(declare-fun res!4880 () Bool)

(declare-fun e!7200 () Bool)

(assert (=> d!10231 (=> res!4880 e!7200)))

(assert (=> d!10231 (= res!4880 (is-Leaf!165 (right!578 res!4800)))))

(assert (=> d!10231 (= (isBST!0 (right!578 res!4800)) e!7200)))

(declare-fun b!13121 () Bool)

(declare-fun res!4879 () Bool)

(assert (=> b!13121 (=> (not res!4879) (not e!7199))))

(assert (=> b!13121 (= res!4879 (isBST!0 (right!578 (right!578 res!4800))))))

(declare-fun b!13120 () Bool)

(assert (=> b!13120 (= e!7200 e!7199)))

(declare-fun res!4882 () Bool)

(assert (=> b!13120 (=> (not res!4882) (not e!7199))))

(assert (=> b!13120 (= res!4882 (isBST!0 (left!575 (right!578 res!4800))))))

(declare-fun res!4881 () Bool)

(assert (=> b!13122 (=> (not res!4881) (not e!7199))))

(assert (=> b!13122 (= res!4881 inst!52)))

(assert (= (and d!10231 (not res!4880)) b!13120))

(assert (= (and b!13120 res!4882) b!13121))

(assert (= (and b!13121 res!4879) b!13122))

(assert (= neg-inst!41 inst!52))

(assert (= (and b!13122 res!4881) b!13123))

(assert (= neg-inst!40 inst!53))

(declare-fun m!16515 () Bool)

(assert (=> b!13121 m!16515))

(declare-fun m!16517 () Bool)

(assert (=> b!13120 m!16517))

(assert (=> b!13107 d!10231))

(declare-fun b!13126 () Bool)

(assert (=> b!13126 m!16481))

(declare-fun inst!54 () Bool)

(declare-fun x!7462 () Int)

(assert (=> b!13126 (= inst!54 (=> true (or (not (member x!7462 (content!21 (left!575 (left!575 tree!73))))) (< x!7462 (value!1458 (left!575 tree!73))))))))

(declare-fun m!16519 () Bool)

(assert (=> b!13126 m!16519))

(declare-fun bs!3562 () Bool)

(assert (= bs!3562 (and b!13126 b!13108)))

(assert (=> (and bs!3562 (= (content!21 (left!575 (left!575 tree!73))) (content!21 (left!575 res!4800))) (= (value!1458 (left!575 tree!73)) (value!1458 res!4800))) (= inst!54 inst!48)))

(declare-fun bs!3563 () Bool)

(assert (= bs!3563 (and b!13126 b!13096)))

(assert (=> (and bs!3563 (= (content!21 (left!575 (left!575 tree!73))) (content!21 (left!575 tree!73))) (= (value!1458 (left!575 tree!73)) (value!1458 tree!73))) (= inst!54 inst!46)))

(declare-fun bs!3564 () Bool)

(assert (= bs!3564 (and b!13126 neg-inst!35)))

(assert (=> (and bs!3564 (= (content!21 (left!575 (left!575 tree!73))) (content!21 (left!575 tree!73))) (= (value!1458 (left!575 tree!73)) (value!1458 tree!73))) (= inst!54 true)))

(declare-fun bs!3565 () Bool)

(assert (= bs!3565 (and b!13126 neg-inst!37)))

(assert (=> (and bs!3565 (= (content!21 (left!575 (left!575 tree!73))) (content!21 (left!575 res!4800))) (= (value!1458 (left!575 tree!73)) (value!1458 res!4800))) (= inst!54 true)))

(declare-fun bs!3566 () Bool)

(assert (= bs!3566 (and b!13126 b!13122)))

(assert (=> (and bs!3566 (= (content!21 (left!575 (left!575 tree!73))) (content!21 (left!575 (right!578 res!4800)))) (= (value!1458 (left!575 tree!73)) (value!1458 (right!578 res!4800)))) (= inst!54 inst!52)))

(declare-fun bs!3567 () Bool)

(assert (= bs!3567 (and b!13126 neg-inst!41)))

(assert (=> (and bs!3567 (= (content!21 (left!575 (left!575 tree!73))) (content!21 (left!575 (right!578 res!4800)))) (= (value!1458 (left!575 tree!73)) (value!1458 (right!578 res!4800)))) (= inst!54 true)))

(declare-fun bs!3568 () Bool)

(assert (= bs!3568 (and b!13126 b!13114)))

(assert (=> (and bs!3568 (= (content!21 (left!575 (left!575 tree!73))) (content!21 (left!575 (right!578 tree!73)))) (= (value!1458 (left!575 tree!73)) (value!1458 (right!578 tree!73)))) (= inst!54 inst!50)))

(declare-fun bs!3569 () Bool)

(assert (= bs!3569 (and b!13126 neg-inst!39)))

(assert (=> (and bs!3569 (= (content!21 (left!575 (left!575 tree!73))) (content!21 (left!575 (right!578 tree!73)))) (= (value!1458 (left!575 tree!73)) (value!1458 (right!578 tree!73)))) (= inst!54 true)))

(declare-fun b!13127 () Bool)

(assert (=> b!13127 m!16485))

(declare-fun inst!55 () Bool)

(declare-fun x!7463 () Int)

(assert (=> b!13127 (= inst!55 (=> true (or (not (member x!7463 (content!21 (right!578 (left!575 tree!73))))) (< (value!1458 (left!575 tree!73)) x!7463))))))

(declare-fun m!16521 () Bool)

(assert (=> b!13127 m!16521))

(declare-fun bs!3570 () Bool)

(assert (= bs!3570 (and b!13127 neg-inst!36)))

(assert (=> (and bs!3570 (= (content!21 (right!578 (left!575 tree!73))) (content!21 (right!578 res!4800))) (= (value!1458 (left!575 tree!73)) (value!1458 res!4800))) (= inst!55 true)))

(declare-fun bs!3571 () Bool)

(assert (= bs!3571 (and b!13127 b!13097)))

(assert (=> (and bs!3571 (= (content!21 (right!578 (left!575 tree!73))) (content!21 (right!578 tree!73))) (= (value!1458 (left!575 tree!73)) (value!1458 tree!73))) (= inst!55 inst!47)))

(declare-fun bs!3572 () Bool)

(assert (= bs!3572 (and b!13127 neg-inst!40)))

(assert (=> (and bs!3572 (= (content!21 (right!578 (left!575 tree!73))) (content!21 (right!578 (right!578 res!4800)))) (= (value!1458 (left!575 tree!73)) (value!1458 (right!578 res!4800)))) (= inst!55 true)))

(declare-fun bs!3573 () Bool)

(assert (= bs!3573 (and b!13127 b!13123)))

(assert (=> (and bs!3573 (= (content!21 (right!578 (left!575 tree!73))) (content!21 (right!578 (right!578 res!4800)))) (= (value!1458 (left!575 tree!73)) (value!1458 (right!578 res!4800)))) (= inst!55 inst!53)))

(declare-fun bs!3574 () Bool)

(assert (= bs!3574 (and b!13127 b!13109)))

(assert (=> (and bs!3574 (= (content!21 (right!578 (left!575 tree!73))) (content!21 (right!578 res!4800))) (= (value!1458 (left!575 tree!73)) (value!1458 res!4800))) (= inst!55 inst!49)))

(declare-fun bs!3575 () Bool)

(assert (= bs!3575 (and b!13127 neg-inst!34)))

(assert (=> (and bs!3575 (= (content!21 (right!578 (left!575 tree!73))) (content!21 (right!578 tree!73))) (= (value!1458 (left!575 tree!73)) (value!1458 tree!73))) (= inst!55 true)))

(declare-fun bs!3576 () Bool)

(assert (= bs!3576 (and b!13127 b!13115)))

(assert (=> (and bs!3576 (= (content!21 (right!578 (left!575 tree!73))) (content!21 (right!578 (right!578 tree!73)))) (= (value!1458 (left!575 tree!73)) (value!1458 (right!578 tree!73)))) (= inst!55 inst!51)))

(declare-fun bs!3577 () Bool)

(assert (= bs!3577 (and b!13127 neg-inst!38)))

(assert (=> (and bs!3577 (= (content!21 (right!578 (left!575 tree!73))) (content!21 (right!578 (right!578 tree!73)))) (= (value!1458 (left!575 tree!73)) (value!1458 (right!578 tree!73)))) (= inst!55 true)))

(declare-fun bs!3578 () Bool)

(declare-fun neg-inst!43 () Bool)

(assert (= bs!3578 neg-inst!43))

(assert (=> bs!3578 m!16481))

(declare-fun bs!3579 () Bool)

(declare-fun s!416 () Bool)

(assert (= bs!3579 (and neg-inst!43 s!416)))

(assert (=> bs!3579 (=> true (or (not (member x!7462 (content!21 (left!575 (left!575 tree!73))))) (< x!7462 (value!1458 (left!575 tree!73)))))))

(assert (=> m!16519 s!416))

(declare-fun bs!3580 () Bool)

(assert (= bs!3580 (and neg-inst!43 b!13108)))

(assert (=> (and bs!3580 (= (content!21 (left!575 (left!575 tree!73))) (content!21 (left!575 res!4800))) (= (value!1458 (left!575 tree!73)) (value!1458 res!4800))) (= true inst!48)))

(declare-fun bs!3581 () Bool)

(assert (= bs!3581 (and neg-inst!43 b!13096)))

(assert (=> (and bs!3581 (= (content!21 (left!575 (left!575 tree!73))) (content!21 (left!575 tree!73))) (= (value!1458 (left!575 tree!73)) (value!1458 tree!73))) (= true inst!46)))

(declare-fun bs!3582 () Bool)

(assert (= bs!3582 (and neg-inst!43 neg-inst!35)))

(assert (=> (and bs!3582 (= (content!21 (left!575 (left!575 tree!73))) (content!21 (left!575 tree!73))) (= (value!1458 (left!575 tree!73)) (value!1458 tree!73))) (= true true)))

(declare-fun bs!3583 () Bool)

(assert (= bs!3583 (and neg-inst!43 neg-inst!37)))

(assert (=> (and bs!3583 (= (content!21 (left!575 (left!575 tree!73))) (content!21 (left!575 res!4800))) (= (value!1458 (left!575 tree!73)) (value!1458 res!4800))) (= true true)))

(declare-fun bs!3584 () Bool)

(assert (= bs!3584 (and neg-inst!43 b!13122)))

(assert (=> (and bs!3584 (= (content!21 (left!575 (left!575 tree!73))) (content!21 (left!575 (right!578 res!4800)))) (= (value!1458 (left!575 tree!73)) (value!1458 (right!578 res!4800)))) (= true inst!52)))

(declare-fun bs!3585 () Bool)

(assert (= bs!3585 (and neg-inst!43 neg-inst!41)))

(assert (=> (and bs!3585 (= (content!21 (left!575 (left!575 tree!73))) (content!21 (left!575 (right!578 res!4800)))) (= (value!1458 (left!575 tree!73)) (value!1458 (right!578 res!4800)))) (= true true)))

(declare-fun bs!3586 () Bool)

(assert (= bs!3586 (and neg-inst!43 b!13114)))

(assert (=> (and bs!3586 (= (content!21 (left!575 (left!575 tree!73))) (content!21 (left!575 (right!578 tree!73)))) (= (value!1458 (left!575 tree!73)) (value!1458 (right!578 tree!73)))) (= true inst!50)))

(declare-fun bs!3587 () Bool)

(assert (= bs!3587 (and neg-inst!43 b!13126)))

(assert (=> bs!3587 (= true inst!54)))

(declare-fun bs!3588 () Bool)

(assert (= bs!3588 (and neg-inst!43 neg-inst!39)))

(assert (=> (and bs!3588 (= (content!21 (left!575 (left!575 tree!73))) (content!21 (left!575 (right!578 tree!73)))) (= (value!1458 (left!575 tree!73)) (value!1458 (right!578 tree!73)))) (= true true)))

(declare-fun bs!3589 () Bool)

(declare-fun neg-inst!42 () Bool)

(assert (= bs!3589 neg-inst!42))

(assert (=> bs!3589 m!16485))

(declare-fun bs!3590 () Bool)

(declare-fun s!418 () Bool)

(assert (= bs!3590 (and neg-inst!42 s!418)))

(assert (=> bs!3590 (=> true (or (not (member x!7463 (content!21 (right!578 (left!575 tree!73))))) (< (value!1458 (left!575 tree!73)) x!7463)))))

(assert (=> m!16521 s!418))

(declare-fun bs!3591 () Bool)

(assert (= bs!3591 (and neg-inst!42 neg-inst!36)))

(assert (=> (and bs!3591 (= (content!21 (right!578 (left!575 tree!73))) (content!21 (right!578 res!4800))) (= (value!1458 (left!575 tree!73)) (value!1458 res!4800))) (= true true)))

(declare-fun bs!3592 () Bool)

(assert (= bs!3592 (and neg-inst!42 b!13097)))

(assert (=> (and bs!3592 (= (content!21 (right!578 (left!575 tree!73))) (content!21 (right!578 tree!73))) (= (value!1458 (left!575 tree!73)) (value!1458 tree!73))) (= true inst!47)))

(declare-fun bs!3593 () Bool)

(assert (= bs!3593 (and neg-inst!42 neg-inst!40)))

(assert (=> (and bs!3593 (= (content!21 (right!578 (left!575 tree!73))) (content!21 (right!578 (right!578 res!4800)))) (= (value!1458 (left!575 tree!73)) (value!1458 (right!578 res!4800)))) (= true true)))

(declare-fun bs!3594 () Bool)

(assert (= bs!3594 (and neg-inst!42 b!13127)))

(assert (=> bs!3594 (= true inst!55)))

(declare-fun bs!3595 () Bool)

(assert (= bs!3595 (and neg-inst!42 b!13123)))

(assert (=> (and bs!3595 (= (content!21 (right!578 (left!575 tree!73))) (content!21 (right!578 (right!578 res!4800)))) (= (value!1458 (left!575 tree!73)) (value!1458 (right!578 res!4800)))) (= true inst!53)))

(declare-fun bs!3596 () Bool)

(assert (= bs!3596 (and neg-inst!42 b!13109)))

(assert (=> (and bs!3596 (= (content!21 (right!578 (left!575 tree!73))) (content!21 (right!578 res!4800))) (= (value!1458 (left!575 tree!73)) (value!1458 res!4800))) (= true inst!49)))

(declare-fun bs!3597 () Bool)

(assert (= bs!3597 (and neg-inst!42 neg-inst!34)))

(assert (=> (and bs!3597 (= (content!21 (right!578 (left!575 tree!73))) (content!21 (right!578 tree!73))) (= (value!1458 (left!575 tree!73)) (value!1458 tree!73))) (= true true)))

(declare-fun bs!3598 () Bool)

(assert (= bs!3598 (and neg-inst!42 b!13115)))

(assert (=> (and bs!3598 (= (content!21 (right!578 (left!575 tree!73))) (content!21 (right!578 (right!578 tree!73)))) (= (value!1458 (left!575 tree!73)) (value!1458 (right!578 tree!73)))) (= true inst!51)))

(declare-fun bs!3599 () Bool)

(assert (= bs!3599 (and neg-inst!42 neg-inst!38)))

(assert (=> (and bs!3599 (= (content!21 (right!578 (left!575 tree!73))) (content!21 (right!578 (right!578 tree!73)))) (= (value!1458 (left!575 tree!73)) (value!1458 (right!578 tree!73)))) (= true true)))

(declare-fun e!7201 () Bool)

(assert (=> b!13127 (= e!7201 inst!55)))

(declare-fun d!10233 () Bool)

(declare-fun res!4884 () Bool)

(declare-fun e!7202 () Bool)

(assert (=> d!10233 (=> res!4884 e!7202)))

(assert (=> d!10233 (= res!4884 (is-Leaf!165 (left!575 tree!73)))))

(assert (=> d!10233 (= (isBST!0 (left!575 tree!73)) e!7202)))

(declare-fun b!13125 () Bool)

(declare-fun res!4883 () Bool)

(assert (=> b!13125 (=> (not res!4883) (not e!7201))))

(assert (=> b!13125 (= res!4883 (isBST!0 (right!578 (left!575 tree!73))))))

(declare-fun b!13124 () Bool)

(assert (=> b!13124 (= e!7202 e!7201)))

(declare-fun res!4886 () Bool)

(assert (=> b!13124 (=> (not res!4886) (not e!7201))))

(assert (=> b!13124 (= res!4886 (isBST!0 (left!575 (left!575 tree!73))))))

(declare-fun res!4885 () Bool)

(assert (=> b!13126 (=> (not res!4885) (not e!7201))))

(assert (=> b!13126 (= res!4885 inst!54)))

(assert (= (and d!10233 (not res!4884)) b!13124))

(assert (= (and b!13124 res!4886) b!13125))

(assert (= (and b!13125 res!4883) b!13126))

(assert (= neg-inst!43 inst!54))

(assert (= (and b!13126 res!4885) b!13127))

(assert (= neg-inst!42 inst!55))

(declare-fun m!16523 () Bool)

(assert (=> b!13125 m!16523))

(declare-fun m!16525 () Bool)

(assert (=> b!13124 m!16525))

(assert (=> b!13094 d!10233))

(declare-fun d!10235 () Bool)

(declare-fun c!3698 () Bool)

(assert (=> d!10235 (= c!3698 (is-Leaf!165 (right!578 tree!73)))))

(declare-fun e!7203 () (Set Int))

(assert (=> d!10235 (= (content!21 (right!578 tree!73)) e!7203)))

(declare-fun b!13128 () Bool)

(assert (=> b!13128 (= e!7203 (as emptyset (Set Int)))))

(declare-fun b!13129 () Bool)

(assert (=> b!13129 (= e!7203 (union (union (content!21 (left!575 (right!578 tree!73))) (insert (value!1458 (right!578 tree!73)) (as emptyset (Set Int)))) (content!21 (right!578 (right!578 tree!73)))))))

(assert (= (and d!10235 c!3698) b!13128))

(assert (= (and d!10235 (not c!3698)) b!13129))

(assert (=> b!13129 m!16487))

(declare-fun m!16527 () Bool)

(assert (=> b!13129 m!16527))

(assert (=> b!13129 m!16491))

(assert (=> neg-inst!34 d!10235))

(assert (=> b!13108 d!10227))

(assert (=> b!13097 d!10235))

(declare-fun b!13132 () Bool)

(assert (=> b!13132 m!16499))

(declare-fun inst!56 () Bool)

(declare-fun x!7464 () Int)

(assert (=> b!13132 (= inst!56 (=> true (or (not (member x!7464 (content!21 (left!575 (left!575 res!4800))))) (< x!7464 (value!1458 (left!575 res!4800))))))))

(declare-fun m!16529 () Bool)

(assert (=> b!13132 m!16529))

(declare-fun bs!3600 () Bool)

(assert (= bs!3600 (and b!13132 b!13108)))

(assert (=> (and bs!3600 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 res!4800))) (= (value!1458 (left!575 res!4800)) (value!1458 res!4800))) (= inst!56 inst!48)))

(declare-fun bs!3601 () Bool)

(assert (= bs!3601 (and b!13132 b!13096)))

(assert (=> (and bs!3601 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 tree!73))) (= (value!1458 (left!575 res!4800)) (value!1458 tree!73))) (= inst!56 inst!46)))

(declare-fun bs!3602 () Bool)

(assert (= bs!3602 (and b!13132 neg-inst!35)))

(assert (=> (and bs!3602 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 tree!73))) (= (value!1458 (left!575 res!4800)) (value!1458 tree!73))) (= inst!56 true)))

(declare-fun bs!3603 () Bool)

(assert (= bs!3603 (and b!13132 neg-inst!37)))

(assert (=> (and bs!3603 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 res!4800))) (= (value!1458 (left!575 res!4800)) (value!1458 res!4800))) (= inst!56 true)))

(declare-fun bs!3604 () Bool)

(assert (= bs!3604 (and b!13132 b!13122)))

(assert (=> (and bs!3604 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 (right!578 res!4800)))) (= (value!1458 (left!575 res!4800)) (value!1458 (right!578 res!4800)))) (= inst!56 inst!52)))

(declare-fun bs!3605 () Bool)

(assert (= bs!3605 (and b!13132 neg-inst!41)))

(assert (=> (and bs!3605 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 (right!578 res!4800)))) (= (value!1458 (left!575 res!4800)) (value!1458 (right!578 res!4800)))) (= inst!56 true)))

(declare-fun bs!3606 () Bool)

(assert (= bs!3606 (and b!13132 b!13114)))

(assert (=> (and bs!3606 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 (right!578 tree!73)))) (= (value!1458 (left!575 res!4800)) (value!1458 (right!578 tree!73)))) (= inst!56 inst!50)))

(declare-fun bs!3607 () Bool)

(assert (= bs!3607 (and b!13132 b!13126)))

(assert (=> (and bs!3607 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 (left!575 tree!73)))) (= (value!1458 (left!575 res!4800)) (value!1458 (left!575 tree!73)))) (= inst!56 inst!54)))

(declare-fun bs!3608 () Bool)

(assert (= bs!3608 (and b!13132 neg-inst!39)))

(assert (=> (and bs!3608 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 (right!578 tree!73)))) (= (value!1458 (left!575 res!4800)) (value!1458 (right!578 tree!73)))) (= inst!56 true)))

(declare-fun bs!3609 () Bool)

(assert (= bs!3609 (and b!13132 neg-inst!43)))

(assert (=> (and bs!3609 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 (left!575 tree!73)))) (= (value!1458 (left!575 res!4800)) (value!1458 (left!575 tree!73)))) (= inst!56 true)))

(declare-fun b!13133 () Bool)

(assert (=> b!13133 m!16503))

(declare-fun inst!57 () Bool)

(declare-fun x!7465 () Int)

(assert (=> b!13133 (= inst!57 (=> true (or (not (member x!7465 (content!21 (right!578 (left!575 res!4800))))) (< (value!1458 (left!575 res!4800)) x!7465))))))

(declare-fun m!16531 () Bool)

(assert (=> b!13133 m!16531))

(declare-fun bs!3610 () Bool)

(assert (= bs!3610 (and b!13133 neg-inst!36)))

(assert (=> (and bs!3610 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 res!4800))) (= (value!1458 (left!575 res!4800)) (value!1458 res!4800))) (= inst!57 true)))

(declare-fun bs!3611 () Bool)

(assert (= bs!3611 (and b!13133 b!13097)))

(assert (=> (and bs!3611 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 tree!73))) (= (value!1458 (left!575 res!4800)) (value!1458 tree!73))) (= inst!57 inst!47)))

(declare-fun bs!3612 () Bool)

(assert (= bs!3612 (and b!13133 neg-inst!40)))

(assert (=> (and bs!3612 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 (right!578 res!4800)))) (= (value!1458 (left!575 res!4800)) (value!1458 (right!578 res!4800)))) (= inst!57 true)))

(declare-fun bs!3613 () Bool)

(assert (= bs!3613 (and b!13133 b!13127)))

(assert (=> (and bs!3613 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 (left!575 tree!73)))) (= (value!1458 (left!575 res!4800)) (value!1458 (left!575 tree!73)))) (= inst!57 inst!55)))

(declare-fun bs!3614 () Bool)

(assert (= bs!3614 (and b!13133 neg-inst!42)))

(assert (=> (and bs!3614 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 (left!575 tree!73)))) (= (value!1458 (left!575 res!4800)) (value!1458 (left!575 tree!73)))) (= inst!57 true)))

(declare-fun bs!3615 () Bool)

(assert (= bs!3615 (and b!13133 b!13123)))

(assert (=> (and bs!3615 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 (right!578 res!4800)))) (= (value!1458 (left!575 res!4800)) (value!1458 (right!578 res!4800)))) (= inst!57 inst!53)))

(declare-fun bs!3616 () Bool)

(assert (= bs!3616 (and b!13133 b!13109)))

(assert (=> (and bs!3616 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 res!4800))) (= (value!1458 (left!575 res!4800)) (value!1458 res!4800))) (= inst!57 inst!49)))

(declare-fun bs!3617 () Bool)

(assert (= bs!3617 (and b!13133 neg-inst!34)))

(assert (=> (and bs!3617 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 tree!73))) (= (value!1458 (left!575 res!4800)) (value!1458 tree!73))) (= inst!57 true)))

(declare-fun bs!3618 () Bool)

(assert (= bs!3618 (and b!13133 b!13115)))

(assert (=> (and bs!3618 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 (right!578 tree!73)))) (= (value!1458 (left!575 res!4800)) (value!1458 (right!578 tree!73)))) (= inst!57 inst!51)))

(declare-fun bs!3619 () Bool)

(assert (= bs!3619 (and b!13133 neg-inst!38)))

(assert (=> (and bs!3619 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 (right!578 tree!73)))) (= (value!1458 (left!575 res!4800)) (value!1458 (right!578 tree!73)))) (= inst!57 true)))

(declare-fun bs!3620 () Bool)

(declare-fun neg-inst!45 () Bool)

(assert (= bs!3620 neg-inst!45))

(assert (=> bs!3620 m!16499))

(declare-fun bs!3621 () Bool)

(declare-fun s!420 () Bool)

(assert (= bs!3621 (and neg-inst!45 s!420)))

(assert (=> bs!3621 (=> true (or (not (member x!7464 (content!21 (left!575 (left!575 res!4800))))) (< x!7464 (value!1458 (left!575 res!4800)))))))

(assert (=> m!16529 s!420))

(declare-fun bs!3622 () Bool)

(assert (= bs!3622 (and neg-inst!45 b!13132)))

(assert (=> bs!3622 (= true inst!56)))

(declare-fun bs!3623 () Bool)

(assert (= bs!3623 (and neg-inst!45 b!13108)))

(assert (=> (and bs!3623 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 res!4800))) (= (value!1458 (left!575 res!4800)) (value!1458 res!4800))) (= true inst!48)))

(declare-fun bs!3624 () Bool)

(assert (= bs!3624 (and neg-inst!45 b!13096)))

(assert (=> (and bs!3624 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 tree!73))) (= (value!1458 (left!575 res!4800)) (value!1458 tree!73))) (= true inst!46)))

(declare-fun bs!3625 () Bool)

(assert (= bs!3625 (and neg-inst!45 neg-inst!35)))

(assert (=> (and bs!3625 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 tree!73))) (= (value!1458 (left!575 res!4800)) (value!1458 tree!73))) (= true true)))

(declare-fun bs!3626 () Bool)

(assert (= bs!3626 (and neg-inst!45 neg-inst!37)))

(assert (=> (and bs!3626 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 res!4800))) (= (value!1458 (left!575 res!4800)) (value!1458 res!4800))) (= true true)))

(declare-fun bs!3627 () Bool)

(assert (= bs!3627 (and neg-inst!45 b!13122)))

(assert (=> (and bs!3627 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 (right!578 res!4800)))) (= (value!1458 (left!575 res!4800)) (value!1458 (right!578 res!4800)))) (= true inst!52)))

(declare-fun bs!3628 () Bool)

(assert (= bs!3628 (and neg-inst!45 neg-inst!41)))

(assert (=> (and bs!3628 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 (right!578 res!4800)))) (= (value!1458 (left!575 res!4800)) (value!1458 (right!578 res!4800)))) (= true true)))

(declare-fun bs!3629 () Bool)

(assert (= bs!3629 (and neg-inst!45 b!13114)))

(assert (=> (and bs!3629 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 (right!578 tree!73)))) (= (value!1458 (left!575 res!4800)) (value!1458 (right!578 tree!73)))) (= true inst!50)))

(declare-fun bs!3630 () Bool)

(assert (= bs!3630 (and neg-inst!45 b!13126)))

(assert (=> (and bs!3630 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 (left!575 tree!73)))) (= (value!1458 (left!575 res!4800)) (value!1458 (left!575 tree!73)))) (= true inst!54)))

(declare-fun bs!3631 () Bool)

(assert (= bs!3631 (and neg-inst!45 neg-inst!39)))

(assert (=> (and bs!3631 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 (right!578 tree!73)))) (= (value!1458 (left!575 res!4800)) (value!1458 (right!578 tree!73)))) (= true true)))

(declare-fun bs!3632 () Bool)

(assert (= bs!3632 (and neg-inst!45 neg-inst!43)))

(assert (=> (and bs!3632 (= (content!21 (left!575 (left!575 res!4800))) (content!21 (left!575 (left!575 tree!73)))) (= (value!1458 (left!575 res!4800)) (value!1458 (left!575 tree!73)))) (= true true)))

(declare-fun bs!3633 () Bool)

(declare-fun neg-inst!44 () Bool)

(assert (= bs!3633 neg-inst!44))

(assert (=> bs!3633 m!16503))

(declare-fun bs!3634 () Bool)

(declare-fun s!422 () Bool)

(assert (= bs!3634 (and neg-inst!44 s!422)))

(assert (=> bs!3634 (=> true (or (not (member x!7465 (content!21 (right!578 (left!575 res!4800))))) (< (value!1458 (left!575 res!4800)) x!7465)))))

(assert (=> m!16531 s!422))

(declare-fun bs!3635 () Bool)

(assert (= bs!3635 (and neg-inst!44 neg-inst!36)))

(assert (=> (and bs!3635 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 res!4800))) (= (value!1458 (left!575 res!4800)) (value!1458 res!4800))) (= true true)))

(declare-fun bs!3636 () Bool)

(assert (= bs!3636 (and neg-inst!44 b!13097)))

(assert (=> (and bs!3636 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 tree!73))) (= (value!1458 (left!575 res!4800)) (value!1458 tree!73))) (= true inst!47)))

(declare-fun bs!3637 () Bool)

(assert (= bs!3637 (and neg-inst!44 neg-inst!40)))

(assert (=> (and bs!3637 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 (right!578 res!4800)))) (= (value!1458 (left!575 res!4800)) (value!1458 (right!578 res!4800)))) (= true true)))

(declare-fun bs!3638 () Bool)

(assert (= bs!3638 (and neg-inst!44 b!13127)))

(assert (=> (and bs!3638 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 (left!575 tree!73)))) (= (value!1458 (left!575 res!4800)) (value!1458 (left!575 tree!73)))) (= true inst!55)))

(declare-fun bs!3639 () Bool)

(assert (= bs!3639 (and neg-inst!44 neg-inst!42)))

(assert (=> (and bs!3639 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 (left!575 tree!73)))) (= (value!1458 (left!575 res!4800)) (value!1458 (left!575 tree!73)))) (= true true)))

(declare-fun bs!3640 () Bool)

(assert (= bs!3640 (and neg-inst!44 b!13123)))

(assert (=> (and bs!3640 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 (right!578 res!4800)))) (= (value!1458 (left!575 res!4800)) (value!1458 (right!578 res!4800)))) (= true inst!53)))

(declare-fun bs!3641 () Bool)

(assert (= bs!3641 (and neg-inst!44 b!13109)))

(assert (=> (and bs!3641 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 res!4800))) (= (value!1458 (left!575 res!4800)) (value!1458 res!4800))) (= true inst!49)))

(declare-fun bs!3642 () Bool)

(assert (= bs!3642 (and neg-inst!44 neg-inst!34)))

(assert (=> (and bs!3642 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 tree!73))) (= (value!1458 (left!575 res!4800)) (value!1458 tree!73))) (= true true)))

(declare-fun bs!3643 () Bool)

(assert (= bs!3643 (and neg-inst!44 b!13115)))

(assert (=> (and bs!3643 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 (right!578 tree!73)))) (= (value!1458 (left!575 res!4800)) (value!1458 (right!578 tree!73)))) (= true inst!51)))

(declare-fun bs!3644 () Bool)

(assert (= bs!3644 (and neg-inst!44 neg-inst!38)))

(assert (=> (and bs!3644 (= (content!21 (right!578 (left!575 res!4800))) (content!21 (right!578 (right!578 tree!73)))) (= (value!1458 (left!575 res!4800)) (value!1458 (right!578 tree!73)))) (= true true)))

(declare-fun bs!3645 () Bool)

(assert (= bs!3645 (and neg-inst!44 b!13133)))

(assert (=> bs!3645 (= true inst!57)))

(declare-fun e!7204 () Bool)

(assert (=> b!13133 (= e!7204 inst!57)))

(declare-fun d!10237 () Bool)

(declare-fun res!4888 () Bool)

(declare-fun e!7205 () Bool)

(assert (=> d!10237 (=> res!4888 e!7205)))

(assert (=> d!10237 (= res!4888 (is-Leaf!165 (left!575 res!4800)))))

(assert (=> d!10237 (= (isBST!0 (left!575 res!4800)) e!7205)))

(declare-fun b!13131 () Bool)

(declare-fun res!4887 () Bool)

(assert (=> b!13131 (=> (not res!4887) (not e!7204))))

(assert (=> b!13131 (= res!4887 (isBST!0 (right!578 (left!575 res!4800))))))

(declare-fun b!13130 () Bool)

(assert (=> b!13130 (= e!7205 e!7204)))

(declare-fun res!4890 () Bool)

(assert (=> b!13130 (=> (not res!4890) (not e!7204))))

(assert (=> b!13130 (= res!4890 (isBST!0 (left!575 (left!575 res!4800))))))

(declare-fun res!4889 () Bool)

(assert (=> b!13132 (=> (not res!4889) (not e!7204))))

(assert (=> b!13132 (= res!4889 inst!56)))

(assert (= (and d!10237 (not res!4888)) b!13130))

(assert (= (and b!13130 res!4890) b!13131))

(assert (= (and b!13131 res!4887) b!13132))

(assert (= neg-inst!45 inst!56))

(assert (= (and b!13132 res!4889) b!13133))

(assert (= neg-inst!44 inst!57))

(declare-fun m!16533 () Bool)

(assert (=> b!13131 m!16533))

(declare-fun m!16535 () Bool)

(assert (=> b!13130 m!16535))

(assert (=> b!13106 d!10237))

(assert (=> b!13109 d!10229))

(assert (=> b!13105 d!10223))

(assert (=> b!13105 d!10235))

(assert (=> neg-inst!36 d!10229))

(assert (=> neg-inst!37 d!10227))

(push 1)

(assert (not b!13115))

(assert (not b!13122))

(assert (not b!13126))

(assert (not b!13111))

(assert (not neg-inst!44))

(assert (not b!13127))

(assert (not b!13117))

(assert (not b!13132))

(assert (not b!13130))

(assert (not neg-inst!40))

(assert (not b!13123))

(assert (not neg-inst!39))

(assert (not b!13114))

(assert (not b!13113))

(assert (not b!13124))

(assert (not neg-inst!42))

(assert (not b!13125))

(assert (not b!13121))

(assert (not b!13112))

(assert (not b!13120))

(assert (not neg-inst!41))

(assert (not neg-inst!45))

(assert (not b!13129))

(assert (not b!13133))

(assert (not neg-inst!38))

(assert (not neg-inst!43))

(assert (not b!13119))

(assert (not b!13131))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

