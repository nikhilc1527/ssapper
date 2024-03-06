; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4624 () Bool)

(assert start!4624)

(declare-fun b_free!2199 () Bool)

(declare-fun b_next!5329 () Bool)

(assert (=> start!4624 (= b_free!2199 (not b_next!5329))))

(declare-fun tp!7319 () Bool)

(declare-fun b_and!7951 () Bool)

(assert (=> start!4624 (= tp!7319 b_and!7951)))

(declare-fun f!2359 () Int)

(declare-fun b_next!5331 () Bool)

(declare-fun lambda!4173 () Int)

(declare-fun b!35239 () Bool)

(assert (=> start!4624 (= b_next!5329 (or (and b!35239 (= lambda!4173 f!2359)) b_next!5331))))

(declare-fun res!16339 () Bool)

(declare-fun e!17789 () Bool)

(assert (=> start!4624 (=> (not res!16339) (not e!17789))))

(declare-fun x!11392 () (_ BitVec 32))

(assert (=> start!4624 (= res!16339 (bvsge x!11392 #b00000000000000000000000000000000))))

(assert (=> start!4624 e!17789))

(assert (=> start!4624 tp!7319))

(assert (=> start!4624 true))

(declare-fun res!16337 () Bool)

(assert (=> b!35239 (=> (not res!16337) (not e!17789))))

(assert (=> b!35239 (= res!16337 (= f!2359 lambda!4173))))

(declare-fun b!35240 () Bool)

(declare-fun res!16338 () Bool)

(assert (=> b!35240 (=> (not res!16338) (not e!17789))))

(declare-datatypes () ((List!402 (Nil!393) (Cons!392 (head!607 (_ BitVec 32)) (tail!631 List!402)))))

(declare-fun list!222 () List!402)

(declare-fun l1!257 () List!402)

(declare-fun take!3 (List!402 (_ BitVec 32)) List!402)

(assert (=> b!35240 (= res!16338 (= l1!257 (take!3 list!222 x!11392)))))

(declare-fun x!11396 () (_ BitVec 32))

(declare-fun b!35241 () Bool)

(declare-fun list!229 () List!402)

(assert (=> b!35241 (= e!17789 (and (is-Cons!392 list!222) (bvsgt x!11392 #b00000000000000000000000000000000) (= list!229 (tail!631 list!222)) (= x!11396 (bvsub x!11392 #b00000000000000000000000000000001)) (bvslt x!11396 #b00000000000000000000000000000000)))))

(declare-fun b!35242 () Bool)

(declare-fun res!16340 () Bool)

(assert (=> b!35242 (=> (not res!16340) (not e!17789))))

(declare-datatypes () ((ProofOps!300 (ProofOps!301 (prop!322 Bool)))))

(declare-fun thiss!4106 () ProofOps!300)

(declare-fun lemma_reassociative!0 (List!402 (_ BitVec 32)) Bool)

(assert (=> b!35242 (= res!16340 (= thiss!4106 (ProofOps!301 (lemma_reassociative!0 list!222 x!11392))))))

(declare-fun b!35243 () Bool)

(declare-fun res!16336 () Bool)

(assert (=> b!35243 (=> (not res!16336) (not e!17789))))

(declare-fun l2!251 () List!402)

(declare-fun drop!1 (List!402 (_ BitVec 32)) List!402)

(assert (=> b!35243 (= res!16336 (= l2!251 (drop!1 list!222 x!11392)))))

(assert (= (and start!4624 res!16339) b!35239))

(assert (= (and b!35239 res!16337) b!35240))

(assert (= (and b!35240 res!16338) b!35243))

(assert (= (and b!35243 res!16336) b!35242))

(assert (= (and b!35242 res!16340) b!35241))

(declare-fun m!38021 () Bool)

(assert (=> b!35240 m!38021))

(declare-fun m!38023 () Bool)

(assert (=> b!35242 m!38023))

(declare-fun m!38025 () Bool)

(assert (=> b!35243 m!38025))

(push 1)

(assert (not b_next!5331))

(assert (not b!35242))

(assert (not b!35240))

(assert (not b!35243))

(assert b_and!7951)

(check-sat)

(pop 1)

(push 1)

(assert b_and!7951)

(assert (not b_next!5331))

(check-sat)

(pop 1)

