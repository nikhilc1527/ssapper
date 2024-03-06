; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5700 () Bool)

(assert start!5700)

(declare-fun b!43590 () Bool)

(declare-fun res!20661 () Bool)

(declare-fun e!22604 () Bool)

(assert (=> b!43590 (=> (not res!20661) (not e!22604))))

(declare-datatypes () ((Nat!111 (Zero!95) (Succ!92 (n!1236 Nat!111)))))

(declare-fun n1!226 () Nat!111)

(assert (=> b!43590 (= res!20661 (= n1!226 (Succ!92 Zero!95)))))

(declare-fun res!20662 () Bool)

(assert (=> start!5700 (=> (not res!20662) (not e!22604))))

(declare-datatypes () ((Unit!414 (Unit!415))))

(declare-fun tmp!191 () Unit!414)

(declare-fun n!813 () Nat!111)

(declare-fun pow_positive!0 (Nat!111 Nat!111) Unit!414)

(assert (=> start!5700 (= res!20662 (= tmp!191 (pow_positive!0 (Succ!92 (Succ!92 Zero!95)) n!813)))))

(assert (=> start!5700 e!22604))

(assert (=> start!5700 true))

(declare-fun b!43591 () Bool)

(declare-fun res!20660 () Bool)

(assert (=> b!43591 (=> (not res!20660) (not e!22604))))

(declare-fun n3!53 () Nat!111)

(assert (=> b!43591 (= res!20660 (= n3!53 (Succ!92 Zero!95)))))

(declare-fun b!43592 () Bool)

(declare-fun res!20657 () Bool)

(assert (=> b!43592 (=> (not res!20657) (not e!22604))))

(declare-fun tmp!193 () Unit!414)

(declare-fun n2!229 () Nat!111)

(declare-fun commutative_plus!0 (Nat!111 Nat!111) Unit!414)

(declare-fun *!4 (Nat!111 Nat!111) Nat!111)

(assert (=> b!43592 (= res!20657 (= tmp!193 (commutative_plus!0 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))))))

(declare-fun b!43593 () Bool)

(declare-fun res!20659 () Bool)

(assert (=> b!43593 (=> (not res!20659) (not e!22604))))

(declare-fun tmp!194 () Unit!414)

(declare-fun increasing_times!0 (Nat!111 Nat!111) Unit!414)

(declare-fun pow!0 (Nat!111 Nat!111) Nat!111)

(declare-fun +!5 (Nat!111 Nat!111) Nat!111)

(assert (=> b!43593 (= res!20659 (= tmp!194 (increasing_times!0 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))))

(declare-fun b!43594 () Bool)

(declare-fun res!20658 () Bool)

(assert (=> b!43594 (=> (not res!20658) (not e!22604))))

(declare-fun n2!238 () Nat!111)

(assert (=> b!43594 (= res!20658 (= n2!238 (*!4 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))))

(declare-fun b!43595 () Bool)

(declare-fun >=!2 (Nat!111 Nat!111) Bool)

(assert (=> b!43595 (= e!22604 (not (>=!2 n2!238 n3!53)))))

(assert (= (and start!5700 res!20662) b!43592))

(assert (= (and b!43592 res!20657) b!43593))

(assert (= (and b!43593 res!20659) b!43590))

(assert (= (and b!43590 res!20661) b!43594))

(assert (= (and b!43594 res!20658) b!43591))

(assert (= (and b!43591 res!20660) b!43595))

(declare-fun m!46815 () Bool)

(assert (=> b!43595 m!46815))

(declare-fun m!46817 () Bool)

(assert (=> start!5700 m!46817))

(declare-fun m!46819 () Bool)

(assert (=> b!43594 m!46819))

(declare-fun m!46821 () Bool)

(assert (=> b!43594 m!46821))

(assert (=> b!43594 m!46821))

(declare-fun m!46823 () Bool)

(assert (=> b!43594 m!46823))

(assert (=> b!43594 m!46819))

(assert (=> b!43594 m!46823))

(declare-fun m!46825 () Bool)

(assert (=> b!43594 m!46825))

(assert (=> b!43593 m!46819))

(assert (=> b!43593 m!46821))

(assert (=> b!43593 m!46821))

(assert (=> b!43593 m!46823))

(assert (=> b!43593 m!46819))

(assert (=> b!43593 m!46823))

(declare-fun m!46827 () Bool)

(assert (=> b!43593 m!46827))

(assert (=> b!43592 m!46821))

(assert (=> b!43592 m!46821))

(declare-fun m!46829 () Bool)

(assert (=> b!43592 m!46829))

(push 1)

(assert (not b!43593))

(assert (not start!5700))

(assert (not b!43592))

(assert (not b!43594))

(assert (not b!43595))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!30960 () Bool)

(declare-fun res!20665 () Bool)

(declare-fun e!22607 () Bool)

(assert (=> d!30960 (=> res!20665 e!22607)))

(declare-fun >!2 (Nat!111 Nat!111) Bool)

(assert (=> d!30960 (= res!20665 (>!2 n2!238 n3!53))))

(assert (=> d!30960 (= (>=!2 n2!238 n3!53) e!22607)))

(declare-fun b!43598 () Bool)

(assert (=> b!43598 (= e!22607 (= n2!238 n3!53))))

(assert (= (and d!30960 (not res!20665)) b!43598))

(declare-fun m!46831 () Bool)

(assert (=> d!30960 m!46831))

(assert (=> b!43595 d!30960))

(declare-fun d!30962 () Bool)

(assert (=> d!30962 (>!2 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) Zero!95)))

(assert (=> d!30962 true))

(declare-fun x$67!28 () Unit!414)

(assert (=> d!30962 (= (pow_positive!0 (Succ!92 (Succ!92 Zero!95)) n!813) x$67!28)))

(declare-fun bs!17716 () Bool)

(assert (= bs!17716 d!30962))

(assert (=> bs!17716 m!46819))

(assert (=> bs!17716 m!46819))

(declare-fun m!46833 () Bool)

(assert (=> bs!17716 m!46833))

(assert (=> start!5700 d!30962))

(declare-fun d!30964 () Bool)

(assert (=> d!30964 (= (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)) (+!5 (Succ!92 Zero!95) (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229)))))

(assert (=> d!30964 true))

(declare-fun x$13!97 () Unit!414)

(assert (=> d!30964 (= (commutative_plus!0 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)) x$13!97)))

(declare-fun bs!17717 () Bool)

(assert (= bs!17717 d!30964))

(assert (=> bs!17717 m!46821))

(assert (=> bs!17717 m!46823))

(assert (=> bs!17717 m!46821))

(declare-fun m!46835 () Bool)

(assert (=> bs!17717 m!46835))

(assert (=> b!43592 d!30964))

(declare-fun d!30966 () Bool)

(declare-fun c!9256 () Bool)

(assert (=> d!30966 (= c!9256 (is-Zero!95 (Succ!92 (Succ!92 Zero!95))))))

(declare-fun e!22610 () Nat!111)

(assert (=> d!30966 (= (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) e!22610)))

(declare-fun b!43603 () Bool)

(assert (=> b!43603 (= e!22610 Zero!95)))

(declare-fun b!43604 () Bool)

(assert (=> b!43604 (= e!22610 (+!5 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) n2!229) n2!229))))

(assert (= (and d!30966 c!9256) b!43603))

(assert (= (and d!30966 (not c!9256)) b!43604))

(declare-fun m!46837 () Bool)

(assert (=> b!43604 m!46837))

(assert (=> b!43604 m!46837))

(declare-fun m!46839 () Bool)

(assert (=> b!43604 m!46839))

(assert (=> b!43592 d!30966))

(declare-fun d!30968 () Bool)

