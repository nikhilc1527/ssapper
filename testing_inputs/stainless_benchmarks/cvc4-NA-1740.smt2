; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11982 () Bool)

(assert start!11982)

(declare-fun res!47398 () Bool)

(declare-fun e!49352 () Bool)

(assert (=> start!11982 (=> (not res!47398) (not e!49352))))

(declare-datatypes () ((Nat!299 (Succ!273 (prev!847 Nat!299)) (Zero!279))))

(declare-fun x!31851 () Nat!299)

(assert (=> start!11982 (= res!47398 (not (is-Succ!273 x!31851)))))

(assert (=> start!11982 e!49352))

(assert (=> start!11982 true))

(declare-fun b!90409 () Bool)

(declare-fun +!4 (Nat!299 Nat!299) Nat!299)

(assert (=> b!90409 (= e!49352 (not (= (+!4 x!31851 Zero!279) x!31851)))))

(assert (= (and start!11982 res!47398) b!90409))

(declare-fun m!86221 () Bool)

(assert (=> b!90409 m!86221))

(push 1)

(assert (not b!90409))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59555 () Bool)

(declare-fun c!22095 () Bool)

(assert (=> d!59555 (= c!22095 (is-Zero!279 x!31851))))

(declare-fun e!49355 () Nat!299)

(assert (=> d!59555 (= (+!4 x!31851 Zero!279) e!49355)))

(declare-fun b!90414 () Bool)

(assert (=> b!90414 (= e!49355 Zero!279)))

(declare-fun b!90415 () Bool)

(assert (=> b!90415 (= e!49355 (Succ!273 (+!4 (prev!847 x!31851) Zero!279)))))

(assert (= (and d!59555 c!22095) b!90414))

(assert (= (and d!59555 (not c!22095)) b!90415))

(declare-fun m!86224 () Bool)

(assert (=> b!90415 m!86224))

(assert (=> b!90409 d!59555))

(push 1)

(assert (not b!90415))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

