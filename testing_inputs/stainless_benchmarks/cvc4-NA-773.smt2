; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5918 () Bool)

(assert start!5918)

(declare-fun res!21041 () Bool)

(declare-fun e!23021 () Bool)

(assert (=> start!5918 (=> (not res!21041) (not e!23021))))

(declare-datatypes () ((Nat!134 (Zero!118) (Succ!115 (n!1262 Nat!134)))))

(declare-fun n1!110 () Nat!134)

(declare-fun n2!121 () Nat!134)

(declare-fun <=!2 (Nat!134 Nat!134) Bool)

(assert (=> start!5918 (= res!21041 (<=!2 n1!110 n2!121))))

(assert (=> start!5918 e!23021))

(assert (=> start!5918 true))

(declare-fun b!44465 () Bool)

(declare-fun res!21042 () Bool)

(assert (=> b!44465 (=> (not res!21042) (not e!23021))))

(declare-datatypes () ((Unit!468 (Unit!469))))

(declare-fun x$43!20 () Unit!468)

(declare-fun Unit!470 () Unit!468)

(assert (=> b!44465 (= res!21042 (and (is-Zero!118 n1!110) (= x$43!20 Unit!470)))))

(declare-fun b!44466 () Bool)

(declare-fun <!2 (Nat!134 Nat!134) Bool)

(assert (=> b!44466 (= e!23021 (not (<!2 n1!110 (Succ!115 n2!121))))))

(assert (= (and start!5918 res!21041) b!44465))

(assert (= (and b!44465 res!21042) b!44466))

(declare-fun m!47651 () Bool)

(assert (=> start!5918 m!47651))

(declare-fun m!47653 () Bool)

(assert (=> b!44466 m!47653))

(push 1)

(assert (not start!5918))

(assert (not b!44466))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31378 () Bool)

(declare-fun res!21045 () Bool)

(declare-fun e!23024 () Bool)

(assert (=> d!31378 (=> res!21045 e!23024)))

(assert (=> d!31378 (= res!21045 (<!2 n1!110 n2!121))))

(assert (=> d!31378 (= (<=!2 n1!110 n2!121) e!23024)))

(declare-fun b!44469 () Bool)

(assert (=> b!44469 (= e!23024 (= n1!110 n2!121))))

(assert (= (and d!31378 (not res!21045)) b!44469))

(declare-fun m!47655 () Bool)

(assert (=> d!31378 m!47655))

(assert (=> start!5918 d!31378))

(declare-fun d!31380 () Bool)

(declare-fun lt!8123 () Bool)

(declare-fun repr!0 (Nat!134) Int)

(assert (=> d!31380 (= lt!8123 (< (repr!0 n1!110) (repr!0 (Succ!115 n2!121))))))

(declare-fun e!23027 () Bool)

(assert (=> d!31380 (= lt!8123 e!23027)))

(declare-fun c!9502 () Bool)

(assert (=> d!31380 (= c!9502 (and (is-Succ!115 n1!110) (is-Succ!115 (Succ!115 n2!121))))))

(assert (=> d!31380 (= (<!2 n1!110 (Succ!115 n2!121)) lt!8123)))

(declare-fun b!44474 () Bool)

(assert (=> b!44474 (= e!23027 (<!2 (n!1262 n1!110) (n!1262 (Succ!115 n2!121))))))

(declare-fun b!44475 () Bool)

(assert (=> b!44475 (= e!23027 (and (is-Zero!118 n1!110) (is-Succ!115 (Succ!115 n2!121))))))

(assert (= (and d!31380 c!9502) b!44474))

(assert (= (and d!31380 (not c!9502)) b!44475))

(declare-fun m!47657 () Bool)

(assert (=> d!31380 m!47657))

(declare-fun m!47659 () Bool)

(assert (=> d!31380 m!47659))

(declare-fun m!47661 () Bool)

(assert (=> b!44474 m!47661))

(assert (=> b!44466 d!31380))

(push 1)

(assert (not d!31380))

(assert (not b!44474))

(assert (not d!31378))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

