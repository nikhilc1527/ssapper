; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11370 () Bool)

(assert start!11370)

(declare-fun res!45552 () Bool)

(declare-fun e!47367 () Bool)

(assert (=> start!11370 (=> (not res!45552) (not e!47367))))

(declare-fun x!30387 () Int)

(declare-datatypes () ((Color!14 (Red!13) (Black!13))))

(declare-datatypes () ((Tree!111 (Empty!194) (Node!155 (color!44 Color!14) (left!1654 Tree!111) (value!6801 Int) (right!1657 Tree!111)))))

(declare-fun b!85880 () Tree!111)

(declare-fun res!44624 () Tree!111)

(declare-fun a!1013 () Tree!111)

(declare-fun c!21309 () Color!14)

(assert (=> start!11370 (= res!45552 (and (is-Black!13 c!21309) (is-Node!155 a!1013) (is-Red!13 (color!44 a!1013)) (is-Node!155 (left!1654 a!1013)) (is-Red!13 (color!44 (left!1654 a!1013))) (= res!44624 (Node!155 Red!13 (Node!155 Black!13 (left!1654 (left!1654 a!1013)) (value!6801 (left!1654 a!1013)) (right!1657 (left!1654 a!1013))) (value!6801 a!1013) (Node!155 Black!13 (right!1657 a!1013) x!30387 b!85880)))))))

(assert (=> start!11370 e!47367))

(assert (=> start!11370 true))

(declare-fun b!87308 () Bool)

(declare-fun content!8 (Tree!111) (Set Int))

(assert (=> b!87308 (= e!47367 (not (= (content!8 res!44624) (content!8 (Node!155 c!21309 a!1013 x!30387 b!85880)))))))

(assert (=> b!87308 (is-Node!155 res!44624)))

(assert (= (and start!11370 res!45552) b!87308))

(declare-fun m!83498 () Bool)

(assert (=> b!87308 m!83498))

(declare-fun m!83500 () Bool)

(assert (=> b!87308 m!83500))

(push 1)

(assert (not b!87308))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58169 () Bool)

(declare-fun c!21615 () Bool)

(assert (=> d!58169 (= c!21615 (is-Empty!194 res!44624))))

(declare-fun e!47370 () (Set Int))

(assert (=> d!58169 (= (content!8 res!44624) e!47370)))

(declare-fun b!87313 () Bool)

(assert (=> b!87313 (= e!47370 (as emptyset (Set Int)))))

(declare-fun b!87314 () Bool)

(assert (=> b!87314 (= e!47370 (union (union (content!8 (left!1654 res!44624)) (insert (value!6801 res!44624) (as emptyset (Set Int)))) (content!8 (right!1657 res!44624))))))

(assert (= (and d!58169 c!21615) b!87313))

(assert (= (and d!58169 (not c!21615)) b!87314))

(declare-fun m!83502 () Bool)

(assert (=> b!87314 m!83502))

(declare-fun m!83504 () Bool)

(assert (=> b!87314 m!83504))

(declare-fun m!83506 () Bool)

(assert (=> b!87314 m!83506))

(assert (=> b!87308 d!58169))

(declare-fun c!21616 () Bool)

(declare-fun d!58171 () Bool)

(assert (=> d!58171 (= c!21616 (is-Empty!194 (Node!155 c!21309 a!1013 x!30387 b!85880)))))

(declare-fun e!47371 () (Set Int))

(assert (=> d!58171 (= (content!8 (Node!155 c!21309 a!1013 x!30387 b!85880)) e!47371)))

(declare-fun b!87315 () Bool)

(assert (=> b!87315 (= e!47371 (as emptyset (Set Int)))))

(declare-fun b!87316 () Bool)

(assert (=> b!87316 (= e!47371 (union (union (content!8 (left!1654 (Node!155 c!21309 a!1013 x!30387 b!85880))) (insert (value!6801 (Node!155 c!21309 a!1013 x!30387 b!85880)) (as emptyset (Set Int)))) (content!8 (right!1657 (Node!155 c!21309 a!1013 x!30387 b!85880)))))))

(assert (= (and d!58171 c!21616) b!87315))

(assert (= (and d!58171 (not c!21616)) b!87316))

(declare-fun m!83508 () Bool)

(assert (=> b!87316 m!83508))

