; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5984 () Bool)

(assert start!5984)

(declare-fun res!21144 () Bool)

(declare-fun e!23123 () Bool)

(assert (=> start!5984 (=> (not res!21144) (not e!23123))))

(declare-datatypes () ((Nat!148 (Zero!132) (Succ!129 (n!1279 Nat!148)))))

(declare-fun n1!345 () Nat!148)

(declare-fun n2!361 () Nat!148)

(declare-fun <!2 (Nat!148 Nat!148) Bool)

(assert (=> start!5984 (= res!21144 (<!2 n1!345 n2!361))))

(assert (=> start!5984 e!23123))

(assert (=> start!5984 true))

(declare-fun b!44661 () Bool)

(declare-fun res!21142 () Bool)

(assert (=> b!44661 (=> (not res!21142) (not e!23123))))

(declare-datatypes () ((Unit!492 (Unit!493))))

(declare-fun x$45!55 () Unit!492)

(declare-fun pred_<!0 (Nat!148 Nat!148) Unit!492)

(assert (=> b!44661 (= res!21142 (= x$45!55 (pred_<!0 (n!1279 n1!345) (n!1279 n2!361))))))

(declare-fun b!44663 () Bool)

(declare-fun n!1047 () Nat!148)

(assert (=> b!44663 (= e!23123 (not (<!2 n1!345 n!1047)))))

(declare-fun b!44660 () Bool)

(declare-fun res!21143 () Bool)

(assert (=> b!44660 (=> (not res!21143) (not e!23123))))

(declare-fun n!1039 () Nat!148)

(assert (=> b!44660 (= res!21143 (and (= n!1039 (n!1279 n2!361)) (or (not (is-Succ!129 n2!361)) (not (= (n!1279 n2!361) n1!345))) (not (is-Zero!132 n1!345))))))

(declare-fun b!44662 () Bool)

(declare-fun res!21145 () Bool)

(assert (=> b!44662 (=> (not res!21145) (not e!23123))))

(assert (=> b!44662 (= res!21145 (and (= n!1047 (n!1279 n2!361)) (not (= n1!345 n!1047))))))

(assert (= (and start!5984 res!21144) b!44660))

(assert (= (and b!44660 res!21143) b!44661))

(assert (= (and b!44661 res!21142) b!44662))

(assert (= (and b!44662 res!21145) b!44663))

(declare-fun m!47821 () Bool)

(assert (=> start!5984 m!47821))

(declare-fun m!47823 () Bool)

(assert (=> b!44661 m!47823))

(declare-fun m!47825 () Bool)

(assert (=> b!44663 m!47825))

(push 1)

(assert (not b!44661))

(assert (not b!44663))

(assert (not start!5984))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31440 () Bool)

(declare-fun e!23126 () Bool)

(assert (=> d!31440 e!23126))

(declare-fun res!21148 () Bool)

(assert (=> d!31440 (=> res!21148 e!23126)))

(declare-fun lt!8185 () Nat!148)

(assert (=> d!31440 (= res!21148 (= (n!1279 n1!345) lt!8185))))

(assert (=> d!31440 (= lt!8185 (n!1279 (n!1279 n2!361)))))

(assert (=> d!31440 true))

(declare-fun x$45!96 () Unit!492)

(assert (=> d!31440 (= (pred_<!0 (n!1279 n1!345) (n!1279 n2!361)) x$45!96)))

(declare-fun b!44666 () Bool)

(assert (=> b!44666 (= e!23126 (<!2 (n!1279 n1!345) lt!8185))))

(assert (= (and d!31440 (not res!21148)) b!44666))

(declare-fun m!47827 () Bool)

(assert (=> b!44666 m!47827))

(assert (=> b!44661 d!31440))

(declare-fun d!31442 () Bool)

(declare-fun lt!8188 () Bool)

(declare-fun repr!0 (Nat!148) Int)

(assert (=> d!31442 (= lt!8188 (< (repr!0 n1!345) (repr!0 n!1047)))))

(declare-fun e!23129 () Bool)

(assert (=> d!31442 (= lt!8188 e!23129)))

(declare-fun c!9549 () Bool)

(assert (=> d!31442 (= c!9549 (and (is-Succ!129 n1!345) (is-Succ!129 n!1047)))))

(assert (=> d!31442 (= (<!2 n1!345 n!1047) lt!8188)))

(declare-fun b!44671 () Bool)

(assert (=> b!44671 (= e!23129 (<!2 (n!1279 n1!345) (n!1279 n!1047)))))

(declare-fun b!44672 () Bool)

(assert (=> b!44672 (= e!23129 (and (is-Zero!132 n1!345) (is-Succ!129 n!1047)))))

