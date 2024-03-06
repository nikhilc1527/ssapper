; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5992 () Bool)

(assert start!5992)

(declare-fun res!21151 () Bool)

(declare-fun e!23141 () Bool)

(assert (=> start!5992 (=> (not res!21151) (not e!23141))))

(declare-datatypes () ((Nat!149 (Zero!133) (Succ!130 (n!1281 Nat!149)))))

(declare-fun n1!345 () Nat!149)

(declare-fun n2!361 () Nat!149)

(declare-fun <!2 (Nat!149 Nat!149) Bool)

(assert (=> start!5992 (= res!21151 (<!2 n1!345 n2!361))))

(assert (=> start!5992 e!23141))

(assert (=> start!5992 true))

(declare-fun b!44693 () Bool)

(declare-fun n!1039 () Nat!149)

(assert (=> b!44693 (= e!23141 (and (= n!1039 (n!1281 n2!361)) (or (not (is-Succ!130 n2!361)) (not (= (n!1281 n2!361) n1!345))) (not (is-Succ!130 n2!361))))))

(assert (= (and start!5992 res!21151) b!44693))

(declare-fun m!47853 () Bool)

(assert (=> start!5992 m!47853))

(push 1)

(assert (not start!5992))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31458 () Bool)

(declare-fun lt!8200 () Bool)

(declare-fun repr!0 (Nat!149) Int)

(assert (=> d!31458 (= lt!8200 (< (repr!0 n1!345) (repr!0 n2!361)))))

(declare-fun e!23144 () Bool)

(assert (=> d!31458 (= lt!8200 e!23144)))

(declare-fun c!9561 () Bool)

(assert (=> d!31458 (= c!9561 (and (is-Succ!130 n1!345) (is-Succ!130 n2!361)))))

(assert (=> d!31458 (= (<!2 n1!345 n2!361) lt!8200)))

(declare-fun b!44698 () Bool)

(assert (=> b!44698 (= e!23144 (<!2 (n!1281 n1!345) (n!1281 n2!361)))))

(declare-fun b!44699 () Bool)

(assert (=> b!44699 (= e!23144 (and (is-Zero!133 n1!345) (is-Succ!130 n2!361)))))

(assert (= (and d!31458 c!9561) b!44698))

(assert (= (and d!31458 (not c!9561)) b!44699))

(declare-fun m!47855 () Bool)

(assert (=> d!31458 m!47855))

(declare-fun m!47857 () Bool)

(assert (=> d!31458 m!47857))

(declare-fun m!47859 () Bool)

(assert (=> b!44698 m!47859))

(assert (=> start!5992 d!31458))

(push 1)

(assert (not d!31458))

(assert (not b!44698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

