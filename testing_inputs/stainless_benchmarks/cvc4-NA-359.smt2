; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2690 () Bool)

(assert start!2690)

(declare-fun res!4832 () Bool)

(declare-fun e!7167 () Bool)

(assert (=> start!2690 (=> (not res!4832) (not e!7167))))

(declare-datatypes () ((Tree!84 (Leaf!164) (Node!16 (left!574 Tree!84) (value!1457 Int) (right!577 Tree!84)))))

(declare-fun tree!73 () Tree!84)

(declare-fun isBST!0 (Tree!84) Bool)

(assert (=> start!2690 (= res!4832 (isBST!0 tree!73))))

(assert (=> start!2690 e!7167))

(assert (=> start!2690 true))

(declare-fun b!13059 () Bool)

(declare-fun res!4833 () Bool)

(assert (=> b!13059 (=> (not res!4833) (not e!7167))))

(declare-fun value!1450 () Int)

(declare-fun value!1445 () Int)

(declare-fun tree!90 () Tree!84)

(assert (=> b!13059 (= res!4833 (and (not (is-Leaf!164 tree!73)) (>= (value!1457 tree!73) value!1445) (> (value!1457 tree!73) value!1445) (= tree!90 (left!574 tree!73)) (= value!1450 value!1445)))))

(declare-fun b!13060 () Bool)

(assert (=> b!13060 (= e!7167 (not (isBST!0 tree!90)))))

(assert (= (and start!2690 res!4832) b!13059))

(assert (= (and b!13059 res!4833) b!13060))

(declare-fun m!16415 () Bool)

(assert (=> start!2690 m!16415))

(declare-fun m!16417 () Bool)

(assert (=> b!13060 m!16417))

(push 1)

(assert (not start!2690))

(assert (not b!13060))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!13071 () Bool)

(declare-fun m!16419 () Bool)

(assert (=> b!13071 m!16419))

(declare-fun inst!38 () Bool)

(declare-fun x!7434 () Int)

(declare-fun content!21 (Tree!84) (Set Int))

(assert (=> b!13071 (= inst!38 (=> true (or (not (member x!7434 (content!21 (left!574 tree!73)))) (< x!7434 (value!1457 tree!73)))))))

(declare-fun m!16421 () Bool)

(assert (=> b!13071 m!16421))

(declare-fun b!13072 () Bool)

(declare-fun m!16423 () Bool)

(assert (=> b!13072 m!16423))

(declare-fun inst!39 () Bool)

(declare-fun x!7435 () Int)

(assert (=> b!13072 (= inst!39 (=> true (or (not (member x!7435 (content!21 (right!577 tree!73)))) (< (value!1457 tree!73) x!7435))))))

(declare-fun m!16425 () Bool)

(assert (=> b!13072 m!16425))

(declare-fun bs!3469 () Bool)

(declare-fun neg-inst!27 () Bool)

(assert (= bs!3469 neg-inst!27))

(assert (=> bs!3469 m!16419))

(declare-fun bs!3470 () Bool)

(declare-fun s!392 () Bool)

(assert (= bs!3470 (and neg-inst!27 s!392)))

(assert (=> bs!3470 (=> true (or (not (member x!7434 (content!21 (left!574 tree!73)))) (< x!7434 (value!1457 tree!73))))))

(assert (=> m!16421 s!392))

(declare-fun bs!3471 () Bool)

(assert (= bs!3471 (and neg-inst!27 b!13071)))

(assert (=> bs!3471 (= true inst!38)))

(declare-fun bs!3472 () Bool)

(declare-fun neg-inst!26 () Bool)

(assert (= bs!3472 neg-inst!26))

(assert (=> bs!3472 m!16423))

(declare-fun bs!3473 () Bool)

(declare-fun s!394 () Bool)

(assert (= bs!3473 (and neg-inst!26 s!394)))

(assert (=> bs!3473 (=> true (or (not (member x!7435 (content!21 (right!577 tree!73)))) (< (value!1457 tree!73) x!7435)))))

(assert (=> m!16425 s!394))

(declare-fun bs!3474 () Bool)

(assert (= bs!3474 (and neg-inst!26 b!13072)))

(assert (=> bs!3474 (= true inst!39)))

(declare-fun b!13069 () Bool)

(declare-fun e!7172 () Bool)

(declare-fun e!7173 () Bool)

(assert (=> b!13069 (= e!7172 e!7173)))