(assert (= (and d!31442 c!9549) b!44671))

(assert (= (and d!31442 (not c!9549)) b!44672))

(declare-fun m!47829 () Bool)

(assert (=> d!31442 m!47829))

(declare-fun m!47831 () Bool)

(assert (=> d!31442 m!47831))

(declare-fun m!47833 () Bool)

(assert (=> b!44671 m!47833))

(assert (=> b!44663 d!31442))

(declare-fun d!31444 () Bool)

(declare-fun lt!8189 () Bool)

(assert (=> d!31444 (= lt!8189 (< (repr!0 n1!345) (repr!0 n2!361)))))

(declare-fun e!23130 () Bool)

(assert (=> d!31444 (= lt!8189 e!23130)))

(declare-fun c!9550 () Bool)

(assert (=> d!31444 (= c!9550 (and (is-Succ!129 n1!345) (is-Succ!129 n2!361)))))

(assert (=> d!31444 (= (<!2 n1!345 n2!361) lt!8189)))

(declare-fun b!44673 () Bool)

(assert (=> b!44673 (= e!23130 (<!2 (n!1279 n1!345) (n!1279 n2!361)))))

(declare-fun b!44674 () Bool)

(assert (=> b!44674 (= e!23130 (and (is-Zero!132 n1!345) (is-Succ!129 n2!361)))))

(assert (= (and d!31444 c!9550) b!44673))

(assert (= (and d!31444 (not c!9550)) b!44674))

(assert (=> d!31444 m!47829))

(declare-fun m!47835 () Bool)

(assert (=> d!31444 m!47835))

(declare-fun m!47837 () Bool)

(assert (=> b!44673 m!47837))

(assert (=> start!5984 d!31444))

(push 1)

(assert (not d!31442))

(assert (not b!44666))

(assert (not d!31444))

(assert (not b!44671))

(assert (not b!44673))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31446 () Bool)

(declare-fun lt!8190 () Bool)

(assert (=> d!31446 (= lt!8190 (< (repr!0 (n!1279 n1!345)) (repr!0 (n!1279 n!1047))))))

(declare-fun e!23131 () Bool)

(assert (=> d!31446 (= lt!8190 e!23131)))

(declare-fun c!9551 () Bool)

(assert (=> d!31446 (= c!9551 (and (is-Succ!129 (n!1279 n1!345)) (is-Succ!129 (n!1279 n!1047))))))

(assert (=> d!31446 (= (<!2 (n!1279 n1!345) (n!1279 n!1047)) lt!8190)))

(declare-fun b!44675 () Bool)

(assert (=> b!44675 (= e!23131 (<!2 (n!1279 (n!1279 n1!345)) (n!1279 (n!1279 n!1047))))))

(declare-fun b!44676 () Bool)

(assert (=> b!44676 (= e!23131 (and (is-Zero!132 (n!1279 n1!345)) (is-Succ!129 (n!1279 n!1047))))))

(assert (= (and d!31446 c!9551) b!44675))

(assert (= (and d!31446 (not c!9551)) b!44676))

(declare-fun m!47839 () Bool)

(assert (=> d!31446 m!47839))

(declare-fun m!47841 () Bool)

(assert (=> d!31446 m!47841))

(declare-fun m!47843 () Bool)

(assert (=> b!44675 m!47843))

(assert (=> b!44671 d!31446))

(declare-fun d!31448 () Bool)

(declare-fun lt!8193 () Int)

(assert (=> d!31448 (>= lt!8193 0)))

(declare-fun e!23134 () Int)

(assert (=> d!31448 (= lt!8193 e!23134)))

(declare-fun c!9554 () Bool)

(assert (=> d!31448 (= c!9554 (is-Zero!132 n1!345))))

(assert (=> d!31448 (= (repr!0 n1!345) lt!8193)))

(declare-fun b!44681 () Bool)

(assert (=> b!44681 (= e!23134 0)))

(declare-fun b!44682 () Bool)

(assert (=> b!44682 (= e!23134 (+ (repr!0 (n!1279 n1!345)) 1))))

(assert (= (and d!31448 c!9554) b!44681))

(assert (= (and d!31448 (not c!9554)) b!44682))

(assert (=> b!44682 m!47839))

(assert (=> d!31442 d!31448))

(declare-fun d!31450 () Bool)

(declare-fun lt!8194 () Int)

(assert (=> d!31450 (>= lt!8194 0)))

(declare-fun e!23135 () Int)

(assert (=> d!31450 (= lt!8194 e!23135)))

(declare-fun c!9555 () Bool)

(assert (=> d!31450 (= c!9555 (is-Zero!132 n!1047))))

