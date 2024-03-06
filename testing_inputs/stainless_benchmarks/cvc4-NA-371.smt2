; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2748 () Bool)

(assert start!2748)

(declare-fun e!7429 () Bool)

(declare-datatypes () ((Tree!97 (Leaf!179) (Node!28 (left!595 Tree!97) (value!1515 Int) (right!598 Tree!97)))))

(declare-fun res!5052 () Tree!97)

(declare-fun b!13492 () Bool)

(declare-fun tp!3351 () Bool)

(declare-fun tp!3350 () Bool)

(declare-fun inv!443 (Tree!97) Bool)

(assert (=> b!13492 (= e!7429 (and (inv!443 (left!595 res!5052)) tp!3351 (inv!443 (right!598 res!5052)) tp!3350))))

(declare-fun b!13489 () Bool)

(declare-fun res!5110 () Bool)

(declare-fun e!7430 () Bool)

(assert (=> b!13489 (=> (not res!5110) (not e!7430))))

(declare-fun value!1495 () Int)

(declare-fun tree!126 () Tree!97)

(declare-fun insert!9 (Tree!97 Int) Tree!97)

(assert (=> b!13489 (= res!5110 (= res!5052 (Node!28 (insert!9 (left!595 tree!126) value!1495) (value!1515 tree!126) (right!598 tree!126))))))

(declare-fun b!13490 () Bool)

(declare-fun content!20 (Tree!97) (Set Int))

(assert (=> b!13490 (= e!7430 (not (= (content!20 res!5052) (union (content!20 tree!126) (insert value!1495 (as emptyset (Set Int)))))))))

(assert (=> b!13490 (is-Node!28 res!5052)))

(declare-fun e!7428 () Bool)

(declare-fun tp!3349 () Bool)

(declare-fun b!13491 () Bool)

(declare-fun tp!3348 () Bool)

(assert (=> b!13491 (= e!7428 (and (inv!443 (left!595 tree!126)) tp!3349 (inv!443 (right!598 tree!126)) tp!3348))))

(declare-fun res!5111 () Bool)

(assert (=> start!2748 (=> (not res!5111) (not e!7430))))

(assert (=> start!2748 (= res!5111 (and (not (is-Leaf!179 tree!126)) (>= (value!1515 tree!126) value!1495) (> (value!1515 tree!126) value!1495)))))

(assert (=> start!2748 e!7430))

(assert (=> start!2748 (and (inv!443 tree!126) e!7428)))

(assert (=> start!2748 true))

(assert (=> start!2748 (and (inv!443 res!5052) e!7429)))

(assert (= (and start!2748 res!5111) b!13489))

(assert (= (and b!13489 res!5110) b!13490))

(assert (= (and start!2748 (is-Node!28 tree!126)) b!13491))

(assert (= (and start!2748 (is-Node!28 res!5052)) b!13492))

(declare-fun m!17165 () Bool)

(assert (=> start!2748 m!17165))

(declare-fun m!17167 () Bool)

(assert (=> start!2748 m!17167))

(declare-fun m!17169 () Bool)

(assert (=> b!13491 m!17169))

(declare-fun m!17171 () Bool)

(assert (=> b!13491 m!17171))

(declare-fun m!17173 () Bool)

(assert (=> b!13490 m!17173))

(declare-fun m!17175 () Bool)

(assert (=> b!13490 m!17175))

(declare-fun m!17177 () Bool)

(assert (=> b!13490 m!17177))

(declare-fun m!17179 () Bool)

(assert (=> b!13492 m!17179))

(declare-fun m!17181 () Bool)

(assert (=> b!13492 m!17181))

(declare-fun m!17183 () Bool)

(assert (=> b!13489 m!17183))

(push 1)

(assert (not b!13492))

(assert (not start!2748))

(assert (not b!13490))

(assert (not b!13491))

(assert (not b!13489))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!13497 () Bool)

(declare-fun m!17185 () Bool)

(assert (=> b!13497 m!17185))

(declare-fun inst!138 () Bool)

(declare-fun x!7654 () Int)

(assert (=> b!13497 (= inst!138 (=> true (or (not (member x!7654 (content!20 (left!595 (left!595 res!5052))))) (< x!7654 (value!1515 (left!595 res!5052))))))))

(declare-fun m!17187 () Bool)

(assert (=> b!13497 m!17187))

(declare-fun b!13498 () Bool)

(declare-fun m!17189 () Bool)

(assert (=> b!13498 m!17189))

(declare-fun inst!139 () Bool)

(declare-fun x!7655 () Int)

(assert (=> b!13498 (= inst!139 (=> true (or (not (member x!7655 (content!20 (right!598 (left!595 res!5052))))) (< (value!1515 (left!595 res!5052)) x!7655))))))

(declare-fun m!17191 () Bool)

(assert (=> b!13498 m!17191))

(declare-fun bs!4457 () Bool)

(declare-fun neg-inst!127 () Bool)

(assert (= bs!4457 neg-inst!127))

(assert (=> bs!4457 m!17185))

(declare-fun bs!4458 () Bool)

(declare-fun s!635 () Bool)

(assert (= bs!4458 (and neg-inst!127 s!635)))

(assert (=> bs!4458 (=> true (or (not (member x!7654 (content!20 (left!595 (left!595 res!5052))))) (< x!7654 (value!1515 (left!595 res!5052)))))))

(assert (=> m!17187 s!635))

(declare-fun bs!4459 () Bool)

(assert (= bs!4459 (and neg-inst!127 b!13497)))

(assert (=> bs!4459 (= true inst!138)))

(declare-fun bs!4460 () Bool)

(declare-fun neg-inst!126 () Bool)

(assert (= bs!4460 neg-inst!126))

(assert (=> bs!4460 m!17189))

(declare-fun bs!4461 () Bool)

(declare-fun s!637 () Bool)

(assert (= bs!4461 (and neg-inst!126 s!637)))

(assert (=> bs!4461 (=> true (or (not (member x!7655 (content!20 (right!598 (left!595 res!5052))))) (< (value!1515 (left!595 res!5052)) x!7655)))))

(assert (=> m!17191 s!637))

(declare-fun bs!4462 () Bool)

(assert (= bs!4462 (and neg-inst!126 b!13498)))

(assert (=> bs!4462 (= true inst!139)))

(declare-fun d!10354 () Bool)

(declare-fun res!5116 () Bool)

(declare-fun e!7436 () Bool)

(assert (=> d!10354 (=> res!5116 e!7436)))

(assert (=> d!10354 (= res!5116 (not (is-Node!28 (left!595 res!5052))))))

(assert (=> d!10354 (= (inv!443 (left!595 res!5052)) e!7436)))

(declare-fun e!7435 () Bool)

(assert (=> b!13497 (= e!7436 e!7435)))

(declare-fun res!5117 () Bool)

(assert (=> b!13497 (=> (not res!5117) (not e!7435))))

(assert (=> b!13497 (= res!5117 inst!138)))

(assert (=> b!13498 (= e!7435 inst!139)))

(assert (= (and d!10354 (not res!5116)) b!13497))

(assert (= neg-inst!127 inst!138))

(assert (= (and b!13497 res!5117) b!13498))

(assert (= neg-inst!126 inst!139))

(assert (=> b!13492 d!10354))

(declare-fun b!13499 () Bool)

(declare-fun m!17193 () Bool)

(assert (=> b!13499 m!17193))

(declare-fun inst!140 () Bool)

(declare-fun x!7656 () Int)

(assert (=> b!13499 (= inst!140 (=> true (or (not (member x!7656 (content!20 (left!595 (right!598 res!5052))))) (< x!7656 (value!1515 (right!598 res!5052))))))))

(declare-fun m!17195 () Bool)

(assert (=> b!13499 m!17195))

(declare-fun bs!4463 () Bool)

(assert (= bs!4463 (and b!13499 b!13497)))

(assert (=> (and bs!4463 (= (content!20 (left!595 (right!598 res!5052))) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 (right!598 res!5052)) (value!1515 (left!595 res!5052)))) (= inst!140 inst!138)))

(declare-fun bs!4464 () Bool)

(assert (= bs!4464 (and b!13499 neg-inst!127)))

(assert (=> (and bs!4464 (= (content!20 (left!595 (right!598 res!5052))) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 (right!598 res!5052)) (value!1515 (left!595 res!5052)))) (= inst!140 true)))

(declare-fun b!13500 () Bool)

(declare-fun m!17197 () Bool)

(assert (=> b!13500 m!17197))

(declare-fun inst!141 () Bool)

(declare-fun x!7657 () Int)

(assert (=> b!13500 (= inst!141 (=> true (or (not (member x!7657 (content!20 (right!598 (right!598 res!5052))))) (< (value!1515 (right!598 res!5052)) x!7657))))))

(declare-fun m!17199 () Bool)

(assert (=> b!13500 m!17199))

(declare-fun bs!4465 () Bool)

(assert (= bs!4465 (and b!13500 b!13498)))

(assert (=> (and bs!4465 (= (content!20 (right!598 (right!598 res!5052))) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 (right!598 res!5052)) (value!1515 (left!595 res!5052)))) (= inst!141 inst!139)))

(declare-fun bs!4466 () Bool)

(assert (= bs!4466 (and b!13500 neg-inst!126)))