(declare-fun <=!2 (Nat!111 Nat!111) Bool)

(assert (=> d!30968 (<=!2 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (*!4 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))))))

(assert (=> d!30968 true))

(declare-fun x$66!26 () Unit!414)

(assert (=> d!30968 (= (increasing_times!0 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))) x$66!26)))

(declare-fun bs!17718 () Bool)

(assert (= bs!17718 d!30968))

(assert (=> bs!17718 m!46819))

(assert (=> bs!17718 m!46823))

(assert (=> bs!17718 m!46825))

(assert (=> bs!17718 m!46819))

(assert (=> bs!17718 m!46825))

(declare-fun m!46841 () Bool)

(assert (=> bs!17718 m!46841))

(assert (=> b!43593 d!30968))

(declare-fun d!30970 () Bool)

(declare-fun c!9259 () Bool)

(assert (=> d!30970 (= c!9259 (is-Succ!92 n!813))))

(declare-fun e!22613 () Nat!111)

(assert (=> d!30970 (= (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) e!22613)))

(declare-fun b!43609 () Bool)

(assert (=> b!43609 (= e!22613 (*!4 (Succ!92 (Succ!92 Zero!95)) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813))))))

(declare-fun b!43610 () Bool)

(assert (=> b!43610 (= e!22613 (Succ!92 Zero!95))))

(assert (= (and d!30970 c!9259) b!43609))

(assert (= (and d!30970 (not c!9259)) b!43610))

(declare-fun m!46843 () Bool)

(assert (=> b!43609 m!46843))

(assert (=> b!43609 m!46843))

(declare-fun m!46845 () Bool)

(assert (=> b!43609 m!46845))

(assert (=> b!43593 d!30970))

(declare-fun d!30972 () Bool)

(declare-fun c!9262 () Bool)

(assert (=> d!30972 (= c!9262 (is-Zero!95 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229)))))

(declare-fun e!22616 () Nat!111)

(assert (=> d!30972 (= (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)) e!22616)))

(declare-fun b!43615 () Bool)

(assert (=> b!43615 (= e!22616 (Succ!92 Zero!95))))

(declare-fun b!43616 () Bool)

(assert (=> b!43616 (= e!22616 (Succ!92 (+!5 (n!1236 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229)) (Succ!92 Zero!95))))))

(assert (= (and d!30972 c!9262) b!43615))

(assert (= (and d!30972 (not c!9262)) b!43616))

(declare-fun m!46847 () Bool)

(assert (=> b!43616 m!46847))

(assert (=> b!43593 d!30972))

(assert (=> b!43593 d!30966))

(declare-fun d!30974 () Bool)

(declare-fun c!9263 () Bool)

(assert (=> d!30974 (= c!9263 (is-Zero!95 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)))))

(declare-fun e!22617 () Nat!111)

(assert (=> d!30974 (= (*!4 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))) e!22617)))

(declare-fun b!43617 () Bool)

(assert (=> b!43617 (= e!22617 Zero!95)))

(declare-fun b!43618 () Bool)

(assert (=> b!43618 (= e!22617 (+!5 (*!4 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))))))

(assert (= (and d!30974 c!9263) b!43617))

(assert (= (and d!30974 (not c!9263)) b!43618))

(assert (=> b!43618 m!46823))

(declare-fun m!46849 () Bool)

(assert (=> b!43618 m!46849))

(assert (=> b!43618 m!46849))

(assert (=> b!43618 m!46823))

(declare-fun m!46851 () Bool)

(assert (=> b!43618 m!46851))

(assert (=> b!43594 d!30974))

(assert (=> b!43594 d!30970))

(assert (=> b!43594 d!30972))

(assert (=> b!43594 d!30966))

(push 1)

(assert (not b!43604))

(assert (not d!30960))

(assert (not b!43618))

(assert (not d!30968))

(assert (not b!43609))

(assert (not d!30962))

(assert (not d!30964))

(assert (not b!43616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!30976 () Bool)

(declare-fun res!20668 () Bool)

(declare-fun e!22620 () Bool)

(assert (=> d!30976 (=> (not res!20668) (not e!22620))))

(declare-fun <!2 (Nat!111 Nat!111) Bool)

(assert (=> d!30976 (= res!20668 (not (<!2 n2!238 n3!53)))))

(assert (=> d!30976 (= (>!2 n2!238 n3!53) e!22620)))

(declare-fun b!43621 () Bool)

(assert (=> b!43621 (= e!22620 (not (= n2!238 n3!53)))))

(assert (= (and d!30976 res!20668) b!43621))

(declare-fun m!46853 () Bool)

(assert (=> d!30976 m!46853))

(assert (=> d!30960 d!30976))

(declare-fun d!30978 () Bool)

(declare-fun c!9264 () Bool)

(assert (=> d!30978 (= c!9264 (is-Zero!95 (Succ!92 (Succ!92 Zero!95))))))

(declare-fun e!22621 () Nat!111)

(assert (=> d!30978 (= (*!4 (Succ!92 (Succ!92 Zero!95)) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813))) e!22621)))

(declare-fun b!43622 () Bool)

(assert (=> b!43622 (= e!22621 Zero!95)))

(declare-fun b!43623 () Bool)

(assert (=> b!43623 (= e!22621 (+!5 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813))))))

(assert (= (and d!30978 c!9264) b!43622))

(assert (= (and d!30978 (not c!9264)) b!43623))

(assert (=> b!43623 m!46843))

(declare-fun m!46855 () Bool)

(assert (=> b!43623 m!46855))

(assert (=> b!43623 m!46855))

(assert (=> b!43623 m!46843))

(declare-fun m!46857 () Bool)

(assert (=> b!43623 m!46857))

(assert (=> b!43609 d!30978))

(declare-fun d!30980 () Bool)

(declare-fun c!9265 () Bool)

(assert (=> d!30980 (= c!9265 (is-Succ!92 (n!1236 n!813)))))

(declare-fun e!22622 () Nat!111)

(assert (=> d!30980 (= (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813)) e!22622)))

(declare-fun b!43624 () Bool)

(assert (=> b!43624 (= e!22622 (*!4 (Succ!92 (Succ!92 Zero!95)) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 n!813)))))))

(declare-fun b!43625 () Bool)

(assert (=> b!43625 (= e!22622 (Succ!92 Zero!95))))

(assert (= (and d!30980 c!9265) b!43624))

(assert (= (and d!30980 (not c!9265)) b!43625))

(declare-fun m!46859 () Bool)

(assert (=> b!43624 m!46859))

(assert (=> b!43624 m!46859))

(declare-fun m!46861 () Bool)

(assert (=> b!43624 m!46861))

(assert (=> b!43609 d!30980))

(assert (=> d!30964 d!30972))

(declare-fun d!30982 () Bool)

(declare-fun c!9266 () Bool)

(assert (=> d!30982 (= c!9266 (is-Zero!95 (Succ!92 Zero!95)))))

(declare-fun e!22623 () Nat!111)

(assert (=> d!30982 (= (+!5 (Succ!92 Zero!95) (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229)) e!22623)))

(declare-fun b!43626 () Bool)

(assert (=> b!43626 (= e!22623 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229))))

(declare-fun b!43627 () Bool)

(assert (=> b!43627 (= e!22623 (Succ!92 (+!5 (n!1236 (Succ!92 Zero!95)) (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229))))))

(assert (= (and d!30982 c!9266) b!43626))

(assert (= (and d!30982 (not c!9266)) b!43627))

(assert (=> b!43627 m!46821))

(declare-fun m!46863 () Bool)

(assert (=> b!43627 m!46863))

(assert (=> d!30964 d!30982))

(declare-fun d!30984 () Bool)

