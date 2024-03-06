; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14992 () Bool)

(assert start!14992)

(declare-fun res!49345 () Bool)

(declare-fun e!51676 () Bool)

(assert (=> start!14992 (=> res!49345 e!51676)))

(declare-datatypes () ((P!66 (Charlie!66) (Alice!66) (Bob!66))))

(declare-datatypes () ((tuple2!478 (tuple2!479 (_1!278 P!66) (_2!278 P!66)))))

(declare-datatypes () ((List!880 (Cons!818 (h!5612 tuple2!478) (t!53933 List!880)) (Nil!820))))

(declare-fun lt!21690 () List!880)

(declare-fun lt!21689 () P!66)

(declare-fun lt!21691 () List!880)

(declare-fun content!201 (List!880) (Set tuple2!478))

(assert (=> start!14992 (= res!49345 (not (= (content!201 lt!21690) (union (content!201 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820))) (content!201 lt!21691)))))))

(assert (=> start!14992 (= lt!21690 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) lt!21691)))))

(declare-fun lt!21692 () List!880)

(assert (=> start!14992 (= lt!21691 (Cons!818 (h!5612 lt!21692) (Cons!818 (h!5612 (t!53933 lt!21692)) Nil!820)))))

(assert (=> start!14992 (= lt!21692 (Cons!818 (tuple2!479 Charlie!66 Alice!66) (Cons!818 (tuple2!479 Charlie!66 Charlie!66) Nil!820)))))

(assert (=> start!14992 (= lt!21689 Alice!66)))

(assert (=> start!14992 e!51676))

(declare-fun b!94555 () Bool)

(declare-fun res!49344 () Bool)

(assert (=> b!94555 (=> res!49344 e!51676)))

(declare-fun size!991 (List!880) Int)

(assert (=> b!94555 (= res!49344 (not (= (size!991 lt!21690) (+ (size!991 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820))) (size!991 lt!21691)))))))

(declare-fun b!94556 () Bool)

(assert (=> b!94556 (= e!51676 (and (= lt!21691 Nil!820) (not (= lt!21690 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820))))))))

(assert (= (and start!14992 (not res!49345)) b!94555))

(assert (= (and b!94555 (not res!49344)) b!94556))

(declare-fun m!89945 () Bool)

(assert (=> start!14992 m!89945))

(declare-fun m!89947 () Bool)

(assert (=> start!14992 m!89947))

(declare-fun m!89949 () Bool)

(assert (=> start!14992 m!89949))

(declare-fun m!89951 () Bool)

(assert (=> b!94555 m!89951))

(declare-fun m!89953 () Bool)

(assert (=> b!94555 m!89953))

(declare-fun m!89955 () Bool)

(assert (=> b!94555 m!89955))

(push 1)

(assert (not start!14992))

(assert (not b!94555))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61558 () Bool)

(declare-fun c!23253 () Bool)

(assert (=> d!61558 (= c!23253 (is-Nil!820 lt!21690))))

(declare-fun e!51679 () (Set tuple2!478))

(assert (=> d!61558 (= (content!201 lt!21690) e!51679)))

(declare-fun b!94561 () Bool)

(assert (=> b!94561 (= e!51679 (as emptyset (Set tuple2!478)))))

(declare-fun b!94562 () Bool)

(assert (=> b!94562 (= e!51679 (union (insert (h!5612 lt!21690) (as emptyset (Set tuple2!478))) (content!201 (t!53933 lt!21690))))))

(assert (= (and d!61558 c!23253) b!94561))

(assert (= (and d!61558 (not c!23253)) b!94562))

(declare-fun m!89957 () Bool)

(assert (=> b!94562 m!89957))

(declare-fun m!89959 () Bool)

(assert (=> b!94562 m!89959))

(assert (=> start!14992 d!61558))

(declare-fun d!61560 () Bool)

(declare-fun c!23254 () Bool)

(assert (=> d!61560 (= c!23254 (is-Nil!820 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820))))))

(declare-fun e!51680 () (Set tuple2!478))

(assert (=> d!61560 (= (content!201 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820))) e!51680)))

(declare-fun b!94563 () Bool)

(assert (=> b!94563 (= e!51680 (as emptyset (Set tuple2!478)))))

(declare-fun b!94564 () Bool)

(assert (=> b!94564 (= e!51680 (union (insert (h!5612 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820))) (as emptyset (Set tuple2!478))) (content!201 (t!53933 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820))))))))

