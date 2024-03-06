; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2756 () Bool)

(assert start!2756)

(declare-fun res!5140 () Bool)

(declare-fun e!7475 () Bool)

(assert (=> start!2756 (=> (not res!5140) (not e!7475))))

(declare-datatypes () ((Tree!98 (Leaf!180) (Node!29 (left!596 Tree!98) (value!1517 Int) (right!599 Tree!98)))))

(declare-fun res!5054 () Tree!98)

(declare-fun value!1495 () Int)

(declare-fun tree!126 () Tree!98)

(assert (=> start!2756 (= res!5140 (and (not (is-Leaf!180 tree!126)) (>= (value!1517 tree!126) value!1495) (<= (value!1517 tree!126) value!1495) (= res!5054 tree!126)))))

(assert (=> start!2756 e!7475))

(declare-fun e!7477 () Bool)

(declare-fun inv!443 (Tree!98) Bool)

(assert (=> start!2756 (and (inv!443 tree!126) e!7477)))

(assert (=> start!2756 true))

(declare-fun e!7476 () Bool)

(assert (=> start!2756 (and (inv!443 res!5054) e!7476)))

(declare-fun b!13549 () Bool)

(declare-fun content!20 (Tree!98) (Set Int))

(assert (=> b!13549 (= e!7475 (not (= (content!20 res!5054) (union (content!20 tree!126) (insert value!1495 (as emptyset (Set Int)))))))))

(assert (=> b!13549 (is-Node!29 res!5054)))

(declare-fun b!13550 () Bool)

(declare-fun tp!3380 () Bool)

(declare-fun tp!3378 () Bool)

(assert (=> b!13550 (= e!7477 (and (inv!443 (left!596 tree!126)) tp!3378 (inv!443 (right!599 tree!126)) tp!3380))))

(declare-fun tp!3381 () Bool)

(declare-fun b!13551 () Bool)

(declare-fun tp!3379 () Bool)

(assert (=> b!13551 (= e!7476 (and (inv!443 (left!596 res!5054)) tp!3379 (inv!443 (right!599 res!5054)) tp!3381))))

(assert (= (and start!2756 res!5140) b!13549))

(assert (= (and start!2756 (is-Node!29 tree!126)) b!13550))

(assert (= (and start!2756 (is-Node!29 res!5054)) b!13551))

(declare-fun m!17263 () Bool)

(assert (=> start!2756 m!17263))

(declare-fun m!17265 () Bool)

(assert (=> start!2756 m!17265))

(declare-fun m!17267 () Bool)

(assert (=> b!13549 m!17267))

(declare-fun m!17269 () Bool)

(assert (=> b!13549 m!17269))

(declare-fun m!17271 () Bool)

(assert (=> b!13549 m!17271))

(declare-fun m!17273 () Bool)

(assert (=> b!13550 m!17273))

(declare-fun m!17275 () Bool)

(assert (=> b!13550 m!17275))

(declare-fun m!17277 () Bool)

(assert (=> b!13551 m!17277))

(declare-fun m!17279 () Bool)

(assert (=> b!13551 m!17279))

(push 1)

(assert (not b!13549))

(assert (not start!2756))

(assert (not b!13551))

(assert (not b!13550))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10372 () Bool)

(declare-fun c!3768 () Bool)

(assert (=> d!10372 (= c!3768 (is-Leaf!180 res!5054))))

(declare-fun e!7480 () (Set Int))

(assert (=> d!10372 (= (content!20 res!5054) e!7480)))

(declare-fun b!13556 () Bool)

(assert (=> b!13556 (= e!7480 (as emptyset (Set Int)))))

(declare-fun b!13557 () Bool)

(assert (=> b!13557 (= e!7480 (union (union (content!20 (left!596 res!5054)) (insert (value!1517 res!5054) (as emptyset (Set Int)))) (content!20 (right!599 res!5054))))))

(assert (= (and d!10372 c!3768) b!13556))

(assert (= (and d!10372 (not c!3768)) b!13557))

(declare-fun m!17281 () Bool)

(assert (=> b!13557 m!17281))

(declare-fun m!17283 () Bool)

(assert (=> b!13557 m!17283))

(declare-fun m!17285 () Bool)

(assert (=> b!13557 m!17285))

(assert (=> b!13549 d!10372))

(declare-fun d!10374 () Bool)

(declare-fun c!3769 () Bool)

(assert (=> d!10374 (= c!3769 (is-Leaf!180 tree!126))))

(declare-fun e!7481 () (Set Int))

(assert (=> d!10374 (= (content!20 tree!126) e!7481)))

(declare-fun b!13558 () Bool)

(assert (=> b!13558 (= e!7481 (as emptyset (Set Int)))))

(declare-fun b!13559 () Bool)

(assert (=> b!13559 (= e!7481 (union (union (content!20 (left!596 tree!126)) (insert (value!1517 tree!126) (as emptyset (Set Int)))) (content!20 (right!599 tree!126))))))

(assert (= (and d!10374 c!3769) b!13558))

(assert (= (and d!10374 (not c!3769)) b!13559))

(declare-fun m!17287 () Bool)

(assert (=> b!13559 m!17287))

(declare-fun m!17289 () Bool)

(assert (=> b!13559 m!17289))

(declare-fun m!17291 () Bool)

(assert (=> b!13559 m!17291))

(assert (=> b!13549 d!10374))

(declare-fun b!13564 () Bool)

(assert (=> b!13564 m!17287))

(declare-fun inst!154 () Bool)

(declare-fun x!7686 () Int)

(assert (=> b!13564 (= inst!154 (=> true (or (not (member x!7686 (content!20 (left!596 tree!126)))) (< x!7686 (value!1517 tree!126)))))))

(declare-fun m!17293 () Bool)

(assert (=> b!13564 m!17293))

(declare-fun b!13565 () Bool)

(assert (=> b!13565 m!17291))

(declare-fun inst!155 () Bool)

(declare-fun x!7687 () Int)

(assert (=> b!13565 (= inst!155 (=> true (or (not (member x!7687 (content!20 (right!599 tree!126)))) (< (value!1517 tree!126) x!7687))))))

(declare-fun m!17295 () Bool)

(assert (=> b!13565 m!17295))

(declare-fun bs!4614 () Bool)

(declare-fun neg-inst!143 () Bool)

(assert (= bs!4614 neg-inst!143))

(assert (=> bs!4614 m!17287))

(declare-fun bs!4615 () Bool)

(declare-fun s!659 () Bool)

(assert (= bs!4615 (and neg-inst!143 s!659)))

(assert (=> bs!4615 (=> true (or (not (member x!7686 (content!20 (left!596 tree!126)))) (< x!7686 (value!1517 tree!126))))))

(assert (=> m!17293 s!659))

(declare-fun bs!4616 () Bool)

(assert (= bs!4616 (and neg-inst!143 b!13564)))

(assert (=> bs!4616 (= true inst!154)))

(declare-fun bs!4617 () Bool)

(declare-fun neg-inst!142 () Bool)

(assert (= bs!4617 neg-inst!142))

(assert (=> bs!4617 m!17291))

(declare-fun bs!4618 () Bool)

(declare-fun s!661 () Bool)

(assert (= bs!4618 (and neg-inst!142 s!661)))

(assert (=> bs!4618 (=> true (or (not (member x!7687 (content!20 (right!599 tree!126)))) (< (value!1517 tree!126) x!7687)))))

(assert (=> m!17295 s!661))

(declare-fun bs!4619 () Bool)

(assert (= bs!4619 (and neg-inst!142 b!13565)))

(assert (=> bs!4619 (= true inst!155)))

(declare-fun d!10376 () Bool)

(declare-fun res!5146 () Bool)

(declare-fun e!7486 () Bool)

(assert (=> d!10376 (=> res!5146 e!7486)))

(assert (=> d!10376 (= res!5146 (not (is-Node!29 tree!126)))))

(assert (=> d!10376 (= (inv!443 tree!126) e!7486)))

(declare-fun e!7487 () Bool)

(assert (=> b!13564 (= e!7486 e!7487)))

(declare-fun res!5145 () Bool)

(assert (=> b!13564 (=> (not res!5145) (not e!7487))))

(assert (=> b!13564 (= res!5145 inst!154)))

(assert (=> b!13565 (= e!7487 inst!155)))

(assert (= (and d!10376 (not res!5146)) b!13564))

(assert (= neg-inst!143 inst!154))

(assert (= (and b!13564 res!5145) b!13565))

(assert (= neg-inst!142 inst!155))

(assert (=> start!2756 d!10376))

(declare-fun b!13566 () Bool)

(assert (=> b!13566 m!17281))

(declare-fun inst!156 () Bool)

(declare-fun x!7688 () Int)