(declare-fun c!9267 () Bool)

(assert (=> d!30984 (= c!9267 (is-Zero!95 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) n2!229)))))

(declare-fun e!22624 () Nat!111)

(assert (=> d!30984 (= (+!5 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) n2!229) n2!229) e!22624)))

(declare-fun b!43628 () Bool)

(assert (=> b!43628 (= e!22624 n2!229)))

(declare-fun b!43629 () Bool)

(assert (=> b!43629 (= e!22624 (Succ!92 (+!5 (n!1236 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) n2!229)) n2!229)))))

(assert (= (and d!30984 c!9267) b!43628))

(assert (= (and d!30984 (not c!9267)) b!43629))

(declare-fun m!46865 () Bool)

(assert (=> b!43629 m!46865))

(assert (=> b!43604 d!30984))

(declare-fun d!30986 () Bool)

(declare-fun c!9268 () Bool)

(assert (=> d!30986 (= c!9268 (is-Zero!95 (n!1236 (Succ!92 (Succ!92 Zero!95)))))))

(declare-fun e!22625 () Nat!111)

(assert (=> d!30986 (= (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) n2!229) e!22625)))

(declare-fun b!43630 () Bool)

(assert (=> b!43630 (= e!22625 Zero!95)))

(declare-fun b!43631 () Bool)

(assert (=> b!43631 (= e!22625 (+!5 (*!4 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95)))) n2!229) n2!229))))

(assert (= (and d!30986 c!9268) b!43630))

(assert (= (and d!30986 (not c!9268)) b!43631))

(declare-fun m!46867 () Bool)

(assert (=> b!43631 m!46867))

(assert (=> b!43631 m!46867))

(declare-fun m!46869 () Bool)

(assert (=> b!43631 m!46869))

(assert (=> b!43604 d!30986))

(declare-fun d!30988 () Bool)

(declare-fun c!9269 () Bool)

(assert (=> d!30988 (= c!9269 (is-Zero!95 (n!1236 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229))))))

(declare-fun e!22626 () Nat!111)

(assert (=> d!30988 (= (+!5 (n!1236 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229)) (Succ!92 Zero!95)) e!22626)))

(declare-fun b!43632 () Bool)

(assert (=> b!43632 (= e!22626 (Succ!92 Zero!95))))

(declare-fun b!43633 () Bool)

(assert (=> b!43633 (= e!22626 (Succ!92 (+!5 (n!1236 (n!1236 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229))) (Succ!92 Zero!95))))))

(assert (= (and d!30988 c!9269) b!43632))

(assert (= (and d!30988 (not c!9269)) b!43633))

(declare-fun m!46871 () Bool)

(assert (=> b!43633 m!46871))

(assert (=> b!43616 d!30988))

(declare-fun d!30990 () Bool)

(declare-fun c!9270 () Bool)

(assert (=> d!30990 (= c!9270 (is-Zero!95 (*!4 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))))

(declare-fun e!22627 () Nat!111)

(assert (=> d!30990 (= (+!5 (*!4 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))) e!22627)))

(declare-fun b!43634 () Bool)

(assert (=> b!43634 (= e!22627 (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))

(declare-fun b!43635 () Bool)

(assert (=> b!43635 (= e!22627 (Succ!92 (+!5 (n!1236 (*!4 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))))

(assert (= (and d!30990 c!9270) b!43634))

(assert (= (and d!30990 (not c!9270)) b!43635))

(assert (=> b!43635 m!46823))

(declare-fun m!46873 () Bool)

(assert (=> b!43635 m!46873))

(assert (=> b!43618 d!30990))

(declare-fun d!30992 () Bool)

(declare-fun c!9271 () Bool)

(assert (=> d!30992 (= c!9271 (is-Zero!95 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813))))))

(declare-fun e!22628 () Nat!111)

(assert (=> d!30992 (= (*!4 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))) e!22628)))

(declare-fun b!43636 () Bool)

(assert (=> b!43636 (= e!22628 Zero!95)))

(declare-fun b!43637 () Bool)

(assert (=> b!43637 (= e!22628 (+!5 (*!4 (n!1236 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))))))

(assert (= (and d!30992 c!9271) b!43636))

(assert (= (and d!30992 (not c!9271)) b!43637))

(assert (=> b!43637 m!46823))

(declare-fun m!46875 () Bool)

(assert (=> b!43637 m!46875))

(assert (=> b!43637 m!46875))

(assert (=> b!43637 m!46823))

(declare-fun m!46877 () Bool)

(assert (=> b!43637 m!46877))

(assert (=> b!43618 d!30992))

(declare-fun d!30994 () Bool)

(declare-fun res!20671 () Bool)

(declare-fun e!22631 () Bool)

(assert (=> d!30994 (=> res!20671 e!22631)))

(assert (=> d!30994 (= res!20671 (<!2 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (*!4 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))))

(assert (=> d!30994 (= (<=!2 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (*!4 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))) e!22631)))

(declare-fun b!43640 () Bool)

(assert (=> b!43640 (= e!22631 (= (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (*!4 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))))

(assert (= (and d!30994 (not res!20671)) b!43640))

(assert (=> d!30994 m!46819))

(assert (=> d!30994 m!46825))

(declare-fun m!46879 () Bool)

(assert (=> d!30994 m!46879))

(assert (=> d!30968 d!30994))

(assert (=> d!30968 d!30974))

(declare-fun d!30996 () Bool)

(declare-fun res!20672 () Bool)

(declare-fun e!22632 () Bool)

(assert (=> d!30996 (=> (not res!20672) (not e!22632))))

(assert (=> d!30996 (= res!20672 (not (<!2 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) Zero!95)))))

(assert (=> d!30996 (= (>!2 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) Zero!95) e!22632)))

(declare-fun b!43641 () Bool)

(assert (=> b!43641 (= e!22632 (not (= (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) Zero!95)))))

(assert (= (and d!30996 res!20672) b!43641))

(assert (=> d!30996 m!46819))

(declare-fun m!46881 () Bool)

(assert (=> d!30996 m!46881))

(assert (=> d!30962 d!30996))

(assert (=> d!30962 d!30970))

(push 1)

(assert (not d!30976))

(assert (not b!43627))

(assert (not b!43637))

(assert (not d!30994))

(assert (not d!30996))

(assert (not b!43624))

(assert (not b!43633))

(assert (not b!43623))

(assert (not b!43635))

(assert (not b!43629))

(assert (not b!43631))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!30998 () Bool)

(declare-fun lt!7955 () Bool)

(declare-fun repr!0 (Nat!111) Int)

(assert (=> d!30998 (= lt!7955 (< (repr!0 n2!238) (repr!0 n3!53)))))

(declare-fun e!22635 () Bool)

(assert (=> d!30998 (= lt!7955 e!22635)))

(declare-fun c!9274 () Bool)

(assert (=> d!30998 (= c!9274 (and (is-Succ!92 n2!238) (is-Succ!92 n3!53)))))

(assert (=> d!30998 (= (<!2 n2!238 n3!53) lt!7955)))

(declare-fun b!43646 () Bool)

(assert (=> b!43646 (= e!22635 (<!2 (n!1236 n2!238) (n!1236 n3!53)))))

(declare-fun b!43647 () Bool)

(assert (=> b!43647 (= e!22635 (and (is-Zero!95 n2!238) (is-Succ!92 n3!53)))))

(assert (= (and d!30998 c!9274) b!43646))

(assert (= (and d!30998 (not c!9274)) b!43647))

(declare-fun m!46883 () Bool)

(assert (=> d!30998 m!46883))

(declare-fun m!46885 () Bool)

(assert (=> d!30998 m!46885))

(declare-fun m!46887 () Bool)

