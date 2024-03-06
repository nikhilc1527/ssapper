; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5974 () Bool)

(assert start!5974)

(declare-fun res!21120 () Bool)

(declare-fun e!23107 () Bool)

(assert (=> start!5974 (=> (not res!21120) (not e!23107))))

(declare-datatypes () ((Nat!146 (Zero!130) (Succ!127 (n!1276 Nat!146)))))

(declare-fun n1!345 () Nat!146)

(declare-fun n2!361 () Nat!146)

(declare-fun <!2 (Nat!146 Nat!146) Bool)

(assert (=> start!5974 (= res!21120 (<!2 n1!345 n2!361))))

(assert (=> start!5974 e!23107))

(assert (=> start!5974 true))

(declare-fun b!44624 () Bool)

(declare-fun res!21121 () Bool)

(assert (=> b!44624 (=> (not res!21121) (not e!23107))))

(declare-fun n!1041 () Nat!146)

(declare-datatypes () ((Unit!487 (Unit!488))))

(declare-fun x$45!54 () Unit!487)

(declare-fun n!1039 () Nat!146)

(declare-fun Unit!489 () Unit!487)

(assert (=> b!44624 (= res!21121 (and (= n!1039 (n!1276 n2!361)) (or (not (is-Succ!127 n2!361)) (not (= (n!1276 n2!361) n1!345))) (is-Zero!130 n1!345) (= x$45!54 Unit!489) (= n!1041 (n!1276 n2!361)) (not (= n1!345 n!1041))))))

(declare-fun b!44625 () Bool)

(assert (=> b!44625 (= e!23107 (not (<!2 n1!345 n!1041)))))

(assert (= (and start!5974 res!21120) b!44624))

(assert (= (and b!44624 res!21121) b!44625))

(declare-fun m!47795 () Bool)

(assert (=> start!5974 m!47795))

(declare-fun m!47797 () Bool)

(assert (=> b!44625 m!47797))

(push 1)

(assert (not b!44625))

(assert (not start!5974))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31432 () Bool)

(declare-fun lt!8175 () Bool)

(declare-fun repr!0 (Nat!146) Int)

(assert (=> d!31432 (= lt!8175 (< (repr!0 n1!345) (repr!0 n!1041)))))

(declare-fun e!23110 () Bool)

(assert (=> d!31432 (= lt!8175 e!23110)))

(declare-fun c!9542 () Bool)

(assert (=> d!31432 (= c!9542 (and (is-Succ!127 n1!345) (is-Succ!127 n!1041)))))

(assert (=> d!31432 (= (<!2 n1!345 n!1041) lt!8175)))

(declare-fun b!44630 () Bool)

(assert (=> b!44630 (= e!23110 (<!2 (n!1276 n1!345) (n!1276 n!1041)))))

(declare-fun b!44631 () Bool)

(assert (=> b!44631 (= e!23110 (and (is-Zero!130 n1!345) (is-Succ!127 n!1041)))))

(assert (= (and d!31432 c!9542) b!44630))

(assert (= (and d!31432 (not c!9542)) b!44631))

(declare-fun m!47799 () Bool)

(assert (=> d!31432 m!47799))

(declare-fun m!47801 () Bool)

(assert (=> d!31432 m!47801))

(declare-fun m!47803 () Bool)

(assert (=> b!44630 m!47803))

(assert (=> b!44625 d!31432))

(declare-fun d!31434 () Bool)

(declare-fun lt!8176 () Bool)

(assert (=> d!31434 (= lt!8176 (< (repr!0 n1!345) (repr!0 n2!361)))))

(declare-fun e!23111 () Bool)

(assert (=> d!31434 (= lt!8176 e!23111)))

(declare-fun c!9543 () Bool)

(assert (=> d!31434 (= c!9543 (and (is-Succ!127 n1!345) (is-Succ!127 n2!361)))))

(assert (=> d!31434 (= (<!2 n1!345 n2!361) lt!8176)))

(declare-fun b!44632 () Bool)

(assert (=> b!44632 (= e!23111 (<!2 (n!1276 n1!345) (n!1276 n2!361)))))

(declare-fun b!44633 () Bool)

(assert (=> b!44633 (= e!23111 (and (is-Zero!130 n1!345) (is-Succ!127 n2!361)))))

(assert (= (and d!31434 c!9543) b!44632))

(assert (= (and d!31434 (not c!9543)) b!44633))

(assert (=> d!31434 m!47799))

(declare-fun m!47805 () Bool)

(assert (=> d!31434 m!47805))

(declare-fun m!47807 () Bool)

(assert (=> b!44632 m!47807))

(assert (=> start!5974 d!31434))

(push 1)

(assert (not d!31434))

(assert (not d!31432))

(assert (not b!44632))

(assert (not b!44630))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