(assert (=> b!13566 (= inst!156 (=> true (or (not (member x!7688 (content!20 (left!596 res!5054)))) (< x!7688 (value!1517 res!5054)))))))

(declare-fun m!17297 () Bool)

(assert (=> b!13566 m!17297))

(declare-fun bs!4620 () Bool)

(assert (= bs!4620 (and b!13566 b!13564)))

(assert (=> (and bs!4620 (= (content!20 (left!596 res!5054)) (content!20 (left!596 tree!126))) (= (value!1517 res!5054) (value!1517 tree!126))) (= inst!156 inst!154)))

(declare-fun bs!4621 () Bool)

(assert (= bs!4621 (and b!13566 neg-inst!143)))

(assert (=> (and bs!4621 (= (content!20 (left!596 res!5054)) (content!20 (left!596 tree!126))) (= (value!1517 res!5054) (value!1517 tree!126))) (= inst!156 true)))

(declare-fun b!13567 () Bool)

(assert (=> b!13567 m!17285))

(declare-fun inst!157 () Bool)

(declare-fun x!7689 () Int)

(assert (=> b!13567 (= inst!157 (=> true (or (not (member x!7689 (content!20 (right!599 res!5054)))) (< (value!1517 res!5054) x!7689))))))

(declare-fun m!17299 () Bool)

(assert (=> b!13567 m!17299))

(declare-fun bs!4622 () Bool)

(assert (= bs!4622 (and b!13567 b!13565)))

(assert (=> (and bs!4622 (= (content!20 (right!599 res!5054)) (content!20 (right!599 tree!126))) (= (value!1517 res!5054) (value!1517 tree!126))) (= inst!157 inst!155)))

(declare-fun bs!4623 () Bool)

(assert (= bs!4623 (and b!13567 neg-inst!142)))

(assert (=> (and bs!4623 (= (content!20 (right!599 res!5054)) (content!20 (right!599 tree!126))) (= (value!1517 res!5054) (value!1517 tree!126))) (= inst!157 true)))

(declare-fun bs!4624 () Bool)

(declare-fun neg-inst!145 () Bool)

(assert (= bs!4624 neg-inst!145))

(assert (=> bs!4624 m!17281))

(declare-fun bs!4625 () Bool)

(declare-fun s!663 () Bool)

(assert (= bs!4625 (and neg-inst!145 s!663)))

(assert (=> bs!4625 (=> true (or (not (member x!7688 (content!20 (left!596 res!5054)))) (< x!7688 (value!1517 res!5054))))))

(assert (=> m!17297 s!663))

(declare-fun bs!4626 () Bool)

(assert (= bs!4626 (and neg-inst!145 b!13566)))

(assert (=> bs!4626 (= true inst!156)))

(declare-fun bs!4627 () Bool)

(assert (= bs!4627 (and neg-inst!145 b!13564)))

(assert (=> (and bs!4627 (= (content!20 (left!596 res!5054)) (content!20 (left!596 tree!126))) (= (value!1517 res!5054) (value!1517 tree!126))) (= true inst!154)))

(declare-fun bs!4628 () Bool)

(assert (= bs!4628 (and neg-inst!145 neg-inst!143)))

(assert (=> (and bs!4628 (= (content!20 (left!596 res!5054)) (content!20 (left!596 tree!126))) (= (value!1517 res!5054) (value!1517 tree!126))) (= true true)))

(declare-fun bs!4629 () Bool)

(declare-fun neg-inst!144 () Bool)

(assert (= bs!4629 neg-inst!144))

(assert (=> bs!4629 m!17285))

(declare-fun bs!4630 () Bool)

(declare-fun s!665 () Bool)

(assert (= bs!4630 (and neg-inst!144 s!665)))

(assert (=> bs!4630 (=> true (or (not (member x!7689 (content!20 (right!599 res!5054)))) (< (value!1517 res!5054) x!7689)))))

(assert (=> m!17299 s!665))

(declare-fun bs!4631 () Bool)

(assert (= bs!4631 (and neg-inst!144 b!13565)))

(assert (=> (and bs!4631 (= (content!20 (right!599 res!5054)) (content!20 (right!599 tree!126))) (= (value!1517 res!5054) (value!1517 tree!126))) (= true inst!155)))

(declare-fun bs!4632 () Bool)

(assert (= bs!4632 (and neg-inst!144 neg-inst!142)))

(assert (=> (and bs!4632 (= (content!20 (right!599 res!5054)) (content!20 (right!599 tree!126))) (= (value!1517 res!5054) (value!1517 tree!126))) (= true true)))

(declare-fun bs!4633 () Bool)

(assert (= bs!4633 (and neg-inst!144 b!13567)))

(assert (=> bs!4633 (= true inst!157)))

(declare-fun d!10378 () Bool)

(declare-fun res!5148 () Bool)

(declare-fun e!7488 () Bool)

(assert (=> d!10378 (=> res!5148 e!7488)))

(assert (=> d!10378 (= res!5148 (not (is-Node!29 res!5054)))))

(assert (=> d!10378 (= (inv!443 res!5054) e!7488)))

(declare-fun e!7489 () Bool)

(assert (=> b!13566 (= e!7488 e!7489)))

(declare-fun res!5147 () Bool)

(assert (=> b!13566 (=> (not res!5147) (not e!7489))))

(assert (=> b!13566 (= res!5147 inst!156)))

(assert (=> b!13567 (= e!7489 inst!157)))

(assert (= (and d!10378 (not res!5148)) b!13566))

(assert (= neg-inst!145 inst!156))

(assert (= (and b!13566 res!5147) b!13567))

(assert (= neg-inst!144 inst!157))

(assert (=> start!2756 d!10378))

(declare-fun b!13568 () Bool)

(declare-fun m!17301 () Bool)

(assert (=> b!13568 m!17301))

(declare-fun inst!158 () Bool)

(declare-fun x!7690 () Int)

(assert (=> b!13568 (= inst!158 (=> true (or (not (member x!7690 (content!20 (left!596 (left!596 res!5054))))) (< x!7690 (value!1517 (left!596 res!5054))))))))

(declare-fun m!17303 () Bool)

(assert (=> b!13568 m!17303))

(declare-fun bs!4634 () Bool)

(assert (= bs!4634 (and b!13568 b!13566)))

(assert (=> (and bs!4634 (= (content!20 (left!596 (left!596 res!5054))) (content!20 (left!596 res!5054))) (= (value!1517 (left!596 res!5054)) (value!1517 res!5054))) (= inst!158 inst!156)))

(declare-fun bs!4635 () Bool)

(assert (= bs!4635 (and b!13568 b!13564)))

(assert (=> (and bs!4635 (= (content!20 (left!596 (left!596 res!5054))) (content!20 (left!596 tree!126))) (= (value!1517 (left!596 res!5054)) (value!1517 tree!126))) (= inst!158 inst!154)))

(declare-fun bs!4636 () Bool)

(assert (= bs!4636 (and b!13568 neg-inst!143)))

(assert (=> (and bs!4636 (= (content!20 (left!596 (left!596 res!5054))) (content!20 (left!596 tree!126))) (= (value!1517 (left!596 res!5054)) (value!1517 tree!126))) (= inst!158 true)))

(declare-fun bs!4637 () Bool)

(assert (= bs!4637 (and b!13568 neg-inst!145)))

(assert (=> (and bs!4637 (= (content!20 (left!596 (left!596 res!5054))) (content!20 (left!596 res!5054))) (= (value!1517 (left!596 res!5054)) (value!1517 res!5054))) (= inst!158 true)))

(declare-fun b!13569 () Bool)

(declare-fun m!17305 () Bool)

(assert (=> b!13569 m!17305))

(declare-fun inst!159 () Bool)

(declare-fun x!7691 () Int)

(assert (=> b!13569 (= inst!159 (=> true (or (not (member x!7691 (content!20 (right!599 (left!596 res!5054))))) (< (value!1517 (left!596 res!5054)) x!7691))))))

(declare-fun m!17307 () Bool)

(assert (=> b!13569 m!17307))

(declare-fun bs!4638 () Bool)

(assert (= bs!4638 (and b!13569 b!13565)))

(assert (=> (and bs!4638 (= (content!20 (right!599 (left!596 res!5054))) (content!20 (right!599 tree!126))) (= (value!1517 (left!596 res!5054)) (value!1517 tree!126))) (= inst!159 inst!155)))

(declare-fun bs!4639 () Bool)

(assert (= bs!4639 (and b!13569 neg-inst!142)))

(assert (=> (and bs!4639 (= (content!20 (right!599 (left!596 res!5054))) (content!20 (right!599 tree!126))) (= (value!1517 (left!596 res!5054)) (value!1517 tree!126))) (= inst!159 true)))