(assert (=> b!43646 m!46887))

(assert (=> d!30976 d!30998))

(declare-fun d!31000 () Bool)

(declare-fun c!9275 () Bool)

(assert (=> d!31000 (= c!9275 (is-Zero!95 (*!4 (n!1236 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))))

(declare-fun e!22636 () Nat!111)

(assert (=> d!31000 (= (+!5 (*!4 (n!1236 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))) e!22636)))

(declare-fun b!43648 () Bool)

(assert (=> b!43648 (= e!22636 (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))

(declare-fun b!43649 () Bool)

(assert (=> b!43649 (= e!22636 (Succ!92 (+!5 (n!1236 (*!4 (n!1236 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))))

(assert (= (and d!31000 c!9275) b!43648))

(assert (= (and d!31000 (not c!9275)) b!43649))

(assert (=> b!43649 m!46823))

(declare-fun m!46889 () Bool)

(assert (=> b!43649 m!46889))

(assert (=> b!43637 d!31000))

(declare-fun d!31002 () Bool)

(declare-fun c!9276 () Bool)

(assert (=> d!31002 (= c!9276 (is-Zero!95 (n!1236 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)))))))

(declare-fun e!22637 () Nat!111)

(assert (=> d!31002 (= (*!4 (n!1236 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))) e!22637)))

(declare-fun b!43650 () Bool)

(assert (=> b!43650 (= e!22637 Zero!95)))

(declare-fun b!43651 () Bool)

(assert (=> b!43651 (= e!22637 (+!5 (*!4 (n!1236 (n!1236 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))))))

(assert (= (and d!31002 c!9276) b!43650))

(assert (= (and d!31002 (not c!9276)) b!43651))

(assert (=> b!43651 m!46823))

(declare-fun m!46891 () Bool)

(assert (=> b!43651 m!46891))

(assert (=> b!43651 m!46891))

(assert (=> b!43651 m!46823))

(declare-fun m!46893 () Bool)

(assert (=> b!43651 m!46893))

(assert (=> b!43637 d!31002))

(declare-fun d!31004 () Bool)

(declare-fun c!9277 () Bool)

(assert (=> d!31004 (= c!9277 (is-Zero!95 (Succ!92 (Succ!92 Zero!95))))))

(declare-fun e!22638 () Nat!111)

(assert (=> d!31004 (= (*!4 (Succ!92 (Succ!92 Zero!95)) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 n!813)))) e!22638)))

(declare-fun b!43652 () Bool)

(assert (=> b!43652 (= e!22638 Zero!95)))

(declare-fun b!43653 () Bool)

(assert (=> b!43653 (= e!22638 (+!5 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 n!813)))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 n!813)))))))

(assert (= (and d!31004 c!9277) b!43652))

(assert (= (and d!31004 (not c!9277)) b!43653))

(assert (=> b!43653 m!46859))

(declare-fun m!46895 () Bool)

(assert (=> b!43653 m!46895))

(assert (=> b!43653 m!46895))

(assert (=> b!43653 m!46859))

(declare-fun m!46897 () Bool)

(assert (=> b!43653 m!46897))

(assert (=> b!43624 d!31004))

(declare-fun d!31006 () Bool)

(declare-fun c!9278 () Bool)

(assert (=> d!31006 (= c!9278 (is-Succ!92 (n!1236 (n!1236 n!813))))))

(declare-fun e!22639 () Nat!111)

(assert (=> d!31006 (= (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 n!813))) e!22639)))

(declare-fun b!43654 () Bool)

(assert (=> b!43654 (= e!22639 (*!4 (Succ!92 (Succ!92 Zero!95)) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 (n!1236 n!813))))))))

(declare-fun b!43655 () Bool)

(assert (=> b!43655 (= e!22639 (Succ!92 Zero!95))))

(assert (= (and d!31006 c!9278) b!43654))

(assert (= (and d!31006 (not c!9278)) b!43655))

(declare-fun m!46899 () Bool)

(assert (=> b!43654 m!46899))

(assert (=> b!43654 m!46899))

(declare-fun m!46901 () Bool)

(assert (=> b!43654 m!46901))

(assert (=> b!43624 d!31006))

(declare-fun d!31008 () Bool)

(declare-fun c!9279 () Bool)

(assert (=> d!31008 (= c!9279 (is-Zero!95 (n!1236 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) n2!229))))))

(declare-fun e!22640 () Nat!111)

(assert (=> d!31008 (= (+!5 (n!1236 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) n2!229)) n2!229) e!22640)))

(declare-fun b!43656 () Bool)

(assert (=> b!43656 (= e!22640 n2!229)))

(declare-fun b!43657 () Bool)

(assert (=> b!43657 (= e!22640 (Succ!92 (+!5 (n!1236 (n!1236 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) n2!229))) n2!229)))))

(assert (= (and d!31008 c!9279) b!43656))

(assert (= (and d!31008 (not c!9279)) b!43657))

(declare-fun m!46903 () Bool)

(assert (=> b!43657 m!46903))

(assert (=> b!43629 d!31008))

(declare-fun d!31010 () Bool)

(declare-fun c!9280 () Bool)

(assert (=> d!31010 (= c!9280 (is-Zero!95 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813)))))))

(declare-fun e!22641 () Nat!111)

(assert (=> d!31010 (= (+!5 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813))) e!22641)))

(declare-fun b!43658 () Bool)

(assert (=> b!43658 (= e!22641 (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813)))))

(declare-fun b!43659 () Bool)

(assert (=> b!43659 (= e!22641 (Succ!92 (+!5 (n!1236 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813)))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813)))))))

(assert (= (and d!31010 c!9280) b!43658))

(assert (= (and d!31010 (not c!9280)) b!43659))

(assert (=> b!43659 m!46843))

(declare-fun m!46905 () Bool)

(assert (=> b!43659 m!46905))

(assert (=> b!43623 d!31010))

(declare-fun d!31012 () Bool)

(declare-fun c!9281 () Bool)

(assert (=> d!31012 (= c!9281 (is-Zero!95 (n!1236 (Succ!92 (Succ!92 Zero!95)))))))

(declare-fun e!22642 () Nat!111)

(assert (=> d!31012 (= (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813))) e!22642)))

(declare-fun b!43660 () Bool)

(assert (=> b!43660 (= e!22642 Zero!95)))

(declare-fun b!43661 () Bool)

(assert (=> b!43661 (= e!22642 (+!5 (*!4 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95)))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813))))))

(assert (= (and d!31012 c!9281) b!43660))

(assert (= (and d!31012 (not c!9281)) b!43661))

(assert (=> b!43661 m!46843))

(declare-fun m!46907 () Bool)

(assert (=> b!43661 m!46907))

(assert (=> b!43661 m!46907))

(assert (=> b!43661 m!46843))

(declare-fun m!46909 () Bool)

(assert (=> b!43661 m!46909))

(assert (=> b!43623 d!31012))

(declare-fun d!31014 () Bool)

(declare-fun c!9282 () Bool)

(assert (=> d!31014 (= c!9282 (is-Zero!95 (n!1236 (*!4 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))))))))

(declare-fun e!22643 () Nat!111)

(assert (=> d!31014 (= (+!5 (n!1236 (*!4 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))) e!22643)))

(declare-fun b!43662 () Bool)