(declare-fun m!83510 () Bool)

(assert (=> b!87316 m!83510))

(declare-fun m!83512 () Bool)

(assert (=> b!87316 m!83512))

(assert (=> b!87308 d!58171))

(push 1)

(assert (not b!87314))

(assert (not b!87316))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58173 () Bool)

(declare-fun c!21617 () Bool)

(assert (=> d!58173 (= c!21617 (is-Empty!194 (left!1654 res!44624)))))

(declare-fun e!47372 () (Set Int))

(assert (=> d!58173 (= (content!8 (left!1654 res!44624)) e!47372)))

(declare-fun b!87317 () Bool)

(assert (=> b!87317 (= e!47372 (as emptyset (Set Int)))))

(declare-fun b!87318 () Bool)

(assert (=> b!87318 (= e!47372 (union (union (content!8 (left!1654 (left!1654 res!44624))) (insert (value!6801 (left!1654 res!44624)) (as emptyset (Set Int)))) (content!8 (right!1657 (left!1654 res!44624)))))))

(assert (= (and d!58173 c!21617) b!87317))

(assert (= (and d!58173 (not c!21617)) b!87318))

(declare-fun m!83514 () Bool)

(assert (=> b!87318 m!83514))

(declare-fun m!83516 () Bool)

(assert (=> b!87318 m!83516))

(declare-fun m!83518 () Bool)

(assert (=> b!87318 m!83518))

(assert (=> b!87314 d!58173))

(declare-fun d!58175 () Bool)

(declare-fun c!21618 () Bool)

(assert (=> d!58175 (= c!21618 (is-Empty!194 (right!1657 res!44624)))))

(declare-fun e!47373 () (Set Int))

(assert (=> d!58175 (= (content!8 (right!1657 res!44624)) e!47373)))

(declare-fun b!87319 () Bool)

(assert (=> b!87319 (= e!47373 (as emptyset (Set Int)))))

(declare-fun b!87320 () Bool)

(assert (=> b!87320 (= e!47373 (union (union (content!8 (left!1654 (right!1657 res!44624))) (insert (value!6801 (right!1657 res!44624)) (as emptyset (Set Int)))) (content!8 (right!1657 (right!1657 res!44624)))))))

(assert (= (and d!58175 c!21618) b!87319))

(assert (= (and d!58175 (not c!21618)) b!87320))

(declare-fun m!83520 () Bool)

(assert (=> b!87320 m!83520))

(declare-fun m!83522 () Bool)

(assert (=> b!87320 m!83522))

(declare-fun m!83524 () Bool)

(assert (=> b!87320 m!83524))

(assert (=> b!87314 d!58175))

(declare-fun c!21619 () Bool)

(declare-fun d!58177 () Bool)

(assert (=> d!58177 (= c!21619 (is-Empty!194 (left!1654 (Node!155 c!21309 a!1013 x!30387 b!85880))))))

(declare-fun e!47374 () (Set Int))

(assert (=> d!58177 (= (content!8 (left!1654 (Node!155 c!21309 a!1013 x!30387 b!85880))) e!47374)))

(declare-fun b!87321 () Bool)

(assert (=> b!87321 (= e!47374 (as emptyset (Set Int)))))

(declare-fun b!87322 () Bool)

(assert (=> b!87322 (= e!47374 (union (union (content!8 (left!1654 (left!1654 (Node!155 c!21309 a!1013 x!30387 b!85880)))) (insert (value!6801 (left!1654 (Node!155 c!21309 a!1013 x!30387 b!85880))) (as emptyset (Set Int)))) (content!8 (right!1657 (left!1654 (Node!155 c!21309 a!1013 x!30387 b!85880))))))))

(assert (= (and d!58177 c!21619) b!87321))

(assert (= (and d!58177 (not c!21619)) b!87322))

(declare-fun m!83526 () Bool)

(assert (=> b!87322 m!83526))

(declare-fun m!83528 () Bool)

(assert (=> b!87322 m!83528))

(declare-fun m!83530 () Bool)

(assert (=> b!87322 m!83530))

(assert (=> b!87316 d!58177))

(declare-fun d!58179 () Bool)

(declare-fun c!21620 () Bool)

(assert (=> d!58179 (= c!21620 (is-Empty!194 (right!1657 (Node!155 c!21309 a!1013 x!30387 b!85880))))))