(assert (=> (and bs!4466 (= (content!20 (right!598 (right!598 res!5052))) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 (right!598 res!5052)) (value!1515 (left!595 res!5052)))) (= inst!141 true)))

(declare-fun bs!4467 () Bool)

(declare-fun neg-inst!129 () Bool)

(assert (= bs!4467 neg-inst!129))

(assert (=> bs!4467 m!17193))

(declare-fun bs!4468 () Bool)

(declare-fun s!639 () Bool)

(assert (= bs!4468 (and neg-inst!129 s!639)))

(assert (=> bs!4468 (=> true (or (not (member x!7656 (content!20 (left!595 (right!598 res!5052))))) (< x!7656 (value!1515 (right!598 res!5052)))))))

(assert (=> m!17195 s!639))

(declare-fun bs!4469 () Bool)

(assert (= bs!4469 (and neg-inst!129 b!13497)))

(assert (=> (and bs!4469 (= (content!20 (left!595 (right!598 res!5052))) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 (right!598 res!5052)) (value!1515 (left!595 res!5052)))) (= true inst!138)))

(declare-fun bs!4470 () Bool)

(assert (= bs!4470 (and neg-inst!129 neg-inst!127)))

(assert (=> (and bs!4470 (= (content!20 (left!595 (right!598 res!5052))) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 (right!598 res!5052)) (value!1515 (left!595 res!5052)))) (= true true)))

(declare-fun bs!4471 () Bool)

(assert (= bs!4471 (and neg-inst!129 b!13499)))

(assert (=> bs!4471 (= true inst!140)))

(declare-fun bs!4472 () Bool)

(declare-fun neg-inst!128 () Bool)

(assert (= bs!4472 neg-inst!128))

(assert (=> bs!4472 m!17197))

(declare-fun bs!4473 () Bool)

(declare-fun s!641 () Bool)

(assert (= bs!4473 (and neg-inst!128 s!641)))

(assert (=> bs!4473 (=> true (or (not (member x!7657 (content!20 (right!598 (right!598 res!5052))))) (< (value!1515 (right!598 res!5052)) x!7657)))))

(assert (=> m!17199 s!641))

(declare-fun bs!4474 () Bool)

(assert (= bs!4474 (and neg-inst!128 b!13498)))

(assert (=> (and bs!4474 (= (content!20 (right!598 (right!598 res!5052))) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 (right!598 res!5052)) (value!1515 (left!595 res!5052)))) (= true inst!139)))

(declare-fun bs!4475 () Bool)

(assert (= bs!4475 (and neg-inst!128 b!13500)))

(assert (=> bs!4475 (= true inst!141)))

(declare-fun bs!4476 () Bool)

(assert (= bs!4476 (and neg-inst!128 neg-inst!126)))

(assert (=> (and bs!4476 (= (content!20 (right!598 (right!598 res!5052))) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 (right!598 res!5052)) (value!1515 (left!595 res!5052)))) (= true true)))

(declare-fun d!10356 () Bool)

(declare-fun res!5118 () Bool)

(declare-fun e!7438 () Bool)

(assert (=> d!10356 (=> res!5118 e!7438)))

(assert (=> d!10356 (= res!5118 (not (is-Node!28 (right!598 res!5052))))))

(assert (=> d!10356 (= (inv!443 (right!598 res!5052)) e!7438)))

(declare-fun e!7437 () Bool)

(assert (=> b!13499 (= e!7438 e!7437)))

(declare-fun res!5119 () Bool)

(assert (=> b!13499 (=> (not res!5119) (not e!7437))))

(assert (=> b!13499 (= res!5119 inst!140)))

(assert (=> b!13500 (= e!7437 inst!141)))

(assert (= (and d!10356 (not res!5118)) b!13499))

(assert (= neg-inst!129 inst!140))

(assert (= (and b!13499 res!5119) b!13500))

(assert (= neg-inst!128 inst!141))

(assert (=> b!13492 d!10356))

(declare-fun b!13501 () Bool)

(declare-fun m!17201 () Bool)

(assert (=> b!13501 m!17201))

(declare-fun inst!142 () Bool)

(declare-fun x!7658 () Int)

(assert (=> b!13501 (= inst!142 (=> true (or (not (member x!7658 (content!20 (left!595 (left!595 tree!126))))) (< x!7658 (value!1515 (left!595 tree!126))))))))

(declare-fun m!17203 () Bool)

(assert (=> b!13501 m!17203))

(declare-fun bs!4477 () Bool)

(assert (= bs!4477 (and b!13501 b!13497)))

(assert (=> (and bs!4477 (= (content!20 (left!595 (left!595 tree!126))) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 (left!595 tree!126)) (value!1515 (left!595 res!5052)))) (= inst!142 inst!138)))

(declare-fun bs!4478 () Bool)

(assert (= bs!4478 (and b!13501 neg-inst!127)))

(assert (=> (and bs!4478 (= (content!20 (left!595 (left!595 tree!126))) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 (left!595 tree!126)) (value!1515 (left!595 res!5052)))) (= inst!142 true)))

(declare-fun bs!4479 () Bool)

(assert (= bs!4479 (and b!13501 neg-inst!129)))

(assert (=> (and bs!4479 (= (content!20 (left!595 (left!595 tree!126))) (content!20 (left!595 (right!598 res!5052)))) (= (value!1515 (left!595 tree!126)) (value!1515 (right!598 res!5052)))) (= inst!142 true)))

(declare-fun bs!4480 () Bool)

(assert (= bs!4480 (and b!13501 b!13499)))

(assert (=> (and bs!4480 (= (content!20 (left!595 (left!595 tree!126))) (content!20 (left!595 (right!598 res!5052)))) (= (value!1515 (left!595 tree!126)) (value!1515 (right!598 res!5052)))) (= inst!142 inst!140)))

(declare-fun b!13502 () Bool)

(declare-fun m!17205 () Bool)

(assert (=> b!13502 m!17205))

(declare-fun inst!143 () Bool)

(declare-fun x!7659 () Int)

(assert (=> b!13502 (= inst!143 (=> true (or (not (member x!7659 (content!20 (right!598 (left!595 tree!126))))) (< (value!1515 (left!595 tree!126)) x!7659))))))

(declare-fun m!17207 () Bool)

(assert (=> b!13502 m!17207))

(declare-fun bs!4481 () Bool)

(assert (= bs!4481 (and b!13502 b!13498)))

(assert (=> (and bs!4481 (= (content!20 (right!598 (left!595 tree!126))) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 (left!595 tree!126)) (value!1515 (left!595 res!5052)))) (= inst!143 inst!139)))

(declare-fun bs!4482 () Bool)

(assert (= bs!4482 (and b!13502 b!13500)))

(assert (=> (and bs!4482 (= (content!20 (right!598 (left!595 tree!126))) (content!20 (right!598 (right!598 res!5052)))) (= (value!1515 (left!595 tree!126)) (value!1515 (right!598 res!5052)))) (= inst!143 inst!141)))

(declare-fun bs!4483 () Bool)

(assert (= bs!4483 (and b!13502 neg-inst!128)))

(assert (=> (and bs!4483 (= (content!20 (right!598 (left!595 tree!126))) (content!20 (right!598 (right!598 res!5052)))) (= (value!1515 (left!595 tree!126)) (value!1515 (right!598 res!5052)))) (= inst!143 true)))

(declare-fun bs!4484 () Bool)

(assert (= bs!4484 (and b!13502 neg-inst!126)))

(assert (=> (and bs!4484 (= (content!20 (right!598 (left!595 tree!126))) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 (left!595 tree!126)) (value!1515 (left!595 res!5052)))) (= inst!143 true)))

(declare-fun bs!4485 () Bool)

(declare-fun neg-inst!131 () Bool)

(assert (= bs!4485 neg-inst!131))

(assert (=> bs!4485 m!17201))

(declare-fun bs!4486 () Bool)

(declare-fun s!643 () Bool)

(assert (= bs!4486 (and neg-inst!131 s!643)))

(assert (=> bs!4486 (=> true (or (not (member x!7658 (content!20 (left!595 (left!595 tree!126))))) (< x!7658 (value!1515 (left!595 tree!126)))))))

(assert (=> m!17203 s!643))

(declare-fun bs!4487 () Bool)

(assert (= bs!4487 (and neg-inst!131 b!13497)))

(assert (=> (and bs!4487 (= (content!20 (left!595 (left!595 tree!126))) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 (left!595 tree!126)) (value!1515 (left!595 res!5052)))) (= true inst!138)))

(declare-fun bs!4488 () Bool)

(assert (= bs!4488 (and neg-inst!131 b!13501)))

(assert (=> bs!4488 (= true inst!142)))

(declare-fun bs!4489 () Bool)

(assert (= bs!4489 (and neg-inst!131 neg-inst!127)))

(assert (=> (and bs!4489 (= (content!20 (left!595 (left!595 tree!126))) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 (left!595 tree!126)) (value!1515 (left!595 res!5052)))) (= true true)))

(declare-fun bs!4490 () Bool)

(assert (= bs!4490 (and neg-inst!131 neg-inst!129)))

(assert (=> (and bs!4490 (= (content!20 (left!595 (left!595 tree!126))) (content!20 (left!595 (right!598 res!5052)))) (= (value!1515 (left!595 tree!126)) (value!1515 (right!598 res!5052)))) (= true true)))

(declare-fun bs!4491 () Bool)