(declare-fun bs!4640 () Bool)

(assert (= bs!4640 (and b!13569 neg-inst!144)))

(assert (=> (and bs!4640 (= (content!20 (right!599 (left!596 res!5054))) (content!20 (right!599 res!5054))) (= (value!1517 (left!596 res!5054)) (value!1517 res!5054))) (= inst!159 true)))

(declare-fun bs!4641 () Bool)

(assert (= bs!4641 (and b!13569 b!13567)))

(assert (=> (and bs!4641 (= (content!20 (right!599 (left!596 res!5054))) (content!20 (right!599 res!5054))) (= (value!1517 (left!596 res!5054)) (value!1517 res!5054))) (= inst!159 inst!157)))

(declare-fun bs!4642 () Bool)

(declare-fun neg-inst!147 () Bool)

(assert (= bs!4642 neg-inst!147))

(assert (=> bs!4642 m!17301))

(declare-fun bs!4643 () Bool)

(declare-fun s!667 () Bool)

(assert (= bs!4643 (and neg-inst!147 s!667)))

(assert (=> bs!4643 (=> true (or (not (member x!7690 (content!20 (left!596 (left!596 res!5054))))) (< x!7690 (value!1517 (left!596 res!5054)))))))

(assert (=> m!17303 s!667))

(declare-fun bs!4644 () Bool)

(assert (= bs!4644 (and neg-inst!147 b!13566)))

(assert (=> (and bs!4644 (= (content!20 (left!596 (left!596 res!5054))) (content!20 (left!596 res!5054))) (= (value!1517 (left!596 res!5054)) (value!1517 res!5054))) (= true inst!156)))

(declare-fun bs!4645 () Bool)

(assert (= bs!4645 (and neg-inst!147 b!13564)))

(assert (=> (and bs!4645 (= (content!20 (left!596 (left!596 res!5054))) (content!20 (left!596 tree!126))) (= (value!1517 (left!596 res!5054)) (value!1517 tree!126))) (= true inst!154)))

(declare-fun bs!4646 () Bool)

(assert (= bs!4646 (and neg-inst!147 b!13568)))

(assert (=> bs!4646 (= true inst!158)))

(declare-fun bs!4647 () Bool)

(assert (= bs!4647 (and neg-inst!147 neg-inst!143)))

(assert (=> (and bs!4647 (= (content!20 (left!596 (left!596 res!5054))) (content!20 (left!596 tree!126))) (= (value!1517 (left!596 res!5054)) (value!1517 tree!126))) (= true true)))

(declare-fun bs!4648 () Bool)

(assert (= bs!4648 (and neg-inst!147 neg-inst!145)))

(assert (=> (and bs!4648 (= (content!20 (left!596 (left!596 res!5054))) (content!20 (left!596 res!5054))) (= (value!1517 (left!596 res!5054)) (value!1517 res!5054))) (= true true)))

(declare-fun bs!4649 () Bool)

(declare-fun neg-inst!146 () Bool)

(assert (= bs!4649 neg-inst!146))

(assert (=> bs!4649 m!17305))

(declare-fun bs!4650 () Bool)

(declare-fun s!669 () Bool)

(assert (= bs!4650 (and neg-inst!146 s!669)))

(assert (=> bs!4650 (=> true (or (not (member x!7691 (content!20 (right!599 (left!596 res!5054))))) (< (value!1517 (left!596 res!5054)) x!7691)))))

(assert (=> m!17307 s!669))

(declare-fun bs!4651 () Bool)

(assert (= bs!4651 (and neg-inst!146 b!13565)))

(assert (=> (and bs!4651 (= (content!20 (right!599 (left!596 res!5054))) (content!20 (right!599 tree!126))) (= (value!1517 (left!596 res!5054)) (value!1517 tree!126))) (= true inst!155)))

(declare-fun bs!4652 () Bool)

(assert (= bs!4652 (and neg-inst!146 neg-inst!142)))

(assert (=> (and bs!4652 (= (content!20 (right!599 (left!596 res!5054))) (content!20 (right!599 tree!126))) (= (value!1517 (left!596 res!5054)) (value!1517 tree!126))) (= true true)))

(declare-fun bs!4653 () Bool)

(assert (= bs!4653 (and neg-inst!146 neg-inst!144)))

(assert (=> (and bs!4653 (= (content!20 (right!599 (left!596 res!5054))) (content!20 (right!599 res!5054))) (= (value!1517 (left!596 res!5054)) (value!1517 res!5054))) (= true true)))

(declare-fun bs!4654 () Bool)

(assert (= bs!4654 (and neg-inst!146 b!13569)))

(assert (=> bs!4654 (= true inst!159)))

(declare-fun bs!4655 () Bool)

(assert (= bs!4655 (and neg-inst!146 b!13567)))

(assert (=> (and bs!4655 (= (content!20 (right!599 (left!596 res!5054))) (content!20 (right!599 res!5054))) (= (value!1517 (left!596 res!5054)) (value!1517 res!5054))) (= true inst!157)))

(declare-fun d!10380 () Bool)

(declare-fun res!5150 () Bool)

(declare-fun e!7490 () Bool)

(assert (=> d!10380 (=> res!5150 e!7490)))

(assert (=> d!10380 (= res!5150 (not (is-Node!29 (left!596 res!5054))))))

(assert (=> d!10380 (= (inv!443 (left!596 res!5054)) e!7490)))

(declare-fun e!7491 () Bool)

(assert (=> b!13568 (= e!7490 e!7491)))

(declare-fun res!5149 () Bool)

(assert (=> b!13568 (=> (not res!5149) (not e!7491))))

(assert (=> b!13568 (= res!5149 inst!158)))

(assert (=> b!13569 (= e!7491 inst!159)))

(assert (= (and d!10380 (not res!5150)) b!13568))

(assert (= neg-inst!147 inst!158))

(assert (= (and b!13568 res!5149) b!13569))

(assert (= neg-inst!146 inst!159))

(assert (=> b!13551 d!10380))

(declare-fun b!13570 () Bool)

(declare-fun m!17309 () Bool)

(assert (=> b!13570 m!17309))

(declare-fun inst!160 () Bool)

(declare-fun x!7692 () Int)

(assert (=> b!13570 (= inst!160 (=> true (or (not (member x!7692 (content!20 (left!596 (right!599 res!5054))))) (< x!7692 (value!1517 (right!599 res!5054))))))))

(declare-fun m!17311 () Bool)

(assert (=> b!13570 m!17311))

(declare-fun bs!4656 () Bool)

(assert (= bs!4656 (and b!13570 b!13566)))

(assert (=> (and bs!4656 (= (content!20 (left!596 (right!599 res!5054))) (content!20 (left!596 res!5054))) (= (value!1517 (right!599 res!5054)) (value!1517 res!5054))) (= inst!160 inst!156)))

(declare-fun bs!4657 () Bool)

(assert (= bs!4657 (and b!13570 neg-inst!147)))

(assert (=> (and bs!4657 (= (content!20 (left!596 (right!599 res!5054))) (content!20 (left!596 (left!596 res!5054)))) (= (value!1517 (right!599 res!5054)) (value!1517 (left!596 res!5054)))) (= inst!160 true)))

(declare-fun bs!4658 () Bool)

(assert (= bs!4658 (and b!13570 b!13564)))

(assert (=> (and bs!4658 (= (content!20 (left!596 (right!599 res!5054))) (content!20 (left!596 tree!126))) (= (value!1517 (right!599 res!5054)) (value!1517 tree!126))) (= inst!160 inst!154)))

(declare-fun bs!4659 () Bool)

(assert (= bs!4659 (and b!13570 b!13568)))

(assert (=> (and bs!4659 (= (content!20 (left!596 (right!599 res!5054))) (content!20 (left!596 (left!596 res!5054)))) (= (value!1517 (right!599 res!5054)) (value!1517 (left!596 res!5054)))) (= inst!160 inst!158)))

(declare-fun bs!4660 () Bool)

(assert (= bs!4660 (and b!13570 neg-inst!143)))

(assert (=> (and bs!4660 (= (content!20 (left!596 (right!599 res!5054))) (content!20 (left!596 tree!126))) (= (value!1517 (right!599 res!5054)) (value!1517 tree!126))) (= inst!160 true)))

(declare-fun bs!4661 () Bool)

(assert (= bs!4661 (and b!13570 neg-inst!145)))

(assert (=> (and bs!4661 (= (content!20 (left!596 (right!599 res!5054))) (content!20 (left!596 res!5054))) (= (value!1517 (right!599 res!5054)) (value!1517 res!5054))) (= inst!160 true)))

(declare-fun b!13571 () Bool)

(declare-fun m!17313 () Bool)

(assert (=> b!13571 m!17313))

