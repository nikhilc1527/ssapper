; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11378 () Bool)

(assert start!11378)

(declare-fun res!45558 () Bool)

(declare-fun e!47405 () Bool)

(assert (=> start!11378 (=> (not res!45558) (not e!47405))))

(declare-fun x!30387 () Int)

(declare-datatypes () ((Color!16 (Red!15) (Black!15))))

(declare-datatypes () ((Tree!113 (Empty!196) (Node!157 (color!46 Color!16) (left!1656 Tree!113) (value!6803 Int) (right!1659 Tree!113)))))

(declare-fun b!85880 () Tree!113)

(declare-fun res!44626 () Tree!113)

(declare-fun a!1013 () Tree!113)

(declare-fun c!21309 () Color!16)

(assert (=> start!11378 (= res!45558 (and (or (not (is-Black!15 c!21309)) (not (is-Node!157 a!1013)) (not (is-Red!15 (color!46 a!1013))) (not (is-Node!157 (left!1656 a!1013))) (not (is-Red!15 (color!46 (left!1656 a!1013))))) (or (not (is-Black!15 c!21309)) (not (is-Node!157 a!1013)) (not (is-Red!15 (color!46 a!1013))) (not (is-Node!157 (right!1659 a!1013))) (not (is-Red!15 (color!46 (right!1659 a!1013))))) (is-Black!15 c!21309) (is-Node!157 b!85880) (is-Red!15 (color!46 b!85880)) (is-Node!157 (left!1656 b!85880)) (is-Red!15 (color!46 (left!1656 b!85880))) (= res!44626 (Node!157 Red!15 (Node!157 Black!15 a!1013 x!30387 (left!1656 (left!1656 b!85880))) (value!6803 (left!1656 b!85880)) (Node!157 Black!15 (right!1659 (left!1656 b!85880)) (value!6803 b!85880) (right!1659 b!85880))))))))

(assert (=> start!11378 e!47405))

(assert (=> start!11378 true))

(declare-fun b!87378 () Bool)

(declare-fun content!8 (Tree!113) (Set Int))

(assert (=> b!87378 (= e!47405 (not (= (content!8 res!44626) (content!8 (Node!157 c!21309 a!1013 x!30387 b!85880)))))))

(assert (=> b!87378 (is-Node!157 res!44626)))

(assert (= (and start!11378 res!45558) b!87378))

(declare-fun m!83674 () Bool)

(assert (=> b!87378 m!83674))

(declare-fun m!83676 () Bool)

(assert (=> b!87378 m!83676))

(push 1)

(assert (not b!87378))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58225 () Bool)

(declare-fun c!21647 () Bool)

(assert (=> d!58225 (= c!21647 (is-Empty!196 res!44626))))

(declare-fun e!47408 () (Set Int))

(assert (=> d!58225 (= (content!8 res!44626) e!47408)))

(declare-fun b!87383 () Bool)

(assert (=> b!87383 (= e!47408 (as emptyset (Set Int)))))

(declare-fun b!87384 () Bool)

(assert (=> b!87384 (= e!47408 (union (union (content!8 (left!1656 res!44626)) (insert (value!6803 res!44626) (as emptyset (Set Int)))) (content!8 (right!1659 res!44626))))))

(assert (= (and d!58225 c!21647) b!87383))

(assert (= (and d!58225 (not c!21647)) b!87384))

(declare-fun m!83678 () Bool)

(assert (=> b!87384 m!83678))

(declare-fun m!83680 () Bool)

(assert (=> b!87384 m!83680))

(declare-fun m!83682 () Bool)

(assert (=> b!87384 m!83682))

(assert (=> b!87378 d!58225))

(declare-fun c!21648 () Bool)

(declare-fun d!58227 () Bool)

(assert (=> d!58227 (= c!21648 (is-Empty!196 (Node!157 c!21309 a!1013 x!30387 b!85880)))))

(declare-fun e!47409 () (Set Int))

(assert (=> d!58227 (= (content!8 (Node!157 c!21309 a!1013 x!30387 b!85880)) e!47409)))

(declare-fun b!87385 () Bool)

(assert (=> b!87385 (= e!47409 (as emptyset (Set Int)))))

(declare-fun b!87386 () Bool)