(assert (= bs!4491 (and neg-inst!131 b!13499)))

(assert (=> (and bs!4491 (= (content!20 (left!595 (left!595 tree!126))) (content!20 (left!595 (right!598 res!5052)))) (= (value!1515 (left!595 tree!126)) (value!1515 (right!598 res!5052)))) (= true inst!140)))

(declare-fun bs!4492 () Bool)

(declare-fun neg-inst!130 () Bool)

(assert (= bs!4492 neg-inst!130))

(assert (=> bs!4492 m!17205))

(declare-fun bs!4493 () Bool)

(declare-fun s!645 () Bool)

(assert (= bs!4493 (and neg-inst!130 s!645)))

(assert (=> bs!4493 (=> true (or (not (member x!7659 (content!20 (right!598 (left!595 tree!126))))) (< (value!1515 (left!595 tree!126)) x!7659)))))

(assert (=> m!17207 s!645))

(declare-fun bs!4494 () Bool)

(assert (= bs!4494 (and neg-inst!130 b!13498)))

(assert (=> (and bs!4494 (= (content!20 (right!598 (left!595 tree!126))) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 (left!595 tree!126)) (value!1515 (left!595 res!5052)))) (= true inst!139)))

(declare-fun bs!4495 () Bool)

(assert (= bs!4495 (and neg-inst!130 b!13500)))

(assert (=> (and bs!4495 (= (content!20 (right!598 (left!595 tree!126))) (content!20 (right!598 (right!598 res!5052)))) (= (value!1515 (left!595 tree!126)) (value!1515 (right!598 res!5052)))) (= true inst!141)))

(declare-fun bs!4496 () Bool)

(assert (= bs!4496 (and neg-inst!130 b!13502)))

(assert (=> bs!4496 (= true inst!143)))

(declare-fun bs!4497 () Bool)

(assert (= bs!4497 (and neg-inst!130 neg-inst!128)))

(assert (=> (and bs!4497 (= (content!20 (right!598 (left!595 tree!126))) (content!20 (right!598 (right!598 res!5052)))) (= (value!1515 (left!595 tree!126)) (value!1515 (right!598 res!5052)))) (= true true)))

(declare-fun bs!4498 () Bool)

(assert (= bs!4498 (and neg-inst!130 neg-inst!126)))

(assert (=> (and bs!4498 (= (content!20 (right!598 (left!595 tree!126))) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 (left!595 tree!126)) (value!1515 (left!595 res!5052)))) (= true true)))

(declare-fun d!10358 () Bool)

(declare-fun res!5120 () Bool)

(declare-fun e!7440 () Bool)

(assert (=> d!10358 (=> res!5120 e!7440)))

(assert (=> d!10358 (= res!5120 (not (is-Node!28 (left!595 tree!126))))))

(assert (=> d!10358 (= (inv!443 (left!595 tree!126)) e!7440)))

(declare-fun e!7439 () Bool)

(assert (=> b!13501 (= e!7440 e!7439)))

(declare-fun res!5121 () Bool)

(assert (=> b!13501 (=> (not res!5121) (not e!7439))))

(assert (=> b!13501 (= res!5121 inst!142)))

(assert (=> b!13502 (= e!7439 inst!143)))

(assert (= (and d!10358 (not res!5120)) b!13501))

(assert (= neg-inst!131 inst!142))

(assert (= (and b!13501 res!5121) b!13502))

(assert (= neg-inst!130 inst!143))

(assert (=> b!13491 d!10358))

(declare-fun b!13503 () Bool)

(declare-fun m!17209 () Bool)

(assert (=> b!13503 m!17209))

(declare-fun inst!144 () Bool)

(declare-fun x!7660 () Int)

(assert (=> b!13503 (= inst!144 (=> true (or (not (member x!7660 (content!20 (left!595 (right!598 tree!126))))) (< x!7660 (value!1515 (right!598 tree!126))))))))

(declare-fun m!17211 () Bool)

(assert (=> b!13503 m!17211))

(declare-fun bs!4499 () Bool)

(assert (= bs!4499 (and b!13503 b!13497)))

(assert (=> (and bs!4499 (= (content!20 (left!595 (right!598 tree!126))) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 (right!598 tree!126)) (value!1515 (left!595 res!5052)))) (= inst!144 inst!138)))

(declare-fun bs!4500 () Bool)

(assert (= bs!4500 (and b!13503 b!13501)))

(assert (=> (and bs!4500 (= (content!20 (left!595 (right!598 tree!126))) (content!20 (left!595 (left!595 tree!126)))) (= (value!1515 (right!598 tree!126)) (value!1515 (left!595 tree!126)))) (= inst!144 inst!142)))

(declare-fun bs!4501 () Bool)

(assert (= bs!4501 (and b!13503 neg-inst!131)))

(assert (=> (and bs!4501 (= (content!20 (left!595 (right!598 tree!126))) (content!20 (left!595 (left!595 tree!126)))) (= (value!1515 (right!598 tree!126)) (value!1515 (left!595 tree!126)))) (= inst!144 true)))

(declare-fun bs!4502 () Bool)

(assert (= bs!4502 (and b!13503 neg-inst!127)))

(assert (=> (and bs!4502 (= (content!20 (left!595 (right!598 tree!126))) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 (right!598 tree!126)) (value!1515 (left!595 res!5052)))) (= inst!144 true)))

(declare-fun bs!4503 () Bool)

(assert (= bs!4503 (and b!13503 neg-inst!129)))

(assert (=> (and bs!4503 (= (content!20 (left!595 (right!598 tree!126))) (content!20 (left!595 (right!598 res!5052)))) (= (value!1515 (right!598 tree!126)) (value!1515 (right!598 res!5052)))) (= inst!144 true)))

(declare-fun bs!4504 () Bool)

(assert (= bs!4504 (and b!13503 b!13499)))

(assert (=> (and bs!4504 (= (content!20 (left!595 (right!598 tree!126))) (content!20 (left!595 (right!598 res!5052)))) (= (value!1515 (right!598 tree!126)) (value!1515 (right!598 res!5052)))) (= inst!144 inst!140)))

(declare-fun b!13504 () Bool)

(declare-fun m!17213 () Bool)

(assert (=> b!13504 m!17213))

(declare-fun inst!145 () Bool)

(declare-fun x!7661 () Int)

(assert (=> b!13504 (= inst!145 (=> true (or (not (member x!7661 (content!20 (right!598 (right!598 tree!126))))) (< (value!1515 (right!598 tree!126)) x!7661))))))

(declare-fun m!17215 () Bool)

(assert (=> b!13504 m!17215))

(declare-fun bs!4505 () Bool)

(assert (= bs!4505 (and b!13504 b!13498)))

(assert (=> (and bs!4505 (= (content!20 (right!598 (right!598 tree!126))) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 (right!598 tree!126)) (value!1515 (left!595 res!5052)))) (= inst!145 inst!139)))

(declare-fun bs!4506 () Bool)

(assert (= bs!4506 (and b!13504 b!13500)))

(assert (=> (and bs!4506 (= (content!20 (right!598 (right!598 tree!126))) (content!20 (right!598 (right!598 res!5052)))) (= (value!1515 (right!598 tree!126)) (value!1515 (right!598 res!5052)))) (= inst!145 inst!141)))

(declare-fun bs!4507 () Bool)

(assert (= bs!4507 (and b!13504 b!13502)))

(assert (=> (and bs!4507 (= (content!20 (right!598 (right!598 tree!126))) (content!20 (right!598 (left!595 tree!126)))) (= (value!1515 (right!598 tree!126)) (value!1515 (left!595 tree!126)))) (= inst!145 inst!143)))

(declare-fun bs!4508 () Bool)

(assert (= bs!4508 (and b!13504 neg-inst!128)))

(assert (=> (and bs!4508 (= (content!20 (right!598 (right!598 tree!126))) (content!20 (right!598 (right!598 res!5052)))) (= (value!1515 (right!598 tree!126)) (value!1515 (right!598 res!5052)))) (= inst!145 true)))

(declare-fun bs!4509 () Bool)

(assert (= bs!4509 (and b!13504 neg-inst!126)))

(assert (=> (and bs!4509 (= (content!20 (right!598 (right!598 tree!126))) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 (right!598 tree!126)) (value!1515 (left!595 res!5052)))) (= inst!145 true)))

(declare-fun bs!4510 () Bool)

(assert (= bs!4510 (and b!13504 neg-inst!130)))

(assert (=> (and bs!4510 (= (content!20 (right!598 (right!598 tree!126))) (content!20 (right!598 (left!595 tree!126)))) (= (value!1515 (right!598 tree!126)) (value!1515 (left!595 tree!126)))) (= inst!145 true)))

(declare-fun bs!4511 () Bool)

(declare-fun neg-inst!133 () Bool)

(assert (= bs!4511 neg-inst!133))

(assert (=> bs!4511 m!17209))

(declare-fun bs!4512 () Bool)

(declare-fun s!647 () Bool)

(assert (= bs!4512 (and neg-inst!133 s!647)))

(assert (=> bs!4512 (=> true (or (not (member x!7660 (content!20 (left!595 (right!598 tree!126))))) (< x!7660 (value!1515 (right!598 tree!126)))))))

(assert (=> m!17211 s!647))

(declare-fun bs!4513 () Bool)

(assert (= bs!4513 (and neg-inst!133 b!13503)))

