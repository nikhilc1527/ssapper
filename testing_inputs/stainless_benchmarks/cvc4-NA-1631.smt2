; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11374 () Bool)

(assert start!11374)

(declare-fun res!45555 () Bool)

(declare-fun e!47386 () Bool)

(assert (=> start!11374 (=> (not res!45555) (not e!47386))))

(declare-fun x!30387 () Int)

(declare-datatypes () ((Color!15 (Red!14) (Black!14))))

(declare-datatypes () ((Tree!112 (Empty!195) (Node!156 (color!45 Color!15) (left!1655 Tree!112) (value!6802 Int) (right!1658 Tree!112)))))

(declare-fun b!85880 () Tree!112)

(declare-fun res!44625 () Tree!112)

(declare-fun a!1013 () Tree!112)

(declare-fun c!21309 () Color!15)

(assert (=> start!11374 (= res!45555 (and (or (not (is-Black!14 c!21309)) (not (is-Node!156 a!1013)) (not (is-Red!14 (color!45 a!1013))) (not (is-Node!156 (left!1655 a!1013))) (not (is-Red!14 (color!45 (left!1655 a!1013))))) (is-Black!14 c!21309) (is-Node!156 a!1013) (is-Red!14 (color!45 a!1013)) (is-Node!156 (right!1658 a!1013)) (is-Red!14 (color!45 (right!1658 a!1013))) (= res!44625 (Node!156 Red!14 (Node!156 Black!14 (left!1655 a!1013) (value!6802 a!1013) (left!1655 (right!1658 a!1013))) (value!6802 (right!1658 a!1013)) (Node!156 Black!14 (right!1658 (right!1658 a!1013)) x!30387 b!85880)))))))

(assert (=> start!11374 e!47386))

(assert (=> start!11374 true))

(declare-fun b!87343 () Bool)

(declare-fun content!8 (Tree!112) (Set Int))

(assert (=> b!87343 (= e!47386 (not (= (content!8 res!44625) (content!8 (Node!156 c!21309 a!1013 x!30387 b!85880)))))))

(assert (=> b!87343 (is-Node!156 res!44625)))

(assert (= (and start!11374 res!45555) b!87343))

(declare-fun m!83586 () Bool)

(assert (=> b!87343 m!83586))

(declare-fun m!83588 () Bool)

(assert (=> b!87343 m!83588))

(push 1)

(assert (not b!87343))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58197 () Bool)

(declare-fun c!21631 () Bool)

(assert (=> d!58197 (= c!21631 (is-Empty!195 res!44625))))

(declare-fun e!47389 () (Set Int))

(assert (=> d!58197 (= (content!8 res!44625) e!47389)))

(declare-fun b!87348 () Bool)

(assert (=> b!87348 (= e!47389 (as emptyset (Set Int)))))

(declare-fun b!87349 () Bool)

(assert (=> b!87349 (= e!47389 (union (union (content!8 (left!1655 res!44625)) (insert (value!6802 res!44625) (as emptyset (Set Int)))) (content!8 (right!1658 res!44625))))))

(assert (= (and d!58197 c!21631) b!87348))

(assert (= (and d!58197 (not c!21631)) b!87349))

(declare-fun m!83590 () Bool)

(assert (=> b!87349 m!83590))

(declare-fun m!83592 () Bool)

(assert (=> b!87349 m!83592))

(declare-fun m!83594 () Bool)

(assert (=> b!87349 m!83594))

(assert (=> b!87343 d!58197))

(declare-fun d!58199 () Bool)

(declare-fun c!21632 () Bool)

(assert (=> d!58199 (= c!21632 (is-Empty!195 (Node!156 c!21309 a!1013 x!30387 b!85880)))))

(declare-fun e!47390 () (Set Int))

(assert (=> d!58199 (= (content!8 (Node!156 c!21309 a!1013 x!30387 b!85880)) e!47390)))

(declare-fun b!87350 () Bool)

(assert (=> b!87350 (= e!47390 (as emptyset (Set Int)))))

(declare-fun b!87351 () Bool)

(assert (=> b!87351 (= e!47390 (union (union (content!8 (left!1655 (Node!156 c!21309 a!1013 x!30387 b!85880))) (insert (value!6802 (Node!156 c!21309 a!1013 x!30387 b!85880)) (as emptyset (Set Int)))) (content!8 (right!1658 (Node!156 c!21309 a!1013 x!30387 b!85880)))))))