(declare-fun res!4843 () Bool)

(assert (=> b!13069 (=> (not res!4843) (not e!7173))))

(assert (=> b!13069 (= res!4843 (isBST!0 (left!574 tree!73)))))

(declare-fun b!13070 () Bool)

(declare-fun res!4844 () Bool)

(assert (=> b!13070 (=> (not res!4844) (not e!7173))))

(assert (=> b!13070 (= res!4844 (isBST!0 (right!577 tree!73)))))

(declare-fun res!4842 () Bool)

(assert (=> b!13071 (=> (not res!4842) (not e!7173))))

(assert (=> b!13071 (= res!4842 inst!38)))

(declare-fun d!10211 () Bool)

(declare-fun res!4845 () Bool)

(assert (=> d!10211 (=> res!4845 e!7172)))

(assert (=> d!10211 (= res!4845 (is-Leaf!164 tree!73))))

(assert (=> d!10211 (= (isBST!0 tree!73) e!7172)))

(assert (=> b!13072 (= e!7173 inst!39)))

(assert (= (and d!10211 (not res!4845)) b!13069))

(assert (= (and b!13069 res!4843) b!13070))

(assert (= (and b!13070 res!4844) b!13071))

(assert (= neg-inst!27 inst!38))

(assert (= (and b!13071 res!4842) b!13072))

(assert (= neg-inst!26 inst!39))

(declare-fun m!16427 () Bool)

(assert (=> b!13069 m!16427))

(declare-fun m!16429 () Bool)

(assert (=> b!13070 m!16429))

(assert (=> start!2690 d!10211))

(declare-fun b!13075 () Bool)

(declare-fun m!16431 () Bool)

(assert (=> b!13075 m!16431))

(declare-fun inst!40 () Bool)

(declare-fun x!7436 () Int)

(assert (=> b!13075 (= inst!40 (=> true (or (not (member x!7436 (content!21 (left!574 tree!90)))) (< x!7436 (value!1457 tree!90)))))))

(declare-fun m!16433 () Bool)

(assert (=> b!13075 m!16433))

(declare-fun bs!3475 () Bool)

(assert (= bs!3475 (and b!13075 b!13071)))

(assert (=> (and bs!3475 (= (content!21 (left!574 tree!90)) (content!21 (left!574 tree!73))) (= (value!1457 tree!90) (value!1457 tree!73))) (= inst!40 inst!38)))

(declare-fun bs!3476 () Bool)

(assert (= bs!3476 (and b!13075 neg-inst!27)))

(assert (=> (and bs!3476 (= (content!21 (left!574 tree!90)) (content!21 (left!574 tree!73))) (= (value!1457 tree!90) (value!1457 tree!73))) (= inst!40 true)))

(declare-fun b!13076 () Bool)

(declare-fun m!16435 () Bool)

(assert (=> b!13076 m!16435))

(declare-fun inst!41 () Bool)

(declare-fun x!7437 () Int)

(assert (=> b!13076 (= inst!41 (=> true (or (not (member x!7437 (content!21 (right!577 tree!90)))) (< (value!1457 tree!90) x!7437))))))

(declare-fun m!16437 () Bool)

(assert (=> b!13076 m!16437))

(declare-fun bs!3477 () Bool)

(assert (= bs!3477 (and b!13076 neg-inst!26)))

(assert (=> (and bs!3477 (= (content!21 (right!577 tree!90)) (content!21 (right!577 tree!73))) (= (value!1457 tree!90) (value!1457 tree!73))) (= inst!41 true)))

(declare-fun bs!3478 () Bool)

(assert (= bs!3478 (and b!13076 b!13072)))

(assert (=> (and bs!3478 (= (content!21 (right!577 tree!90)) (content!21 (right!577 tree!73))) (= (value!1457 tree!90) (value!1457 tree!73))) (= inst!41 inst!39)))

(declare-fun bs!3479 () Bool)

(declare-fun neg-inst!29 () Bool)

(assert (= bs!3479 neg-inst!29))

(assert (=> bs!3479 m!16431))

(declare-fun bs!3480 () Bool)

(declare-fun s!396 () Bool)

(assert (= bs!3480 (and neg-inst!29 s!396)))

(assert (=> bs!3480 (=> true (or (not (member x!7436 (content!21 (left!574 tree!90)))) (< x!7436 (value!1457 tree!90))))))