(assert (=> bs!4513 (= true inst!144)))

(declare-fun bs!4514 () Bool)

(assert (= bs!4514 (and neg-inst!133 b!13497)))

(assert (=> (and bs!4514 (= (content!20 (left!595 (right!598 tree!126))) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 (right!598 tree!126)) (value!1515 (left!595 res!5052)))) (= true inst!138)))

(declare-fun bs!4515 () Bool)

(assert (= bs!4515 (and neg-inst!133 b!13501)))

(assert (=> (and bs!4515 (= (content!20 (left!595 (right!598 tree!126))) (content!20 (left!595 (left!595 tree!126)))) (= (value!1515 (right!598 tree!126)) (value!1515 (left!595 tree!126)))) (= true inst!142)))

(declare-fun bs!4516 () Bool)

(assert (= bs!4516 (and neg-inst!133 neg-inst!131)))

(assert (=> (and bs!4516 (= (content!20 (left!595 (right!598 tree!126))) (content!20 (left!595 (left!595 tree!126)))) (= (value!1515 (right!598 tree!126)) (value!1515 (left!595 tree!126)))) (= true true)))

(declare-fun bs!4517 () Bool)

(assert (= bs!4517 (and neg-inst!133 neg-inst!127)))

(assert (=> (and bs!4517 (= (content!20 (left!595 (right!598 tree!126))) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 (right!598 tree!126)) (value!1515 (left!595 res!5052)))) (= true true)))

(declare-fun bs!4518 () Bool)

(assert (= bs!4518 (and neg-inst!133 b!13499)))

(assert (=> (and bs!4518 (= (content!20 (left!595 (right!598 tree!126))) (content!20 (left!595 (right!598 res!5052)))) (= (value!1515 (right!598 tree!126)) (value!1515 (right!598 res!5052)))) (= true inst!140)))

(declare-fun bs!4519 () Bool)

(assert (= bs!4519 (and neg-inst!133 neg-inst!129)))

(assert (=> (and bs!4519 (= (content!20 (left!595 (right!598 tree!126))) (content!20 (left!595 (right!598 res!5052)))) (= (value!1515 (right!598 tree!126)) (value!1515 (right!598 res!5052)))) (= true true)))

(declare-fun bs!4520 () Bool)

(declare-fun neg-inst!132 () Bool)

(assert (= bs!4520 neg-inst!132))

(assert (=> bs!4520 m!17213))

(declare-fun bs!4521 () Bool)

(declare-fun s!649 () Bool)

(assert (= bs!4521 (and neg-inst!132 s!649)))

(assert (=> bs!4521 (=> true (or (not (member x!7661 (content!20 (right!598 (right!598 tree!126))))) (< (value!1515 (right!598 tree!126)) x!7661)))))

(assert (=> m!17215 s!649))

(declare-fun bs!4522 () Bool)

(assert (= bs!4522 (and neg-inst!132 b!13498)))

(assert (=> (and bs!4522 (= (content!20 (right!598 (right!598 tree!126))) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 (right!598 tree!126)) (value!1515 (left!595 res!5052)))) (= true inst!139)))

(declare-fun bs!4523 () Bool)

(assert (= bs!4523 (and neg-inst!132 b!13500)))

(assert (=> (and bs!4523 (= (content!20 (right!598 (right!598 tree!126))) (content!20 (right!598 (right!598 res!5052)))) (= (value!1515 (right!598 tree!126)) (value!1515 (right!598 res!5052)))) (= true inst!141)))

(declare-fun bs!4524 () Bool)

(assert (= bs!4524 (and neg-inst!132 b!13502)))

(assert (=> (and bs!4524 (= (content!20 (right!598 (right!598 tree!126))) (content!20 (right!598 (left!595 tree!126)))) (= (value!1515 (right!598 tree!126)) (value!1515 (left!595 tree!126)))) (= true inst!143)))

(declare-fun bs!4525 () Bool)

(assert (= bs!4525 (and neg-inst!132 neg-inst!128)))

(assert (=> (and bs!4525 (= (content!20 (right!598 (right!598 tree!126))) (content!20 (right!598 (right!598 res!5052)))) (= (value!1515 (right!598 tree!126)) (value!1515 (right!598 res!5052)))) (= true true)))

(declare-fun bs!4526 () Bool)

(assert (= bs!4526 (and neg-inst!132 b!13504)))

(assert (=> bs!4526 (= true inst!145)))

(declare-fun bs!4527 () Bool)

(assert (= bs!4527 (and neg-inst!132 neg-inst!126)))

(assert (=> (and bs!4527 (= (content!20 (right!598 (right!598 tree!126))) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 (right!598 tree!126)) (value!1515 (left!595 res!5052)))) (= true true)))

(declare-fun bs!4528 () Bool)

(assert (= bs!4528 (and neg-inst!132 neg-inst!130)))

(assert (=> (and bs!4528 (= (content!20 (right!598 (right!598 tree!126))) (content!20 (right!598 (left!595 tree!126)))) (= (value!1515 (right!598 tree!126)) (value!1515 (left!595 tree!126)))) (= true true)))

(declare-fun d!10360 () Bool)

(declare-fun res!5122 () Bool)

(declare-fun e!7442 () Bool)

(assert (=> d!10360 (=> res!5122 e!7442)))

(assert (=> d!10360 (= res!5122 (not (is-Node!28 (right!598 tree!126))))))

(assert (=> d!10360 (= (inv!443 (right!598 tree!126)) e!7442)))

(declare-fun e!7441 () Bool)

(assert (=> b!13503 (= e!7442 e!7441)))

(declare-fun res!5123 () Bool)

(assert (=> b!13503 (=> (not res!5123) (not e!7441))))

(assert (=> b!13503 (= res!5123 inst!144)))

(assert (=> b!13504 (= e!7441 inst!145)))

(assert (= (and d!10360 (not res!5122)) b!13503))

(assert (= neg-inst!133 inst!144))

(assert (= (and b!13503 res!5123) b!13504))

(assert (= neg-inst!132 inst!145))

(assert (=> b!13491 d!10360))

(declare-fun e!7453 () Bool)

(declare-fun tp!3357 () Bool)

(declare-fun b!13517 () Bool)

(declare-fun res!5132 () Tree!97)

(declare-fun tp!3356 () Bool)

(assert (=> b!13517 (= e!7453 (and (inv!443 (left!595 res!5132)) tp!3356 (inv!443 (right!598 res!5132)) tp!3357))))

(declare-fun e!7454 () Tree!97)

(declare-fun lt!1924 () Bool)

(declare-fun b!13518 () Bool)

(assert (=> b!13518 (= e!7454 (insert!9 (ite lt!1924 (right!598 (left!595 tree!126)) (left!595 (left!595 tree!126))) value!1495))))

(declare-fun b!13519 () Bool)

(declare-fun e!7451 () Tree!97)

(assert (=> b!13519 (= e!7451 (Node!28 Leaf!179 value!1495 Leaf!179))))

(declare-fun b!13520 () Bool)

(declare-fun lt!1925 () Tree!97)

(declare-fun e!7452 () Bool)

(assert (=> b!13520 (= e!7452 (= (content!20 lt!1925) (union (content!20 (left!595 tree!126)) (insert value!1495 (as emptyset (Set Int))))))))

(declare-fun b!13521 () Bool)

(assert (=> b!13521 (= e!7454 res!5132)))

(assert (=> b!13521 true))

(assert (=> b!13521 (and (inv!443 res!5132) e!7453)))

(declare-fun d!10362 () Bool)

(assert (=> d!10362 e!7452))

(declare-fun res!5133 () Bool)

(assert (=> d!10362 (=> (not res!5133) (not e!7452))))

(assert (=> d!10362 (= res!5133 (is-Node!28 lt!1925))))

(assert (=> d!10362 (= lt!1925 e!7451)))

(declare-fun c!3760 () Bool)

(assert (=> d!10362 (= c!3760 (is-Leaf!179 (left!595 tree!126)))))

(assert (=> d!10362 (= (insert!9 (left!595 tree!126) value!1495) lt!1925)))

(declare-fun b!13522 () Bool)

(declare-fun lt!1926 () Tree!97)

(assert (=> b!13522 (= e!7451 (ite lt!1924 (Node!28 (left!595 (left!595 tree!126)) (value!1515 (left!595 tree!126)) lt!1926) (ite (> (value!1515 (left!595 tree!126)) value!1495) (Node!28 lt!1926 (value!1515 (left!595 tree!126)) (right!598 (left!595 tree!126))) (Node!28 (left!595 (left!595 tree!126)) (value!1515 (left!595 tree!126)) (right!598 (left!595 tree!126))))))))

(assert (=> b!13522 (= lt!1926 e!7454)))

(declare-fun c!3761 () Bool)

(assert (=> b!13522 (= c!3761 (or lt!1924 (> (value!1515 (left!595 tree!126)) value!1495)))))

(assert (=> b!13522 (= lt!1924 (< (value!1515 (left!595 tree!126)) value!1495))))

(assert (= (and b!13521 (is-Node!28 res!5132)) b!13517))

(assert (= (and b!13522 c!3761) b!13518))

(assert (= (and b!13522 (not c!3761)) b!13521))

(assert (= (and d!10362 c!3760) b!13519))

(assert (= (and d!10362 (not c!3760)) b!13522))

(assert (= (and d!10362 res!5133) b!13520))

