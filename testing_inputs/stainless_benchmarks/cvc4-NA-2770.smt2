; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14596 () Bool)

(assert start!14596)

(declare-datatypes () ((P!50 (Charlie!50) (Alice!50) (Bob!50))))

(declare-datatypes () ((S!119 (S!120 (who!2135 P!50) (amount!2135 Int)))))

(declare-datatypes () ((List!850 (Cons!788 (h!4445 S!119) (t!52655 List!850)) (Nil!790))))

(declare-fun lt!21477 () List!850)

(assert (=> start!14596 (= lt!21477 (Cons!788 (S!120 Charlie!50 4000) Nil!790))))

(declare-datatypes () ((List!851 (Cons!789 (h!4446 P!50) (t!52656 List!851)) (Nil!791))))

(declare-fun size!964 (List!851) Int)

(declare-fun size!965 (List!850) Int)

(assert (=> start!14596 (not (= (size!964 (Cons!789 (who!2135 (h!4445 lt!21477)) Nil!791)) (size!965 lt!21477)))))

(declare-fun bs!42931 () Bool)

(assert (= bs!42931 start!14596))

(declare-fun m!89667 () Bool)

(assert (=> bs!42931 m!89667))

(declare-fun m!89669 () Bool)

(assert (=> bs!42931 m!89669))

(push 1)

(assert (not start!14596))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61404 () Bool)

(declare-fun lt!21480 () Int)

(assert (=> d!61404 (>= lt!21480 0)))

(declare-fun e!51520 () Int)

(assert (=> d!61404 (= lt!21480 e!51520)))

(declare-fun c!23112 () Bool)

(assert (=> d!61404 (= c!23112 (is-Nil!791 (Cons!789 (who!2135 (h!4445 lt!21477)) Nil!791)))))

(assert (=> d!61404 (= (size!964 (Cons!789 (who!2135 (h!4445 lt!21477)) Nil!791)) lt!21480)))

(declare-fun b!94041 () Bool)

(assert (=> b!94041 (= e!51520 0)))

(declare-fun b!94042 () Bool)

(assert (=> b!94042 (= e!51520 (+ 1 (size!964 (t!52656 (Cons!789 (who!2135 (h!4445 lt!21477)) Nil!791)))))))

(assert (= (and d!61404 c!23112) b!94041))

(assert (= (and d!61404 (not c!23112)) b!94042))

(declare-fun m!89671 () Bool)

(assert (=> b!94042 m!89671))

(assert (=> start!14596 d!61404))

(declare-fun d!61406 () Bool)

(declare-fun lt!21483 () Int)

(assert (=> d!61406 (>= lt!21483 0)))

(declare-fun e!51523 () Int)

(assert (=> d!61406 (= lt!21483 e!51523)))

(declare-fun c!23115 () Bool)

(assert (=> d!61406 (= c!23115 (is-Nil!790 lt!21477))))

(assert (=> d!61406 (= (size!965 lt!21477) lt!21483)))

(declare-fun b!94047 () Bool)

(assert (=> b!94047 (= e!51523 0)))

(declare-fun b!94048 () Bool)

(assert (=> b!94048 (= e!51523 (+ 1 (size!965 (t!52655 lt!21477))))))

(assert (= (and d!61406 c!23115) b!94047))

(assert (= (and d!61406 (not c!23115)) b!94048))

(declare-fun m!89673 () Bool)

(assert (=> b!94048 m!89673))

(assert (=> start!14596 d!61406))

(push 1)

(assert (not b!94042))

(assert (not b!94048))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61408 () Bool)

(declare-fun lt!21484 () Int)

(assert (=> d!61408 (>= lt!21484 0)))

(declare-fun e!51524 () Int)

(assert (=> d!61408 (= lt!21484 e!51524)))

(declare-fun c!23116 () Bool)

(assert (=> d!61408 (= c!23116 (is-Nil!791 (t!52656 (Cons!789 (who!2135 (h!4445 lt!21477)) Nil!791))))))

(assert (=> d!61408 (= (size!964 (t!52656 (Cons!789 (who!2135 (h!4445 lt!21477)) Nil!791))) lt!21484)))

(declare-fun b!94049 () Bool)

(assert (=> b!94049 (= e!51524 0)))

(declare-fun b!94050 () Bool)

(assert (=> b!94050 (= e!51524 (+ 1 (size!964 (t!52656 (t!52656 (Cons!789 (who!2135 (h!4445 lt!21477)) Nil!791))))))))

(assert (= (and d!61408 c!23116) b!94049))

(assert (= (and d!61408 (not c!23116)) b!94050))

(declare-fun m!89675 () Bool)

(assert (=> b!94050 m!89675))

(assert (=> b!94042 d!61408))

(declare-fun d!61410 () Bool)

(declare-fun lt!21485 () Int)

(assert (=> d!61410 (>= lt!21485 0)))

(declare-fun e!51525 () Int)

(assert (=> d!61410 (= lt!21485 e!51525)))

(declare-fun c!23117 () Bool)

(assert (=> d!61410 (= c!23117 (is-Nil!790 (t!52655 lt!21477)))))

(assert (=> d!61410 (= (size!965 (t!52655 lt!21477)) lt!21485)))

(declare-fun b!94051 () Bool)

(assert (=> b!94051 (= e!51525 0)))

(declare-fun b!94052 () Bool)

(assert (=> b!94052 (= e!51525 (+ 1 (size!965 (t!52655 (t!52655 lt!21477)))))))

(assert (= (and d!61410 c!23117) b!94051))

(assert (= (and d!61410 (not c!23117)) b!94052))

(declare-fun m!89677 () Bool)

(assert (=> b!94052 m!89677))

(assert (=> b!94048 d!61410))

(push 1)

(assert (not b!94050))

(assert (not b!94052))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