(assert (=> b!43662 (= e!22643 (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))

(declare-fun b!43663 () Bool)

(assert (=> b!43663 (= e!22643 (Succ!92 (+!5 (n!1236 (n!1236 (*!4 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))))

(assert (= (and d!31014 c!9282) b!43662))

(assert (= (and d!31014 (not c!9282)) b!43663))

(assert (=> b!43663 m!46823))

(declare-fun m!46911 () Bool)

(assert (=> b!43663 m!46911))

(assert (=> b!43635 d!31014))

(declare-fun d!31016 () Bool)

(declare-fun lt!7956 () Bool)

(assert (=> d!31016 (= lt!7956 (< (repr!0 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (repr!0 (*!4 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))))))))

(declare-fun e!22644 () Bool)

(assert (=> d!31016 (= lt!7956 e!22644)))

(declare-fun c!9283 () Bool)

(assert (=> d!31016 (= c!9283 (and (is-Succ!92 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (is-Succ!92 (*!4 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))))))))

(assert (=> d!31016 (= (<!2 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (*!4 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))) lt!7956)))

(declare-fun b!43664 () Bool)

(assert (=> b!43664 (= e!22644 (<!2 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (n!1236 (*!4 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))))))))

(declare-fun b!43665 () Bool)

(assert (=> b!43665 (= e!22644 (and (is-Zero!95 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (is-Succ!92 (*!4 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))))))))

(assert (= (and d!31016 c!9283) b!43664))

(assert (= (and d!31016 (not c!9283)) b!43665))

(assert (=> d!31016 m!46819))

(declare-fun m!46913 () Bool)

(assert (=> d!31016 m!46913))

(assert (=> d!31016 m!46825))

(declare-fun m!46915 () Bool)

(assert (=> d!31016 m!46915))

(declare-fun m!46917 () Bool)

(assert (=> b!43664 m!46917))

(assert (=> d!30994 d!31016))

(declare-fun d!31018 () Bool)

(declare-fun lt!7957 () Bool)

(assert (=> d!31018 (= lt!7957 (< (repr!0 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (repr!0 Zero!95)))))

(declare-fun e!22645 () Bool)

(assert (=> d!31018 (= lt!7957 e!22645)))

(declare-fun c!9284 () Bool)

(assert (=> d!31018 (= c!9284 (and (is-Succ!92 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (is-Succ!92 Zero!95)))))

(assert (=> d!31018 (= (<!2 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) Zero!95) lt!7957)))

(declare-fun b!43666 () Bool)

(assert (=> b!43666 (= e!22645 (<!2 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (n!1236 Zero!95)))))

(declare-fun b!43667 () Bool)

(assert (=> b!43667 (= e!22645 (and (is-Zero!95 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (is-Succ!92 Zero!95)))))

(assert (= (and d!31018 c!9284) b!43666))

(assert (= (and d!31018 (not c!9284)) b!43667))

(assert (=> d!31018 m!46819))

(assert (=> d!31018 m!46913))

(declare-fun m!46919 () Bool)

(assert (=> d!31018 m!46919))

(declare-fun m!46921 () Bool)

(assert (=> b!43666 m!46921))

(assert (=> d!30996 d!31018))

(declare-fun d!31020 () Bool)

(declare-fun c!9285 () Bool)

(assert (=> d!31020 (= c!9285 (is-Zero!95 (n!1236 (n!1236 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229)))))))

(declare-fun e!22646 () Nat!111)

(assert (=> d!31020 (= (+!5 (n!1236 (n!1236 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229))) (Succ!92 Zero!95)) e!22646)))

(declare-fun b!43668 () Bool)

(assert (=> b!43668 (= e!22646 (Succ!92 Zero!95))))

(declare-fun b!43669 () Bool)

(assert (=> b!43669 (= e!22646 (Succ!92 (+!5 (n!1236 (n!1236 (n!1236 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229)))) (Succ!92 Zero!95))))))

(assert (= (and d!31020 c!9285) b!43668))

(assert (= (and d!31020 (not c!9285)) b!43669))

(declare-fun m!46923 () Bool)

(assert (=> b!43669 m!46923))

(assert (=> b!43633 d!31020))

(declare-fun d!31022 () Bool)

(declare-fun c!9286 () Bool)

(assert (=> d!31022 (= c!9286 (is-Zero!95 (n!1236 (Succ!92 Zero!95))))))

(declare-fun e!22647 () Nat!111)

(assert (=> d!31022 (= (+!5 (n!1236 (Succ!92 Zero!95)) (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229)) e!22647)))

(declare-fun b!43670 () Bool)

(assert (=> b!43670 (= e!22647 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229))))

(declare-fun b!43671 () Bool)

(assert (=> b!43671 (= e!22647 (Succ!92 (+!5 (n!1236 (n!1236 (Succ!92 Zero!95))) (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229))))))

(assert (= (and d!31022 c!9286) b!43670))

(assert (= (and d!31022 (not c!9286)) b!43671))

(assert (=> b!43671 m!46821))

(declare-fun m!46925 () Bool)

(assert (=> b!43671 m!46925))

(assert (=> b!43627 d!31022))

(declare-fun d!31024 () Bool)

(declare-fun c!9287 () Bool)

(assert (=> d!31024 (= c!9287 (is-Zero!95 (*!4 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95)))) n2!229)))))

(declare-fun e!22648 () Nat!111)

(assert (=> d!31024 (= (+!5 (*!4 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95)))) n2!229) n2!229) e!22648)))

(declare-fun b!43672 () Bool)

(assert (=> b!43672 (= e!22648 n2!229)))

(declare-fun b!43673 () Bool)

(assert (=> b!43673 (= e!22648 (Succ!92 (+!5 (n!1236 (*!4 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95)))) n2!229)) n2!229)))))

(assert (= (and d!31024 c!9287) b!43672))

(assert (= (and d!31024 (not c!9287)) b!43673))

(declare-fun m!46927 () Bool)

(assert (=> b!43673 m!46927))

(assert (=> b!43631 d!31024))

(declare-fun d!31026 () Bool)

(declare-fun c!9288 () Bool)

(assert (=> d!31026 (= c!9288 (is-Zero!95 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95))))))))

(declare-fun e!22649 () Nat!111)

(assert (=> d!31026 (= (*!4 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95)))) n2!229) e!22649)))

(declare-fun b!43674 () Bool)

(assert (=> b!43674 (= e!22649 Zero!95)))

(declare-fun b!43675 () Bool)

(assert (=> b!43675 (= e!22649 (+!5 (*!4 (n!1236 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95))))) n2!229) n2!229))))

(assert (= (and d!31026 c!9288) b!43674))

(assert (= (and d!31026 (not c!9288)) b!43675))

(declare-fun m!46929 () Bool)

(assert (=> b!43675 m!46929))

(assert (=> b!43675 m!46929))

(declare-fun m!46931 () Bool)

(assert (=> b!43675 m!46931))

(assert (=> b!43631 d!31026))

(push 1)

(assert (not b!43663))

(assert (not b!43657))

(assert (not b!43651))

(assert (not d!31018))

(assert (not b!43649))

(assert (not b!43669))

(assert (not b!43666))

(assert (not b!43646))

(assert (not b!43673))

(assert (not b!43675))

(assert (not b!43671))

(assert (not d!31016))

(assert (not b!43661))

(assert (not b!43653))

(assert (not b!43654))

(assert (not b!43659))

(assert (not b!43664))

(assert (not d!30998))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31028 () Bool)

(declare-fun lt!7958 () Bool)

(assert (=> d!31028 (= lt!7958 (< (repr!0 (n!1236 n2!238)) (repr!0 (n!1236 n3!53))))))

(declare-fun e!22650 () Bool)

(assert (=> d!31028 (= lt!7958 e!22650)))

(declare-fun c!9289 () Bool)

(assert (=> d!31028 (= c!9289 (and (is-Succ!92 (n!1236 n2!238)) (is-Succ!92 (n!1236 n3!53))))))

(assert (=> d!31028 (= (<!2 (n!1236 n2!238) (n!1236 n3!53)) lt!7958)))

(declare-fun b!43676 () Bool)