(declare-fun inst!161 () Bool)

(declare-fun x!7693 () Int)

(assert (=> b!13571 (= inst!161 (=> true (or (not (member x!7693 (content!20 (right!599 (right!599 res!5054))))) (< (value!1517 (right!599 res!5054)) x!7693))))))

(declare-fun m!17315 () Bool)

(assert (=> b!13571 m!17315))

(declare-fun bs!4662 () Bool)

(assert (= bs!4662 (and b!13571 b!13565)))

(assert (=> (and bs!4662 (= (content!20 (right!599 (right!599 res!5054))) (content!20 (right!599 tree!126))) (= (value!1517 (right!599 res!5054)) (value!1517 tree!126))) (= inst!161 inst!155)))

(declare-fun bs!4663 () Bool)

(assert (= bs!4663 (and b!13571 neg-inst!142)))

(assert (=> (and bs!4663 (= (content!20 (right!599 (right!599 res!5054))) (content!20 (right!599 tree!126))) (= (value!1517 (right!599 res!5054)) (value!1517 tree!126))) (= inst!161 true)))

(declare-fun bs!4664 () Bool)

(assert (= bs!4664 (and b!13571 neg-inst!146)))

(assert (=> (and bs!4664 (= (content!20 (right!599 (right!599 res!5054))) (content!20 (right!599 (left!596 res!5054)))) (= (value!1517 (right!599 res!5054)) (value!1517 (left!596 res!5054)))) (= inst!161 true)))

(declare-fun bs!4665 () Bool)

(assert (= bs!4665 (and b!13571 neg-inst!144)))

(assert (=> (and bs!4665 (= (content!20 (right!599 (right!599 res!5054))) (content!20 (right!599 res!5054))) (= (value!1517 (right!599 res!5054)) (value!1517 res!5054))) (= inst!161 true)))

(declare-fun bs!4666 () Bool)

(assert (= bs!4666 (and b!13571 b!13569)))

(assert (=> (and bs!4666 (= (content!20 (right!599 (right!599 res!5054))) (content!20 (right!599 (left!596 res!5054)))) (= (value!1517 (right!599 res!5054)) (value!1517 (left!596 res!5054)))) (= inst!161 inst!159)))

(declare-fun bs!4667 () Bool)

(assert (= bs!4667 (and b!13571 b!13567)))

(assert (=> (and bs!4667 (= (content!20 (right!599 (right!599 res!5054))) (content!20 (right!599 res!5054))) (= (value!1517 (right!599 res!5054)) (value!1517 res!5054))) (= inst!161 inst!157)))

(declare-fun bs!4668 () Bool)

(declare-fun neg-inst!149 () Bool)

(assert (= bs!4668 neg-inst!149))

(assert (=> bs!4668 m!17309))

(declare-fun bs!4669 () Bool)

(declare-fun s!671 () Bool)

(assert (= bs!4669 (and neg-inst!149 s!671)))

(assert (=> bs!4669 (=> true (or (not (member x!7692 (content!20 (left!596 (right!599 res!5054))))) (< x!7692 (value!1517 (right!599 res!5054)))))))

(assert (=> m!17311 s!671))

(declare-fun bs!4670 () Bool)

(assert (= bs!4670 (and neg-inst!149 b!13566)))

(assert (=> (and bs!4670 (= (content!20 (left!596 (right!599 res!5054))) (content!20 (left!596 res!5054))) (= (value!1517 (right!599 res!5054)) (value!1517 res!5054))) (= true inst!156)))

(declare-fun bs!4671 () Bool)

(assert (= bs!4671 (and neg-inst!149 neg-inst!147)))

(assert (=> (and bs!4671 (= (content!20 (left!596 (right!599 res!5054))) (content!20 (left!596 (left!596 res!5054)))) (= (value!1517 (right!599 res!5054)) (value!1517 (left!596 res!5054)))) (= true true)))

(declare-fun bs!4672 () Bool)

(assert (= bs!4672 (and neg-inst!149 b!13564)))

(assert (=> (and bs!4672 (= (content!20 (left!596 (right!599 res!5054))) (content!20 (left!596 tree!126))) (= (value!1517 (right!599 res!5054)) (value!1517 tree!126))) (= true inst!154)))

(declare-fun bs!4673 () Bool)

(assert (= bs!4673 (and neg-inst!149 b!13568)))

(assert (=> (and bs!4673 (= (content!20 (left!596 (right!599 res!5054))) (content!20 (left!596 (left!596 res!5054)))) (= (value!1517 (right!599 res!5054)) (value!1517 (left!596 res!5054)))) (= true inst!158)))

(declare-fun bs!4674 () Bool)

(assert (= bs!4674 (and neg-inst!149 neg-inst!143)))

(assert (=> (and bs!4674 (= (content!20 (left!596 (right!599 res!5054))) (content!20 (left!596 tree!126))) (= (value!1517 (right!599 res!5054)) (value!1517 tree!126))) (= true true)))

(declare-fun bs!4675 () Bool)

(assert (= bs!4675 (and neg-inst!149 neg-inst!145)))

(assert (=> (and bs!4675 (= (content!20 (left!596 (right!599 res!5054))) (content!20 (left!596 res!5054))) (= (value!1517 (right!599 res!5054)) (value!1517 res!5054))) (= true true)))

(declare-fun bs!4676 () Bool)

(assert (= bs!4676 (and neg-inst!149 b!13570)))

(assert (=> bs!4676 (= true inst!160)))

(declare-fun bs!4677 () Bool)

(declare-fun neg-inst!148 () Bool)

(assert (= bs!4677 neg-inst!148))

(assert (=> bs!4677 m!17313))

(declare-fun bs!4678 () Bool)

(declare-fun s!673 () Bool)

(assert (= bs!4678 (and neg-inst!148 s!673)))

(assert (=> bs!4678 (=> true (or (not (member x!7693 (content!20 (right!599 (right!599 res!5054))))) (< (value!1517 (right!599 res!5054)) x!7693)))))

(assert (=> m!17315 s!673))

(declare-fun bs!4679 () Bool)

(assert (= bs!4679 (and neg-inst!148 b!13565)))

(assert (=> (and bs!4679 (= (content!20 (right!599 (right!599 res!5054))) (content!20 (right!599 tree!126))) (= (value!1517 (right!599 res!5054)) (value!1517 tree!126))) (= true inst!155)))

(declare-fun bs!4680 () Bool)

(assert (= bs!4680 (and neg-inst!148 neg-inst!142)))

(assert (=> (and bs!4680 (= (content!20 (right!599 (right!599 res!5054))) (content!20 (right!599 tree!126))) (= (value!1517 (right!599 res!5054)) (value!1517 tree!126))) (= true true)))

(declare-fun bs!4681 () Bool)

(assert (= bs!4681 (and neg-inst!148 neg-inst!146)))

(assert (=> (and bs!4681 (= (content!20 (right!599 (right!599 res!5054))) (content!20 (right!599 (left!596 res!5054)))) (= (value!1517 (right!599 res!5054)) (value!1517 (left!596 res!5054)))) (= true true)))

(declare-fun bs!4682 () Bool)

(assert (= bs!4682 (and neg-inst!148 neg-inst!144)))

(assert (=> (and bs!4682 (= (content!20 (right!599 (right!599 res!5054))) (content!20 (right!599 res!5054))) (= (value!1517 (right!599 res!5054)) (value!1517 res!5054))) (= true true)))

(declare-fun bs!4683 () Bool)

(assert (= bs!4683 (and neg-inst!148 b!13569)))

(assert (=> (and bs!4683 (= (content!20 (right!599 (right!599 res!5054))) (content!20 (right!599 (left!596 res!5054)))) (= (value!1517 (right!599 res!5054)) (value!1517 (left!596 res!5054)))) (= true inst!159)))

(declare-fun bs!4684 () Bool)

(assert (= bs!4684 (and neg-inst!148 b!13571)))

(assert (=> bs!4684 (= true inst!161)))

(declare-fun bs!4685 () Bool)

(assert (= bs!4685 (and neg-inst!148 b!13567)))

(assert (=> (and bs!4685 (= (content!20 (right!599 (right!599 res!5054))) (content!20 (right!599 res!5054))) (= (value!1517 (right!599 res!5054)) (value!1517 res!5054))) (= true inst!157)))

(declare-fun d!10382 () Bool)

(declare-fun res!5152 () Bool)

(declare-fun e!7492 () Bool)

(assert (=> d!10382 (=> res!5152 e!7492)))

(assert (=> d!10382 (= res!5152 (not (is-Node!29 (right!599 res!5054))))))

(assert (=> d!10382 (= (inv!443 (right!599 res!5054)) e!7492)))

(declare-fun e!7493 () Bool)