(declare-fun e!47375 () (Set Int))

(assert (=> d!58179 (= (content!8 (right!1657 (Node!155 c!21309 a!1013 x!30387 b!85880))) e!47375)))

(declare-fun b!87323 () Bool)

(assert (=> b!87323 (= e!47375 (as emptyset (Set Int)))))

(declare-fun b!87324 () Bool)

(assert (=> b!87324 (= e!47375 (union (union (content!8 (left!1654 (right!1657 (Node!155 c!21309 a!1013 x!30387 b!85880)))) (insert (value!6801 (right!1657 (Node!155 c!21309 a!1013 x!30387 b!85880))) (as emptyset (Set Int)))) (content!8 (right!1657 (right!1657 (Node!155 c!21309 a!1013 x!30387 b!85880))))))))

(assert (= (and d!58179 c!21620) b!87323))

(assert (= (and d!58179 (not c!21620)) b!87324))

(declare-fun m!83532 () Bool)

(assert (=> b!87324 m!83532))

(declare-fun m!83534 () Bool)

(assert (=> b!87324 m!83534))

(declare-fun m!83536 () Bool)

(assert (=> b!87324 m!83536))

(assert (=> b!87316 d!58179))

(push 1)

(assert (not b!87322))

(assert (not b!87324))

(assert (not b!87318))