(assert (=> b!43676 (= e!22650 (<!2 (n!1236 (n!1236 n2!238)) (n!1236 (n!1236 n3!53))))))

(declare-fun b!43677 () Bool)

(assert (=> b!43677 (= e!22650 (and (is-Zero!95 (n!1236 n2!238)) (is-Succ!92 (n!1236 n3!53))))))

(assert (= (and d!31028 c!9289) b!43676))

(assert (= (and d!31028 (not c!9289)) b!43677))

(declare-fun m!46933 () Bool)

(assert (=> d!31028 m!46933))

(declare-fun m!46935 () Bool)

(assert (=> d!31028 m!46935))

(declare-fun m!46937 () Bool)

(assert (=> b!43676 m!46937))

(assert (=> b!43646 d!31028))

(declare-fun d!31030 () Bool)

(declare-fun c!9290 () Bool)

(assert (=> d!31030 (= c!9290 (is-Zero!95 (n!1236 (*!4 (n!1236 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))))))))

(declare-fun e!22651 () Nat!111)

(assert (=> d!31030 (= (+!5 (n!1236 (*!4 (n!1236 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))) e!22651)))

(declare-fun b!43678 () Bool)

(assert (=> b!43678 (= e!22651 (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))

(declare-fun b!43679 () Bool)

(assert (=> b!43679 (= e!22651 (Succ!92 (+!5 (n!1236 (n!1236 (*!4 (n!1236 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))))

(assert (= (and d!31030 c!9290) b!43678))

(assert (= (and d!31030 (not c!9290)) b!43679))

(assert (=> b!43679 m!46823))

(declare-fun m!46939 () Bool)

(assert (=> b!43679 m!46939))

(assert (=> b!43649 d!31030))

(declare-fun d!31032 () Bool)

(declare-fun c!9291 () Bool)

(assert (=> d!31032 (= c!9291 (is-Zero!95 (n!1236 (n!1236 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) n2!229)))))))

(declare-fun e!22652 () Nat!111)

(assert (=> d!31032 (= (+!5 (n!1236 (n!1236 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) n2!229))) n2!229) e!22652)))

(declare-fun b!43680 () Bool)

(assert (=> b!43680 (= e!22652 n2!229)))

(declare-fun b!43681 () Bool)

(assert (=> b!43681 (= e!22652 (Succ!92 (+!5 (n!1236 (n!1236 (n!1236 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) n2!229)))) n2!229)))))

(assert (= (and d!31032 c!9291) b!43680))

(assert (= (and d!31032 (not c!9291)) b!43681))

(declare-fun m!46941 () Bool)

(assert (=> b!43681 m!46941))

(assert (=> b!43657 d!31032))

(declare-fun d!31034 () Bool)

(declare-fun c!9292 () Bool)

(assert (=> d!31034 (= c!9292 (is-Zero!95 (*!4 (n!1236 (n!1236 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))))

(declare-fun e!22653 () Nat!111)

(assert (=> d!31034 (= (+!5 (*!4 (n!1236 (n!1236 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))) e!22653)))

(declare-fun b!43682 () Bool)

(assert (=> b!43682 (= e!22653 (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))

(declare-fun b!43683 () Bool)

(assert (=> b!43683 (= e!22653 (Succ!92 (+!5 (n!1236 (*!4 (n!1236 (n!1236 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))))

(assert (= (and d!31034 c!9292) b!43682))

(assert (= (and d!31034 (not c!9292)) b!43683))

(assert (=> b!43683 m!46823))

(declare-fun m!46943 () Bool)

(assert (=> b!43683 m!46943))

(assert (=> b!43651 d!31034))

(declare-fun d!31036 () Bool)

(declare-fun c!9293 () Bool)

(assert (=> d!31036 (= c!9293 (is-Zero!95 (n!1236 (n!1236 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813))))))))

(declare-fun e!22654 () Nat!111)

(assert (=> d!31036 (= (*!4 (n!1236 (n!1236 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))) e!22654)))

(declare-fun b!43684 () Bool)

(assert (=> b!43684 (= e!22654 Zero!95)))

(declare-fun b!43685 () Bool)

(assert (=> b!43685 (= e!22654 (+!5 (*!4 (n!1236 (n!1236 (n!1236 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813))))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))))))

(assert (= (and d!31036 c!9293) b!43684))

(assert (= (and d!31036 (not c!9293)) b!43685))

(assert (=> b!43685 m!46823))

(declare-fun m!46945 () Bool)

(assert (=> b!43685 m!46945))

(assert (=> b!43685 m!46945))

(assert (=> b!43685 m!46823))

(declare-fun m!46947 () Bool)

(assert (=> b!43685 m!46947))

(assert (=> b!43651 d!31036))

(declare-fun d!31038 () Bool)

(declare-fun c!9294 () Bool)

(assert (=> d!31038 (= c!9294 (is-Zero!95 (n!1236 (*!4 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95)))) n2!229))))))

(declare-fun e!22655 () Nat!111)

(assert (=> d!31038 (= (+!5 (n!1236 (*!4 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95)))) n2!229)) n2!229) e!22655)))

(declare-fun b!43686 () Bool)

(assert (=> b!43686 (= e!22655 n2!229)))

(declare-fun b!43687 () Bool)

(assert (=> b!43687 (= e!22655 (Succ!92 (+!5 (n!1236 (n!1236 (*!4 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95)))) n2!229))) n2!229)))))

(assert (= (and d!31038 c!9294) b!43686))

(assert (= (and d!31038 (not c!9294)) b!43687))

(declare-fun m!46949 () Bool)

(assert (=> b!43687 m!46949))

(assert (=> b!43673 d!31038))

(declare-fun d!31040 () Bool)

(declare-fun c!9295 () Bool)

(assert (=> d!31040 (= c!9295 (is-Zero!95 (Succ!92 (Succ!92 Zero!95))))))

(declare-fun e!22656 () Nat!111)

(assert (=> d!31040 (= (*!4 (Succ!92 (Succ!92 Zero!95)) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 (n!1236 n!813))))) e!22656)))

(declare-fun b!43688 () Bool)

(assert (=> b!43688 (= e!22656 Zero!95)))

(declare-fun b!43689 () Bool)

(assert (=> b!43689 (= e!22656 (+!5 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 (n!1236 n!813))))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 (n!1236 n!813))))))))

(assert (= (and d!31040 c!9295) b!43688))

(assert (= (and d!31040 (not c!9295)) b!43689))

(assert (=> b!43689 m!46899))

(declare-fun m!46951 () Bool)

(assert (=> b!43689 m!46951))

(assert (=> b!43689 m!46951))

(assert (=> b!43689 m!46899))

(declare-fun m!46953 () Bool)

(assert (=> b!43689 m!46953))

(assert (=> b!43654 d!31040))

(declare-fun d!31042 () Bool)

(declare-fun c!9296 () Bool)

(assert (=> d!31042 (= c!9296 (is-Succ!92 (n!1236 (n!1236 (n!1236 n!813)))))))

(declare-fun e!22657 () Nat!111)

(assert (=> d!31042 (= (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 (n!1236 n!813)))) e!22657)))

(declare-fun b!43690 () Bool)

(assert (=> b!43690 (= e!22657 (*!4 (Succ!92 (Succ!92 Zero!95)) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 (n!1236 (n!1236 n!813)))))))))

(declare-fun b!43691 () Bool)

(assert (=> b!43691 (= e!22657 (Succ!92 Zero!95))))

(assert (= (and d!31042 c!9296) b!43690))

(assert (= (and d!31042 (not c!9296)) b!43691))

(declare-fun m!46955 () Bool)

(assert (=> b!43690 m!46955))

(assert (=> b!43690 m!46955))