(assert (= (and d!58199 c!21632) b!87350))

(assert (= (and d!58199 (not c!21632)) b!87351))

(declare-fun m!83596 () Bool)

(assert (=> b!87351 m!83596))

(declare-fun m!83598 () Bool)

(assert (=> b!87351 m!83598))

(declare-fun m!83600 () Bool)

(assert (=> b!87351 m!83600))

(assert (=> b!87343 d!58199))

(push 1)

(assert (not b!87349))

(assert (not b!87351))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58201 () Bool)

(declare-fun c!21633 () Bool)

(assert (=> d!58201 (= c!21633 (is-Empty!195 (left!1655 res!44625)))))

(declare-fun e!47391 () (Set Int))

(assert (=> d!58201 (= (content!8 (left!1655 res!44625)) e!47391)))

(declare-fun b!87352 () Bool)

(assert (=> b!87352 (= e!47391 (as emptyset (Set Int)))))

(declare-fun b!87353 () Bool)

(assert (=> b!87353 (= e!47391 (union (union (content!8 (left!1655 (left!1655 res!44625))) (insert (value!6802 (left!1655 res!44625)) (as emptyset (Set Int)))) (content!8 (right!1658 (left!1655 res!44625)))))))

(assert (= (and d!58201 c!21633) b!87352))

(assert (= (and d!58201 (not c!21633)) b!87353))

(declare-fun m!83602 () Bool)

(assert (=> b!87353 m!83602))

(declare-fun m!83604 () Bool)

(assert (=> b!87353 m!83604))

(declare-fun m!83606 () Bool)

(assert (=> b!87353 m!83606))

(assert (=> b!87349 d!58201))

(declare-fun d!58203 () Bool)

(declare-fun c!21634 () Bool)

(assert (=> d!58203 (= c!21634 (is-Empty!195 (right!1658 res!44625)))))

(declare-fun e!47392 () (Set Int))

(assert (=> d!58203 (= (content!8 (right!1658 res!44625)) e!47392)))

(declare-fun b!87354 () Bool)

(assert (=> b!87354 (= e!47392 (as emptyset (Set Int)))))

(declare-fun b!87355 () Bool)

(assert (=> b!87355 (= e!47392 (union (union (content!8 (left!1655 (right!1658 res!44625))) (insert (value!6802 (right!1658 res!44625)) (as emptyset (Set Int)))) (content!8 (right!1658 (right!1658 res!44625)))))))

(assert (= (and d!58203 c!21634) b!87354))

(assert (= (and d!58203 (not c!21634)) b!87355))

(declare-fun m!83608 () Bool)

(assert (=> b!87355 m!83608))

(declare-fun m!83610 () Bool)

(assert (=> b!87355 m!83610))

(declare-fun m!83612 () Bool)

(assert (=> b!87355 m!83612))

(assert (=> b!87349 d!58203))

(declare-fun d!58205 () Bool)

(declare-fun c!21635 () Bool)

(assert (=> d!58205 (= c!21635 (is-Empty!195 (left!1655 (Node!156 c!21309 a!1013 x!30387 b!85880))))))

(declare-fun e!47393 () (Set Int))

(assert (=> d!58205 (= (content!8 (left!1655 (Node!156 c!21309 a!1013 x!30387 b!85880))) e!47393)))

(declare-fun b!87356 () Bool)

(assert (=> b!87356 (= e!47393 (as emptyset (Set Int)))))

(declare-fun b!87357 () Bool)

(assert (=> b!87357 (= e!47393 (union (union (content!8 (left!1655 (left!1655 (Node!156 c!21309 a!1013 x!30387 b!85880)))) (insert (value!6802 (left!1655 (Node!156 c!21309 a!1013 x!30387 b!85880))) (as emptyset (Set Int)))) (content!8 (right!1658 (left!1655 (Node!156 c!21309 a!1013 x!30387 b!85880))))))))

(assert (= (and d!58205 c!21635) b!87356))

(assert (= (and d!58205 (not c!21635)) b!87357))

(declare-fun m!83614 () Bool)

(assert (=> b!87357 m!83614))

(declare-fun m!83616 () Bool)

(assert (=> b!87357 m!83616))

(declare-fun m!83618 () Bool)

(assert (=> b!87357 m!83618))