(declare-fun m!17217 () Bool)

(assert (=> b!13517 m!17217))

(declare-fun m!17219 () Bool)

(assert (=> b!13517 m!17219))

(declare-fun m!17221 () Bool)

(assert (=> b!13518 m!17221))

(declare-fun m!17223 () Bool)

(assert (=> b!13520 m!17223))

(declare-fun m!17225 () Bool)

(assert (=> b!13520 m!17225))

(assert (=> b!13520 m!17177))

(declare-fun m!17227 () Bool)

(assert (=> b!13521 m!17227))

(assert (=> b!13489 d!10362))

(declare-fun b!13523 () Bool)

(assert (=> b!13523 m!17225))

(declare-fun inst!146 () Bool)

(declare-fun x!7662 () Int)

(assert (=> b!13523 (= inst!146 (=> true (or (not (member x!7662 (content!20 (left!595 tree!126)))) (< x!7662 (value!1515 tree!126)))))))

(declare-fun m!17229 () Bool)

(assert (=> b!13523 m!17229))

(declare-fun bs!4529 () Bool)

(assert (= bs!4529 (and b!13523 neg-inst!133)))

(assert (=> (and bs!4529 (= (content!20 (left!595 tree!126)) (content!20 (left!595 (right!598 tree!126)))) (= (value!1515 tree!126) (value!1515 (right!598 tree!126)))) (= inst!146 true)))

(declare-fun bs!4530 () Bool)

(assert (= bs!4530 (and b!13523 b!13503)))

(assert (=> (and bs!4530 (= (content!20 (left!595 tree!126)) (content!20 (left!595 (right!598 tree!126)))) (= (value!1515 tree!126) (value!1515 (right!598 tree!126)))) (= inst!146 inst!144)))

(declare-fun bs!4531 () Bool)

(assert (= bs!4531 (and b!13523 b!13497)))

(assert (=> (and bs!4531 (= (content!20 (left!595 tree!126)) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 tree!126) (value!1515 (left!595 res!5052)))) (= inst!146 inst!138)))

(declare-fun bs!4532 () Bool)

(assert (= bs!4532 (and b!13523 b!13501)))

(assert (=> (and bs!4532 (= (content!20 (left!595 tree!126)) (content!20 (left!595 (left!595 tree!126)))) (= (value!1515 tree!126) (value!1515 (left!595 tree!126)))) (= inst!146 inst!142)))

(declare-fun bs!4533 () Bool)

(assert (= bs!4533 (and b!13523 neg-inst!131)))

(assert (=> (and bs!4533 (= (content!20 (left!595 tree!126)) (content!20 (left!595 (left!595 tree!126)))) (= (value!1515 tree!126) (value!1515 (left!595 tree!126)))) (= inst!146 true)))

(declare-fun bs!4534 () Bool)

(assert (= bs!4534 (and b!13523 neg-inst!127)))

(assert (=> (and bs!4534 (= (content!20 (left!595 tree!126)) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 tree!126) (value!1515 (left!595 res!5052)))) (= inst!146 true)))

(declare-fun bs!4535 () Bool)

(assert (= bs!4535 (and b!13523 b!13499)))

(assert (=> (and bs!4535 (= (content!20 (left!595 tree!126)) (content!20 (left!595 (right!598 res!5052)))) (= (value!1515 tree!126) (value!1515 (right!598 res!5052)))) (= inst!146 inst!140)))

(declare-fun bs!4536 () Bool)

(assert (= bs!4536 (and b!13523 neg-inst!129)))

(assert (=> (and bs!4536 (= (content!20 (left!595 tree!126)) (content!20 (left!595 (right!598 res!5052)))) (= (value!1515 tree!126) (value!1515 (right!598 res!5052)))) (= inst!146 true)))

(declare-fun b!13524 () Bool)

(declare-fun m!17231 () Bool)

(assert (=> b!13524 m!17231))

(declare-fun inst!147 () Bool)

(declare-fun x!7663 () Int)

(assert (=> b!13524 (= inst!147 (=> true (or (not (member x!7663 (content!20 (right!598 tree!126)))) (< (value!1515 tree!126) x!7663))))))

(declare-fun m!17233 () Bool)

(assert (=> b!13524 m!17233))

(declare-fun bs!4537 () Bool)

(assert (= bs!4537 (and b!13524 b!13498)))

(assert (=> (and bs!4537 (= (content!20 (right!598 tree!126)) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 tree!126) (value!1515 (left!595 res!5052)))) (= inst!147 inst!139)))

(declare-fun bs!4538 () Bool)

(assert (= bs!4538 (and b!13524 neg-inst!132)))

(assert (=> (and bs!4538 (= (content!20 (right!598 tree!126)) (content!20 (right!598 (right!598 tree!126)))) (= (value!1515 tree!126) (value!1515 (right!598 tree!126)))) (= inst!147 true)))

(declare-fun bs!4539 () Bool)

(assert (= bs!4539 (and b!13524 b!13500)))

(assert (=> (and bs!4539 (= (content!20 (right!598 tree!126)) (content!20 (right!598 (right!598 res!5052)))) (= (value!1515 tree!126) (value!1515 (right!598 res!5052)))) (= inst!147 inst!141)))

(declare-fun bs!4540 () Bool)

(assert (= bs!4540 (and b!13524 b!13502)))

(assert (=> (and bs!4540 (= (content!20 (right!598 tree!126)) (content!20 (right!598 (left!595 tree!126)))) (= (value!1515 tree!126) (value!1515 (left!595 tree!126)))) (= inst!147 inst!143)))

(declare-fun bs!4541 () Bool)

(assert (= bs!4541 (and b!13524 neg-inst!128)))

(assert (=> (and bs!4541 (= (content!20 (right!598 tree!126)) (content!20 (right!598 (right!598 res!5052)))) (= (value!1515 tree!126) (value!1515 (right!598 res!5052)))) (= inst!147 true)))

(declare-fun bs!4542 () Bool)

(assert (= bs!4542 (and b!13524 b!13504)))

(assert (=> (and bs!4542 (= (content!20 (right!598 tree!126)) (content!20 (right!598 (right!598 tree!126)))) (= (value!1515 tree!126) (value!1515 (right!598 tree!126)))) (= inst!147 inst!145)))

(declare-fun bs!4543 () Bool)

(assert (= bs!4543 (and b!13524 neg-inst!126)))

(assert (=> (and bs!4543 (= (content!20 (right!598 tree!126)) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 tree!126) (value!1515 (left!595 res!5052)))) (= inst!147 true)))

(declare-fun bs!4544 () Bool)

(assert (= bs!4544 (and b!13524 neg-inst!130)))

(assert (=> (and bs!4544 (= (content!20 (right!598 tree!126)) (content!20 (right!598 (left!595 tree!126)))) (= (value!1515 tree!126) (value!1515 (left!595 tree!126)))) (= inst!147 true)))

(declare-fun bs!4545 () Bool)

(declare-fun neg-inst!135 () Bool)

(assert (= bs!4545 neg-inst!135))

(assert (=> bs!4545 m!17225))

(declare-fun bs!4546 () Bool)

(declare-fun s!651 () Bool)

(assert (= bs!4546 (and neg-inst!135 s!651)))

(assert (=> bs!4546 (=> true (or (not (member x!7662 (content!20 (left!595 tree!126)))) (< x!7662 (value!1515 tree!126))))))

(assert (=> m!17229 s!651))

(declare-fun bs!4547 () Bool)

(assert (= bs!4547 (and neg-inst!135 neg-inst!133)))

(assert (=> (and bs!4547 (= (content!20 (left!595 tree!126)) (content!20 (left!595 (right!598 tree!126)))) (= (value!1515 tree!126) (value!1515 (right!598 tree!126)))) (= true true)))

(declare-fun bs!4548 () Bool)

(assert (= bs!4548 (and neg-inst!135 b!13503)))

(assert (=> (and bs!4548 (= (content!20 (left!595 tree!126)) (content!20 (left!595 (right!598 tree!126)))) (= (value!1515 tree!126) (value!1515 (right!598 tree!126)))) (= true inst!144)))

(declare-fun bs!4549 () Bool)

(assert (= bs!4549 (and neg-inst!135 b!13523)))

(assert (=> bs!4549 (= true inst!146)))

(declare-fun bs!4550 () Bool)

(assert (= bs!4550 (and neg-inst!135 b!13497)))

(assert (=> (and bs!4550 (= (content!20 (left!595 tree!126)) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 tree!126) (value!1515 (left!595 res!5052)))) (= true inst!138)))

(declare-fun bs!4551 () Bool)

(assert (= bs!4551 (and neg-inst!135 b!13501)))

(assert (=> (and bs!4551 (= (content!20 (left!595 tree!126)) (content!20 (left!595 (left!595 tree!126)))) (= (value!1515 tree!126) (value!1515 (left!595 tree!126)))) (= true inst!142)))

(declare-fun bs!4552 () Bool)

(assert (= bs!4552 (and neg-inst!135 neg-inst!131)))

(assert (=> (and bs!4552 (= (content!20 (left!595 tree!126)) (content!20 (left!595 (left!595 tree!126)))) (= (value!1515 tree!126) (value!1515 (left!595 tree!126)))) (= true true)))

(declare-fun bs!4553 () Bool)

(assert (= bs!4553 (and neg-inst!135 neg-inst!127)))

