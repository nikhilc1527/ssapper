; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5962 () Bool)

(assert start!5962)

(declare-fun res!21103 () Bool)

(declare-fun e!23089 () Bool)

(assert (=> start!5962 (=> (not res!21103) (not e!23089))))

(declare-datatypes () ((Nat!142 (Zero!126) (Succ!123 (n!1272 Nat!142)))))

(declare-fun n1!345 () Nat!142)

(declare-fun n2!361 () Nat!142)

(declare-fun <!2 (Nat!142 Nat!142) Bool)

(assert (=> start!5962 (= res!21103 (<!2 n1!345 n2!361))))

(assert (=> start!5962 e!23089))

(assert (=> start!5962 true))

(declare-fun b!44595 () Bool)

(assert (=> b!44595 (= e!23089 (not (is-Succ!123 n2!361)))))

(assert (= (and start!5962 res!21103) b!44595))

(declare-fun m!47773 () Bool)

(assert (=> start!5962 m!47773))

(push 1)

(assert (not start!5962))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31428 () Bool)

(declare-fun lt!8169 () Bool)

(declare-fun repr!0 (Nat!142) Int)

(assert (=> d!31428 (= lt!8169 (< (repr!0 n1!345) (repr!0 n2!361)))))

(declare-fun e!23092 () Bool)

(assert (=> d!31428 (= lt!8169 e!23092)))

(declare-fun c!9536 () Bool)

(assert (=> d!31428 (= c!9536 (and (is-Succ!123 n1!345) (is-Succ!123 n2!361)))))

(assert (=> d!31428 (= (<!2 n1!345 n2!361) lt!8169)))

(declare-fun b!44600 () Bool)

(assert (=> b!44600 (= e!23092 (<!2 (n!1272 n1!345) (n!1272 n2!361)))))

(declare-fun b!44601 () Bool)

(assert (=> b!44601 (= e!23092 (and (is-Zero!126 n1!345) (is-Succ!123 n2!361)))))

(assert (= (and d!31428 c!9536) b!44600))

(assert (= (and d!31428 (not c!9536)) b!44601))

(declare-fun m!47775 () Bool)

(assert (=> d!31428 m!47775))

(declare-fun m!47777 () Bool)

(assert (=> d!31428 m!47777))

(declare-fun m!47779 () Bool)

(assert (=> b!44600 m!47779))

(assert (=> start!5962 d!31428))

(push 1)

(assert (not d!31428))

(assert (not b!44600))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