(assert (= (and d!61560 c!23254) b!94563))

(assert (= (and d!61560 (not c!23254)) b!94564))

(declare-fun m!89961 () Bool)

(assert (=> b!94564 m!89961))

(declare-fun m!89963 () Bool)

(assert (=> b!94564 m!89963))

(assert (=> start!14992 d!61560))

(declare-fun d!61562 () Bool)

(declare-fun c!23255 () Bool)

(assert (=> d!61562 (= c!23255 (is-Nil!820 lt!21691))))

(declare-fun e!51681 () (Set tuple2!478))

(assert (=> d!61562 (= (content!201 lt!21691) e!51681)))

(declare-fun b!94565 () Bool)

(assert (=> b!94565 (= e!51681 (as emptyset (Set tuple2!478)))))

(declare-fun b!94566 () Bool)

(assert (=> b!94566 (= e!51681 (union (insert (h!5612 lt!21691) (as emptyset (Set tuple2!478))) (content!201 (t!53933 lt!21691))))))

(assert (= (and d!61562 c!23255) b!94565))

(assert (= (and d!61562 (not c!23255)) b!94566))

(declare-fun m!89965 () Bool)

(assert (=> b!94566 m!89965))

(declare-fun m!89967 () Bool)

(assert (=> b!94566 m!89967))

(assert (=> start!14992 d!61562))

(declare-fun d!61564 () Bool)

(declare-fun lt!21695 () Int)

(assert (=> d!61564 (>= lt!21695 0)))

(declare-fun e!51684 () Int)

(assert (=> d!61564 (= lt!21695 e!51684)))

(declare-fun c!23258 () Bool)

(assert (=> d!61564 (= c!23258 (is-Nil!820 lt!21690))))

(assert (=> d!61564 (= (size!991 lt!21690) lt!21695)))

(declare-fun b!94571 () Bool)

(assert (=> b!94571 (= e!51684 0)))

(declare-fun b!94572 () Bool)

(assert (=> b!94572 (= e!51684 (+ 1 (size!991 (t!53933 lt!21690))))))

(assert (= (and d!61564 c!23258) b!94571))

(assert (= (and d!61564 (not c!23258)) b!94572))

(declare-fun m!89969 () Bool)

(assert (=> b!94572 m!89969))

(assert (=> b!94555 d!61564))

(declare-fun d!61566 () Bool)

(declare-fun lt!21696 () Int)

(assert (=> d!61566 (>= lt!21696 0)))

(declare-fun e!51685 () Int)

(assert (=> d!61566 (= lt!21696 e!51685)))

(declare-fun c!23259 () Bool)

(assert (=> d!61566 (= c!23259 (is-Nil!820 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820))))))

(assert (=> d!61566 (= (size!991 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820))) lt!21696)))

(declare-fun b!94573 () Bool)

(assert (=> b!94573 (= e!51685 0)))

(declare-fun b!94574 () Bool)

(assert (=> b!94574 (= e!51685 (+ 1 (size!991 (t!53933 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820))))))))

(assert (= (and d!61566 c!23259) b!94573))

(assert (= (and d!61566 (not c!23259)) b!94574))

(declare-fun m!89971 () Bool)

(assert (=> b!94574 m!89971))

(assert (=> b!94555 d!61566))

(declare-fun d!61568 () Bool)

(declare-fun lt!21697 () Int)

(assert (=> d!61568 (>= lt!21697 0)))

(declare-fun e!51686 () Int)

(assert (=> d!61568 (= lt!21697 e!51686)))

(declare-fun c!23260 () Bool)

(assert (=> d!61568 (= c!23260 (is-Nil!820 lt!21691))))

(assert (=> d!61568 (= (size!991 lt!21691) lt!21697)))

(declare-fun b!94575 () Bool)

(assert (=> b!94575 (= e!51686 0)))

(declare-fun b!94576 () Bool)

(assert (=> b!94576 (= e!51686 (+ 1 (size!991 (t!53933 lt!21691))))))

(assert (= (and d!61568 c!23260) b!94575))

(assert (= (and d!61568 (not c!23260)) b!94576))

(declare-fun m!89973 () Bool)

(assert (=> b!94576 m!89973))

(assert (=> b!94555 d!61568))

(push 1)

(assert (not b!94564))

(assert (not b!94576))

(assert (not b!94562))

(assert (not b!94566))

(assert (not b!94574))

(assert (not b!94572))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61570 () Bool)