(assert (=> (and bs!4553 (= (content!20 (left!595 tree!126)) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 tree!126) (value!1515 (left!595 res!5052)))) (= true true)))

(declare-fun bs!4554 () Bool)

(assert (= bs!4554 (and neg-inst!135 b!13499)))

(assert (=> (and bs!4554 (= (content!20 (left!595 tree!126)) (content!20 (left!595 (right!598 res!5052)))) (= (value!1515 tree!126) (value!1515 (right!598 res!5052)))) (= true inst!140)))

(declare-fun bs!4555 () Bool)

(assert (= bs!4555 (and neg-inst!135 neg-inst!129)))

(assert (=> (and bs!4555 (= (content!20 (left!595 tree!126)) (content!20 (left!595 (right!598 res!5052)))) (= (value!1515 tree!126) (value!1515 (right!598 res!5052)))) (= true true)))

(declare-fun bs!4556 () Bool)

(declare-fun neg-inst!134 () Bool)

(assert (= bs!4556 neg-inst!134))

(assert (=> bs!4556 m!17231))

(declare-fun bs!4557 () Bool)

(declare-fun s!653 () Bool)

(assert (= bs!4557 (and neg-inst!134 s!653)))

(assert (=> bs!4557 (=> true (or (not (member x!7663 (content!20 (right!598 tree!126)))) (< (value!1515 tree!126) x!7663)))))

(assert (=> m!17233 s!653))

(declare-fun bs!4558 () Bool)

(assert (= bs!4558 (and neg-inst!134 b!13498)))

(assert (=> (and bs!4558 (= (content!20 (right!598 tree!126)) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 tree!126) (value!1515 (left!595 res!5052)))) (= true inst!139)))

(declare-fun bs!4559 () Bool)

(assert (= bs!4559 (and neg-inst!134 neg-inst!132)))

(assert (=> (and bs!4559 (= (content!20 (right!598 tree!126)) (content!20 (right!598 (right!598 tree!126)))) (= (value!1515 tree!126) (value!1515 (right!598 tree!126)))) (= true true)))

(declare-fun bs!4560 () Bool)

(assert (= bs!4560 (and neg-inst!134 b!13500)))

(assert (=> (and bs!4560 (= (content!20 (right!598 tree!126)) (content!20 (right!598 (right!598 res!5052)))) (= (value!1515 tree!126) (value!1515 (right!598 res!5052)))) (= true inst!141)))

(declare-fun bs!4561 () Bool)

(assert (= bs!4561 (and neg-inst!134 b!13524)))

(assert (=> bs!4561 (= true inst!147)))

(declare-fun bs!4562 () Bool)

(assert (= bs!4562 (and neg-inst!134 b!13502)))

(assert (=> (and bs!4562 (= (content!20 (right!598 tree!126)) (content!20 (right!598 (left!595 tree!126)))) (= (value!1515 tree!126) (value!1515 (left!595 tree!126)))) (= true inst!143)))

(declare-fun bs!4563 () Bool)

(assert (= bs!4563 (and neg-inst!134 neg-inst!128)))

(assert (=> (and bs!4563 (= (content!20 (right!598 tree!126)) (content!20 (right!598 (right!598 res!5052)))) (= (value!1515 tree!126) (value!1515 (right!598 res!5052)))) (= true true)))

(declare-fun bs!4564 () Bool)

(assert (= bs!4564 (and neg-inst!134 b!13504)))

(assert (=> (and bs!4564 (= (content!20 (right!598 tree!126)) (content!20 (right!598 (right!598 tree!126)))) (= (value!1515 tree!126) (value!1515 (right!598 tree!126)))) (= true inst!145)))

(declare-fun bs!4565 () Bool)

(assert (= bs!4565 (and neg-inst!134 neg-inst!126)))

(assert (=> (and bs!4565 (= (content!20 (right!598 tree!126)) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 tree!126) (value!1515 (left!595 res!5052)))) (= true true)))

(declare-fun bs!4566 () Bool)

(assert (= bs!4566 (and neg-inst!134 neg-inst!130)))

(assert (=> (and bs!4566 (= (content!20 (right!598 tree!126)) (content!20 (right!598 (left!595 tree!126)))) (= (value!1515 tree!126) (value!1515 (left!595 tree!126)))) (= true true)))

(declare-fun d!10364 () Bool)

(declare-fun res!5134 () Bool)

(declare-fun e!7456 () Bool)

(assert (=> d!10364 (=> res!5134 e!7456)))

(assert (=> d!10364 (= res!5134 (not (is-Node!28 tree!126)))))

(assert (=> d!10364 (= (inv!443 tree!126) e!7456)))

(declare-fun e!7455 () Bool)

(assert (=> b!13523 (= e!7456 e!7455)))

(declare-fun res!5135 () Bool)

(assert (=> b!13523 (=> (not res!5135) (not e!7455))))

(assert (=> b!13523 (= res!5135 inst!146)))

(assert (=> b!13524 (= e!7455 inst!147)))

(assert (= (and d!10364 (not res!5134)) b!13523))

(assert (= neg-inst!135 inst!146))

(assert (= (and b!13523 res!5135) b!13524))

(assert (= neg-inst!134 inst!147))

(assert (=> start!2748 d!10364))

(declare-fun b!13525 () Bool)

(declare-fun m!17235 () Bool)

(assert (=> b!13525 m!17235))

(declare-fun inst!148 () Bool)

(declare-fun x!7664 () Int)

(assert (=> b!13525 (= inst!148 (=> true (or (not (member x!7664 (content!20 (left!595 res!5052)))) (< x!7664 (value!1515 res!5052)))))))

(declare-fun m!17237 () Bool)

(assert (=> b!13525 m!17237))

(declare-fun bs!4567 () Bool)

(assert (= bs!4567 (and b!13525 neg-inst!133)))

(assert (=> (and bs!4567 (= (content!20 (left!595 res!5052)) (content!20 (left!595 (right!598 tree!126)))) (= (value!1515 res!5052) (value!1515 (right!598 tree!126)))) (= inst!148 true)))

(declare-fun bs!4568 () Bool)

(assert (= bs!4568 (and b!13525 b!13503)))

(assert (=> (and bs!4568 (= (content!20 (left!595 res!5052)) (content!20 (left!595 (right!598 tree!126)))) (= (value!1515 res!5052) (value!1515 (right!598 tree!126)))) (= inst!148 inst!144)))

(declare-fun bs!4569 () Bool)

(assert (= bs!4569 (and b!13525 b!13523)))

(assert (=> (and bs!4569 (= (content!20 (left!595 res!5052)) (content!20 (left!595 tree!126))) (= (value!1515 res!5052) (value!1515 tree!126))) (= inst!148 inst!146)))

(declare-fun bs!4570 () Bool)

(assert (= bs!4570 (and b!13525 b!13497)))

(assert (=> (and bs!4570 (= (content!20 (left!595 res!5052)) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 res!5052) (value!1515 (left!595 res!5052)))) (= inst!148 inst!138)))

(declare-fun bs!4571 () Bool)

(assert (= bs!4571 (and b!13525 b!13501)))

(assert (=> (and bs!4571 (= (content!20 (left!595 res!5052)) (content!20 (left!595 (left!595 tree!126)))) (= (value!1515 res!5052) (value!1515 (left!595 tree!126)))) (= inst!148 inst!142)))

(declare-fun bs!4572 () Bool)

(assert (= bs!4572 (and b!13525 neg-inst!131)))

(assert (=> (and bs!4572 (= (content!20 (left!595 res!5052)) (content!20 (left!595 (left!595 tree!126)))) (= (value!1515 res!5052) (value!1515 (left!595 tree!126)))) (= inst!148 true)))

(declare-fun bs!4573 () Bool)

(assert (= bs!4573 (and b!13525 neg-inst!127)))

(assert (=> (and bs!4573 (= (content!20 (left!595 res!5052)) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 res!5052) (value!1515 (left!595 res!5052)))) (= inst!148 true)))

(declare-fun bs!4574 () Bool)

(assert (= bs!4574 (and b!13525 neg-inst!135)))

(assert (=> (and bs!4574 (= (content!20 (left!595 res!5052)) (content!20 (left!595 tree!126))) (= (value!1515 res!5052) (value!1515 tree!126))) (= inst!148 true)))

(declare-fun bs!4575 () Bool)

(assert (= bs!4575 (and b!13525 b!13499)))

(assert (=> (and bs!4575 (= (content!20 (left!595 res!5052)) (content!20 (left!595 (right!598 res!5052)))) (= (value!1515 res!5052) (value!1515 (right!598 res!5052)))) (= inst!148 inst!140)))

(declare-fun bs!4576 () Bool)

(assert (= bs!4576 (and b!13525 neg-inst!129)))

(assert (=> (and bs!4576 (= (content!20 (left!595 res!5052)) (content!20 (left!595 (right!598 res!5052)))) (= (value!1515 res!5052) (value!1515 (right!598 res!5052)))) (= inst!148 true)))

(declare-fun b!13526 () Bool)

(declare-fun m!17239 () Bool)

(assert (=> b!13526 m!17239))

(declare-fun inst!149 () Bool)

(declare-fun x!7665 () Int)

(assert (=> b!13526 (= inst!149 (=> true (or (not (member x!7665 (content!20 (right!598 res!5052)))) (< (value!1515 res!5052) x!7665))))))