(assert (=> b!13570 (= e!7492 e!7493)))

(declare-fun res!5151 () Bool)

(assert (=> b!13570 (=> (not res!5151) (not e!7493))))

(assert (=> b!13570 (= res!5151 inst!160)))

(assert (=> b!13571 (= e!7493 inst!161)))

(assert (= (and d!10382 (not res!5152)) b!13570))

(assert (= neg-inst!149 inst!160))

(assert (= (and b!13570 res!5151) b!13571))

(assert (= neg-inst!148 inst!161))

(assert (=> b!13551 d!10382))

(declare-fun b!13572 () Bool)

(declare-fun m!17317 () Bool)

(assert (=> b!13572 m!17317))

(declare-fun inst!162 () Bool)

(declare-fun x!7694 () Int)

(assert (=> b!13572 (= inst!162 (=> true (or (not (member x!7694 (content!20 (left!596 (left!596 tree!126))))) (< x!7694 (value!1517 (left!596 tree!126))))))))

(declare-fun m!17319 () Bool)

(assert (=> b!13572 m!17319))

(declare-fun bs!4686 () Bool)

(assert (= bs!4686 (and b!13572 b!13566)))

(assert (=> (and bs!4686 (= (content!20 (left!596 (left!596 tree!126))) (content!20 (left!596 res!5054))) (= (value!1517 (left!596 tree!126)) (value!1517 res!5054))) (= inst!162 inst!156)))

(declare-fun bs!4687 () Bool)

(assert (= bs!4687 (and b!13572 neg-inst!147)))

(assert (=> (and bs!4687 (= (content!20 (left!596 (left!596 tree!126))) (content!20 (left!596 (left!596 res!5054)))) (= (value!1517 (left!596 tree!126)) (value!1517 (left!596 res!5054)))) (= inst!162 true)))

(declare-fun bs!4688 () Bool)

(assert (= bs!4688 (and b!13572 b!13564)))

(assert (=> (and bs!4688 (= (content!20 (left!596 (left!596 tree!126))) (content!20 (left!596 tree!126))) (= (value!1517 (left!596 tree!126)) (value!1517 tree!126))) (= inst!162 inst!154)))

(declare-fun bs!4689 () Bool)

(assert (= bs!4689 (and b!13572 b!13568)))

(assert (=> (and bs!4689 (= (content!20 (left!596 (left!596 tree!126))) (content!20 (left!596 (left!596 res!5054)))) (= (value!1517 (left!596 tree!126)) (value!1517 (left!596 res!5054)))) (= inst!162 inst!158)))

(declare-fun bs!4690 () Bool)

(assert (= bs!4690 (and b!13572 neg-inst!149)))

(assert (=> (and bs!4690 (= (content!20 (left!596 (left!596 tree!126))) (content!20 (left!596 (right!599 res!5054)))) (= (value!1517 (left!596 tree!126)) (value!1517 (right!599 res!5054)))) (= inst!162 true)))

(declare-fun bs!4691 () Bool)

(assert (= bs!4691 (and b!13572 neg-inst!143)))

(assert (=> (and bs!4691 (= (content!20 (left!596 (left!596 tree!126))) (content!20 (left!596 tree!126))) (= (value!1517 (left!596 tree!126)) (value!1517 tree!126))) (= inst!162 true)))

(declare-fun bs!4692 () Bool)

(assert (= bs!4692 (and b!13572 neg-inst!145)))

(assert (=> (and bs!4692 (= (content!20 (left!596 (left!596 tree!126))) (content!20 (left!596 res!5054))) (= (value!1517 (left!596 tree!126)) (value!1517 res!5054))) (= inst!162 true)))

(declare-fun bs!4693 () Bool)

(assert (= bs!4693 (and b!13572 b!13570)))

(assert (=> (and bs!4693 (= (content!20 (left!596 (left!596 tree!126))) (content!20 (left!596 (right!599 res!5054)))) (= (value!1517 (left!596 tree!126)) (value!1517 (right!599 res!5054)))) (= inst!162 inst!160)))

(declare-fun b!13573 () Bool)

(declare-fun m!17321 () Bool)

(assert (=> b!13573 m!17321))

(declare-fun inst!163 () Bool)

(declare-fun x!7695 () Int)

(assert (=> b!13573 (= inst!163 (=> true (or (not (member x!7695 (content!20 (right!599 (left!596 tree!126))))) (< (value!1517 (left!596 tree!126)) x!7695))))))

(declare-fun m!17323 () Bool)

(assert (=> b!13573 m!17323))

(declare-fun bs!4694 () Bool)

(assert (= bs!4694 (and b!13573 b!13565)))

(assert (=> (and bs!4694 (= (content!20 (right!599 (left!596 tree!126))) (content!20 (right!599 tree!126))) (= (value!1517 (left!596 tree!126)) (value!1517 tree!126))) (= inst!163 inst!155)))

(declare-fun bs!4695 () Bool)

(assert (= bs!4695 (and b!13573 neg-inst!142)))

(assert (=> (and bs!4695 (= (content!20 (right!599 (left!596 tree!126))) (content!20 (right!599 tree!126))) (= (value!1517 (left!596 tree!126)) (value!1517 tree!126))) (= inst!163 true)))

(declare-fun bs!4696 () Bool)

(assert (= bs!4696 (and b!13573 neg-inst!146)))

(assert (=> (and bs!4696 (= (content!20 (right!599 (left!596 tree!126))) (content!20 (right!599 (left!596 res!5054)))) (= (value!1517 (left!596 tree!126)) (value!1517 (left!596 res!5054)))) (= inst!163 true)))

(declare-fun bs!4697 () Bool)

(assert (= bs!4697 (and b!13573 neg-inst!148)))

(assert (=> (and bs!4697 (= (content!20 (right!599 (left!596 tree!126))) (content!20 (right!599 (right!599 res!5054)))) (= (value!1517 (left!596 tree!126)) (value!1517 (right!599 res!5054)))) (= inst!163 true)))

(declare-fun bs!4698 () Bool)

(assert (= bs!4698 (and b!13573 neg-inst!144)))

(assert (=> (and bs!4698 (= (content!20 (right!599 (left!596 tree!126))) (content!20 (right!599 res!5054))) (= (value!1517 (left!596 tree!126)) (value!1517 res!5054))) (= inst!163 true)))

(declare-fun bs!4699 () Bool)

(assert (= bs!4699 (and b!13573 b!13569)))

(assert (=> (and bs!4699 (= (content!20 (right!599 (left!596 tree!126))) (content!20 (right!599 (left!596 res!5054)))) (= (value!1517 (left!596 tree!126)) (value!1517 (left!596 res!5054)))) (= inst!163 inst!159)))

(declare-fun bs!4700 () Bool)

(assert (= bs!4700 (and b!13573 b!13571)))

(assert (=> (and bs!4700 (= (content!20 (right!599 (left!596 tree!126))) (content!20 (right!599 (right!599 res!5054)))) (= (value!1517 (left!596 tree!126)) (value!1517 (right!599 res!5054)))) (= inst!163 inst!161)))

(declare-fun bs!4701 () Bool)

(assert (= bs!4701 (and b!13573 b!13567)))

(assert (=> (and bs!4701 (= (content!20 (right!599 (left!596 tree!126))) (content!20 (right!599 res!5054))) (= (value!1517 (left!596 tree!126)) (value!1517 res!5054))) (= inst!163 inst!157)))

(declare-fun bs!4702 () Bool)

(declare-fun neg-inst!151 () Bool)

(assert (= bs!4702 neg-inst!151))

(assert (=> bs!4702 m!17317))

(declare-fun bs!4703 () Bool)

(declare-fun s!675 () Bool)

(assert (= bs!4703 (and neg-inst!151 s!675)))

(assert (=> bs!4703 (=> true (or (not (member x!7694 (content!20 (left!596 (left!596 tree!126))))) (< x!7694 (value!1517 (left!596 tree!126)))))))

(assert (=> m!17319 s!675))

(declare-fun bs!4704 () Bool)

(assert (= bs!4704 (and neg-inst!151 b!13566)))

(assert (=> (and bs!4704 (= (content!20 (left!596 (left!596 tree!126))) (content!20 (left!596 res!5054))) (= (value!1517 (left!596 tree!126)) (value!1517 res!5054))) (= true inst!156)))

(declare-fun bs!4705 () Bool)

(assert (= bs!4705 (and neg-inst!151 b!13572)))

(assert (=> bs!4705 (= true inst!162)))

(declare-fun bs!4706 () Bool)

(assert (= bs!4706 (and neg-inst!151 neg-inst!147)))

(assert (=> (and bs!4706 (= (content!20 (left!596 (left!596 tree!126))) (content!20 (left!596 (left!596 res!5054)))) (= (value!1517 (left!596 tree!126)) (value!1517 (left!596 res!5054)))) (= true true)))