(assert (=> b!87386 (= e!47409 (union (union (content!8 (left!1656 (Node!157 c!21309 a!1013 x!30387 b!85880))) (insert (value!6803 (Node!157 c!21309 a!1013 x!30387 b!85880)) (as emptyset (Set Int)))) (content!8 (right!1659 (Node!157 c!21309 a!1013 x!30387 b!85880)))))))

(assert (= (and d!58227 c!21648) b!87385))

(assert (= (and d!58227 (not c!21648)) b!87386))

(declare-fun m!83684 () Bool)

(assert (=> b!87386 m!83684))

(declare-fun m!83686 () Bool)

(assert (=> b!87386 m!83686))

(declare-fun m!83688 () Bool)

(assert (=> b!87386 m!83688))

(assert (=> b!87378 d!58227))

(push 1)

(assert (not b!87384))

(assert (not b!87386))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58229 () Bool)

(declare-fun c!21649 () Bool)

(assert (=> d!58229 (= c!21649 (is-Empty!196 (left!1656 res!44626)))))

(declare-fun e!47410 () (Set Int))

(assert (=> d!58229 (= (content!8 (left!1656 res!44626)) e!47410)))

(declare-fun b!87387 () Bool)

(assert (=> b!87387 (= e!47410 (as emptyset (Set Int)))))

(declare-fun b!87388 () Bool)

(assert (=> b!87388 (= e!47410 (union (union (content!8 (left!1656 (left!1656 res!44626))) (insert (value!6803 (left!1656 res!44626)) (as emptyset (Set Int)))) (content!8 (right!1659 (left!1656 res!44626)))))))

(assert (= (and d!58229 c!21649) b!87387))

(assert (= (and d!58229 (not c!21649)) b!87388))

(declare-fun m!83690 () Bool)

(assert (=> b!87388 m!83690))

(declare-fun m!83692 () Bool)

(assert (=> b!87388 m!83692))

(declare-fun m!83694 () Bool)

(assert (=> b!87388 m!83694))

(assert (=> b!87384 d!58229))

(declare-fun d!58231 () Bool)

(declare-fun c!21650 () Bool)

(assert (=> d!58231 (= c!21650 (is-Empty!196 (right!1659 res!44626)))))

(declare-fun e!47411 () (Set Int))

(assert (=> d!58231 (= (content!8 (right!1659 res!44626)) e!47411)))

(declare-fun b!87389 () Bool)

(assert (=> b!87389 (= e!47411 (as emptyset (Set Int)))))

(declare-fun b!87390 () Bool)

(assert (=> b!87390 (= e!47411 (union (union (content!8 (left!1656 (right!1659 res!44626))) (insert (value!6803 (right!1659 res!44626)) (as emptyset (Set Int)))) (content!8 (right!1659 (right!1659 res!44626)))))))

(assert (= (and d!58231 c!21650) b!87389))

(assert (= (and d!58231 (not c!21650)) b!87390))

(declare-fun m!83696 () Bool)

(assert (=> b!87390 m!83696))

(declare-fun m!83698 () Bool)

(assert (=> b!87390 m!83698))

(declare-fun m!83700 () Bool)

(assert (=> b!87390 m!83700))

(assert (=> b!87384 d!58231))

(declare-fun c!21651 () Bool)

(declare-fun d!58233 () Bool)

(assert (=> d!58233 (= c!21651 (is-Empty!196 (left!1656 (Node!157 c!21309 a!1013 x!30387 b!85880))))))

(declare-fun e!47412 () (Set Int))

(assert (=> d!58233 (= (content!8 (left!1656 (Node!157 c!21309 a!1013 x!30387 b!85880))) e!47412)))

(declare-fun b!87391 () Bool)

(assert (=> b!87391 (= e!47412 (as emptyset (Set Int)))))

(declare-fun b!87392 () Bool)

(assert (=> b!87392 (= e!47412 (union (union (content!8 (left!1656 (left!1656 (Node!157 c!21309 a!1013 x!30387 b!85880)))) (insert (value!6803 (left!1656 (Node!157 c!21309 a!1013 x!30387 b!85880))) (as emptyset (Set Int)))) (content!8 (right!1659 (left!1656 (Node!157 c!21309 a!1013 x!30387 b!85880))))))))

(assert (= (and d!58233 c!21651) b!87391))

(assert (= (and d!58233 (not c!21651)) b!87392))

(declare-fun m!83702 () Bool)

(assert (=> b!87392 m!83702))

(declare-fun m!83704 () Bool)

(assert (=> b!87392 m!83704))