(declare-fun m!17241 () Bool)

(assert (=> b!13526 m!17241))

(declare-fun bs!4577 () Bool)

(assert (= bs!4577 (and b!13526 neg-inst!134)))

(assert (=> (and bs!4577 (= (content!20 (right!598 res!5052)) (content!20 (right!598 tree!126))) (= (value!1515 res!5052) (value!1515 tree!126))) (= inst!149 true)))

(declare-fun bs!4578 () Bool)

(assert (= bs!4578 (and b!13526 b!13498)))

(assert (=> (and bs!4578 (= (content!20 (right!598 res!5052)) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 res!5052) (value!1515 (left!595 res!5052)))) (= inst!149 inst!139)))

(declare-fun bs!4579 () Bool)

(assert (= bs!4579 (and b!13526 neg-inst!132)))

(assert (=> (and bs!4579 (= (content!20 (right!598 res!5052)) (content!20 (right!598 (right!598 tree!126)))) (= (value!1515 res!5052) (value!1515 (right!598 tree!126)))) (= inst!149 true)))

(declare-fun bs!4580 () Bool)

(assert (= bs!4580 (and b!13526 b!13500)))

(assert (=> (and bs!4580 (= (content!20 (right!598 res!5052)) (content!20 (right!598 (right!598 res!5052)))) (= (value!1515 res!5052) (value!1515 (right!598 res!5052)))) (= inst!149 inst!141)))

(declare-fun bs!4581 () Bool)

(assert (= bs!4581 (and b!13526 b!13524)))

(assert (=> (and bs!4581 (= (content!20 (right!598 res!5052)) (content!20 (right!598 tree!126))) (= (value!1515 res!5052) (value!1515 tree!126))) (= inst!149 inst!147)))

(declare-fun bs!4582 () Bool)

(assert (= bs!4582 (and b!13526 b!13502)))

(assert (=> (and bs!4582 (= (content!20 (right!598 res!5052)) (content!20 (right!598 (left!595 tree!126)))) (= (value!1515 res!5052) (value!1515 (left!595 tree!126)))) (= inst!149 inst!143)))

(declare-fun bs!4583 () Bool)

(assert (= bs!4583 (and b!13526 neg-inst!128)))

(assert (=> (and bs!4583 (= (content!20 (right!598 res!5052)) (content!20 (right!598 (right!598 res!5052)))) (= (value!1515 res!5052) (value!1515 (right!598 res!5052)))) (= inst!149 true)))

(declare-fun bs!4584 () Bool)

(assert (= bs!4584 (and b!13526 b!13504)))

(assert (=> (and bs!4584 (= (content!20 (right!598 res!5052)) (content!20 (right!598 (right!598 tree!126)))) (= (value!1515 res!5052) (value!1515 (right!598 tree!126)))) (= inst!149 inst!145)))

(declare-fun bs!4585 () Bool)

(assert (= bs!4585 (and b!13526 neg-inst!126)))

(assert (=> (and bs!4585 (= (content!20 (right!598 res!5052)) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 res!5052) (value!1515 (left!595 res!5052)))) (= inst!149 true)))

(declare-fun bs!4586 () Bool)

(assert (= bs!4586 (and b!13526 neg-inst!130)))

(assert (=> (and bs!4586 (= (content!20 (right!598 res!5052)) (content!20 (right!598 (left!595 tree!126)))) (= (value!1515 res!5052) (value!1515 (left!595 tree!126)))) (= inst!149 true)))

(declare-fun bs!4587 () Bool)

(declare-fun neg-inst!137 () Bool)

(assert (= bs!4587 neg-inst!137))

(assert (=> bs!4587 m!17235))

(declare-fun bs!4588 () Bool)

(declare-fun s!655 () Bool)

(assert (= bs!4588 (and neg-inst!137 s!655)))

(assert (=> bs!4588 (=> true (or (not (member x!7664 (content!20 (left!595 res!5052)))) (< x!7664 (value!1515 res!5052))))))

(assert (=> m!17237 s!655))

(declare-fun bs!4589 () Bool)

(assert (= bs!4589 (and neg-inst!137 neg-inst!133)))

(assert (=> (and bs!4589 (= (content!20 (left!595 res!5052)) (content!20 (left!595 (right!598 tree!126)))) (= (value!1515 res!5052) (value!1515 (right!598 tree!126)))) (= true true)))

(declare-fun bs!4590 () Bool)

(assert (= bs!4590 (and neg-inst!137 b!13503)))

(assert (=> (and bs!4590 (= (content!20 (left!595 res!5052)) (content!20 (left!595 (right!598 tree!126)))) (= (value!1515 res!5052) (value!1515 (right!598 tree!126)))) (= true inst!144)))

(declare-fun bs!4591 () Bool)

(assert (= bs!4591 (and neg-inst!137 b!13523)))

(assert (=> (and bs!4591 (= (content!20 (left!595 res!5052)) (content!20 (left!595 tree!126))) (= (value!1515 res!5052) (value!1515 tree!126))) (= true inst!146)))

(declare-fun bs!4592 () Bool)

(assert (= bs!4592 (and neg-inst!137 b!13497)))

(assert (=> (and bs!4592 (= (content!20 (left!595 res!5052)) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 res!5052) (value!1515 (left!595 res!5052)))) (= true inst!138)))

(declare-fun bs!4593 () Bool)

(assert (= bs!4593 (and neg-inst!137 b!13501)))

(assert (=> (and bs!4593 (= (content!20 (left!595 res!5052)) (content!20 (left!595 (left!595 tree!126)))) (= (value!1515 res!5052) (value!1515 (left!595 tree!126)))) (= true inst!142)))

(declare-fun bs!4594 () Bool)

(assert (= bs!4594 (and neg-inst!137 b!13525)))

(assert (=> bs!4594 (= true inst!148)))

(declare-fun bs!4595 () Bool)

(assert (= bs!4595 (and neg-inst!137 neg-inst!131)))

(assert (=> (and bs!4595 (= (content!20 (left!595 res!5052)) (content!20 (left!595 (left!595 tree!126)))) (= (value!1515 res!5052) (value!1515 (left!595 tree!126)))) (= true true)))

(declare-fun bs!4596 () Bool)

(assert (= bs!4596 (and neg-inst!137 neg-inst!127)))

(assert (=> (and bs!4596 (= (content!20 (left!595 res!5052)) (content!20 (left!595 (left!595 res!5052)))) (= (value!1515 res!5052) (value!1515 (left!595 res!5052)))) (= true true)))

(declare-fun bs!4597 () Bool)

(assert (= bs!4597 (and neg-inst!137 neg-inst!135)))

(assert (=> (and bs!4597 (= (content!20 (left!595 res!5052)) (content!20 (left!595 tree!126))) (= (value!1515 res!5052) (value!1515 tree!126))) (= true true)))

(declare-fun bs!4598 () Bool)

(assert (= bs!4598 (and neg-inst!137 b!13499)))

(assert (=> (and bs!4598 (= (content!20 (left!595 res!5052)) (content!20 (left!595 (right!598 res!5052)))) (= (value!1515 res!5052) (value!1515 (right!598 res!5052)))) (= true inst!140)))

(declare-fun bs!4599 () Bool)

(assert (= bs!4599 (and neg-inst!137 neg-inst!129)))

(assert (=> (and bs!4599 (= (content!20 (left!595 res!5052)) (content!20 (left!595 (right!598 res!5052)))) (= (value!1515 res!5052) (value!1515 (right!598 res!5052)))) (= true true)))

(declare-fun bs!4600 () Bool)

(declare-fun neg-inst!136 () Bool)

(assert (= bs!4600 neg-inst!136))

(assert (=> bs!4600 m!17239))

(declare-fun bs!4601 () Bool)

(declare-fun s!657 () Bool)

(assert (= bs!4601 (and neg-inst!136 s!657)))

(assert (=> bs!4601 (=> true (or (not (member x!7665 (content!20 (right!598 res!5052)))) (< (value!1515 res!5052) x!7665)))))

(assert (=> m!17241 s!657))

(declare-fun bs!4602 () Bool)

(assert (= bs!4602 (and neg-inst!136 neg-inst!134)))

(assert (=> (and bs!4602 (= (content!20 (right!598 res!5052)) (content!20 (right!598 tree!126))) (= (value!1515 res!5052) (value!1515 tree!126))) (= true true)))

(declare-fun bs!4603 () Bool)

(assert (= bs!4603 (and neg-inst!136 b!13498)))

(assert (=> (and bs!4603 (= (content!20 (right!598 res!5052)) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 res!5052) (value!1515 (left!595 res!5052)))) (= true inst!139)))

(declare-fun bs!4604 () Bool)

(assert (= bs!4604 (and neg-inst!136 neg-inst!132)))

(assert (=> (and bs!4604 (= (content!20 (right!598 res!5052)) (content!20 (right!598 (right!598 tree!126)))) (= (value!1515 res!5052) (value!1515 (right!598 tree!126)))) (= true true)))

(declare-fun bs!4605 () Bool)

(assert (= bs!4605 (and neg-inst!136 b!13500)))

(assert (=> (and bs!4605 (= (content!20 (right!598 res!5052)) (content!20 (right!598 (right!598 res!5052)))) (= (value!1515 res!5052) (value!1515 (right!598 res!5052)))) (= true inst!141)))

(declare-fun bs!4606 () Bool)