(declare-fun m!46957 () Bool)

(assert (=> b!43690 m!46957))

(assert (=> b!43654 d!31042))

(declare-fun d!31044 () Bool)

(declare-fun c!9297 () Bool)

(assert (=> d!31044 (= c!9297 (is-Zero!95 (n!1236 (n!1236 (*!4 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))))))

(declare-fun e!22658 () Nat!111)

(assert (=> d!31044 (= (+!5 (n!1236 (n!1236 (*!4 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))) e!22658)))

(declare-fun b!43692 () Bool)

(assert (=> b!43692 (= e!22658 (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))

(declare-fun b!43693 () Bool)

(assert (=> b!43693 (= e!22658 (Succ!92 (+!5 (n!1236 (n!1236 (n!1236 (*!4 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))))

(assert (= (and d!31044 c!9297) b!43692))

(assert (= (and d!31044 (not c!9297)) b!43693))

(assert (=> b!43693 m!46823))

(declare-fun m!46959 () Bool)

(assert (=> b!43693 m!46959))

(assert (=> b!43663 d!31044))

(declare-fun d!31046 () Bool)

(declare-fun lt!7961 () Int)

(assert (=> d!31046 (>= lt!7961 0)))

(declare-fun e!22661 () Int)

(assert (=> d!31046 (= lt!7961 e!22661)))

(declare-fun c!9300 () Bool)

(assert (=> d!31046 (= c!9300 (is-Zero!95 n2!238))))

(assert (=> d!31046 (= (repr!0 n2!238) lt!7961)))

(declare-fun b!43698 () Bool)

(assert (=> b!43698 (= e!22661 0)))

(declare-fun b!43699 () Bool)

(assert (=> b!43699 (= e!22661 (+ (repr!0 (n!1236 n2!238)) 1))))

(assert (= (and d!31046 c!9300) b!43698))

(assert (= (and d!31046 (not c!9300)) b!43699))

(assert (=> b!43699 m!46933))

(assert (=> d!30998 d!31046))

(declare-fun d!31048 () Bool)

(declare-fun lt!7962 () Int)

(assert (=> d!31048 (>= lt!7962 0)))

(declare-fun e!22662 () Int)

(assert (=> d!31048 (= lt!7962 e!22662)))

(declare-fun c!9301 () Bool)

(assert (=> d!31048 (= c!9301 (is-Zero!95 n3!53))))

(assert (=> d!31048 (= (repr!0 n3!53) lt!7962)))

(declare-fun b!43700 () Bool)

(assert (=> b!43700 (= e!22662 0)))

(declare-fun b!43701 () Bool)

(assert (=> b!43701 (= e!22662 (+ (repr!0 (n!1236 n3!53)) 1))))

(assert (= (and d!31048 c!9301) b!43700))

(assert (= (and d!31048 (not c!9301)) b!43701))

(assert (=> b!43701 m!46935))

(assert (=> d!30998 d!31048))

(declare-fun d!31050 () Bool)

(declare-fun c!9302 () Bool)

(assert (=> d!31050 (= c!9302 (is-Zero!95 (n!1236 (n!1236 (n!1236 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229))))))))

(declare-fun e!22663 () Nat!111)

(assert (=> d!31050 (= (+!5 (n!1236 (n!1236 (n!1236 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229)))) (Succ!92 Zero!95)) e!22663)))

(declare-fun b!43702 () Bool)

(assert (=> b!43702 (= e!22663 (Succ!92 Zero!95))))

(declare-fun b!43703 () Bool)

(assert (=> b!43703 (= e!22663 (Succ!92 (+!5 (n!1236 (n!1236 (n!1236 (n!1236 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229))))) (Succ!92 Zero!95))))))

(assert (= (and d!31050 c!9302) b!43702))

(assert (= (and d!31050 (not c!9302)) b!43703))

(declare-fun m!46961 () Bool)

(assert (=> b!43703 m!46961))

(assert (=> b!43669 d!31050))

(declare-fun d!31052 () Bool)

(declare-fun c!9303 () Bool)

(assert (=> d!31052 (= c!9303 (is-Zero!95 (*!4 (n!1236 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95))))) n2!229)))))

(declare-fun e!22664 () Nat!111)

(assert (=> d!31052 (= (+!5 (*!4 (n!1236 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95))))) n2!229) n2!229) e!22664)))

(declare-fun b!43704 () Bool)

(assert (=> b!43704 (= e!22664 n2!229)))

(declare-fun b!43705 () Bool)

(assert (=> b!43705 (= e!22664 (Succ!92 (+!5 (n!1236 (*!4 (n!1236 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95))))) n2!229)) n2!229)))))

(assert (= (and d!31052 c!9303) b!43704))

(assert (= (and d!31052 (not c!9303)) b!43705))

(declare-fun m!46963 () Bool)

(assert (=> b!43705 m!46963))

(assert (=> b!43675 d!31052))

(declare-fun d!31054 () Bool)

(assert (not d!31054))

(assert (=> b!43675 d!31054))

(declare-fun d!31056 () Bool)

(declare-fun c!9304 () Bool)

(assert (=> d!31056 (= c!9304 (is-Zero!95 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 n!813))))))))

(declare-fun e!22665 () Nat!111)

(assert (=> d!31056 (= (+!5 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 n!813)))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 n!813)))) e!22665)))

(declare-fun b!43706 () Bool)

(assert (=> b!43706 (= e!22665 (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 n!813))))))

(declare-fun b!43707 () Bool)

(assert (=> b!43707 (= e!22665 (Succ!92 (+!5 (n!1236 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 n!813))))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 n!813))))))))

(assert (= (and d!31056 c!9304) b!43706))

(assert (= (and d!31056 (not c!9304)) b!43707))

(assert (=> b!43707 m!46859))

(declare-fun m!46965 () Bool)

(assert (=> b!43707 m!46965))

(assert (=> b!43653 d!31056))

(declare-fun d!31058 () Bool)

(declare-fun c!9305 () Bool)

(assert (=> d!31058 (= c!9305 (is-Zero!95 (n!1236 (Succ!92 (Succ!92 Zero!95)))))))

(declare-fun e!22666 () Nat!111)

(assert (=> d!31058 (= (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 n!813)))) e!22666)))

(declare-fun b!43708 () Bool)

(assert (=> b!43708 (= e!22666 Zero!95)))

(declare-fun b!43709 () Bool)

(assert (=> b!43709 (= e!22666 (+!5 (*!4 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95)))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 n!813)))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 (n!1236 n!813)))))))

(assert (= (and d!31058 c!9305) b!43708))

(assert (= (and d!31058 (not c!9305)) b!43709))

(assert (=> b!43709 m!46859))

(declare-fun m!46967 () Bool)

(assert (=> b!43709 m!46967))

(assert (=> b!43709 m!46967))

(assert (=> b!43709 m!46859))

(declare-fun m!46969 () Bool)

(assert (=> b!43709 m!46969))

(assert (=> b!43653 d!31058))

(declare-fun d!31060 () Bool)

(assert (not d!31060))

(assert (=> b!43666 d!31060))

(declare-fun d!31062 () Bool)

(declare-fun lt!7963 () Int)

(assert (=> d!31062 (>= lt!7963 0)))

(declare-fun e!22667 () Int)

(assert (=> d!31062 (= lt!7963 e!22667)))

(declare-fun c!9306 () Bool)

(assert (=> d!31062 (= c!9306 (is-Zero!95 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)))))

(assert (=> d!31062 (= (repr!0 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) lt!7963)))

(declare-fun b!43710 () Bool)

(assert (=> b!43710 (= e!22667 0)))

(declare-fun b!43711 () Bool)