(assert (=> d!31450 (= (repr!0 n!1047) lt!8194)))

(declare-fun b!44683 () Bool)

(assert (=> b!44683 (= e!23135 0)))

(declare-fun b!44684 () Bool)

(assert (=> b!44684 (= e!23135 (+ (repr!0 (n!1279 n!1047)) 1))))

(assert (= (and d!31450 c!9555) b!44683))

(assert (= (and d!31450 (not c!9555)) b!44684))

(assert (=> b!44684 m!47841))

(assert (=> d!31442 d!31450))

(declare-fun d!31452 () Bool)

(declare-fun lt!8195 () Bool)

(assert (=> d!31452 (= lt!8195 (< (repr!0 (n!1279 n1!345)) (repr!0 (n!1279 n2!361))))))

(declare-fun e!23136 () Bool)

(assert (=> d!31452 (= lt!8195 e!23136)))

(declare-fun c!9556 () Bool)

(assert (=> d!31452 (= c!9556 (and (is-Succ!129 (n!1279 n1!345)) (is-Succ!129 (n!1279 n2!361))))))

(assert (=> d!31452 (= (<!2 (n!1279 n1!345) (n!1279 n2!361)) lt!8195)))

(declare-fun b!44685 () Bool)

(assert (=> b!44685 (= e!23136 (<!2 (n!1279 (n!1279 n1!345)) (n!1279 (n!1279 n2!361))))))

(declare-fun b!44686 () Bool)

(assert (=> b!44686 (= e!23136 (and (is-Zero!132 (n!1279 n1!345)) (is-Succ!129 (n!1279 n2!361))))))

(assert (= (and d!31452 c!9556) b!44685))

(assert (= (and d!31452 (not c!9556)) b!44686))

(assert (=> d!31452 m!47839))

(declare-fun m!47845 () Bool)

(assert (=> d!31452 m!47845))

(declare-fun m!47847 () Bool)

(assert (=> b!44685 m!47847))

(assert (=> b!44673 d!31452))

(assert (=> d!31444 d!31448))

(declare-fun d!31454 () Bool)

(declare-fun lt!8196 () Int)

(assert (=> d!31454 (>= lt!8196 0)))

(declare-fun e!23137 () Int)

(assert (=> d!31454 (= lt!8196 e!23137)))

(declare-fun c!9557 () Bool)

(assert (=> d!31454 (= c!9557 (is-Zero!132 n2!361))))

(assert (=> d!31454 (= (repr!0 n2!361) lt!8196)))

(declare-fun b!44687 () Bool)

(assert (=> b!44687 (= e!23137 0)))

(declare-fun b!44688 () Bool)

(assert (=> b!44688 (= e!23137 (+ (repr!0 (n!1279 n2!361)) 1))))

(assert (= (and d!31454 c!9557) b!44687))

(assert (= (and d!31454 (not c!9557)) b!44688))

(assert (=> b!44688 m!47845))

(assert (=> d!31444 d!31454))

(declare-fun d!31456 () Bool)

(declare-fun lt!8197 () Bool)

(assert (=> d!31456 (= lt!8197 (< (repr!0 (n!1279 n1!345)) (repr!0 lt!8185)))))

(declare-fun e!23138 () Bool)

(assert (=> d!31456 (= lt!8197 e!23138)))

(declare-fun c!9558 () Bool)

(assert (=> d!31456 (= c!9558 (and (is-Succ!129 (n!1279 n1!345)) (is-Succ!129 lt!8185)))))

(assert (=> d!31456 (= (<!2 (n!1279 n1!345) lt!8185) lt!8197)))

(declare-fun b!44689 () Bool)

(assert (=> b!44689 (= e!23138 (<!2 (n!1279 (n!1279 n1!345)) (n!1279 lt!8185)))))

(declare-fun b!44690 () Bool)

(assert (=> b!44690 (= e!23138 (and (is-Zero!132 (n!1279 n1!345)) (is-Succ!129 lt!8185)))))

(assert (= (and d!31456 c!9558) b!44689))

(assert (= (and d!31456 (not c!9558)) b!44690))

(assert (=> d!31456 m!47839))

(declare-fun m!47849 () Bool)

(assert (=> d!31456 m!47849))

(declare-fun m!47851 () Bool)

(assert (=> b!44689 m!47851))

(assert (=> b!44666 d!31456))

(push 1)

(assert (not b!44689))

(assert (not b!44685))

(assert (not d!31452))

(assert (not b!44684))

(assert (not d!31446))

(assert (not b!44675))

(assert (not b!44688))

(assert (not b!44682))

(assert (not d!31456))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