(declare-fun lt!21698 () Int)

(assert (=> d!61570 (>= lt!21698 0)))

(declare-fun e!51687 () Int)

(assert (=> d!61570 (= lt!21698 e!51687)))

(declare-fun c!23261 () Bool)

(assert (=> d!61570 (= c!23261 (is-Nil!820 (t!53933 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820)))))))

(assert (=> d!61570 (= (size!991 (t!53933 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820)))) lt!21698)))

(declare-fun b!94577 () Bool)

(assert (=> b!94577 (= e!51687 0)))

(declare-fun b!94578 () Bool)

(assert (=> b!94578 (= e!51687 (+ 1 (size!991 (t!53933 (t!53933 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820)))))))))

(assert (= (and d!61570 c!23261) b!94577))

(assert (= (and d!61570 (not c!23261)) b!94578))

(declare-fun m!89975 () Bool)

(assert (=> b!94578 m!89975))

(assert (=> b!94574 d!61570))

(declare-fun d!61572 () Bool)

(declare-fun lt!21699 () Int)

(assert (=> d!61572 (>= lt!21699 0)))

(declare-fun e!51688 () Int)

(assert (=> d!61572 (= lt!21699 e!51688)))

(declare-fun c!23262 () Bool)

(assert (=> d!61572 (= c!23262 (is-Nil!820 (t!53933 lt!21691)))))

(assert (=> d!61572 (= (size!991 (t!53933 lt!21691)) lt!21699)))

(declare-fun b!94579 () Bool)

(assert (=> b!94579 (= e!51688 0)))

(declare-fun b!94580 () Bool)

(assert (=> b!94580 (= e!51688 (+ 1 (size!991 (t!53933 (t!53933 lt!21691)))))))

(assert (= (and d!61572 c!23262) b!94579))

(assert (= (and d!61572 (not c!23262)) b!94580))

(declare-fun m!89977 () Bool)

(assert (=> b!94580 m!89977))

(assert (=> b!94576 d!61572))

(declare-fun d!61574 () Bool)

(declare-fun c!23263 () Bool)

(assert (=> d!61574 (= c!23263 (is-Nil!820 (t!53933 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820)))))))

(declare-fun e!51689 () (Set tuple2!478))

(assert (=> d!61574 (= (content!201 (t!53933 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820)))) e!51689)))

(declare-fun b!94581 () Bool)

(assert (=> b!94581 (= e!51689 (as emptyset (Set tuple2!478)))))

(declare-fun b!94582 () Bool)

(assert (=> b!94582 (= e!51689 (union (insert (h!5612 (t!53933 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820)))) (as emptyset (Set tuple2!478))) (content!201 (t!53933 (t!53933 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820)))))))))

(assert (= (and d!61574 c!23263) b!94581))

(assert (= (and d!61574 (not c!23263)) b!94582))

(declare-fun m!89979 () Bool)

(assert (=> b!94582 m!89979))

(declare-fun m!89981 () Bool)

(assert (=> b!94582 m!89981))

(assert (=> b!94564 d!61574))

(declare-fun d!61576 () Bool)

(declare-fun lt!21700 () Int)

(assert (=> d!61576 (>= lt!21700 0)))

(declare-fun e!51690 () Int)

(assert (=> d!61576 (= lt!21700 e!51690)))

(declare-fun c!23264 () Bool)

(assert (=> d!61576 (= c!23264 (is-Nil!820 (t!53933 lt!21690)))))

(assert (=> d!61576 (= (size!991 (t!53933 lt!21690)) lt!21700)))

(declare-fun b!94583 () Bool)

(assert (=> b!94583 (= e!51690 0)))

(declare-fun b!94584 () Bool)

(assert (=> b!94584 (= e!51690 (+ 1 (size!991 (t!53933 (t!53933 lt!21690)))))))

(assert (= (and d!61576 c!23264) b!94583))

(assert (= (and d!61576 (not c!23264)) b!94584))

(declare-fun m!89983 () Bool)

(assert (=> b!94584 m!89983))

(assert (=> b!94572 d!61576))

(declare-fun d!61578 () Bool)

(declare-fun c!23265 () Bool)

(assert (=> d!61578 (= c!23265 (is-Nil!820 (t!53933 lt!21691)))))

(declare-fun e!51691 () (Set tuple2!478))

(assert (=> d!61578 (= (content!201 (t!53933 lt!21691)) e!51691)))