(assert (=> b!87351 d!58205))

(declare-fun c!21636 () Bool)

(declare-fun d!58207 () Bool)

(assert (=> d!58207 (= c!21636 (is-Empty!195 (right!1658 (Node!156 c!21309 a!1013 x!30387 b!85880))))))

(declare-fun e!47394 () (Set Int))

(assert (=> d!58207 (= (content!8 (right!1658 (Node!156 c!21309 a!1013 x!30387 b!85880))) e!47394)))

(declare-fun b!87358 () Bool)

(assert (=> b!87358 (= e!47394 (as emptyset (Set Int)))))

(declare-fun b!87359 () Bool)

(assert (=> b!87359 (= e!47394 (union (union (content!8 (left!1655 (right!1658 (Node!156 c!21309 a!1013 x!30387 b!85880)))) (insert (value!6802 (right!1658 (Node!156 c!21309 a!1013 x!30387 b!85880))) (as emptyset (Set Int)))) (content!8 (right!1658 (right!1658 (Node!156 c!21309 a!1013 x!30387 b!85880))))))))

(assert (= (and d!58207 c!21636) b!87358))

(assert (= (and d!58207 (not c!21636)) b!87359))

(declare-fun m!83620 () Bool)

(assert (=> b!87359 m!83620))

(declare-fun m!83622 () Bool)

(assert (=> b!87359 m!83622))

(declare-fun m!83624 () Bool)

(assert (=> b!87359 m!83624))

(assert (=> b!87351 d!58207))

(push 1)

(assert (not b!87357))

(assert (not b!87359))

(assert (not b!87353))

(assert (not b!87355))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58209 () Bool)

(declare-fun c!21637 () Bool)

(assert (=> d!58209 (= c!21637 (is-Empty!195 (left!1655 (left!1655 (Node!156 c!21309 a!1013 x!30387 b!85880)))))))

(declare-fun e!47395 () (Set Int))

(assert (=> d!58209 (= (content!8 (left!1655 (left!1655 (Node!156 c!21309 a!1013 x!30387 b!85880)))) e!47395)))

(declare-fun b!87360 () Bool)

(assert (=> b!87360 (= e!47395 (as emptyset (Set Int)))))

(declare-fun b!87361 () Bool)

(assert (=> b!87361 (= e!47395 (union (union (content!8 (left!1655 (left!1655 (left!1655 (Node!156 c!21309 a!1013 x!30387 b!85880))))) (insert (value!6802 (left!1655 (left!1655 (Node!156 c!21309 a!1013 x!30387 b!85880)))) (as emptyset (Set Int)))) (content!8 (right!1658 (left!1655 (left!1655 (Node!156 c!21309 a!1013 x!30387 b!85880)))))))))

(assert (= (and d!58209 c!21637) b!87360))

(assert (= (and d!58209 (not c!21637)) b!87361))

(declare-fun m!83626 () Bool)

(assert (=> b!87361 m!83626))

(declare-fun m!83628 () Bool)

(assert (=> b!87361 m!83628))

(declare-fun m!83630 () Bool)

(assert (=> b!87361 m!83630))

(assert (=> b!87357 d!58209))

(declare-fun d!58211 () Bool)

(declare-fun c!21638 () Bool)

(assert (=> d!58211 (= c!21638 (is-Empty!195 (right!1658 (left!1655 (Node!156 c!21309 a!1013 x!30387 b!85880)))))))

(declare-fun e!47396 () (Set Int))

(assert (=> d!58211 (= (content!8 (right!1658 (left!1655 (Node!156 c!21309 a!1013 x!30387 b!85880)))) e!47396)))

(declare-fun b!87362 () Bool)

(assert (=> b!87362 (= e!47396 (as emptyset (Set Int)))))

(declare-fun b!87363 () Bool)

(assert (=> b!87363 (= e!47396 (union (union (content!8 (left!1655 (right!1658 (left!1655 (Node!156 c!21309 a!1013 x!30387 b!85880))))) (insert (value!6802 (right!1658 (left!1655 (Node!156 c!21309 a!1013 x!30387 b!85880)))) (as emptyset (Set Int)))) (content!8 (right!1658 (right!1658 (left!1655 (Node!156 c!21309 a!1013 x!30387 b!85880)))))))))

(assert (= (and d!58211 c!21638) b!87362))

(assert (= (and d!58211 (not c!21638)) b!87363))

