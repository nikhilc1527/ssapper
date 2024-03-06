; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5684 () Bool)

(assert start!5684)

(declare-fun b!43530 () Bool)

(declare-fun e!22576 () Bool)

(declare-fun e!22577 () Bool)

(assert (=> b!43530 (= e!22576 e!22577)))

(declare-fun res!20635 () Bool)

(assert (=> b!43530 (=> res!20635 e!22577)))

(declare-datatypes () ((Nat!110 (Zero!94) (Succ!91 (n!1235 Nat!110)))))

(declare-fun n1!222 () Nat!110)

(declare-fun >!2 (Nat!110 Nat!110) Bool)

(assert (=> b!43530 (= res!20635 (not (>!2 n1!222 Zero!94)))))

(declare-fun b!43531 () Bool)

(declare-fun n2!234 () Nat!110)

(assert (=> b!43531 (= e!22577 (not (>!2 n2!234 Zero!94)))))

(declare-fun b!43532 () Bool)

(declare-fun res!20639 () Bool)

(assert (=> b!43532 (=> (not res!20639) (not e!22576))))

(declare-fun n!813 () Nat!110)

(declare-fun pow!0 (Nat!110 Nat!110) Nat!110)

(assert (=> b!43532 (= res!20639 (= n1!222 (pow!0 (Succ!91 (Succ!91 Zero!94)) n!813)))))

(declare-fun res!20637 () Bool)

(assert (=> start!5684 (=> (not res!20637) (not e!22576))))

(declare-datatypes () ((Unit!412 (Unit!413))))

(declare-fun tmp!191 () Unit!412)

(declare-fun pow_positive!0 (Nat!110 Nat!110) Unit!412)

(assert (=> start!5684 (= res!20637 (= tmp!191 (pow_positive!0 (Succ!91 (Succ!91 Zero!94)) n!813)))))

(assert (=> start!5684 e!22576))

(assert (=> start!5684 true))

(declare-fun b!43533 () Bool)

(declare-fun res!20636 () Bool)

(assert (=> b!43533 (=> (not res!20636) (not e!22576))))

(declare-fun n2!229 () Nat!110)

(declare-fun +!5 (Nat!110 Nat!110) Nat!110)

(declare-fun *!4 (Nat!110 Nat!110) Nat!110)

(assert (=> b!43533 (= res!20636 (= n2!234 (+!5 (*!4 (Succ!91 (Succ!91 Zero!94)) n2!229) (Succ!91 Zero!94))))))

(declare-fun b!43534 () Bool)

(declare-fun res!20638 () Bool)

(assert (=> b!43534 (=> (not res!20638) (not e!22576))))

(declare-fun tmp!193 () Unit!412)

(declare-fun commutative_plus!0 (Nat!110 Nat!110) Unit!412)

(assert (=> b!43534 (= res!20638 (= tmp!193 (commutative_plus!0 (*!4 (Succ!91 (Succ!91 Zero!94)) n2!229) (Succ!91 Zero!94))))))

(assert (= (and start!5684 res!20637) b!43534))

(assert (= (and b!43534 res!20638) b!43532))

(assert (= (and b!43532 res!20639) b!43533))

(assert (= (and b!43533 res!20636) b!43530))

(assert (= (and b!43530 (not res!20635)) b!43531))

(declare-fun m!46753 () Bool)

(assert (=> b!43532 m!46753))

(declare-fun m!46755 () Bool)

(assert (=> b!43533 m!46755))

(assert (=> b!43533 m!46755))

(declare-fun m!46757 () Bool)

(assert (=> b!43533 m!46757))

(declare-fun m!46759 () Bool)

(assert (=> b!43531 m!46759))

(declare-fun m!46761 () Bool)

(assert (=> b!43530 m!46761))

(assert (=> b!43534 m!46755))

(assert (=> b!43534 m!46755))

(declare-fun m!46763 () Bool)

(assert (=> b!43534 m!46763))

(declare-fun m!46765 () Bool)

(assert (=> start!5684 m!46765))

(push 1)

(assert (not b!43534))

(assert (not b!43530))

(assert (not b!43532))

(assert (not b!43533))

(assert (not start!5684))

(assert (not b!43531))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!30928 () Bool)

(assert (=> d!30928 (= (+!5 (*!4 (Succ!91 (Succ!91 Zero!94)) n2!229) (Succ!91 Zero!94)) (+!5 (Succ!91 Zero!94) (*!4 (Succ!91 (Succ!91 Zero!94)) n2!229)))))