(declare-fun m!83706 () Bool)

(assert (=> b!87392 m!83706))

(assert (=> b!87386 d!58233))

(declare-fun c!21652 () Bool)

(declare-fun d!58235 () Bool)

(assert (=> d!58235 (= c!21652 (is-Empty!196 (right!1659 (Node!157 c!21309 a!1013 x!30387 b!85880))))))

(declare-fun e!47413 () (Set Int))

(assert (=> d!58235 (= (content!8 (right!1659 (Node!157 c!21309 a!1013 x!30387 b!85880))) e!47413)))

(declare-fun b!87393 () Bool)

(assert (=> b!87393 (= e!47413 (as emptyset (Set Int)))))

(declare-fun b!87394 () Bool)

(assert (=> b!87394 (= e!47413 (union (union (content!8 (left!1656 (right!1659 (Node!157 c!21309 a!1013 x!30387 b!85880)))) (insert (value!6803 (right!1659 (Node!157 c!21309 a!1013 x!30387 b!85880))) (as emptyset (Set Int)))) (content!8 (right!1659 (right!1659 (Node!157 c!21309 a!1013 x!30387 b!85880))))))))

(assert (= (and d!58235 c!21652) b!87393))

(assert (= (and d!58235 (not c!21652)) b!87394))

(declare-fun m!83708 () Bool)

(assert (=> b!87394 m!83708))

(declare-fun m!83710 () Bool)

(assert (=> b!87394 m!83710))

(declare-fun m!83712 () Bool)

(assert (=> b!87394 m!83712))

(assert (=> b!87386 d!58235))

(push 1)

(assert (not b!87390))

(assert (not b!87392))

(assert (not b!87394))

(assert (not b!87388))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58237 () Bool)

(declare-fun c!21653 () Bool)

(assert (=> d!58237 (= c!21653 (is-Empty!196 (left!1656 (right!1659 res!44626))))))

(declare-fun e!47414 () (Set Int))

(assert (=> d!58237 (= (content!8 (left!1656 (right!1659 res!44626))) e!47414)))

(declare-fun b!87395 () Bool)

(assert (=> b!87395 (= e!47414 (as emptyset (Set Int)))))

(declare-fun b!87396 () Bool)

(assert (=> b!87396 (= e!47414 (union (union (content!8 (left!1656 (left!1656 (right!1659 res!44626)))) (insert (value!6803 (left!1656 (right!1659 res!44626))) (as emptyset (Set Int)))) (content!8 (right!1659 (left!1656 (right!1659 res!44626))))))))

(assert (= (and d!58237 c!21653) b!87395))

(assert (= (and d!58237 (not c!21653)) b!87396))

(declare-fun m!83714 () Bool)

(assert (=> b!87396 m!83714))

(declare-fun m!83716 () Bool)

(assert (=> b!87396 m!83716))

(declare-fun m!83718 () Bool)

(assert (=> b!87396 m!83718))

(assert (=> b!87390 d!58237))

(declare-fun d!58239 () Bool)

(declare-fun c!21654 () Bool)

(assert (=> d!58239 (= c!21654 (is-Empty!196 (right!1659 (right!1659 res!44626))))))

(declare-fun e!47415 () (Set Int))

(assert (=> d!58239 (= (content!8 (right!1659 (right!1659 res!44626))) e!47415)))

(declare-fun b!87397 () Bool)

(assert (=> b!87397 (= e!47415 (as emptyset (Set Int)))))

(declare-fun b!87398 () Bool)

(assert (=> b!87398 (= e!47415 (union (union (content!8 (left!1656 (right!1659 (right!1659 res!44626)))) (insert (value!6803 (right!1659 (right!1659 res!44626))) (as emptyset (Set Int)))) (content!8 (right!1659 (right!1659 (right!1659 res!44626))))))))

(assert (= (and d!58239 c!21654) b!87397))

(assert (= (and d!58239 (not c!21654)) b!87398))

(declare-fun m!83720 () Bool)

(assert (=> b!87398 m!83720))

(declare-fun m!83722 () Bool)

(assert (=> b!87398 m!83722))

(declare-fun m!83724 () Bool)

(assert (=> b!87398 m!83724))

(assert (=> b!87390 d!58239))

(declare-fun c!21655 () Bool)

(declare-fun d!58241 () Bool)