(assert (not b!87320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58181 () Bool)

(declare-fun c!21621 () Bool)

(assert (=> d!58181 (= c!21621 (is-Empty!194 (left!1654 (left!1654 (Node!155 c!21309 a!1013 x!30387 b!85880)))))))

(declare-fun e!47376 () (Set Int))

(assert (=> d!58181 (= (content!8 (left!1654 (left!1654 (Node!155 c!21309 a!1013 x!30387 b!85880)))) e!47376)))

(declare-fun b!87325 () Bool)

(assert (=> b!87325 (= e!47376 (as emptyset (Set Int)))))

(declare-fun b!87326 () Bool)

(assert (=> b!87326 (= e!47376 (union (union (content!8 (left!1654 (left!1654 (left!1654 (Node!155 c!21309 a!1013 x!30387 b!85880))))) (insert (value!6801 (left!1654 (left!1654 (Node!155 c!21309 a!1013 x!30387 b!85880)))) (as emptyset (Set Int)))) (content!8 (right!1657 (left!1654 (left!1654 (Node!155 c!21309 a!1013 x!30387 b!85880)))))))))

(assert (= (and d!58181 c!21621) b!87325))

(assert (= (and d!58181 (not c!21621)) b!87326))

(declare-fun m!83538 () Bool)

(assert (=> b!87326 m!83538))

(declare-fun m!83540 () Bool)

(assert (=> b!87326 m!83540))

(declare-fun m!83542 () Bool)

(assert (=> b!87326 m!83542))

(assert (=> b!87322 d!58181))

(declare-fun c!21622 () Bool)

(declare-fun d!58183 () Bool)

(assert (=> d!58183 (= c!21622 (is-Empty!194 (right!1657 (left!1654 (Node!155 c!21309 a!1013 x!30387 b!85880)))))))

(declare-fun e!47377 () (Set Int))

(assert (=> d!58183 (= (content!8 (right!1657 (left!1654 (Node!155 c!21309 a!1013 x!30387 b!85880)))) e!47377)))

(declare-fun b!87327 () Bool)

(assert (=> b!87327 (= e!47377 (as emptyset (Set Int)))))

(declare-fun b!87328 () Bool)

(assert (=> b!87328 (= e!47377 (union (union (content!8 (left!1654 (right!1657 (left!1654 (Node!155 c!21309 a!1013 x!30387 b!85880))))) (insert (value!6801 (right!1657 (left!1654 (Node!155 c!21309 a!1013 x!30387 b!85880)))) (as emptyset (Set Int)))) (content!8 (right!1657 (right!1657 (left!1654 (Node!155 c!21309 a!1013 x!30387 b!85880)))))))))

(assert (= (and d!58183 c!21622) b!87327))

(assert (= (and d!58183 (not c!21622)) b!87328))

(declare-fun m!83544 () Bool)

(assert (=> b!87328 m!83544))

(declare-fun m!83546 () Bool)

(assert (=> b!87328 m!83546))

(declare-fun m!83548 () Bool)

(assert (=> b!87328 m!83548))

(assert (=> b!87322 d!58183))

(declare-fun d!58185 () Bool)

(declare-fun c!21623 () Bool)

(assert (=> d!58185 (= c!21623 (is-Empty!194 (left!1654 (right!1657 (Node!155 c!21309 a!1013 x!30387 b!85880)))))))

(declare-fun e!47378 () (Set Int))

(assert (=> d!58185 (= (content!8 (left!1654 (right!1657 (Node!155 c!21309 a!1013 x!30387 b!85880)))) e!47378)))

(declare-fun b!87329 () Bool)

(assert (=> b!87329 (= e!47378 (as emptyset (Set Int)))))

(declare-fun b!87330 () Bool)

(assert (=> b!87330 (= e!47378 (union (union (content!8 (left!1654 (left!1654 (right!1657 (Node!155 c!21309 a!1013 x!30387 b!85880))))) (insert (value!6801 (left!1654 (right!1657 (Node!155 c!21309 a!1013 x!30387 b!85880)))) (as emptyset (Set Int)))) (content!8 (right!1657 (left!1654 (right!1657 (Node!155 c!21309 a!1013 x!30387 b!85880)))))))))

(assert (= (and d!58185 c!21623) b!87329))

(assert (= (and d!58185 (not c!21623)) b!87330))

(declare-fun m!83550 () Bool)

(assert (=> b!87330 m!83550))

(declare-fun m!83552 () Bool)

(assert (=> b!87330 m!83552))

(declare-fun m!83554 () Bool)

(assert (=> b!87330 m!83554))

(assert (=> b!87324 d!58185))

(declare-fun d!58187 () Bool)

(declare-fun c!21624 () Bool)

(assert (=> d!58187 (= c!21624 (is-Empty!194 (right!1657 (right!1657 (Node!155 c!21309 a!1013 x!30387 b!85880)))))))

(declare-fun e!47379 () (Set Int))

(assert (=> d!58187 (= (content!8 (right!1657 (right!1657 (Node!155 c!21309 a!1013 x!30387 b!85880)))) e!47379)))

(declare-fun b!87331 () Bool)

(assert (=> b!87331 (= e!47379 (as emptyset (Set Int)))))

(declare-fun b!87332 () Bool)

(assert (=> b!87332 (= e!47379 (union (union (content!8 (left!1654 (right!1657 (right!1657 (Node!155 c!21309 a!1013 x!30387 b!85880))))) (insert (value!6801 (right!1657 (right!1657 (Node!155 c!21309 a!1013 x!30387 b!85880)))) (as emptyset (Set Int)))) (content!8 (right!1657 (right!1657 (right!1657 (Node!155 c!21309 a!1013 x!30387 b!85880)))))))))

(assert (= (and d!58187 c!21624) b!87331))

(assert (= (and d!58187 (not c!21624)) b!87332))

(declare-fun m!83556 () Bool)

(assert (=> b!87332 m!83556))

(declare-fun m!83558 () Bool)

(assert (=> b!87332 m!83558))

(declare-fun m!83560 () Bool)

(assert (=> b!87332 m!83560))

(assert (=> b!87324 d!58187))

(declare-fun d!58189 () Bool)

(declare-fun c!21625 () Bool)

(assert (=> d!58189 (= c!21625 (is-Empty!194 (left!1654 (left!1654 res!44624))))))

(declare-fun e!47380 () (Set Int))

(assert (=> d!58189 (= (content!8 (left!1654 (left!1654 res!44624))) e!47380)))

(declare-fun b!87333 () Bool)

(assert (=> b!87333 (= e!47380 (as emptyset (Set Int)))))

(declare-fun b!87334 () Bool)

(assert (=> b!87334 (= e!47380 (union (union (content!8 (left!1654 (left!1654 (left!1654 res!44624)))) (insert (value!6801 (left!1654 (left!1654 res!44624))) (as emptyset (Set Int)))) (content!8 (right!1657 (left!1654 (left!1654 res!44624))))))))

(assert (= (and d!58189 c!21625) b!87333))

(assert (= (and d!58189 (not c!21625)) b!87334))

(declare-fun m!83562 () Bool)

(assert (=> b!87334 m!83562))

(declare-fun m!83564 () Bool)

(assert (=> b!87334 m!83564))

(declare-fun m!83566 () Bool)

(assert (=> b!87334 m!83566))

(assert (=> b!87318 d!58189))

(declare-fun d!58191 () Bool)

(declare-fun c!21626 () Bool)

(assert (=> d!58191 (= c!21626 (is-Empty!194 (right!1657 (left!1654 res!44624))))))

(declare-fun e!47381 () (Set Int))

(assert (=> d!58191 (= (content!8 (right!1657 (left!1654 res!44624))) e!47381)))

(declare-fun b!87335 () Bool)

(assert (=> b!87335 (= e!47381 (as emptyset (Set Int)))))

(declare-fun b!87336 () Bool)

(assert (=> b!87336 (= e!47381 (union (union (content!8 (left!1654 (right!1657 (left!1654 res!44624)))) (insert (value!6801 (right!1657 (left!1654 res!44624))) (as emptyset (Set Int)))) (content!8 (right!1657 (right!1657 (left!1654 res!44624))))))))

(assert (= (and d!58191 c!21626) b!87335))

(assert (= (and d!58191 (not c!21626)) b!87336))

(declare-fun m!83568 () Bool)

(assert (=> b!87336 m!83568))

(declare-fun m!83570 () Bool)

(assert (=> b!87336 m!83570))

(declare-fun m!83572 () Bool)

(assert (=> b!87336 m!83572))

(assert (=> b!87318 d!58191))

(declare-fun d!58193 () Bool)

(declare-fun c!21627 () Bool)

(assert (=> d!58193 (= c!21627 (is-Empty!194 (left!1654 (right!1657 res!44624))))))

(declare-fun e!47382 () (Set Int))

(assert (=> d!58193 (= (content!8 (left!1654 (right!1657 res!44624))) e!47382)))

(declare-fun b!87337 () Bool)

(assert (=> b!87337 (= e!47382 (as emptyset (Set Int)))))

(declare-fun b!87338 () Bool)

(assert (=> b!87338 (= e!47382 (union (union (content!8 (left!1654 (left!1654 (right!1657 res!44624)))) (insert (value!6801 (left!1654 (right!1657 res!44624))) (as emptyset (Set Int)))) (content!8 (right!1657 (left!1654 (right!1657 res!44624))))))))

(assert (= (and d!58193 c!21627) b!87337))

(assert (= (and d!58193 (not c!21627)) b!87338))

(declare-fun m!83574 () Bool)

(assert (=> b!87338 m!83574))

(declare-fun m!83576 () Bool)

(assert (=> b!87338 m!83576))

(declare-fun m!83578 () Bool)

(assert (=> b!87338 m!83578))

(assert (=> b!87320 d!58193))

(declare-fun d!58195 () Bool)

(declare-fun c!21628 () Bool)

(assert (=> d!58195 (= c!21628 (is-Empty!194 (right!1657 (right!1657 res!44624))))))

(declare-fun e!47383 () (Set Int))

(assert (=> d!58195 (= (content!8 (right!1657 (right!1657 res!44624))) e!47383)))

(declare-fun b!87339 () Bool)

(assert (=> b!87339 (= e!47383 (as emptyset (Set Int)))))

(declare-fun b!87340 () Bool)

(assert (=> b!87340 (= e!47383 (union (union (content!8 (left!1654 (right!1657 (right!1657 res!44624)))) (insert (value!6801 (right!1657 (right!1657 res!44624))) (as emptyset (Set Int)))) (content!8 (right!1657 (right!1657 (right!1657 res!44624))))))))

(assert (= (and d!58195 c!21628) b!87339))

(assert (= (and d!58195 (not c!21628)) b!87340))

(declare-fun m!83580 () Bool)

(assert (=> b!87340 m!83580))

(declare-fun m!83582 () Bool)

(assert (=> b!87340 m!83582))

(declare-fun m!83584 () Bool)

(assert (=> b!87340 m!83584))

(assert (=> b!87320 d!58195))

(push 1)

(assert (not b!87326))

(assert (not b!87336))

(assert (not b!87340))

(assert (not b!87338))

(assert (not b!87332))

(assert (not b!87330))

(assert (not b!87334))

(assert (not b!87328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

