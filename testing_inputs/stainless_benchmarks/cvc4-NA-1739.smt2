; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11976 () Bool)

(assert start!11976)

(declare-fun res!47394 () Bool)

(declare-fun e!49343 () Bool)

(assert (=> start!11976 (=> (not res!47394) (not e!49343))))

(declare-datatypes () ((Nat!298 (Succ!272 (prev!846 Nat!298)) (Zero!278))))

(declare-fun x!31851 () Nat!298)

(assert (=> start!11976 (= res!47394 (is-Succ!272 x!31851))))

(assert (=> start!11976 e!49343))

(assert (=> start!11976 true))

(declare-fun b!90393 () Bool)

(declare-fun res!47395 () Bool)

(assert (=> b!90393 (=> (not res!47395) (not e!49343))))

(declare-fun inductVal!1026 () Bool)

(declare-fun lemma_rightIdentity_plus!1 (Nat!298) Bool)

(assert (=> b!90393 (= res!47395 (= inductVal!1026 (lemma_rightIdentity_plus!1 (prev!846 x!31851))))))

(declare-fun b!90394 () Bool)

(declare-fun +!4 (Nat!298 Nat!298) Nat!298)

(assert (=> b!90394 (= e!49343 (not (= (+!4 x!31851 Zero!278) x!31851)))))

(assert (= (and start!11976 res!47394) b!90393))

(assert (= (and b!90393 res!47395) b!90394))

(declare-fun m!86212 () Bool)

(assert (=> b!90393 m!86212))

(declare-fun m!86214 () Bool)

(assert (=> b!90394 m!86214))

(push 1)

(assert (not b!90394))

(assert (not b!90393))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59551 () Bool)

(declare-fun c!22089 () Bool)

(assert (=> d!59551 (= c!22089 (is-Zero!278 x!31851))))

(declare-fun e!49346 () Nat!298)

(assert (=> d!59551 (= (+!4 x!31851 Zero!278) e!49346)))

(declare-fun b!90399 () Bool)

(assert (=> b!90399 (= e!49346 Zero!278)))

(declare-fun b!90400 () Bool)

(assert (=> b!90400 (= e!49346 (Succ!272 (+!4 (prev!846 x!31851) Zero!278)))))

(assert (= (and d!59551 c!22089) b!90399))

(assert (= (and d!59551 (not c!22089)) b!90400))

(declare-fun m!86217 () Bool)

(assert (=> b!90400 m!86217))

(assert (=> b!90394 d!59551))

(declare-fun b!90405 () Bool)

(declare-fun e!49349 () Bool)

(assert (=> b!90405 (= e!49349 (= (+!4 (prev!846 x!31851) Zero!278) (prev!846 x!31851)))))

(declare-fun lt!20492 () Bool)

(assert (=> b!90405 (= lt!20492 (lemma_rightIdentity_plus!1 (prev!846 (prev!846 x!31851))))))

(declare-fun d!59553 () Bool)

(assert (=> d!59553 e!49349))

(declare-fun c!22092 () Bool)

(assert (=> d!59553 (= c!22092 (is-Succ!272 (prev!846 x!31851)))))

(assert (=> d!59553 (= (lemma_rightIdentity_plus!1 (prev!846 x!31851)) true)))

(declare-fun b!90406 () Bool)

(assert (=> b!90406 (= e!49349 (= (+!4 (prev!846 x!31851) Zero!278) (prev!846 x!31851)))))

(assert (= (and d!59553 c!22092) b!90405))

(assert (= (and d!59553 (not c!22092)) b!90406))

(assert (=> b!90405 m!86217))

(declare-fun m!86219 () Bool)

(assert (=> b!90405 m!86219))

(assert (=> b!90406 m!86217))

(assert (=> b!90393 d!59553))

(push 1)

(assert (not b!90406))

(assert (not b!90405))

(assert (not b!90400))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

