; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4824 () Bool)

(assert start!4824)

(declare-fun b!37689 () Bool)

(declare-fun res!17964 () Bool)

(declare-fun e!19381 () Bool)

(assert (=> b!37689 (=> (not res!17964) (not e!19381))))

(declare-datatypes () ((Unit!302 (Unit!303))))

(declare-fun tmp!175 () Unit!302)

(declare-datatypes () ((Nat!44 (Zero!28) (Succ!25 (n!1107 Nat!44)))))

(declare-fun p1!51 () Nat!44)

(declare-fun succ_<!0 (Nat!44 Nat!44) Unit!302)

(assert (=> b!37689 (= res!17964 (= tmp!175 (succ_<!0 p1!51 p1!51)))))

(declare-fun b!37690 () Bool)

(declare-fun res!17961 () Bool)

(assert (=> b!37690 (=> (not res!17961) (not e!19381))))

(declare-fun res!17692 () Nat!44)

(declare-fun t!5153 () Nat!44)

(declare-fun n1!166 () Nat!44)

(assert (=> b!37690 (= res!17961 (and (= t!5153 (n!1107 n1!166)) (= res!17692 t!5153) (= p1!51 res!17692)))))

(declare-fun b!37691 () Bool)

(declare-fun p1!52 () Nat!44)

(declare-fun n2!177 () Nat!44)

(declare-fun <!2 (Nat!44 Nat!44) Bool)

(assert (=> b!37691 (= e!19381 (not (<!2 p1!52 n2!177)))))

(declare-fun e!19382 () Unit!302)

(declare-fun b!37692 () Bool)

(declare-fun transitive_<!0 (Nat!44 Nat!44 Nat!44) Unit!302)

(assert (=> b!37692 (= e!19382 (transitive_<!0 p1!51 n1!166 n2!177))))

(declare-fun res!17962 () Bool)

(assert (=> start!4824 (=> (not res!17962) (not e!19381))))

(declare-fun >!2 (Nat!44 Nat!44) Bool)

(assert (=> start!4824 (= res!17962 (>!2 n1!166 Zero!28))))

(assert (=> start!4824 e!19381))

(assert (=> start!4824 true))

(declare-fun b!37693 () Bool)

(declare-fun res!17966 () Bool)

(assert (=> b!37693 (=> (not res!17966) (not e!19381))))

(declare-fun t!5154 () Unit!302)

(declare-fun t!5157 () Nat!44)

(declare-fun x$46!21 () Unit!302)

(declare-fun res!17696 () Nat!44)

(declare-fun res!17695 () Unit!302)

(assert (=> b!37693 (= res!17966 (and (= res!17695 t!5154) (= x$46!21 res!17695) (= t!5157 (n!1107 n1!166)) (= res!17696 t!5157) (= p1!52 res!17696)))))

(declare-fun b!37694 () Bool)

(declare-fun Unit!304 () Unit!302)

(assert (=> b!37694 (= e!19382 Unit!304)))

(declare-fun b!37695 () Bool)

(declare-fun res!17963 () Bool)

(assert (=> b!37695 (=> (not res!17963) (not e!19381))))

(declare-fun <=!2 (Nat!44 Nat!44) Bool)

(assert (=> b!37695 (= res!17963 (<=!2 n1!166 n2!177))))

(declare-fun b!37696 () Bool)

(declare-fun res!17965 () Bool)

(assert (=> b!37696 (=> (not res!17965) (not e!19381))))

(assert (=> b!37696 (= res!17965 (= t!5154 e!19382))))

(declare-fun c!8193 () Bool)

(assert (=> b!37696 (= c!8193 (not (= n1!166 n2!177)))))

(assert (= (and start!4824 res!17962) b!37695))

(assert (= (and b!37695 res!17963) b!37690))

(assert (= (and b!37690 res!17961) b!37689))

(assert (= (and b!37689 res!17964) b!37696))

(assert (= (and b!37696 c!8193) b!37692))

(assert (= (and b!37696 (not c!8193)) b!37694))

(assert (= (and b!37696 res!17965) b!37693))

(assert (= (and b!37693 res!17966) b!37691))

(declare-fun m!38945 () Bool)

(assert (=> start!4824 m!38945))

(declare-fun m!38947 () Bool)

(assert (=> b!37689 m!38947))

(declare-fun m!38949 () Bool)