(assert (=> d!30928 true))

(declare-fun x$13!94 () Unit!412)

(assert (=> d!30928 (= (commutative_plus!0 (*!4 (Succ!91 (Succ!91 Zero!94)) n2!229) (Succ!91 Zero!94)) x$13!94)))

(declare-fun bs!17713 () Bool)

(assert (= bs!17713 d!30928))

(assert (=> bs!17713 m!46755))

(assert (=> bs!17713 m!46757))

(assert (=> bs!17713 m!46755))

(declare-fun m!46767 () Bool)

(assert (=> bs!17713 m!46767))

(assert (=> b!43534 d!30928))

(declare-fun d!30930 () Bool)

(declare-fun c!9237 () Bool)

(assert (=> d!30930 (= c!9237 (is-Zero!94 (Succ!91 (Succ!91 Zero!94))))))

(declare-fun e!22580 () Nat!110)

(assert (=> d!30930 (= (*!4 (Succ!91 (Succ!91 Zero!94)) n2!229) e!22580)))

(declare-fun b!43539 () Bool)

(assert (=> b!43539 (= e!22580 Zero!94)))

(declare-fun b!43540 () Bool)

(assert (=> b!43540 (= e!22580 (+!5 (*!4 (n!1235 (Succ!91 (Succ!91 Zero!94))) n2!229) n2!229))))

(assert (= (and d!30930 c!9237) b!43539))

(assert (= (and d!30930 (not c!9237)) b!43540))

(declare-fun m!46769 () Bool)

(assert (=> b!43540 m!46769))

(assert (=> b!43540 m!46769))

(declare-fun m!46771 () Bool)

(assert (=> b!43540 m!46771))

(assert (=> b!43534 d!30930))

(declare-fun d!30932 () Bool)

(declare-fun res!20642 () Bool)

(declare-fun e!22583 () Bool)

(assert (=> d!30932 (=> (not res!20642) (not e!22583))))

(declare-fun <!2 (Nat!110 Nat!110) Bool)

(assert (=> d!30932 (= res!20642 (not (<!2 n2!234 Zero!94)))))

(assert (=> d!30932 (= (>!2 n2!234 Zero!94) e!22583)))

(declare-fun b!43543 () Bool)

(assert (=> b!43543 (= e!22583 (not (= n2!234 Zero!94)))))

(assert (= (and d!30932 res!20642) b!43543))

(declare-fun m!46773 () Bool)

(assert (=> d!30932 m!46773))

(assert (=> b!43531 d!30932))

(declare-fun d!30934 () Bool)

(declare-fun res!20643 () Bool)

(declare-fun e!22584 () Bool)

(assert (=> d!30934 (=> (not res!20643) (not e!22584))))

(assert (=> d!30934 (= res!20643 (not (<!2 n1!222 Zero!94)))))

(assert (=> d!30934 (= (>!2 n1!222 Zero!94) e!22584)))

(declare-fun b!43544 () Bool)

(assert (=> b!43544 (= e!22584 (not (= n1!222 Zero!94)))))

(assert (= (and d!30934 res!20643) b!43544))

(declare-fun m!46775 () Bool)

(assert (=> d!30934 m!46775))

(assert (=> b!43530 d!30934))

(declare-fun d!30936 () Bool)

(assert (=> d!30936 (>!2 (pow!0 (Succ!91 (Succ!91 Zero!94)) n!813) Zero!94)))

(assert (=> d!30936 true))

(declare-fun x$67!25 () Unit!412)

(assert (=> d!30936 (= (pow_positive!0 (Succ!91 (Succ!91 Zero!94)) n!813) x$67!25)))

(declare-fun bs!17714 () Bool)

(assert (= bs!17714 d!30936))

(assert (=> bs!17714 m!46753))

(assert (=> bs!17714 m!46753))

(declare-fun m!46777 () Bool)

(assert (=> bs!17714 m!46777))

(assert (=> start!5684 d!30936))

(declare-fun d!30938 () Bool)

(declare-fun c!9240 () Bool)

(assert (=> d!30938 (= c!9240 (is-Zero!94 (*!4 (Succ!91 (Succ!91 Zero!94)) n2!229)))))

(declare-fun e!22587 () Nat!110)