(declare-fun m!83632 () Bool)

(assert (=> b!87363 m!83632))

(declare-fun m!83634 () Bool)

(assert (=> b!87363 m!83634))

(declare-fun m!83636 () Bool)

(assert (=> b!87363 m!83636))

(assert (=> b!87357 d!58211))

(declare-fun c!21639 () Bool)

(declare-fun d!58213 () Bool)

(assert (=> d!58213 (= c!21639 (is-Empty!195 (left!1655 (right!1658 (Node!156 c!21309 a!1013 x!30387 b!85880)))))))

(declare-fun e!47397 () (Set Int))

(assert (=> d!58213 (= (content!8 (left!1655 (right!1658 (Node!156 c!21309 a!1013 x!30387 b!85880)))) e!47397)))

(declare-fun b!87364 () Bool)

(assert (=> b!87364 (= e!47397 (as emptyset (Set Int)))))

(declare-fun b!87365 () Bool)

(assert (=> b!87365 (= e!47397 (union (union (content!8 (left!1655 (left!1655 (right!1658 (Node!156 c!21309 a!1013 x!30387 b!85880))))) (insert (value!6802 (left!1655 (right!1658 (Node!156 c!21309 a!1013 x!30387 b!85880)))) (as emptyset (Set Int)))) (content!8 (right!1658 (left!1655 (right!1658 (Node!156 c!21309 a!1013 x!30387 b!85880)))))))))

(assert (= (and d!58213 c!21639) b!87364))

(assert (= (and d!58213 (not c!21639)) b!87365))

(declare-fun m!83638 () Bool)

(assert (=> b!87365 m!83638))

(declare-fun m!83640 () Bool)

(assert (=> b!87365 m!83640))

(declare-fun m!83642 () Bool)

(assert (=> b!87365 m!83642))

(assert (=> b!87359 d!58213))

(declare-fun c!21640 () Bool)

(declare-fun d!58215 () Bool)

(assert (=> d!58215 (= c!21640 (is-Empty!195 (right!1658 (right!1658 (Node!156 c!21309 a!1013 x!30387 b!85880)))))))

(declare-fun e!47398 () (Set Int))

(assert (=> d!58215 (= (content!8 (right!1658 (right!1658 (Node!156 c!21309 a!1013 x!30387 b!85880)))) e!47398)))

(declare-fun b!87366 () Bool)

(assert (=> b!87366 (= e!47398 (as emptyset (Set Int)))))

(declare-fun b!87367 () Bool)

(assert (=> b!87367 (= e!47398 (union (union (content!8 (left!1655 (right!1658 (right!1658 (Node!156 c!21309 a!1013 x!30387 b!85880))))) (insert (value!6802 (right!1658 (right!1658 (Node!156 c!21309 a!1013 x!30387 b!85880)))) (as emptyset (Set Int)))) (content!8 (right!1658 (right!1658 (right!1658 (Node!156 c!21309 a!1013 x!30387 b!85880)))))))))

(assert (= (and d!58215 c!21640) b!87366))

(assert (= (and d!58215 (not c!21640)) b!87367))

(declare-fun m!83644 () Bool)

(assert (=> b!87367 m!83644))

(declare-fun m!83646 () Bool)

(assert (=> b!87367 m!83646))

(declare-fun m!83648 () Bool)

(assert (=> b!87367 m!83648))

(assert (=> b!87359 d!58215))

(declare-fun d!58217 () Bool)

(declare-fun c!21641 () Bool)

(assert (=> d!58217 (= c!21641 (is-Empty!195 (left!1655 (left!1655 res!44625))))))

(declare-fun e!47399 () (Set Int))

(assert (=> d!58217 (= (content!8 (left!1655 (left!1655 res!44625))) e!47399)))

(declare-fun b!87368 () Bool)

(assert (=> b!87368 (= e!47399 (as emptyset (Set Int)))))

(declare-fun b!87369 () Bool)

(assert (=> b!87369 (= e!47399 (union (union (content!8 (left!1655 (left!1655 (left!1655 res!44625)))) (insert (value!6802 (left!1655 (left!1655 res!44625))) (as emptyset (Set Int)))) (content!8 (right!1658 (left!1655 (left!1655 res!44625))))))))

(assert (= (and d!58217 c!21641) b!87368))

(assert (= (and d!58217 (not c!21641)) b!87369))

