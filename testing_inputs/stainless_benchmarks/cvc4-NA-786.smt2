; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5978 () Bool)

(assert start!5978)

(declare-fun res!21128 () Bool)

(declare-fun e!23114 () Bool)

(assert (=> start!5978 (=> (not res!21128) (not e!23114))))

(declare-datatypes () ((Nat!147 (Zero!131) (Succ!128 (n!1277 Nat!147)))))

(declare-fun n1!345 () Nat!147)

(declare-fun n2!361 () Nat!147)

(declare-fun <!2 (Nat!147 Nat!147) Bool)

(assert (=> start!5978 (= res!21128 (<!2 n1!345 n2!361))))

(assert (=> start!5978 e!23114))

(assert (=> start!5978 true))

(declare-fun b!44640 () Bool)

(declare-fun res!21129 () Bool)

(assert (=> b!44640 (=> (not res!21129) (not e!23114))))

(declare-fun n!1039 () Nat!147)

(assert (=> b!44640 (= res!21129 (and (= n!1039 (n!1277 n2!361)) (or (not (is-Succ!128 n2!361)) (not (= (n!1277 n2!361) n1!345))) (not (is-Zero!131 n1!345))))))

(declare-fun b!44641 () Bool)

(declare-fun res!21130 () Bool)

(assert (=> b!44641 (=> (not res!21130) (not e!23114))))

(declare-datatypes () ((Unit!490 (Unit!491))))

(declare-fun x$45!55 () Unit!490)

(declare-fun pred_<!0 (Nat!147 Nat!147) Unit!490)

(assert (=> b!44641 (= res!21130 (= x$45!55 (pred_<!0 (n!1277 n1!345) (n!1277 n2!361))))))

(declare-fun b!44642 () Bool)

(assert (=> b!44642 (= e!23114 (not (is-Succ!128 n2!361)))))

(assert (= (and start!5978 res!21128) b!44640))

(assert (= (and b!44640 res!21129) b!44641))

(assert (= (and b!44641 res!21130) b!44642))

(declare-fun m!47809 () Bool)

(assert (=> start!5978 m!47809))

(declare-fun m!47811 () Bool)

(assert (=> b!44641 m!47811))

(push 1)

(assert (not start!5978))

(assert (not b!44641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31436 () Bool)

(declare-fun lt!8179 () Bool)

(declare-fun repr!0 (Nat!147) Int)

(assert (=> d!31436 (= lt!8179 (< (repr!0 n1!345) (repr!0 n2!361)))))

(declare-fun e!23117 () Bool)

(assert (=> d!31436 (= lt!8179 e!23117)))

(declare-fun c!9546 () Bool)

(assert (=> d!31436 (= c!9546 (and (is-Succ!128 n1!345) (is-Succ!128 n2!361)))))

(assert (=> d!31436 (= (<!2 n1!345 n2!361) lt!8179)))

(declare-fun b!44647 () Bool)

(assert (=> b!44647 (= e!23117 (<!2 (n!1277 n1!345) (n!1277 n2!361)))))

(declare-fun b!44648 () Bool)

(assert (=> b!44648 (= e!23117 (and (is-Zero!131 n1!345) (is-Succ!128 n2!361)))))

(assert (= (and d!31436 c!9546) b!44647))

(assert (= (and d!31436 (not c!9546)) b!44648))

(declare-fun m!47813 () Bool)

(assert (=> d!31436 m!47813))

(declare-fun m!47815 () Bool)

(assert (=> d!31436 m!47815))

(declare-fun m!47817 () Bool)

(assert (=> b!44647 m!47817))

(assert (=> start!5978 d!31436))

(declare-fun d!31438 () Bool)

(declare-fun e!23120 () Bool)

(assert (=> d!31438 e!23120))

(declare-fun res!21133 () Bool)

(assert (=> d!31438 (=> res!21133 e!23120)))

(declare-fun lt!8182 () Nat!147)

(assert (=> d!31438 (= res!21133 (= (n!1277 n1!345) lt!8182))))

(assert (=> d!31438 (= lt!8182 (n!1277 (n!1277 n2!361)))))

(assert (=> d!31438 true))

(declare-fun x$45!93 () Unit!490)

(assert (=> d!31438 (= (pred_<!0 (n!1277 n1!345) (n!1277 n2!361)) x$45!93)))

(declare-fun b!44651 () Bool)

(assert (=> b!44651 (= e!23120 (<!2 (n!1277 n1!345) lt!8182))))

(assert (= (and d!31438 (not res!21133)) b!44651))

(declare-fun m!47819 () Bool)

(assert (=> b!44651 m!47819))

(assert (=> b!44641 d!31438))

(push 1)

(assert (not b!44647))

(assert (not d!31436))

(assert (not b!44651))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