(assert (=> d!30938 (= (+!5 (*!4 (Succ!91 (Succ!91 Zero!94)) n2!229) (Succ!91 Zero!94)) e!22587)))

(declare-fun b!43549 () Bool)

(assert (=> b!43549 (= e!22587 (Succ!91 Zero!94))))

(declare-fun b!43550 () Bool)

(assert (=> b!43550 (= e!22587 (Succ!91 (+!5 (n!1235 (*!4 (Succ!91 (Succ!91 Zero!94)) n2!229)) (Succ!91 Zero!94))))))

(assert (= (and d!30938 c!9240) b!43549))

(assert (= (and d!30938 (not c!9240)) b!43550))

(declare-fun m!46779 () Bool)

(assert (=> b!43550 m!46779))

(assert (=> b!43533 d!30938))

(assert (=> b!43533 d!30930))

(declare-fun d!30940 () Bool)

(declare-fun c!9243 () Bool)

(assert (=> d!30940 (= c!9243 (is-Succ!91 n!813))))

(declare-fun e!22590 () Nat!110)

(assert (=> d!30940 (= (pow!0 (Succ!91 (Succ!91 Zero!94)) n!813) e!22590)))

(declare-fun b!43555 () Bool)

(assert (=> b!43555 (= e!22590 (*!4 (Succ!91 (Succ!91 Zero!94)) (pow!0 (Succ!91 (Succ!91 Zero!94)) (n!1235 n!813))))))

(declare-fun b!43556 () Bool)

(assert (=> b!43556 (= e!22590 (Succ!91 Zero!94))))

(assert (= (and d!30940 c!9243) b!43555))

(assert (= (and d!30940 (not c!9243)) b!43556))

(declare-fun m!46781 () Bool)

(assert (=> b!43555 m!46781))

(assert (=> b!43555 m!46781))

(declare-fun m!46783 () Bool)

(assert (=> b!43555 m!46783))

(assert (=> b!43532 d!30940))

(push 1)

(assert (not b!43550))

(assert (not d!30934))

(assert (not d!30928))

(assert (not b!43540))

(assert (not d!30932))

(assert (not b!43555))

(assert (not d!30936))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!30942 () Bool)

(declare-fun lt!7951 () Bool)

(declare-fun repr!0 (Nat!110) Int)

(assert (=> d!30942 (= lt!7951 (< (repr!0 n1!222) (repr!0 Zero!94)))))

(declare-fun e!22593 () Bool)

(assert (=> d!30942 (= lt!7951 e!22593)))

(declare-fun c!9246 () Bool)

(assert (=> d!30942 (= c!9246 (and (is-Succ!91 n1!222) (is-Succ!91 Zero!94)))))

(assert (=> d!30942 (= (<!2 n1!222 Zero!94) lt!7951)))

(declare-fun b!43561 () Bool)

(assert (=> b!43561 (= e!22593 (<!2 (n!1235 n1!222) (n!1235 Zero!94)))))

(declare-fun b!43562 () Bool)

(assert (=> b!43562 (= e!22593 (and (is-Zero!94 n1!222) (is-Succ!91 Zero!94)))))

(assert (= (and d!30942 c!9246) b!43561))

(assert (= (and d!30942 (not c!9246)) b!43562))

(declare-fun m!46785 () Bool)

(assert (=> d!30942 m!46785))

(declare-fun m!46787 () Bool)

(assert (=> d!30942 m!46787))

(declare-fun m!46789 () Bool)

(assert (=> b!43561 m!46789))

(assert (=> d!30934 d!30942))

(declare-fun d!30944 () Bool)

(declare-fun c!9247 () Bool)

(assert (=> d!30944 (= c!9247 (is-Zero!94 (n!1235 (*!4 (Succ!91 (Succ!91 Zero!94)) n2!229))))))

(declare-fun e!22594 () Nat!110)

(assert (=> d!30944 (= (+!5 (n!1235 (*!4 (Succ!91 (Succ!91 Zero!94)) n2!229)) (Succ!91 Zero!94)) e!22594)))

(declare-fun b!43563 () Bool)

(assert (=> b!43563 (= e!22594 (Succ!91 Zero!94))))

(declare-fun b!43564 () Bool)

(assert (=> b!43564 (= e!22594 (Succ!91 (+!5 (n!1235 (n!1235 (*!4 (Succ!91 (Succ!91 Zero!94)) n2!229))) (Succ!91 Zero!94))))))

(assert (= (and d!30944 c!9247) b!43563))