(assert (=> d!58241 (= c!21655 (is-Empty!196 (left!1656 (left!1656 (Node!157 c!21309 a!1013 x!30387 b!85880)))))))

(declare-fun e!47416 () (Set Int))

(assert (=> d!58241 (= (content!8 (left!1656 (left!1656 (Node!157 c!21309 a!1013 x!30387 b!85880)))) e!47416)))

(declare-fun b!87399 () Bool)

(assert (=> b!87399 (= e!47416 (as emptyset (Set Int)))))

(declare-fun b!87400 () Bool)

(assert (=> b!87400 (= e!47416 (union (union (content!8 (left!1656 (left!1656 (left!1656 (Node!157 c!21309 a!1013 x!30387 b!85880))))) (insert (value!6803 (left!1656 (left!1656 (Node!157 c!21309 a!1013 x!30387 b!85880)))) (as emptyset (Set Int)))) (content!8 (right!1659 (left!1656 (left!1656 (Node!157 c!21309 a!1013 x!30387 b!85880)))))))))

(assert (= (and d!58241 c!21655) b!87399))

(assert (= (and d!58241 (not c!21655)) b!87400))

(declare-fun m!83726 () Bool)

(assert (=> b!87400 m!83726))

(declare-fun m!83728 () Bool)

(assert (=> b!87400 m!83728))

(declare-fun m!83730 () Bool)

(assert (=> b!87400 m!83730))

(assert (=> b!87392 d!58241))

(declare-fun c!21656 () Bool)

(declare-fun d!58243 () Bool)

(assert (=> d!58243 (= c!21656 (is-Empty!196 (right!1659 (left!1656 (Node!157 c!21309 a!1013 x!30387 b!85880)))))))

(declare-fun e!47417 () (Set Int))

(assert (=> d!58243 (= (content!8 (right!1659 (left!1656 (Node!157 c!21309 a!1013 x!30387 b!85880)))) e!47417)))

(declare-fun b!87401 () Bool)

(assert (=> b!87401 (= e!47417 (as emptyset (Set Int)))))

(declare-fun b!87402 () Bool)

(assert (=> b!87402 (= e!47417 (union (union (content!8 (left!1656 (right!1659 (left!1656 (Node!157 c!21309 a!1013 x!30387 b!85880))))) (insert (value!6803 (right!1659 (left!1656 (Node!157 c!21309 a!1013 x!30387 b!85880)))) (as emptyset (Set Int)))) (content!8 (right!1659 (right!1659 (left!1656 (Node!157 c!21309 a!1013 x!30387 b!85880)))))))))

(assert (= (and d!58243 c!21656) b!87401))

(assert (= (and d!58243 (not c!21656)) b!87402))

(declare-fun m!83732 () Bool)

(assert (=> b!87402 m!83732))

(declare-fun m!83734 () Bool)

(assert (=> b!87402 m!83734))

(declare-fun m!83736 () Bool)

(assert (=> b!87402 m!83736))

(assert (=> b!87392 d!58243))

(declare-fun c!21657 () Bool)

(declare-fun d!58245 () Bool)

(assert (=> d!58245 (= c!21657 (is-Empty!196 (left!1656 (right!1659 (Node!157 c!21309 a!1013 x!30387 b!85880)))))))

(declare-fun e!47418 () (Set Int))

(assert (=> d!58245 (= (content!8 (left!1656 (right!1659 (Node!157 c!21309 a!1013 x!30387 b!85880)))) e!47418)))

(declare-fun b!87403 () Bool)

(assert (=> b!87403 (= e!47418 (as emptyset (Set Int)))))

(declare-fun b!87404 () Bool)

(assert (=> b!87404 (= e!47418 (union (union (content!8 (left!1656 (left!1656 (right!1659 (Node!157 c!21309 a!1013 x!30387 b!85880))))) (insert (value!6803 (left!1656 (right!1659 (Node!157 c!21309 a!1013 x!30387 b!85880)))) (as emptyset (Set Int)))) (content!8 (right!1659 (left!1656 (right!1659 (Node!157 c!21309 a!1013 x!30387 b!85880)))))))))

(assert (= (and d!58245 c!21657) b!87403))

(assert (= (and d!58245 (not c!21657)) b!87404))

(declare-fun m!83738 () Bool)

(assert (=> b!87404 m!83738))

(declare-fun m!83740 () Bool)

(assert (=> b!87404 m!83740))

(declare-fun m!83742 () Bool)