(declare-fun bs!4707 () Bool)

(assert (= bs!4707 (and neg-inst!151 b!13564)))

(assert (=> (and bs!4707 (= (content!20 (left!596 (left!596 tree!126))) (content!20 (left!596 tree!126))) (= (value!1517 (left!596 tree!126)) (value!1517 tree!126))) (= true inst!154)))

(declare-fun bs!4708 () Bool)

(assert (= bs!4708 (and neg-inst!151 b!13568)))

(assert (=> (and bs!4708 (= (content!20 (left!596 (left!596 tree!126))) (content!20 (left!596 (left!596 res!5054)))) (= (value!1517 (left!596 tree!126)) (value!1517 (left!596 res!5054)))) (= true inst!158)))

(declare-fun bs!4709 () Bool)

(assert (= bs!4709 (and neg-inst!151 neg-inst!149)))

(assert (=> (and bs!4709 (= (content!20 (left!596 (left!596 tree!126))) (content!20 (left!596 (right!599 res!5054)))) (= (value!1517 (left!596 tree!126)) (value!1517 (right!599 res!5054)))) (= true true)))

(declare-fun bs!4710 () Bool)

(assert (= bs!4710 (and neg-inst!151 neg-inst!143)))

(assert (=> (and bs!4710 (= (content!20 (left!596 (left!596 tree!126))) (content!20 (left!596 tree!126))) (= (value!1517 (left!596 tree!126)) (value!1517 tree!126))) (= true true)))

(declare-fun bs!4711 () Bool)

(assert (= bs!4711 (and neg-inst!151 neg-inst!145)))

(assert (=> (and bs!4711 (= (content!20 (left!596 (left!596 tree!126))) (content!20 (left!596 res!5054))) (= (value!1517 (left!596 tree!126)) (value!1517 res!5054))) (= true true)))

(declare-fun bs!4712 () Bool)

(assert (= bs!4712 (and neg-inst!151 b!13570)))

(assert (=> (and bs!4712 (= (content!20 (left!596 (left!596 tree!126))) (content!20 (left!596 (right!599 res!5054)))) (= (value!1517 (left!596 tree!126)) (value!1517 (right!599 res!5054)))) (= true inst!160)))

(declare-fun bs!4713 () Bool)

(declare-fun neg-inst!150 () Bool)

(assert (= bs!4713 neg-inst!150))

(assert (=> bs!4713 m!17321))

(declare-fun bs!4714 () Bool)

(declare-fun s!677 () Bool)

(assert (= bs!4714 (and neg-inst!150 s!677)))

(assert (=> bs!4714 (=> true (or (not (member x!7695 (content!20 (right!599 (left!596 tree!126))))) (< (value!1517 (left!596 tree!126)) x!7695)))))

(assert (=> m!17323 s!677))

(declare-fun bs!4715 () Bool)

(assert (= bs!4715 (and neg-inst!150 b!13565)))

(assert (=> (and bs!4715 (= (content!20 (right!599 (left!596 tree!126))) (content!20 (right!599 tree!126))) (= (value!1517 (left!596 tree!126)) (value!1517 tree!126))) (= true inst!155)))

(declare-fun bs!4716 () Bool)

(assert (= bs!4716 (and neg-inst!150 neg-inst!142)))

(assert (=> (and bs!4716 (= (content!20 (right!599 (left!596 tree!126))) (content!20 (right!599 tree!126))) (= (value!1517 (left!596 tree!126)) (value!1517 tree!126))) (= true true)))

(declare-fun bs!4717 () Bool)

(assert (= bs!4717 (and neg-inst!150 neg-inst!146)))

(assert (=> (and bs!4717 (= (content!20 (right!599 (left!596 tree!126))) (content!20 (right!599 (left!596 res!5054)))) (= (value!1517 (left!596 tree!126)) (value!1517 (left!596 res!5054)))) (= true true)))

(declare-fun bs!4718 () Bool)

(assert (= bs!4718 (and neg-inst!150 neg-inst!148)))

(assert (=> (and bs!4718 (= (content!20 (right!599 (left!596 tree!126))) (content!20 (right!599 (right!599 res!5054)))) (= (value!1517 (left!596 tree!126)) (value!1517 (right!599 res!5054)))) (= true true)))

(declare-fun bs!4719 () Bool)

(assert (= bs!4719 (and neg-inst!150 neg-inst!144)))

(assert (=> (and bs!4719 (= (content!20 (right!599 (left!596 tree!126))) (content!20 (right!599 res!5054))) (= (value!1517 (left!596 tree!126)) (value!1517 res!5054))) (= true true)))

(declare-fun bs!4720 () Bool)

(assert (= bs!4720 (and neg-inst!150 b!13569)))

(assert (=> (and bs!4720 (= (content!20 (right!599 (left!596 tree!126))) (content!20 (right!599 (left!596 res!5054)))) (= (value!1517 (left!596 tree!126)) (value!1517 (left!596 res!5054)))) (= true inst!159)))

(declare-fun bs!4721 () Bool)

(assert (= bs!4721 (and neg-inst!150 b!13573)))

(assert (=> bs!4721 (= true inst!163)))

(declare-fun bs!4722 () Bool)

(assert (= bs!4722 (and neg-inst!150 b!13571)))

(assert (=> (and bs!4722 (= (content!20 (right!599 (left!596 tree!126))) (content!20 (right!599 (right!599 res!5054)))) (= (value!1517 (left!596 tree!126)) (value!1517 (right!599 res!5054)))) (= true inst!161)))

(declare-fun bs!4723 () Bool)

(assert (= bs!4723 (and neg-inst!150 b!13567)))

(assert (=> (and bs!4723 (= (content!20 (right!599 (left!596 tree!126))) (content!20 (right!599 res!5054))) (= (value!1517 (left!596 tree!126)) (value!1517 res!5054))) (= true inst!157)))

(declare-fun d!10384 () Bool)

(declare-fun res!5154 () Bool)

(declare-fun e!7494 () Bool)

(assert (=> d!10384 (=> res!5154 e!7494)))

(assert (=> d!10384 (= res!5154 (not (is-Node!29 (left!596 tree!126))))))

(assert (=> d!10384 (= (inv!443 (left!596 tree!126)) e!7494)))

(declare-fun e!7495 () Bool)

(assert (=> b!13572 (= e!7494 e!7495)))

(declare-fun res!5153 () Bool)

(assert (=> b!13572 (=> (not res!5153) (not e!7495))))

(assert (=> b!13572 (= res!5153 inst!162)))

(assert (=> b!13573 (= e!7495 inst!163)))

(assert (= (and d!10384 (not res!5154)) b!13572))

(assert (= neg-inst!151 inst!162))

(assert (= (and b!13572 res!5153) b!13573))

(assert (= neg-inst!150 inst!163))

(assert (=> b!13550 d!10384))

(declare-fun b!13574 () Bool)

(declare-fun m!17325 () Bool)

(assert (=> b!13574 m!17325))

(declare-fun inst!164 () Bool)

(declare-fun x!7696 () Int)

(assert (=> b!13574 (= inst!164 (=> true (or (not (member x!7696 (content!20 (left!596 (right!599 tree!126))))) (< x!7696 (value!1517 (right!599 tree!126))))))))

(declare-fun m!17327 () Bool)

(assert (=> b!13574 m!17327))

(declare-fun bs!4724 () Bool)

(assert (= bs!4724 (and b!13574 b!13566)))

(assert (=> (and bs!4724 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 res!5054))) (= (value!1517 (right!599 tree!126)) (value!1517 res!5054))) (= inst!164 inst!156)))

(declare-fun bs!4725 () Bool)

(assert (= bs!4725 (and b!13574 b!13572)))

(assert (=> (and bs!4725 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 (left!596 tree!126)))) (= (value!1517 (right!599 tree!126)) (value!1517 (left!596 tree!126)))) (= inst!164 inst!162)))

(declare-fun bs!4726 () Bool)

(assert (= bs!4726 (and b!13574 neg-inst!147)))

(assert (=> (and bs!4726 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 (left!596 res!5054)))) (= (value!1517 (right!599 tree!126)) (value!1517 (left!596 res!5054)))) (= inst!164 true)))

(declare-fun bs!4727 () Bool)

(assert (= bs!4727 (and b!13574 b!13564)))

(assert (=> (and bs!4727 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 tree!126))) (= (value!1517 (right!599 tree!126)) (value!1517 tree!126))) (= inst!164 inst!154)))

(declare-fun bs!4728 () Bool)

(assert (= bs!4728 (and b!13574 b!13568)))