(assert (= (and d!30944 (not c!9247)) b!43564))

(declare-fun m!46791 () Bool)

(assert (=> b!43564 m!46791))

(assert (=> b!43550 d!30944))

(declare-fun d!30946 () Bool)

(declare-fun c!9248 () Bool)

(assert (=> d!30946 (= c!9248 (is-Zero!94 (*!4 (n!1235 (Succ!91 (Succ!91 Zero!94))) n2!229)))))

(declare-fun e!22595 () Nat!110)

(assert (=> d!30946 (= (+!5 (*!4 (n!1235 (Succ!91 (Succ!91 Zero!94))) n2!229) n2!229) e!22595)))

(declare-fun b!43565 () Bool)

(assert (=> b!43565 (= e!22595 n2!229)))

(declare-fun b!43566 () Bool)

(assert (=> b!43566 (= e!22595 (Succ!91 (+!5 (n!1235 (*!4 (n!1235 (Succ!91 (Succ!91 Zero!94))) n2!229)) n2!229)))))

(assert (= (and d!30946 c!9248) b!43565))

(assert (= (and d!30946 (not c!9248)) b!43566))

(declare-fun m!46793 () Bool)

(assert (=> b!43566 m!46793))

(assert (=> b!43540 d!30946))

(declare-fun d!30948 () Bool)

(declare-fun c!9249 () Bool)

(assert (=> d!30948 (= c!9249 (is-Zero!94 (n!1235 (Succ!91 (Succ!91 Zero!94)))))))

(declare-fun e!22596 () Nat!110)

(assert (=> d!30948 (= (*!4 (n!1235 (Succ!91 (Succ!91 Zero!94))) n2!229) e!22596)))

(declare-fun b!43567 () Bool)

(assert (=> b!43567 (= e!22596 Zero!94)))

(declare-fun b!43568 () Bool)

(assert (=> b!43568 (= e!22596 (+!5 (*!4 (n!1235 (n!1235 (Succ!91 (Succ!91 Zero!94)))) n2!229) n2!229))))

(assert (= (and d!30948 c!9249) b!43567))

(assert (= (and d!30948 (not c!9249)) b!43568))

(declare-fun m!46795 () Bool)

(assert (=> b!43568 m!46795))

(assert (=> b!43568 m!46795))

(declare-fun m!46797 () Bool)

(assert (=> b!43568 m!46797))

(assert (=> b!43540 d!30948))

(assert (=> d!30928 d!30938))

(declare-fun d!30950 () Bool)

(declare-fun c!9250 () Bool)

(assert (=> d!30950 (= c!9250 (is-Zero!94 (Succ!91 Zero!94)))))

(declare-fun e!22597 () Nat!110)

(assert (=> d!30950 (= (+!5 (Succ!91 Zero!94) (*!4 (Succ!91 (Succ!91 Zero!94)) n2!229)) e!22597)))

(declare-fun b!43569 () Bool)

(assert (=> b!43569 (= e!22597 (*!4 (Succ!91 (Succ!91 Zero!94)) n2!229))))

(declare-fun b!43570 () Bool)

(assert (=> b!43570 (= e!22597 (Succ!91 (+!5 (n!1235 (Succ!91 Zero!94)) (*!4 (Succ!91 (Succ!91 Zero!94)) n2!229))))))

(assert (= (and d!30950 c!9250) b!43569))

(assert (= (and d!30950 (not c!9250)) b!43570))

(assert (=> b!43570 m!46755))

(declare-fun m!46799 () Bool)

(assert (=> b!43570 m!46799))

(assert (=> d!30928 d!30950))

(declare-fun d!30952 () Bool)

(declare-fun lt!7952 () Bool)

(assert (=> d!30952 (= lt!7952 (< (repr!0 n2!234) (repr!0 Zero!94)))))

(declare-fun e!22598 () Bool)

(assert (=> d!30952 (= lt!7952 e!22598)))

(declare-fun c!9251 () Bool)

(assert (=> d!30952 (= c!9251 (and (is-Succ!91 n2!234) (is-Succ!91 Zero!94)))))

(assert (=> d!30952 (= (<!2 n2!234 Zero!94) lt!7952)))

(declare-fun b!43571 () Bool)

(assert (=> b!43571 (= e!22598 (<!2 (n!1235 n2!234) (n!1235 Zero!94)))))

(declare-fun b!43572 () Bool)