(declare-fun m!83650 () Bool)

(assert (=> b!87369 m!83650))

(declare-fun m!83652 () Bool)

(assert (=> b!87369 m!83652))

(declare-fun m!83654 () Bool)

(assert (=> b!87369 m!83654))

(assert (=> b!87353 d!58217))

(declare-fun d!58219 () Bool)

(declare-fun c!21642 () Bool)

(assert (=> d!58219 (= c!21642 (is-Empty!195 (right!1658 (left!1655 res!44625))))))

(declare-fun e!47400 () (Set Int))

(assert (=> d!58219 (= (content!8 (right!1658 (left!1655 res!44625))) e!47400)))

(declare-fun b!87370 () Bool)

(assert (=> b!87370 (= e!47400 (as emptyset (Set Int)))))

(declare-fun b!87371 () Bool)

(assert (=> b!87371 (= e!47400 (union (union (content!8 (left!1655 (right!1658 (left!1655 res!44625)))) (insert (value!6802 (right!1658 (left!1655 res!44625))) (as emptyset (Set Int)))) (content!8 (right!1658 (right!1658 (left!1655 res!44625))))))))

(assert (= (and d!58219 c!21642) b!87370))

(assert (= (and d!58219 (not c!21642)) b!87371))

(declare-fun m!83656 () Bool)

(assert (=> b!87371 m!83656))

(declare-fun m!83658 () Bool)

(assert (=> b!87371 m!83658))

(declare-fun m!83660 () Bool)

(assert (=> b!87371 m!83660))

(assert (=> b!87353 d!58219))

(declare-fun d!58221 () Bool)

(declare-fun c!21643 () Bool)

(assert (=> d!58221 (= c!21643 (is-Empty!195 (left!1655 (right!1658 res!44625))))))

(declare-fun e!47401 () (Set Int))

(assert (=> d!58221 (= (content!8 (left!1655 (right!1658 res!44625))) e!47401)))

(declare-fun b!87372 () Bool)

(assert (=> b!87372 (= e!47401 (as emptyset (Set Int)))))

(declare-fun b!87373 () Bool)

(assert (=> b!87373 (= e!47401 (union (union (content!8 (left!1655 (left!1655 (right!1658 res!44625)))) (insert (value!6802 (left!1655 (right!1658 res!44625))) (as emptyset (Set Int)))) (content!8 (right!1658 (left!1655 (right!1658 res!44625))))))))

(assert (= (and d!58221 c!21643) b!87372))

(assert (= (and d!58221 (not c!21643)) b!87373))

(declare-fun m!83662 () Bool)

(assert (=> b!87373 m!83662))

(declare-fun m!83664 () Bool)

(assert (=> b!87373 m!83664))

(declare-fun m!83666 () Bool)

(assert (=> b!87373 m!83666))

(assert (=> b!87355 d!58221))

(declare-fun d!58223 () Bool)

(declare-fun c!21644 () Bool)

(assert (=> d!58223 (= c!21644 (is-Empty!195 (right!1658 (right!1658 res!44625))))))

(declare-fun e!47402 () (Set Int))

(assert (=> d!58223 (= (content!8 (right!1658 (right!1658 res!44625))) e!47402)))

(declare-fun b!87374 () Bool)

(assert (=> b!87374 (= e!47402 (as emptyset (Set Int)))))

(declare-fun b!87375 () Bool)

(assert (=> b!87375 (= e!47402 (union (union (content!8 (left!1655 (right!1658 (right!1658 res!44625)))) (insert (value!6802 (right!1658 (right!1658 res!44625))) (as emptyset (Set Int)))) (content!8 (right!1658 (right!1658 (right!1658 res!44625))))))))

(assert (= (and d!58223 c!21644) b!87374))

(assert (= (and d!58223 (not c!21644)) b!87375))

(declare-fun m!83668 () Bool)

(assert (=> b!87375 m!83668))

(declare-fun m!83670 () Bool)

(assert (=> b!87375 m!83670))

(declare-fun m!83672 () Bool)

(assert (=> b!87375 m!83672))

(assert (=> b!87355 d!58223))

(push 1)

(assert (not b!87375))

(assert (not b!87367))

(assert (not b!87373))

(assert (not b!87371))

(assert (not b!87363))

(assert (not b!87365))

(assert (not b!87361))

(assert (not b!87369))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