(assert (= bs!4606 (and neg-inst!136 b!13524)))

(assert (=> (and bs!4606 (= (content!20 (right!598 res!5052)) (content!20 (right!598 tree!126))) (= (value!1515 res!5052) (value!1515 tree!126))) (= true inst!147)))

(declare-fun bs!4607 () Bool)

(assert (= bs!4607 (and neg-inst!136 b!13502)))

(assert (=> (and bs!4607 (= (content!20 (right!598 res!5052)) (content!20 (right!598 (left!595 tree!126)))) (= (value!1515 res!5052) (value!1515 (left!595 tree!126)))) (= true inst!143)))

(declare-fun bs!4608 () Bool)

(assert (= bs!4608 (and neg-inst!136 b!13526)))

(assert (=> bs!4608 (= true inst!149)))

(declare-fun bs!4609 () Bool)

(assert (= bs!4609 (and neg-inst!136 neg-inst!128)))

(assert (=> (and bs!4609 (= (content!20 (right!598 res!5052)) (content!20 (right!598 (right!598 res!5052)))) (= (value!1515 res!5052) (value!1515 (right!598 res!5052)))) (= true true)))

(declare-fun bs!4610 () Bool)

(assert (= bs!4610 (and neg-inst!136 b!13504)))

(assert (=> (and bs!4610 (= (content!20 (right!598 res!5052)) (content!20 (right!598 (right!598 tree!126)))) (= (value!1515 res!5052) (value!1515 (right!598 tree!126)))) (= true inst!145)))

(declare-fun bs!4611 () Bool)

(assert (= bs!4611 (and neg-inst!136 neg-inst!126)))

(assert (=> (and bs!4611 (= (content!20 (right!598 res!5052)) (content!20 (right!598 (left!595 res!5052)))) (= (value!1515 res!5052) (value!1515 (left!595 res!5052)))) (= true true)))

(declare-fun bs!4612 () Bool)

(assert (= bs!4612 (and neg-inst!136 neg-inst!130)))

(assert (=> (and bs!4612 (= (content!20 (right!598 res!5052)) (content!20 (right!598 (left!595 tree!126)))) (= (value!1515 res!5052) (value!1515 (left!595 tree!126)))) (= true true)))

(declare-fun d!10366 () Bool)

(declare-fun res!5136 () Bool)

(declare-fun e!7458 () Bool)

(assert (=> d!10366 (=> res!5136 e!7458)))

(assert (=> d!10366 (= res!5136 (not (is-Node!28 res!5052)))))

(assert (=> d!10366 (= (inv!443 res!5052) e!7458)))

(declare-fun e!7457 () Bool)

(assert (=> b!13525 (= e!7458 e!7457)))

(declare-fun res!5137 () Bool)

(assert (=> b!13525 (=> (not res!5137) (not e!7457))))

(assert (=> b!13525 (= res!5137 inst!148)))

(assert (=> b!13526 (= e!7457 inst!149)))

(assert (= (and d!10366 (not res!5136)) b!13525))

(assert (= neg-inst!137 inst!148))

(assert (= (and b!13525 res!5137) b!13526))

(assert (= neg-inst!136 inst!149))

(assert (=> start!2748 d!10366))

(declare-fun d!10368 () Bool)

(declare-fun c!3764 () Bool)

(assert (=> d!10368 (= c!3764 (is-Leaf!179 res!5052))))

(declare-fun e!7461 () (Set Int))

(assert (=> d!10368 (= (content!20 res!5052) e!7461)))

(declare-fun b!13531 () Bool)

(assert (=> b!13531 (= e!7461 (as emptyset (Set Int)))))

(declare-fun b!13532 () Bool)

(assert (=> b!13532 (= e!7461 (union (union (content!20 (left!595 res!5052)) (insert (value!1515 res!5052) (as emptyset (Set Int)))) (content!20 (right!598 res!5052))))))

(assert (= (and d!10368 c!3764) b!13531))

(assert (= (and d!10368 (not c!3764)) b!13532))

(assert (=> b!13532 m!17235))

(declare-fun m!17243 () Bool)

(assert (=> b!13532 m!17243))

(assert (=> b!13532 m!17239))

(assert (=> b!13490 d!10368))

(declare-fun d!10370 () Bool)

(declare-fun c!3765 () Bool)

(assert (=> d!10370 (= c!3765 (is-Leaf!179 tree!126))))

(declare-fun e!7462 () (Set Int))

(assert (=> d!10370 (= (content!20 tree!126) e!7462)))

(declare-fun b!13533 () Bool)

(assert (=> b!13533 (= e!7462 (as emptyset (Set Int)))))

(declare-fun b!13534 () Bool)

(assert (=> b!13534 (= e!7462 (union (union (content!20 (left!595 tree!126)) (insert (value!1515 tree!126) (as emptyset (Set Int)))) (content!20 (right!598 tree!126))))))

(assert (= (and d!10370 c!3765) b!13533))

(assert (= (and d!10370 (not c!3765)) b!13534))

(assert (=> b!13534 m!17225))

(declare-fun m!17245 () Bool)

(assert (=> b!13534 m!17245))

(assert (=> b!13534 m!17231))

(assert (=> b!13490 d!10370))

(declare-fun tp!3363 () Bool)

(declare-fun e!7465 () Bool)

(declare-fun b!13539 () Bool)

(declare-fun tp!3362 () Bool)

(assert (=> b!13539 (= e!7465 (and (inv!443 (left!595 (left!595 res!5052))) tp!3362 (inv!443 (right!598 (left!595 res!5052))) tp!3363))))

(assert (=> b!13492 (= tp!3351 (and (inv!443 (left!595 res!5052)) e!7465))))

(assert (= (and b!13492 (is-Node!28 (left!595 res!5052))) b!13539))

(declare-fun m!17247 () Bool)

(assert (=> b!13539 m!17247))

(declare-fun m!17249 () Bool)

(assert (=> b!13539 m!17249))

(assert (=> b!13492 m!17179))

(declare-fun tp!3364 () Bool)

(declare-fun e!7466 () Bool)

(declare-fun tp!3365 () Bool)

(declare-fun b!13540 () Bool)

(assert (=> b!13540 (= e!7466 (and (inv!443 (left!595 (right!598 res!5052))) tp!3364 (inv!443 (right!598 (right!598 res!5052))) tp!3365))))

(assert (=> b!13492 (= tp!3350 (and (inv!443 (right!598 res!5052)) e!7466))))

(assert (= (and b!13492 (is-Node!28 (right!598 res!5052))) b!13540))

(declare-fun m!17251 () Bool)

(assert (=> b!13540 m!17251))

(declare-fun m!17253 () Bool)

(assert (=> b!13540 m!17253))

(assert (=> b!13492 m!17181))

(declare-fun tp!3366 () Bool)

(declare-fun b!13541 () Bool)

(declare-fun tp!3367 () Bool)

(declare-fun e!7467 () Bool)

(assert (=> b!13541 (= e!7467 (and (inv!443 (left!595 (left!595 tree!126))) tp!3366 (inv!443 (right!598 (left!595 tree!126))) tp!3367))))

(assert (=> b!13491 (= tp!3349 (and (inv!443 (left!595 tree!126)) e!7467))))

(assert (= (and b!13491 (is-Node!28 (left!595 tree!126))) b!13541))

(declare-fun m!17255 () Bool)

(assert (=> b!13541 m!17255))

(declare-fun m!17257 () Bool)

(assert (=> b!13541 m!17257))

(assert (=> b!13491 m!17169))

(declare-fun e!7468 () Bool)

(declare-fun tp!3369 () Bool)

(declare-fun tp!3368 () Bool)

(declare-fun b!13542 () Bool)

(assert (=> b!13542 (= e!7468 (and (inv!443 (left!595 (right!598 tree!126))) tp!3368 (inv!443 (right!598 (right!598 tree!126))) tp!3369))))

(assert (=> b!13491 (= tp!3348 (and (inv!443 (right!598 tree!126)) e!7468))))

(assert (= (and b!13491 (is-Node!28 (right!598 tree!126))) b!13542))

(declare-fun m!17259 () Bool)

(assert (=> b!13542 m!17259))

(declare-fun m!17261 () Bool)

(assert (=> b!13542 m!17261))

(assert (=> b!13491 m!17171))

(push 1)

(assert (not b!13539))

(assert (not neg-inst!137))

(assert (not b!13492))

(assert (not b!13526))

(assert (not b!13520))

(assert (not b!13540))

(assert (not b!13502))

(assert (not b!13501))

(assert (not b!13499))

(assert (not b!13491))

(assert (not neg-inst!127))

(assert (not neg-inst!135))

(assert (not b!13542))

(assert (not b!13523))

(assert (not b!13500))

(assert (not neg-inst!128))

(assert (not b!13517))

(assert (not neg-inst!136))

(assert (not neg-inst!129))

(assert (not neg-inst!134))

(assert (not neg-inst!132))

(assert (not b!13518))

(assert (not b!13524))

(assert (not b!13541))

(assert (not neg-inst!131))

(assert (not b!13504))

(assert (not b!13532))

(assert (not b!13525))

(assert (not neg-inst!126))

(assert (not b!13521))

(assert (not b!13534))

(assert (not neg-inst!133))

(assert (not b!13498))

(assert (not neg-inst!130))

(assert (not b!13503))

(assert (not b!13497))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