(declare-fun b!94585 () Bool)

(assert (=> b!94585 (= e!51691 (as emptyset (Set tuple2!478)))))

(declare-fun b!94586 () Bool)

(assert (=> b!94586 (= e!51691 (union (insert (h!5612 (t!53933 lt!21691)) (as emptyset (Set tuple2!478))) (content!201 (t!53933 (t!53933 lt!21691)))))))

(assert (= (and d!61578 c!23265) b!94585))

(assert (= (and d!61578 (not c!23265)) b!94586))

(declare-fun m!89985 () Bool)

(assert (=> b!94586 m!89985))

(declare-fun m!89987 () Bool)

(assert (=> b!94586 m!89987))

(assert (=> b!94566 d!61578))

(declare-fun d!61580 () Bool)

(declare-fun c!23266 () Bool)

(assert (=> d!61580 (= c!23266 (is-Nil!820 (t!53933 lt!21690)))))

(declare-fun e!51692 () (Set tuple2!478))

(assert (=> d!61580 (= (content!201 (t!53933 lt!21690)) e!51692)))

(declare-fun b!94587 () Bool)

(assert (=> b!94587 (= e!51692 (as emptyset (Set tuple2!478)))))

(declare-fun b!94588 () Bool)

(assert (=> b!94588 (= e!51692 (union (insert (h!5612 (t!53933 lt!21690)) (as emptyset (Set tuple2!478))) (content!201 (t!53933 (t!53933 lt!21690)))))))

(assert (= (and d!61580 c!23266) b!94587))

(assert (= (and d!61580 (not c!23266)) b!94588))

(declare-fun m!89989 () Bool)

(assert (=> b!94588 m!89989))

(declare-fun m!89991 () Bool)

(assert (=> b!94588 m!89991))

(assert (=> b!94562 d!61580))

(push 1)

(assert (not b!94586))

(assert (not b!94588))

(assert (not b!94582))

(assert (not b!94580))

(assert (not b!94578))

(assert (not b!94584))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61582 () Bool)

(declare-fun lt!21701 () Int)

(assert (=> d!61582 (>= lt!21701 0)))

(declare-fun e!51693 () Int)

(assert (=> d!61582 (= lt!21701 e!51693)))

(declare-fun c!23267 () Bool)

(assert (=> d!61582 (= c!23267 (is-Nil!820 (t!53933 (t!53933 lt!21690))))))

(assert (=> d!61582 (= (size!991 (t!53933 (t!53933 lt!21690))) lt!21701)))

(declare-fun b!94589 () Bool)

(assert (=> b!94589 (= e!51693 0)))

(declare-fun b!94590 () Bool)

(assert (=> b!94590 (= e!51693 (+ 1 (size!991 (t!53933 (t!53933 (t!53933 lt!21690))))))))

(assert (= (and d!61582 c!23267) b!94589))

(assert (= (and d!61582 (not c!23267)) b!94590))

(declare-fun m!89993 () Bool)

(assert (=> b!94590 m!89993))

(assert (=> b!94584 d!61582))

(declare-fun d!61584 () Bool)

(declare-fun c!23268 () Bool)

(assert (=> d!61584 (= c!23268 (is-Nil!820 (t!53933 (t!53933 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820))))))))

(declare-fun e!51694 () (Set tuple2!478))

(assert (=> d!61584 (= (content!201 (t!53933 (t!53933 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820))))) e!51694)))

(declare-fun b!94591 () Bool)

(assert (=> b!94591 (= e!51694 (as emptyset (Set tuple2!478)))))

(declare-fun b!94592 () Bool)

(assert (=> b!94592 (= e!51694 (union (insert (h!5612 (t!53933 (t!53933 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820))))) (as emptyset (Set tuple2!478))) (content!201 (t!53933 (t!53933 (t!53933 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820))))))))))

(assert (= (and d!61584 c!23268) b!94591))

(assert (= (and d!61584 (not c!23268)) b!94592))

(declare-fun m!89995 () Bool)

(assert (=> b!94592 m!89995))

(declare-fun m!89997 () Bool)

(assert (=> b!94592 m!89997))

(assert (=> b!94582 d!61584))

(declare-fun d!61586 () Bool)

(declare-fun c!23269 () Bool)

(assert (=> d!61586 (= c!23269 (is-Nil!820 (t!53933 (t!53933 lt!21691))))))

(declare-fun e!51695 () (Set tuple2!478))

