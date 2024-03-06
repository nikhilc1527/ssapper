; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4808 () Bool)

(assert start!4808)

(declare-fun res!17920 () Bool)

(declare-fun e!19358 () Bool)

(assert (=> start!4808 (=> (not res!17920) (not e!19358))))

(declare-datatypes () ((Nat!42 (Zero!26) (Succ!23 (n!1105 Nat!42)))))

(declare-fun n1!166 () Nat!42)

(declare-fun >!2 (Nat!42 Nat!42) Bool)

(assert (=> start!4808 (= res!17920 (>!2 n1!166 Zero!26))))

(assert (=> start!4808 e!19358))

(assert (=> start!4808 true))

(declare-fun b!37638 () Bool)

(declare-fun res!17921 () Bool)

(assert (=> b!37638 (=> (not res!17921) (not e!19358))))

(declare-fun n2!177 () Nat!42)

(declare-fun <=!2 (Nat!42 Nat!42) Bool)

(assert (=> b!37638 (= res!17921 (<=!2 n1!166 n2!177))))

(declare-fun b!37639 () Bool)

(assert (=> b!37639 (= e!19358 (not (is-Succ!23 n1!166)))))

(assert (= (and start!4808 res!17920) b!37638))

(assert (= (and b!37638 res!17921) b!37639))

(declare-fun m!38921 () Bool)

(assert (=> start!4808 m!38921))

(declare-fun m!38923 () Bool)

(assert (=> b!37638 m!38923))

(push 1)

(assert (not b!37638))

(assert (not start!4808))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18860 () Bool)

(declare-fun res!17924 () Bool)

(declare-fun e!19361 () Bool)

(assert (=> d!18860 (=> res!17924 e!19361)))

(declare-fun <!2 (Nat!42 Nat!42) Bool)

(assert (=> d!18860 (= res!17924 (<!2 n1!166 n2!177))))

(assert (=> d!18860 (= (<=!2 n1!166 n2!177) e!19361)))

(declare-fun b!37642 () Bool)

(assert (=> b!37642 (= e!19361 (= n1!166 n2!177))))

(assert (= (and d!18860 (not res!17924)) b!37642))

(declare-fun m!38925 () Bool)

(assert (=> d!18860 m!38925))

(assert (=> b!37638 d!18860))

(declare-fun d!18862 () Bool)

(declare-fun res!17927 () Bool)

(declare-fun e!19364 () Bool)

(assert (=> d!18862 (=> (not res!17927) (not e!19364))))

(assert (=> d!18862 (= res!17927 (not (<!2 n1!166 Zero!26)))))

(assert (=> d!18862 (= (>!2 n1!166 Zero!26) e!19364)))

(declare-fun b!37645 () Bool)

(assert (=> b!37645 (= e!19364 (not (= n1!166 Zero!26)))))

(assert (= (and d!18862 res!17927) b!37645))

(declare-fun m!38927 () Bool)

(assert (=> d!18862 m!38927))

(assert (=> start!4808 d!18862))

(push 1)

(assert (not d!18860))

(assert (not d!18862))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