(assert (=> (and bs!4728 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 (left!596 res!5054)))) (= (value!1517 (right!599 tree!126)) (value!1517 (left!596 res!5054)))) (= inst!164 inst!158)))

(declare-fun bs!4729 () Bool)

(assert (= bs!4729 (and b!13574 neg-inst!151)))

(assert (=> (and bs!4729 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 (left!596 tree!126)))) (= (value!1517 (right!599 tree!126)) (value!1517 (left!596 tree!126)))) (= inst!164 true)))

(declare-fun bs!4730 () Bool)

(assert (= bs!4730 (and b!13574 neg-inst!149)))

(assert (=> (and bs!4730 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 (right!599 res!5054)))) (= (value!1517 (right!599 tree!126)) (value!1517 (right!599 res!5054)))) (= inst!164 true)))

(declare-fun bs!4731 () Bool)

(assert (= bs!4731 (and b!13574 neg-inst!143)))

(assert (=> (and bs!4731 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 tree!126))) (= (value!1517 (right!599 tree!126)) (value!1517 tree!126))) (= inst!164 true)))

(declare-fun bs!4732 () Bool)

(assert (= bs!4732 (and b!13574 neg-inst!145)))

(assert (=> (and bs!4732 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 res!5054))) (= (value!1517 (right!599 tree!126)) (value!1517 res!5054))) (= inst!164 true)))

(declare-fun bs!4733 () Bool)

(assert (= bs!4733 (and b!13574 b!13570)))

(assert (=> (and bs!4733 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 (right!599 res!5054)))) (= (value!1517 (right!599 tree!126)) (value!1517 (right!599 res!5054)))) (= inst!164 inst!160)))

(declare-fun b!13575 () Bool)

(declare-fun m!17329 () Bool)

(assert (=> b!13575 m!17329))

(declare-fun inst!165 () Bool)

(declare-fun x!7697 () Int)

(assert (=> b!13575 (= inst!165 (=> true (or (not (member x!7697 (content!20 (right!599 (right!599 tree!126))))) (< (value!1517 (right!599 tree!126)) x!7697))))))

(declare-fun m!17331 () Bool)

(assert (=> b!13575 m!17331))

(declare-fun bs!4734 () Bool)

(assert (= bs!4734 (and b!13575 b!13565)))

(assert (=> (and bs!4734 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 tree!126))) (= (value!1517 (right!599 tree!126)) (value!1517 tree!126))) (= inst!165 inst!155)))

(declare-fun bs!4735 () Bool)

(assert (= bs!4735 (and b!13575 neg-inst!142)))

(assert (=> (and bs!4735 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 tree!126))) (= (value!1517 (right!599 tree!126)) (value!1517 tree!126))) (= inst!165 true)))

(declare-fun bs!4736 () Bool)

(assert (= bs!4736 (and b!13575 neg-inst!146)))

(assert (=> (and bs!4736 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 (left!596 res!5054)))) (= (value!1517 (right!599 tree!126)) (value!1517 (left!596 res!5054)))) (= inst!165 true)))

(declare-fun bs!4737 () Bool)

(assert (= bs!4737 (and b!13575 neg-inst!148)))

(assert (=> (and bs!4737 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 (right!599 res!5054)))) (= (value!1517 (right!599 tree!126)) (value!1517 (right!599 res!5054)))) (= inst!165 true)))

(declare-fun bs!4738 () Bool)

(assert (= bs!4738 (and b!13575 neg-inst!144)))

(assert (=> (and bs!4738 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 res!5054))) (= (value!1517 (right!599 tree!126)) (value!1517 res!5054))) (= inst!165 true)))

(declare-fun bs!4739 () Bool)

(assert (= bs!4739 (and b!13575 b!13569)))

(assert (=> (and bs!4739 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 (left!596 res!5054)))) (= (value!1517 (right!599 tree!126)) (value!1517 (left!596 res!5054)))) (= inst!165 inst!159)))

(declare-fun bs!4740 () Bool)

(assert (= bs!4740 (and b!13575 b!13573)))

(assert (=> (and bs!4740 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 (left!596 tree!126)))) (= (value!1517 (right!599 tree!126)) (value!1517 (left!596 tree!126)))) (= inst!165 inst!163)))

(declare-fun bs!4741 () Bool)

(assert (= bs!4741 (and b!13575 b!13571)))

(assert (=> (and bs!4741 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 (right!599 res!5054)))) (= (value!1517 (right!599 tree!126)) (value!1517 (right!599 res!5054)))) (= inst!165 inst!161)))

(declare-fun bs!4742 () Bool)

(assert (= bs!4742 (and b!13575 neg-inst!150)))

(assert (=> (and bs!4742 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 (left!596 tree!126)))) (= (value!1517 (right!599 tree!126)) (value!1517 (left!596 tree!126)))) (= inst!165 true)))

(declare-fun bs!4743 () Bool)

(assert (= bs!4743 (and b!13575 b!13567)))

(assert (=> (and bs!4743 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 res!5054))) (= (value!1517 (right!599 tree!126)) (value!1517 res!5054))) (= inst!165 inst!157)))

(declare-fun bs!4744 () Bool)

(declare-fun neg-inst!153 () Bool)

(assert (= bs!4744 neg-inst!153))

(assert (=> bs!4744 m!17325))

(declare-fun bs!4745 () Bool)

(declare-fun s!679 () Bool)

(assert (= bs!4745 (and neg-inst!153 s!679)))

(assert (=> bs!4745 (=> true (or (not (member x!7696 (content!20 (left!596 (right!599 tree!126))))) (< x!7696 (value!1517 (right!599 tree!126)))))))

(assert (=> m!17327 s!679))

(declare-fun bs!4746 () Bool)

(assert (= bs!4746 (and neg-inst!153 b!13566)))

(assert (=> (and bs!4746 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 res!5054))) (= (value!1517 (right!599 tree!126)) (value!1517 res!5054))) (= true inst!156)))

(declare-fun bs!4747 () Bool)

(assert (= bs!4747 (and neg-inst!153 b!13572)))

(assert (=> (and bs!4747 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 (left!596 tree!126)))) (= (value!1517 (right!599 tree!126)) (value!1517 (left!596 tree!126)))) (= true inst!162)))

(declare-fun bs!4748 () Bool)

(assert (= bs!4748 (and neg-inst!153 neg-inst!147)))

(assert (=> (and bs!4748 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 (left!596 res!5054)))) (= (value!1517 (right!599 tree!126)) (value!1517 (left!596 res!5054)))) (= true true)))

(declare-fun bs!4749 () Bool)

(assert (= bs!4749 (and neg-inst!153 b!13564)))

(assert (=> (and bs!4749 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 tree!126))) (= (value!1517 (right!599 tree!126)) (value!1517 tree!126))) (= true inst!154)))

(declare-fun bs!4750 () Bool)

(assert (= bs!4750 (and neg-inst!153 b!13568)))

(assert (=> (and bs!4750 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 (left!596 res!5054)))) (= (value!1517 (right!599 tree!126)) (value!1517 (left!596 res!5054)))) (= true inst!158)))

(declare-fun bs!4751 () Bool)

(assert (= bs!4751 (and neg-inst!153 b!13574)))

(assert (=> bs!4751 (= true inst!164)))

(declare-fun bs!4752 () Bool)

(assert (= bs!4752 (and neg-inst!153 neg-inst!151)))

(assert (=> (and bs!4752 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 (left!596 tree!126)))) (= (value!1517 (right!599 tree!126)) (value!1517 (left!596 tree!126)))) (= true true)))

(declare-fun bs!4753 () Bool)

(assert (= bs!4753 (and neg-inst!153 neg-inst!149)))

(assert (=> (and bs!4753 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 (right!599 res!5054)))) (= (value!1517 (right!599 tree!126)) (value!1517 (right!599 res!5054)))) (= true true)))

(declare-fun bs!4754 () Bool)

(assert (= bs!4754 (and neg-inst!153 neg-inst!143)))

(assert (=> (and bs!4754 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 tree!126))) (= (value!1517 (right!599 tree!126)) (value!1517 tree!126))) (= true true)))

(declare-fun bs!4755 () Bool)

(assert (= bs!4755 (and neg-inst!153 neg-inst!145)))

(assert (=> (and bs!4755 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 res!5054))) (= (value!1517 (right!599 tree!126)) (value!1517 res!5054))) (= true true)))

(declare-fun bs!4756 () Bool)

(assert (= bs!4756 (and neg-inst!153 b!13570)))

(assert (=> (and bs!4756 (= (content!20 (left!596 (right!599 tree!126))) (content!20 (left!596 (right!599 res!5054)))) (= (value!1517 (right!599 tree!126)) (value!1517 (right!599 res!5054)))) (= true inst!160)))

(declare-fun bs!4757 () Bool)