(assert (=> b!43572 (= e!22598 (and (is-Zero!94 n2!234) (is-Succ!91 Zero!94)))))

(assert (= (and d!30952 c!9251) b!43571))

(assert (= (and d!30952 (not c!9251)) b!43572))

(declare-fun m!46801 () Bool)

(assert (=> d!30952 m!46801))

(assert (=> d!30952 m!46787))

(declare-fun m!46803 () Bool)

(assert (=> b!43571 m!46803))

(assert (=> d!30932 d!30952))

(declare-fun d!30954 () Bool)

(declare-fun res!20644 () Bool)

(declare-fun e!22599 () Bool)

(assert (=> d!30954 (=> (not res!20644) (not e!22599))))

(assert (=> d!30954 (= res!20644 (not (<!2 (pow!0 (Succ!91 (Succ!91 Zero!94)) n!813) Zero!94)))))

(assert (=> d!30954 (= (>!2 (pow!0 (Succ!91 (Succ!91 Zero!94)) n!813) Zero!94) e!22599)))

(declare-fun b!43573 () Bool)

(assert (=> b!43573 (= e!22599 (not (= (pow!0 (Succ!91 (Succ!91 Zero!94)) n!813) Zero!94)))))

(assert (= (and d!30954 res!20644) b!43573))

(assert (=> d!30954 m!46753))

(declare-fun m!46805 () Bool)

(assert (=> d!30954 m!46805))

(assert (=> d!30936 d!30954))

(assert (=> d!30936 d!30940))

(declare-fun d!30956 () Bool)

(declare-fun c!9252 () Bool)

(assert (=> d!30956 (= c!9252 (is-Zero!94 (Succ!91 (Succ!91 Zero!94))))))

(declare-fun e!22600 () Nat!110)

(assert (=> d!30956 (= (*!4 (Succ!91 (Succ!91 Zero!94)) (pow!0 (Succ!91 (Succ!91 Zero!94)) (n!1235 n!813))) e!22600)))

(declare-fun b!43574 () Bool)

(assert (=> b!43574 (= e!22600 Zero!94)))

(declare-fun b!43575 () Bool)

(assert (=> b!43575 (= e!22600 (+!5 (*!4 (n!1235 (Succ!91 (Succ!91 Zero!94))) (pow!0 (Succ!91 (Succ!91 Zero!94)) (n!1235 n!813))) (pow!0 (Succ!91 (Succ!91 Zero!94)) (n!1235 n!813))))))

(assert (= (and d!30956 c!9252) b!43574))

(assert (= (and d!30956 (not c!9252)) b!43575))

(assert (=> b!43575 m!46781))

(declare-fun m!46807 () Bool)

(assert (=> b!43575 m!46807))

(assert (=> b!43575 m!46807))

(assert (=> b!43575 m!46781))

(declare-fun m!46809 () Bool)

(assert (=> b!43575 m!46809))

(assert (=> b!43555 d!30956))

(declare-fun d!30958 () Bool)

(declare-fun c!9253 () Bool)

(assert (=> d!30958 (= c!9253 (is-Succ!91 (n!1235 n!813)))))

(declare-fun e!22601 () Nat!110)

(assert (=> d!30958 (= (pow!0 (Succ!91 (Succ!91 Zero!94)) (n!1235 n!813)) e!22601)))

(declare-fun b!43576 () Bool)

(assert (=> b!43576 (= e!22601 (*!4 (Succ!91 (Succ!91 Zero!94)) (pow!0 (Succ!91 (Succ!91 Zero!94)) (n!1235 (n!1235 n!813)))))))

(declare-fun b!43577 () Bool)

(assert (=> b!43577 (= e!22601 (Succ!91 Zero!94))))

(assert (= (and d!30958 c!9253) b!43576))

(assert (= (and d!30958 (not c!9253)) b!43577))

(declare-fun m!46811 () Bool)

(assert (=> b!43576 m!46811))

(assert (=> b!43576 m!46811))

(declare-fun m!46813 () Bool)

(assert (=> b!43576 m!46813))

(assert (=> b!43555 d!30958))

(push 1)

(assert (not b!43571))

(assert (not b!43568))

(assert (not b!43570))

(assert (not b!43576))

(assert (not d!30942))

(assert (not b!43561))

(assert (not b!43566))

(assert (not b!43564))

(assert (not d!30952))

(assert (not d!30954))

(assert (not b!43575))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