(assert (=> b!43711 (= e!22667 (+ (repr!0 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813))) 1))))

(assert (= (and d!31062 c!9306) b!43710))

(assert (= (and d!31062 (not c!9306)) b!43711))

(declare-fun m!46971 () Bool)

(assert (=> b!43711 m!46971))

(assert (=> d!31018 d!31062))

(declare-fun d!31064 () Bool)

(declare-fun lt!7964 () Int)

(assert (=> d!31064 (>= lt!7964 0)))

(declare-fun e!22668 () Int)

(assert (=> d!31064 (= lt!7964 e!22668)))

(declare-fun c!9307 () Bool)

(assert (=> d!31064 (= c!9307 (is-Zero!95 Zero!95))))

(assert (=> d!31064 (= (repr!0 Zero!95) lt!7964)))

(declare-fun b!43712 () Bool)

(assert (=> b!43712 (= e!22668 0)))

(declare-fun b!43713 () Bool)

(assert (=> b!43713 (= e!22668 (+ (repr!0 (n!1236 Zero!95)) 1))))

(assert (= (and d!31064 c!9307) b!43712))

(assert (= (and d!31064 (not c!9307)) b!43713))

(declare-fun m!46973 () Bool)

(assert (=> b!43713 m!46973))

(assert (=> d!31018 d!31064))

(declare-fun d!31066 () Bool)

(assert (not d!31066))

(assert (=> b!43671 d!31066))

(assert (=> d!31016 d!31062))

(declare-fun d!31068 () Bool)

(declare-fun lt!7965 () Int)

(assert (=> d!31068 (>= lt!7965 0)))

(declare-fun e!22669 () Int)

(assert (=> d!31068 (= lt!7965 e!22669)))

(declare-fun c!9308 () Bool)

(assert (=> d!31068 (= c!9308 (is-Zero!95 (*!4 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))))

(assert (=> d!31068 (= (repr!0 (*!4 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))) lt!7965)))

(declare-fun b!43714 () Bool)

(assert (=> b!43714 (= e!22669 0)))

(declare-fun b!43715 () Bool)

(assert (=> b!43715 (= e!22669 (+ (repr!0 (n!1236 (*!4 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))))) 1))))

(assert (= (and d!31068 c!9308) b!43714))

(assert (= (and d!31068 (not c!9308)) b!43715))

(declare-fun m!46975 () Bool)

(assert (=> b!43715 m!46975))

(assert (=> d!31016 d!31068))

(declare-fun d!31070 () Bool)

(declare-fun lt!7966 () Bool)

(assert (=> d!31070 (= lt!7966 (< (repr!0 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813))) (repr!0 (n!1236 (*!4 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))))))

(declare-fun e!22670 () Bool)

(assert (=> d!31070 (= lt!7966 e!22670)))

(declare-fun c!9309 () Bool)

(assert (=> d!31070 (= c!9309 (and (is-Succ!92 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813))) (is-Succ!92 (n!1236 (*!4 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))))))

(assert (=> d!31070 (= (<!2 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813)) (n!1236 (*!4 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95))))) lt!7966)))

(declare-fun b!43716 () Bool)

(assert (=> b!43716 (= e!22670 (<!2 (n!1236 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813))) (n!1236 (n!1236 (*!4 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))))))

(declare-fun b!43717 () Bool)

(assert (=> b!43717 (= e!22670 (and (is-Zero!95 (n!1236 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813))) (is-Succ!92 (n!1236 (*!4 (pow!0 (Succ!92 (Succ!92 Zero!95)) n!813) (+!5 (*!4 (Succ!92 (Succ!92 Zero!95)) n2!229) (Succ!92 Zero!95)))))))))

(assert (= (and d!31070 c!9309) b!43716))

(assert (= (and d!31070 (not c!9309)) b!43717))

(assert (=> d!31070 m!46971))

(assert (=> d!31070 m!46975))

(declare-fun m!46977 () Bool)

(assert (=> b!43716 m!46977))

(assert (=> b!43664 d!31070))

(declare-fun d!31072 () Bool)

(declare-fun c!9310 () Bool)

(assert (=> d!31072 (= c!9310 (is-Zero!95 (n!1236 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813))))))))

(declare-fun e!22671 () Nat!111)

(assert (=> d!31072 (= (+!5 (n!1236 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813)))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813))) e!22671)))

(declare-fun b!43718 () Bool)

(assert (=> b!43718 (= e!22671 (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813)))))

(declare-fun b!43719 () Bool)

(assert (=> b!43719 (= e!22671 (Succ!92 (+!5 (n!1236 (n!1236 (*!4 (n!1236 (Succ!92 (Succ!92 Zero!95))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813))))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813)))))))

(assert (= (and d!31072 c!9310) b!43718))

(assert (= (and d!31072 (not c!9310)) b!43719))

(assert (=> b!43719 m!46843))

(declare-fun m!46979 () Bool)

(assert (=> b!43719 m!46979))

(assert (=> b!43659 d!31072))

(declare-fun d!31074 () Bool)

(declare-fun c!9311 () Bool)

(assert (=> d!31074 (= c!9311 (is-Zero!95 (*!4 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95)))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813)))))))

(declare-fun e!22672 () Nat!111)

(assert (=> d!31074 (= (+!5 (*!4 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95)))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813))) e!22672)))

(declare-fun b!43720 () Bool)

(assert (=> b!43720 (= e!22672 (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813)))))

(declare-fun b!43721 () Bool)

(assert (=> b!43721 (= e!22672 (Succ!92 (+!5 (n!1236 (*!4 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95)))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813)))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813)))))))

(assert (= (and d!31074 c!9311) b!43720))

(assert (= (and d!31074 (not c!9311)) b!43721))

(assert (=> b!43721 m!46843))

(declare-fun m!46981 () Bool)

(assert (=> b!43721 m!46981))

(assert (=> b!43661 d!31074))

(declare-fun d!31076 () Bool)

(declare-fun c!9312 () Bool)

(assert (=> d!31076 (= c!9312 (is-Zero!95 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95))))))))

(declare-fun e!22673 () Nat!111)

(assert (=> d!31076 (= (*!4 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95)))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813))) e!22673)))

(declare-fun b!43722 () Bool)

(assert (=> b!43722 (= e!22673 Zero!95)))

(declare-fun b!43723 () Bool)

(assert (=> b!43723 (= e!22673 (+!5 (*!4 (n!1236 (n!1236 (n!1236 (Succ!92 (Succ!92 Zero!95))))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813))) (pow!0 (Succ!92 (Succ!92 Zero!95)) (n!1236 n!813))))))

(assert (= (and d!31076 c!9312) b!43722))

(assert (= (and d!31076 (not c!9312)) b!43723))

(assert (=> b!43723 m!46843))

(declare-fun m!46983 () Bool)

(assert (=> b!43723 m!46983))

(assert (=> b!43723 m!46983))

(assert (=> b!43723 m!46843))

(declare-fun m!46985 () Bool)

(assert (=> b!43723 m!46985))

(assert (=> b!43661 d!31076))

(push 1)

(assert (not b!43687))

(assert (not b!43690))

(assert (not b!43703))

(assert (not b!43679))

(assert (not b!43723))

(assert (not b!43719))

(assert (not b!43705))

(assert (not b!43707))

(assert (not b!43716))

(assert (not b!43709))

(assert (not b!43701))

(assert (not b!43713))

(assert (not b!43721))

(assert (not d!31028))

(assert (not b!43685))

(assert (not b!43689))

(assert (not b!43676))

(assert (not b!43681))

(assert (not b!43693))

(assert (not b!43711))

(assert (not b!43715))

(assert (not d!31070))

(assert (not b!43683))

(assert (not b!43699))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

