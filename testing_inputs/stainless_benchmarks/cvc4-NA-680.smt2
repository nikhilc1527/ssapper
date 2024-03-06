; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4798 () Bool)

(assert start!4798)

(declare-fun res!17908 () Bool)

(declare-fun e!19344 () Bool)

(assert (=> start!4798 (=> (not res!17908) (not e!19344))))

(declare-datatypes () ((Nat!41 (Zero!25) (Succ!22 (n!1104 Nat!41)))))

(declare-fun n1!166 () Nat!41)

(declare-fun >!2 (Nat!41 Nat!41) Bool)

(assert (=> start!4798 (= res!17908 (>!2 n1!166 Zero!25))))

(assert (=> start!4798 e!19344))

(assert (=> start!4798 true))

(declare-fun b!37614 () Bool)

(declare-fun e!19345 () Bool)

(declare-fun n2!180 () Nat!41)

(declare-fun n3!48 () Nat!41)

(declare-fun <!2 (Nat!41 Nat!41) Bool)

(assert (=> b!37614 (= e!19345 (not (<!2 n2!180 n3!48)))))

(declare-fun b!37615 () Bool)

(declare-fun res!17906 () Bool)

(assert (=> b!37615 (=> (not res!17906) (not e!19344))))

(declare-fun res!17692 () Nat!41)

(declare-fun t!5153 () Nat!41)

(declare-fun p1!51 () Nat!41)

(assert (=> b!37615 (= res!17906 (and (= t!5153 (n!1104 n1!166)) (= res!17692 t!5153) (= p1!51 res!17692)))))

(declare-fun b!37616 () Bool)

(declare-fun res!17909 () Bool)

(assert (=> b!37616 (=> (not res!17909) (not e!19344))))

(declare-fun n2!177 () Nat!41)

(declare-fun <=!2 (Nat!41 Nat!41) Bool)

(assert (=> b!37616 (= res!17909 (<=!2 n1!166 n2!177))))

(declare-fun b!37617 () Bool)

(declare-fun res!17907 () Bool)

(assert (=> b!37617 (=> (not res!17907) (not e!19344))))

(declare-datatypes () ((Unit!297 (Unit!298))))

(declare-fun tmp!175 () Unit!297)

(declare-fun succ_<!0 (Nat!41 Nat!41) Unit!297)

(assert (=> b!37617 (= res!17907 (= tmp!175 (succ_<!0 p1!51 p1!51)))))

(declare-fun b!37618 () Bool)

(assert (=> b!37618 (= e!19344 e!19345)))

(declare-fun res!17904 () Bool)

(assert (=> b!37618 (=> res!17904 e!19345)))

(declare-fun n1!169 () Nat!41)

(assert (=> b!37618 (= res!17904 (not (<!2 n1!169 n2!180)))))

(declare-fun b!37619 () Bool)

(declare-fun res!17905 () Bool)

(assert (=> b!37619 (=> (not res!17905) (not e!19344))))

(assert (=> b!37619 (= res!17905 (and (not (= n1!166 n2!177)) (= n1!169 p1!51) (= n2!180 n1!166) (= n3!48 n2!177)))))

(assert (= (and start!4798 res!17908) b!37616))

(assert (= (and b!37616 res!17909) b!37615))

(assert (= (and b!37615 res!17906) b!37617))

(assert (= (and b!37617 res!17907) b!37619))

(assert (= (and b!37619 res!17905) b!37618))

(assert (= (and b!37618 (not res!17904)) b!37614))

(declare-fun m!38895 () Bool)

(assert (=> b!37618 m!38895))

(declare-fun m!38897 () Bool)

(assert (=> b!37616 m!38897))

(declare-fun m!38899 () Bool)

(assert (=> b!37614 m!38899))

(declare-fun m!38901 () Bool)

(assert (=> start!4798 m!38901))

(declare-fun m!38903 () Bool)

(assert (=> b!37617 m!38903))

(push 1)

(assert (not b!37614))

(assert (not b!37617))

(assert (not b!37616))

(assert (not b!37618))

(assert (not start!4798))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18850 () Bool)

(assert (=> d!18850 (<!2 p1!51 (Succ!22 p1!51))))

(assert (=> d!18850 true))

(declare-fun x$43!31 () Unit!297)

(assert (=> d!18850 (= (succ_<!0 p1!51 p1!51) x$43!31)))

(declare-fun bs!11550 () Bool)

(assert (= bs!11550 d!18850))

