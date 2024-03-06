; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5958 () Bool)

(assert start!5958)

(declare-fun res!21099 () Bool)

(declare-fun e!23082 () Bool)

(assert (=> start!5958 (=> (not res!21099) (not e!23082))))

(declare-datatypes () ((Nat!141 (Zero!125) (Succ!122 (n!1271 Nat!141)))))

(declare-fun n1!345 () Nat!141)

(declare-fun n2!361 () Nat!141)

(declare-fun <!2 (Nat!141 Nat!141) Bool)

(assert (=> start!5958 (= res!21099 (<!2 n1!345 n2!361))))

(assert (=> start!5958 e!23082))

(assert (=> start!5958 true))

(declare-fun b!44583 () Bool)

(declare-fun res!21100 () Bool)

(assert (=> b!44583 (=> (not res!21100) (not e!23082))))

(declare-fun n1!349 () Nat!141)

(declare-fun n2!365 () Nat!141)

(declare-fun n!1039 () Nat!141)

(assert (=> b!44583 (= res!21100 (and (= n!1039 (n!1271 n2!361)) (or (not (is-Succ!122 n2!361)) (not (= (n!1271 n2!361) n1!345))) (not (is-Zero!125 n1!345)) (= n1!349 (n!1271 n1!345)) (= n2!365 (n!1271 n2!361))))))

(declare-fun b!44584 () Bool)

(assert (=> b!44584 (= e!23082 (not (<!2 n1!349 n2!365)))))

(assert (= (and start!5958 res!21099) b!44583))

(assert (= (and b!44583 res!21100) b!44584))

(declare-fun m!47757 () Bool)

(assert (=> start!5958 m!47757))

(declare-fun m!47759 () Bool)

(assert (=> b!44584 m!47759))

(push 1)

(assert (not b!44584))

(assert (not start!5958))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31424 () Bool)

(declare-fun lt!8165 () Bool)

(declare-fun repr!0 (Nat!141) Int)

(assert (=> d!31424 (= lt!8165 (< (repr!0 n1!349) (repr!0 n2!365)))))

(declare-fun e!23085 () Bool)

(assert (=> d!31424 (= lt!8165 e!23085)))

(declare-fun c!9532 () Bool)

(assert (=> d!31424 (= c!9532 (and (is-Succ!122 n1!349) (is-Succ!122 n2!365)))))

(assert (=> d!31424 (= (<!2 n1!349 n2!365) lt!8165)))

(declare-fun b!44589 () Bool)

(assert (=> b!44589 (= e!23085 (<!2 (n!1271 n1!349) (n!1271 n2!365)))))

(declare-fun b!44590 () Bool)

(assert (=> b!44590 (= e!23085 (and (is-Zero!125 n1!349) (is-Succ!122 n2!365)))))

(assert (= (and d!31424 c!9532) b!44589))

(assert (= (and d!31424 (not c!9532)) b!44590))

(declare-fun m!47761 () Bool)

(assert (=> d!31424 m!47761))

(declare-fun m!47763 () Bool)

(assert (=> d!31424 m!47763))

(declare-fun m!47765 () Bool)

(assert (=> b!44589 m!47765))

(assert (=> b!44584 d!31424))

(declare-fun d!31426 () Bool)

(declare-fun lt!8166 () Bool)

(assert (=> d!31426 (= lt!8166 (< (repr!0 n1!345) (repr!0 n2!361)))))

(declare-fun e!23086 () Bool)

(assert (=> d!31426 (= lt!8166 e!23086)))

(declare-fun c!9533 () Bool)

(assert (=> d!31426 (= c!9533 (and (is-Succ!122 n1!345) (is-Succ!122 n2!361)))))

(assert (=> d!31426 (= (<!2 n1!345 n2!361) lt!8166)))

(declare-fun b!44591 () Bool)

(assert (=> b!44591 (= e!23086 (<!2 (n!1271 n1!345) (n!1271 n2!361)))))

(declare-fun b!44592 () Bool)

(assert (=> b!44592 (= e!23086 (and (is-Zero!125 n1!345) (is-Succ!122 n2!361)))))

(assert (= (and d!31426 c!9533) b!44591))

(assert (= (and d!31426 (not c!9533)) b!44592))

(declare-fun m!47767 () Bool)

(assert (=> d!31426 m!47767))

(declare-fun m!47769 () Bool)

(assert (=> d!31426 m!47769))

(declare-fun m!47771 () Bool)

(assert (=> b!44591 m!47771))

(assert (=> start!5958 d!31426))

(push 1)

(assert (not d!31424))

(assert (not d!31426))

(assert (not b!44591))

(assert (not b!44589))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