(assert (=> b!37695 m!38949))

(declare-fun m!38951 () Bool)

(assert (=> b!37691 m!38951))

(declare-fun m!38953 () Bool)

(assert (=> b!37692 m!38953))

(push 1)

(assert (not b!37691))

(assert (not b!37695))

(assert (not start!4824))

(assert (not b!37692))

(assert (not b!37689))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18872 () Bool)

(declare-fun lt!7499 () Bool)

(declare-fun repr!0 (Nat!44) Int)

(assert (=> d!18872 (= lt!7499 (< (repr!0 p1!52) (repr!0 n2!177)))))

(declare-fun e!19385 () Bool)

(assert (=> d!18872 (= lt!7499 e!19385)))

(declare-fun c!8196 () Bool)

(assert (=> d!18872 (= c!8196 (and (is-Succ!25 p1!52) (is-Succ!25 n2!177)))))

(assert (=> d!18872 (= (<!2 p1!52 n2!177) lt!7499)))

(declare-fun b!37701 () Bool)

(assert (=> b!37701 (= e!19385 (<!2 (n!1107 p1!52) (n!1107 n2!177)))))

(declare-fun b!37702 () Bool)

(assert (=> b!37702 (= e!19385 (and (is-Zero!28 p1!52) (is-Succ!25 n2!177)))))

(assert (= (and d!18872 c!8196) b!37701))

(assert (= (and d!18872 (not c!8196)) b!37702))

(declare-fun m!38955 () Bool)

(assert (=> d!18872 m!38955))

(declare-fun m!38957 () Bool)

(assert (=> d!18872 m!38957))

(declare-fun m!38959 () Bool)

(assert (=> b!37701 m!38959))

(assert (=> b!37691 d!18872))

(declare-fun d!18874 () Bool)

(declare-fun res!17969 () Bool)

(declare-fun e!19388 () Bool)

(assert (=> d!18874 (=> (not res!17969) (not e!19388))))

(assert (=> d!18874 (= res!17969 (not (<!2 n1!166 Zero!28)))))

(assert (=> d!18874 (= (>!2 n1!166 Zero!28) e!19388)))

(declare-fun b!37705 () Bool)

(assert (=> b!37705 (= e!19388 (not (= n1!166 Zero!28)))))

(assert (= (and d!18874 res!17969) b!37705))

(declare-fun m!38961 () Bool)

(assert (=> d!18874 m!38961))

(assert (=> start!4824 d!18874))

(declare-fun d!18876 () Bool)

(assert (=> d!18876 (<!2 p1!51 (Succ!25 p1!51))))

(assert (=> d!18876 true))

(declare-fun x$43!37 () Unit!302)

(assert (=> d!18876 (= (succ_<!0 p1!51 p1!51) x$43!37)))

(declare-fun bs!11556 () Bool)

(assert (= bs!11556 d!18876))

(declare-fun m!38963 () Bool)

(assert (=> bs!11556 m!38963))

(assert (=> b!37689 d!18876))

(declare-fun d!18878 () Bool)

(assert (=> d!18878 (<!2 p1!51 n2!177)))

(assert (=> d!18878 true))

(declare-fun x$47!47 () Unit!302)

(assert (=> d!18878 (= (transitive_<!0 p1!51 n1!166 n2!177) x$47!47)))

(declare-fun bs!11557 () Bool)

(assert (= bs!11557 d!18878))

(declare-fun m!38965 () Bool)

(assert (=> bs!11557 m!38965))

(assert (=> b!37692 d!18878))

(declare-fun d!18880 () Bool)

(declare-fun res!17972 () Bool)

(declare-fun e!19391 () Bool)

(assert (=> d!18880 (=> res!17972 e!19391)))

(assert (=> d!18880 (= res!17972 (<!2 n1!166 n2!177))))

(assert (=> d!18880 (= (<=!2 n1!166 n2!177) e!19391)))

(declare-fun b!37708 () Bool)

(assert (=> b!37708 (= e!19391 (= n1!166 n2!177))))

(assert (= (and d!18880 (not res!17972)) b!37708))

(declare-fun m!38967 () Bool)

(assert (=> d!18880 m!38967))

(assert (=> b!37695 d!18880))

(push 1)

(assert (not b!37701))

(assert (not d!18874))

(assert (not d!18878))

(assert (not d!18880))

(assert (not d!18872))

(assert (not d!18876))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