(assert (=> b!87404 m!83742))

(assert (=> b!87394 d!58245))

(declare-fun d!58247 () Bool)

(declare-fun c!21658 () Bool)

(assert (=> d!58247 (= c!21658 (is-Empty!196 (right!1659 (right!1659 (Node!157 c!21309 a!1013 x!30387 b!85880)))))))

(declare-fun e!47419 () (Set Int))

(assert (=> d!58247 (= (content!8 (right!1659 (right!1659 (Node!157 c!21309 a!1013 x!30387 b!85880)))) e!47419)))

(declare-fun b!87405 () Bool)

(assert (=> b!87405 (= e!47419 (as emptyset (Set Int)))))

(declare-fun b!87406 () Bool)

(assert (=> b!87406 (= e!47419 (union (union (content!8 (left!1656 (right!1659 (right!1659 (Node!157 c!21309 a!1013 x!30387 b!85880))))) (insert (value!6803 (right!1659 (right!1659 (Node!157 c!21309 a!1013 x!30387 b!85880)))) (as emptyset (Set Int)))) (content!8 (right!1659 (right!1659 (right!1659 (Node!157 c!21309 a!1013 x!30387 b!85880)))))))))

(assert (= (and d!58247 c!21658) b!87405))

(assert (= (and d!58247 (not c!21658)) b!87406))

(declare-fun m!83744 () Bool)

(assert (=> b!87406 m!83744))

(declare-fun m!83746 () Bool)

(assert (=> b!87406 m!83746))

(declare-fun m!83748 () Bool)

(assert (=> b!87406 m!83748))

(assert (=> b!87394 d!58247))

(declare-fun d!58249 () Bool)

(declare-fun c!21659 () Bool)

(assert (=> d!58249 (= c!21659 (is-Empty!196 (left!1656 (left!1656 res!44626))))))

(declare-fun e!47420 () (Set Int))

(assert (=> d!58249 (= (content!8 (left!1656 (left!1656 res!44626))) e!47420)))

(declare-fun b!87407 () Bool)

(assert (=> b!87407 (= e!47420 (as emptyset (Set Int)))))

(declare-fun b!87408 () Bool)

(assert (=> b!87408 (= e!47420 (union (union (content!8 (left!1656 (left!1656 (left!1656 res!44626)))) (insert (value!6803 (left!1656 (left!1656 res!44626))) (as emptyset (Set Int)))) (content!8 (right!1659 (left!1656 (left!1656 res!44626))))))))

(assert (= (and d!58249 c!21659) b!87407))

(assert (= (and d!58249 (not c!21659)) b!87408))

(declare-fun m!83750 () Bool)

(assert (=> b!87408 m!83750))

(declare-fun m!83752 () Bool)

(assert (=> b!87408 m!83752))

(declare-fun m!83754 () Bool)

(assert (=> b!87408 m!83754))

(assert (=> b!87388 d!58249))

(declare-fun d!58251 () Bool)

(declare-fun c!21660 () Bool)

(assert (=> d!58251 (= c!21660 (is-Empty!196 (right!1659 (left!1656 res!44626))))))

(declare-fun e!47421 () (Set Int))

(assert (=> d!58251 (= (content!8 (right!1659 (left!1656 res!44626))) e!47421)))

(declare-fun b!87409 () Bool)

(assert (=> b!87409 (= e!47421 (as emptyset (Set Int)))))

(declare-fun b!87410 () Bool)

(assert (=> b!87410 (= e!47421 (union (union (content!8 (left!1656 (right!1659 (left!1656 res!44626)))) (insert (value!6803 (right!1659 (left!1656 res!44626))) (as emptyset (Set Int)))) (content!8 (right!1659 (right!1659 (left!1656 res!44626))))))))

(assert (= (and d!58251 c!21660) b!87409))

(assert (= (and d!58251 (not c!21660)) b!87410))

(declare-fun m!83756 () Bool)

(assert (=> b!87410 m!83756))

(declare-fun m!83758 () Bool)

(assert (=> b!87410 m!83758))

(declare-fun m!83760 () Bool)

(assert (=> b!87410 m!83760))

(assert (=> b!87388 d!58251))

(push 1)

(assert (not b!87410))

(assert (not b!87404))

(assert (not b!87408))

(assert (not b!87406))

(assert (not b!87402))

(assert (not b!87396))

(assert (not b!87398))

(assert (not b!87400))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