(declare-fun m!38905 () Bool)

(assert (=> bs!11550 m!38905))

(assert (=> b!37617 d!18850))

(declare-fun d!18852 () Bool)

(declare-fun res!17912 () Bool)

(declare-fun e!19348 () Bool)

(assert (=> d!18852 (=> (not res!17912) (not e!19348))))

(assert (=> d!18852 (= res!17912 (not (<!2 n1!166 Zero!25)))))

(assert (=> d!18852 (= (>!2 n1!166 Zero!25) e!19348)))

(declare-fun b!37622 () Bool)

(assert (=> b!37622 (= e!19348 (not (= n1!166 Zero!25)))))

(assert (= (and d!18852 res!17912) b!37622))

(declare-fun m!38907 () Bool)

(assert (=> d!18852 m!38907))

(assert (=> start!4798 d!18852))

(declare-fun d!18854 () Bool)

(declare-fun lt!7495 () Bool)

(declare-fun repr!0 (Nat!41) Int)

(assert (=> d!18854 (= lt!7495 (< (repr!0 n1!169) (repr!0 n2!180)))))

(declare-fun e!19351 () Bool)

(assert (=> d!18854 (= lt!7495 e!19351)))

(declare-fun c!8186 () Bool)

(assert (=> d!18854 (= c!8186 (and (is-Succ!22 n1!169) (is-Succ!22 n2!180)))))

(assert (=> d!18854 (= (<!2 n1!169 n2!180) lt!7495)))

(declare-fun b!37627 () Bool)

(assert (=> b!37627 (= e!19351 (<!2 (n!1104 n1!169) (n!1104 n2!180)))))

(declare-fun b!37628 () Bool)

(assert (=> b!37628 (= e!19351 (and (is-Zero!25 n1!169) (is-Succ!22 n2!180)))))

(assert (= (and d!18854 c!8186) b!37627))

(assert (= (and d!18854 (not c!8186)) b!37628))

(declare-fun m!38909 () Bool)

(assert (=> d!18854 m!38909))

(declare-fun m!38911 () Bool)

(assert (=> d!18854 m!38911))

(declare-fun m!38913 () Bool)

(assert (=> b!37627 m!38913))

(assert (=> b!37618 d!18854))

(declare-fun d!18856 () Bool)

(declare-fun res!17915 () Bool)

(declare-fun e!19354 () Bool)

(assert (=> d!18856 (=> res!17915 e!19354)))

(assert (=> d!18856 (= res!17915 (<!2 n1!166 n2!177))))

(assert (=> d!18856 (= (<=!2 n1!166 n2!177) e!19354)))

(declare-fun b!37631 () Bool)

(assert (=> b!37631 (= e!19354 (= n1!166 n2!177))))

(assert (= (and d!18856 (not res!17915)) b!37631))

(declare-fun m!38915 () Bool)

(assert (=> d!18856 m!38915))

(assert (=> b!37616 d!18856))

(declare-fun d!18858 () Bool)

(declare-fun lt!7496 () Bool)

(assert (=> d!18858 (= lt!7496 (< (repr!0 n2!180) (repr!0 n3!48)))))

(declare-fun e!19355 () Bool)

(assert (=> d!18858 (= lt!7496 e!19355)))

(declare-fun c!8187 () Bool)

(assert (=> d!18858 (= c!8187 (and (is-Succ!22 n2!180) (is-Succ!22 n3!48)))))

(assert (=> d!18858 (= (<!2 n2!180 n3!48) lt!7496)))

(declare-fun b!37632 () Bool)

(assert (=> b!37632 (= e!19355 (<!2 (n!1104 n2!180) (n!1104 n3!48)))))

(declare-fun b!37633 () Bool)

(assert (=> b!37633 (= e!19355 (and (is-Zero!25 n2!180) (is-Succ!22 n3!48)))))

(assert (= (and d!18858 c!8187) b!37632))

(assert (= (and d!18858 (not c!8187)) b!37633))

(assert (=> d!18858 m!38911))

(declare-fun m!38917 () Bool)

(assert (=> d!18858 m!38917))

(declare-fun m!38919 () Bool)

(assert (=> b!37632 m!38919))

(assert (=> b!37614 d!18858))

(push 1)

(assert (not d!18856))

(assert (not b!37632))

(assert (not d!18850))

(assert (not d!18858))

(assert (not b!37627))

(assert (not d!18854))

(assert (not d!18852))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