(assert (=> d!61586 (= (content!201 (t!53933 (t!53933 lt!21691))) e!51695)))

(declare-fun b!94593 () Bool)

(assert (=> b!94593 (= e!51695 (as emptyset (Set tuple2!478)))))

(declare-fun b!94594 () Bool)

(assert (=> b!94594 (= e!51695 (union (insert (h!5612 (t!53933 (t!53933 lt!21691))) (as emptyset (Set tuple2!478))) (content!201 (t!53933 (t!53933 (t!53933 lt!21691))))))))

(assert (= (and d!61586 c!23269) b!94593))

(assert (= (and d!61586 (not c!23269)) b!94594))

(declare-fun m!89999 () Bool)

(assert (=> b!94594 m!89999))

(declare-fun m!90001 () Bool)

(assert (=> b!94594 m!90001))

(assert (=> b!94586 d!61586))

(declare-fun d!61588 () Bool)

(declare-fun lt!21702 () Int)

(assert (=> d!61588 (>= lt!21702 0)))

(declare-fun e!51696 () Int)

(assert (=> d!61588 (= lt!21702 e!51696)))

(declare-fun c!23270 () Bool)

(assert (=> d!61588 (= c!23270 (is-Nil!820 (t!53933 (t!53933 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820))))))))

(assert (=> d!61588 (= (size!991 (t!53933 (t!53933 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820))))) lt!21702)))

(declare-fun b!94595 () Bool)

(assert (=> b!94595 (= e!51696 0)))

(declare-fun b!94596 () Bool)

(assert (=> b!94596 (= e!51696 (+ 1 (size!991 (t!53933 (t!53933 (t!53933 (Cons!818 (tuple2!479 lt!21689 Alice!66) (Cons!818 (tuple2!479 lt!21689 Charlie!66) Nil!820))))))))))

(assert (= (and d!61588 c!23270) b!94595))

(assert (= (and d!61588 (not c!23270)) b!94596))

(declare-fun m!90003 () Bool)

(assert (=> b!94596 m!90003))

(assert (=> b!94578 d!61588))

(declare-fun d!61590 () Bool)

(declare-fun c!23271 () Bool)

(assert (=> d!61590 (= c!23271 (is-Nil!820 (t!53933 (t!53933 lt!21690))))))

(declare-fun e!51697 () (Set tuple2!478))

(assert (=> d!61590 (= (content!201 (t!53933 (t!53933 lt!21690))) e!51697)))

(declare-fun b!94597 () Bool)

(assert (=> b!94597 (= e!51697 (as emptyset (Set tuple2!478)))))

(declare-fun b!94598 () Bool)

(assert (=> b!94598 (= e!51697 (union (insert (h!5612 (t!53933 (t!53933 lt!21690))) (as emptyset (Set tuple2!478))) (content!201 (t!53933 (t!53933 (t!53933 lt!21690))))))))

(assert (= (and d!61590 c!23271) b!94597))

(assert (= (and d!61590 (not c!23271)) b!94598))

(declare-fun m!90005 () Bool)

(assert (=> b!94598 m!90005))

(declare-fun m!90007 () Bool)

(assert (=> b!94598 m!90007))

(assert (=> b!94588 d!61590))

(declare-fun d!61592 () Bool)

(declare-fun lt!21703 () Int)

(assert (=> d!61592 (>= lt!21703 0)))

(declare-fun e!51698 () Int)

(assert (=> d!61592 (= lt!21703 e!51698)))

(declare-fun c!23272 () Bool)

(assert (=> d!61592 (= c!23272 (is-Nil!820 (t!53933 (t!53933 lt!21691))))))

(assert (=> d!61592 (= (size!991 (t!53933 (t!53933 lt!21691))) lt!21703)))

(declare-fun b!94599 () Bool)

(assert (=> b!94599 (= e!51698 0)))

(declare-fun b!94600 () Bool)

(assert (=> b!94600 (= e!51698 (+ 1 (size!991 (t!53933 (t!53933 (t!53933 lt!21691))))))))

(assert (= (and d!61592 c!23272) b!94599))

(assert (= (and d!61592 (not c!23272)) b!94600))

(declare-fun m!90009 () Bool)

(assert (=> b!94600 m!90009))

(assert (=> b!94580 d!61592))

(push 1)

(assert (not b!94596))

(assert (not b!94590))

(assert (not b!94598))

(assert (not b!94592))

(assert (not b!94594))

(assert (not b!94600))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

