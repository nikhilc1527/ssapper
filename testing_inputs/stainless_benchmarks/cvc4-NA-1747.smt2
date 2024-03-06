; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12034 () Bool)

(assert start!12034)

(declare-fun res!47461 () Bool)

(declare-fun e!49436 () Bool)

(assert (=> start!12034 (=> (not res!47461) (not e!49436))))

(declare-datatypes () ((Monoid!42 (AdditiveMonoid!30) (MonoidExt!36 (__x!294 Int)))))

(declare-fun thiss!10228 () Monoid!42)

(assert (=> start!12034 (= res!47461 (is-AdditiveMonoid!30 thiss!10228))))

(assert (=> start!12034 e!49436))

(assert (=> start!12034 true))

(declare-fun b!90544 () Bool)

(declare-datatypes () ((Nat!306 (Succ!280 (prev!854 Nat!306)) (Zero!286))))

(declare-fun x!31801 () Nat!306)

(declare-fun Monoid$law_leftIdentity!0 (Monoid!42 Nat!306) Bool)

(assert (=> b!90544 (= e!49436 (not (Monoid$law_leftIdentity!0 thiss!10228 x!31801)))))

(assert (= (and start!12034 res!47461) b!90544))

(declare-fun m!86382 () Bool)

(assert (=> b!90544 m!86382))

(push 1)

(assert (not b!90544))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59629 () Bool)

(declare-fun e!49439 () Bool)

(assert (=> d!59629 e!49439))

(declare-fun res!47465 () Bool)

(assert (=> d!59629 (=> (not res!47465) (not e!49439))))

(declare-fun lt!20513 () Bool)

(assert (=> d!59629 (= res!47465 lt!20513)))

(declare-fun choose!49 (Monoid!42 Nat!306) Bool)

(assert (=> d!59629 (= lt!20513 (choose!49 thiss!10228 x!31801))))

(assert (=> d!59629 (= (Monoid$law_leftIdentity!0 thiss!10228 x!31801) lt!20513)))

(declare-fun b!90547 () Bool)

(declare-fun append!6 (Monoid!42 Nat!306 Nat!306) Nat!306)

(declare-fun empty!11 (Monoid!42) Nat!306)

(assert (=> b!90547 (= e!49439 (= (append!6 thiss!10228 (empty!11 thiss!10228) x!31801) x!31801))))

(assert (= (and d!59629 res!47465) b!90547))

(declare-fun m!86384 () Bool)

(assert (=> d!59629 m!86384))

(declare-fun m!86386 () Bool)

(assert (=> b!90547 m!86386))

(assert (=> b!90547 m!86386))

(declare-fun m!86388 () Bool)

(assert (=> b!90547 m!86388))

(assert (=> b!90544 d!59629))

(push 1)

(assert (not d!59629))

(assert (not b!90547))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