(assert (=> m!16433 s!396))

(declare-fun bs!3481 () Bool)

(assert (= bs!3481 (and neg-inst!29 b!13075)))

(assert (=> bs!3481 (= true inst!40)))

(declare-fun bs!3482 () Bool)

(assert (= bs!3482 (and neg-inst!29 b!13071)))

(assert (=> (and bs!3482 (= (content!21 (left!574 tree!90)) (content!21 (left!574 tree!73))) (= (value!1457 tree!90) (value!1457 tree!73))) (= true inst!38)))

(declare-fun bs!3483 () Bool)

(assert (= bs!3483 (and neg-inst!29 neg-inst!27)))

(assert (=> (and bs!3483 (= (content!21 (left!574 tree!90)) (content!21 (left!574 tree!73))) (= (value!1457 tree!90) (value!1457 tree!73))) (= true true)))

(declare-fun bs!3484 () Bool)

(declare-fun neg-inst!28 () Bool)

(assert (= bs!3484 neg-inst!28))

(assert (=> bs!3484 m!16435))

(declare-fun bs!3485 () Bool)

(declare-fun s!398 () Bool)

(assert (= bs!3485 (and neg-inst!28 s!398)))

(assert (=> bs!3485 (=> true (or (not (member x!7437 (content!21 (right!577 tree!90)))) (< (value!1457 tree!90) x!7437)))))

(assert (=> m!16437 s!398))

(declare-fun bs!3486 () Bool)

(assert (= bs!3486 (and neg-inst!28 neg-inst!26)))

(assert (=> (and bs!3486 (= (content!21 (right!577 tree!90)) (content!21 (right!577 tree!73))) (= (value!1457 tree!90) (value!1457 tree!73))) (= true true)))

(declare-fun bs!3487 () Bool)

(assert (= bs!3487 (and neg-inst!28 b!13072)))

(assert (=> (and bs!3487 (= (content!21 (right!577 tree!90)) (content!21 (right!577 tree!73))) (= (value!1457 tree!90) (value!1457 tree!73))) (= true inst!39)))

(declare-fun bs!3488 () Bool)

(assert (= bs!3488 (and neg-inst!28 b!13076)))

(assert (=> bs!3488 (= true inst!41)))

(declare-fun b!13073 () Bool)

(declare-fun e!7174 () Bool)

(declare-fun e!7175 () Bool)

(assert (=> b!13073 (= e!7174 e!7175)))

(declare-fun res!4847 () Bool)

(assert (=> b!13073 (=> (not res!4847) (not e!7175))))

(assert (=> b!13073 (= res!4847 (isBST!0 (left!574 tree!90)))))

(declare-fun b!13074 () Bool)

(declare-fun res!4848 () Bool)

(assert (=> b!13074 (=> (not res!4848) (not e!7175))))

(assert (=> b!13074 (= res!4848 (isBST!0 (right!577 tree!90)))))

(declare-fun res!4846 () Bool)

(assert (=> b!13075 (=> (not res!4846) (not e!7175))))

(assert (=> b!13075 (= res!4846 inst!40)))

(declare-fun d!10213 () Bool)

(declare-fun res!4849 () Bool)

(assert (=> d!10213 (=> res!4849 e!7174)))

(assert (=> d!10213 (= res!4849 (is-Leaf!164 tree!90))))

(assert (=> d!10213 (= (isBST!0 tree!90) e!7174)))

(assert (=> b!13076 (= e!7175 inst!41)))

(assert (= (and d!10213 (not res!4849)) b!13073))

(assert (= (and b!13073 res!4847) b!13074))

(assert (= (and b!13074 res!4848) b!13075))

(assert (= neg-inst!29 inst!40))

(assert (= (and b!13075 res!4846) b!13076))

(assert (= neg-inst!28 inst!41))

(declare-fun m!16439 () Bool)

(assert (=> b!13073 m!16439))

(declare-fun m!16441 () Bool)

(assert (=> b!13074 m!16441))

(assert (=> b!13060 d!10213))

(push 1)

(assert (not neg-inst!28))

(assert (not b!13073))

(assert (not b!13074))

(assert (not b!13071))

(assert (not b!13075))

(assert (not b!13070))

(assert (not b!13076))

(assert (not b!13069))

(assert (not neg-inst!27))

(assert (not neg-inst!29))

(assert (not b!13072))

(assert (not neg-inst!26))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