(declare-fun neg-inst!152 () Bool)

(assert (= bs!4757 neg-inst!152))

(assert (=> bs!4757 m!17329))

(declare-fun bs!4758 () Bool)

(declare-fun s!681 () Bool)

(assert (= bs!4758 (and neg-inst!152 s!681)))

(assert (=> bs!4758 (=> true (or (not (member x!7697 (content!20 (right!599 (right!599 tree!126))))) (< (value!1517 (right!599 tree!126)) x!7697)))))

(assert (=> m!17331 s!681))

(declare-fun bs!4759 () Bool)

(assert (= bs!4759 (and neg-inst!152 b!13575)))

(assert (=> bs!4759 (= true inst!165)))

(declare-fun bs!4760 () Bool)

(assert (= bs!4760 (and neg-inst!152 b!13565)))

(assert (=> (and bs!4760 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 tree!126))) (= (value!1517 (right!599 tree!126)) (value!1517 tree!126))) (= true inst!155)))

(declare-fun bs!4761 () Bool)

(assert (= bs!4761 (and neg-inst!152 neg-inst!142)))

(assert (=> (and bs!4761 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 tree!126))) (= (value!1517 (right!599 tree!126)) (value!1517 tree!126))) (= true true)))

(declare-fun bs!4762 () Bool)

(assert (= bs!4762 (and neg-inst!152 neg-inst!146)))

(assert (=> (and bs!4762 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 (left!596 res!5054)))) (= (value!1517 (right!599 tree!126)) (value!1517 (left!596 res!5054)))) (= true true)))

(declare-fun bs!4763 () Bool)

(assert (= bs!4763 (and neg-inst!152 neg-inst!148)))

(assert (=> (and bs!4763 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 (right!599 res!5054)))) (= (value!1517 (right!599 tree!126)) (value!1517 (right!599 res!5054)))) (= true true)))

(declare-fun bs!4764 () Bool)

(assert (= bs!4764 (and neg-inst!152 neg-inst!144)))

(assert (=> (and bs!4764 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 res!5054))) (= (value!1517 (right!599 tree!126)) (value!1517 res!5054))) (= true true)))

(declare-fun bs!4765 () Bool)

(assert (= bs!4765 (and neg-inst!152 b!13569)))

(assert (=> (and bs!4765 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 (left!596 res!5054)))) (= (value!1517 (right!599 tree!126)) (value!1517 (left!596 res!5054)))) (= true inst!159)))

(declare-fun bs!4766 () Bool)

(assert (= bs!4766 (and neg-inst!152 b!13573)))

(assert (=> (and bs!4766 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 (left!596 tree!126)))) (= (value!1517 (right!599 tree!126)) (value!1517 (left!596 tree!126)))) (= true inst!163)))

(declare-fun bs!4767 () Bool)

(assert (= bs!4767 (and neg-inst!152 b!13571)))

(assert (=> (and bs!4767 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 (right!599 res!5054)))) (= (value!1517 (right!599 tree!126)) (value!1517 (right!599 res!5054)))) (= true inst!161)))

(declare-fun bs!4768 () Bool)

(assert (= bs!4768 (and neg-inst!152 neg-inst!150)))

(assert (=> (and bs!4768 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 (left!596 tree!126)))) (= (value!1517 (right!599 tree!126)) (value!1517 (left!596 tree!126)))) (= true true)))

(declare-fun bs!4769 () Bool)

(assert (= bs!4769 (and neg-inst!152 b!13567)))

(assert (=> (and bs!4769 (= (content!20 (right!599 (right!599 tree!126))) (content!20 (right!599 res!5054))) (= (value!1517 (right!599 tree!126)) (value!1517 res!5054))) (= true inst!157)))

(declare-fun d!10386 () Bool)

(declare-fun res!5156 () Bool)

(declare-fun e!7496 () Bool)

(assert (=> d!10386 (=> res!5156 e!7496)))

(assert (=> d!10386 (= res!5156 (not (is-Node!29 (right!599 tree!126))))))

(assert (=> d!10386 (= (inv!443 (right!599 tree!126)) e!7496)))

(declare-fun e!7497 () Bool)

(assert (=> b!13574 (= e!7496 e!7497)))

(declare-fun res!5155 () Bool)

(assert (=> b!13574 (=> (not res!5155) (not e!7497))))

(assert (=> b!13574 (= res!5155 inst!164)))

(assert (=> b!13575 (= e!7497 inst!165)))

(assert (= (and d!10386 (not res!5156)) b!13574))

(assert (= neg-inst!153 inst!164))

(assert (= (and b!13574 res!5155) b!13575))

(assert (= neg-inst!152 inst!165))

(assert (=> b!13550 d!10386))

(declare-fun tp!3387 () Bool)

(declare-fun tp!3386 () Bool)

(declare-fun e!7500 () Bool)

(declare-fun b!13580 () Bool)

(assert (=> b!13580 (= e!7500 (and (inv!443 (left!596 (left!596 res!5054))) tp!3386 (inv!443 (right!599 (left!596 res!5054))) tp!3387))))

(assert (=> b!13551 (= tp!3379 (and (inv!443 (left!596 res!5054)) e!7500))))

(assert (= (and b!13551 (is-Node!29 (left!596 res!5054))) b!13580))

(declare-fun m!17333 () Bool)

(assert (=> b!13580 m!17333))

(declare-fun m!17335 () Bool)

(assert (=> b!13580 m!17335))

(assert (=> b!13551 m!17277))

(declare-fun e!7501 () Bool)

(declare-fun tp!3389 () Bool)

(declare-fun tp!3388 () Bool)

(declare-fun b!13581 () Bool)

(assert (=> b!13581 (= e!7501 (and (inv!443 (left!596 (right!599 res!5054))) tp!3388 (inv!443 (right!599 (right!599 res!5054))) tp!3389))))

(assert (=> b!13551 (= tp!3381 (and (inv!443 (right!599 res!5054)) e!7501))))

(assert (= (and b!13551 (is-Node!29 (right!599 res!5054))) b!13581))

(declare-fun m!17337 () Bool)

(assert (=> b!13581 m!17337))

(declare-fun m!17339 () Bool)

(assert (=> b!13581 m!17339))

(assert (=> b!13551 m!17279))

(declare-fun tp!3391 () Bool)

(declare-fun tp!3390 () Bool)

(declare-fun e!7502 () Bool)

(declare-fun b!13582 () Bool)

(assert (=> b!13582 (= e!7502 (and (inv!443 (left!596 (left!596 tree!126))) tp!3390 (inv!443 (right!599 (left!596 tree!126))) tp!3391))))

(assert (=> b!13550 (= tp!3378 (and (inv!443 (left!596 tree!126)) e!7502))))

(assert (= (and b!13550 (is-Node!29 (left!596 tree!126))) b!13582))

(declare-fun m!17341 () Bool)

(assert (=> b!13582 m!17341))

(declare-fun m!17343 () Bool)

(assert (=> b!13582 m!17343))

(assert (=> b!13550 m!17273))

(declare-fun b!13583 () Bool)

(declare-fun e!7503 () Bool)

(declare-fun tp!3392 () Bool)

(declare-fun tp!3393 () Bool)

(assert (=> b!13583 (= e!7503 (and (inv!443 (left!596 (right!599 tree!126))) tp!3392 (inv!443 (right!599 (right!599 tree!126))) tp!3393))))

(assert (=> b!13550 (= tp!3380 (and (inv!443 (right!599 tree!126)) e!7503))))

(assert (= (and b!13550 (is-Node!29 (right!599 tree!126))) b!13583))

(declare-fun m!17345 () Bool)

(assert (=> b!13583 m!17345))

(declare-fun m!17347 () Bool)

(assert (=> b!13583 m!17347))

(assert (=> b!13550 m!17275))

(push 1)

(assert (not neg-inst!143))

(assert (not neg-inst!147))

(assert (not b!13550))

(assert (not b!13564))

(assert (not b!13551))

(assert (not b!13574))

(assert (not neg-inst!153))

(assert (not neg-inst!151))

(assert (not b!13580))

(assert (not b!13571))

(assert (not neg-inst!150))

(assert (not b!13569))

(assert (not b!13570))

(assert (not b!13568))

(assert (not b!13575))

(assert (not b!13557))

(assert (not b!13583))

(assert (not b!13582))

(assert (not b!13566))

(assert (not b!13573))

(assert (not b!13567))

(assert (not neg-inst!142))

(assert (not b!13559))

(assert (not neg-inst!145))

(assert (not b!13572))

(assert (not b!13581))

(assert (not neg-inst!149))

(assert (not neg-inst!152))

(assert (not neg-inst!144))

(assert (not neg-inst!146))

(assert (not neg-inst!148))

(assert (not b!13565))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

