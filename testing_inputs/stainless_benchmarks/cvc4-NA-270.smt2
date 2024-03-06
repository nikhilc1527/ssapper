; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2078 () Bool)

(assert start!2078)

(declare-fun b!10392 () Bool)

(declare-fun b_free!1363 () Bool)

(declare-fun b_next!3331 () Bool)

(assert (=> b!10392 (= b_free!1363 (not b_next!3331))))

(declare-fun tp!2179 () Bool)

(declare-fun b_and!4809 () Bool)

(assert (=> b!10392 (= tp!2179 b_and!4809)))

(declare-fun b_free!1365 () Bool)

(declare-fun b_next!3333 () Bool)

(assert (=> b!10392 (= b_free!1365 (not b_next!3333))))

(declare-fun tp!2176 () Bool)

(declare-fun b_and!4811 () Bool)

(assert (=> b!10392 (= tp!2176 b_and!4811)))

(declare-fun b_free!1367 () Bool)

(declare-fun b_next!3335 () Bool)

(assert (=> b!10392 (= b_free!1367 (not b_next!3335))))

(declare-fun tp!2177 () Bool)

(declare-fun b_and!4813 () Bool)

(assert (=> b!10392 (= tp!2177 b_and!4813)))

(declare-fun b!10391 () Bool)

(declare-fun b_free!1369 () Bool)

(declare-fun b_next!3337 () Bool)

(assert (=> b!10391 (= b_free!1369 (not b_next!3337))))

(declare-fun tp!2175 () Bool)

(declare-fun b_and!4815 () Bool)

(assert (=> b!10391 (= tp!2175 b_and!4815)))

(declare-fun b_free!1371 () Bool)

(declare-fun b_next!3339 () Bool)

(assert (=> b!10391 (= b_free!1371 (not b_next!3339))))

(declare-fun tp!2178 () Bool)

(declare-fun b_and!4817 () Bool)

(assert (=> b!10391 (= tp!2178 b_and!4817)))

(declare-fun res!3633 () Bool)

(declare-fun e!6064 () Bool)

(assert (=> start!2078 (=> (not res!3633) (not e!6064))))

(declare-datatypes () ((Balance!259 (Balance!260 (extraOpen!170 Int) (extraClose!170 Int)))))

(declare-fun balance!3 () Balance!259)

(declare-datatypes () ((Parenthesis!69 (CloseParenthesis!68) (OpenParenthesis!68))))

(declare-datatypes () ((List!246 (Nil!244) (Cons!243 (head!461 Parenthesis!69) (tail!473 List!246)))))

(declare-fun xs!280 () List!246)

(declare-fun lambda!2783 () Int)

(declare-fun foldRight!61 (List!246 Balance!259 Int) Balance!259)

(assert (=> start!2078 (= res!3633 (= balance!3 (foldRight!61 xs!280 (Balance!260 0 0) lambda!2783)))))

(assert (=> start!2078 e!6064))

(assert (=> start!2078 true))

(declare-datatypes () ((EqEvidence!214 (EqEvidence!215 (x!5889 Int) (y!615 Int) (evidence!174 Int)))))

(declare-fun thiss!670 () EqEvidence!214)

(declare-fun e!6062 () Bool)

(declare-fun inv!360 (EqEvidence!214) Bool)

(assert (=> start!2078 (and (inv!360 thiss!670) e!6062)))

(declare-datatypes () ((EqProof!98 (EqProof!99 (x!5890 Int) (y!616 Int)))))

(declare-fun that!171 () EqProof!98)

(declare-fun e!6061 () Bool)

(declare-fun inv!361 (EqProof!98) Bool)

(assert (=> start!2078 (and (inv!361 that!171) e!6061)))

(declare-fun b!10385 () Bool)

(declare-fun res!3634 () Bool)

(assert (=> b!10385 (=> (not res!3634) (not e!6064))))

(declare-fun lambda!2784 () Int)

(declare-fun counter!4 () Int)

(declare-fun foldRight!62 (List!246 Int Int) Int)

(assert (=> b!10385 (= res!3634 (= counter!4 (foldRight!62 xs!280 0 lambda!2784)))))

(declare-fun b!10386 () Bool)

(declare-fun res!3631 () Bool)

(assert (=> b!10386 (=> (not res!3631) (not e!6064))))

(declare-fun original_sequential_helper!0 (List!246) Bool)

(assert (=> b!10386 (= res!3631 (original_sequential_helper!0 (tail!473 xs!280)))))

(declare-fun b!10387 () Bool)

(declare-fun res!3632 () Bool)

(assert (=> b!10387 (=> (not res!3632) (not e!6064))))

(declare-datatypes () ((ProofOps!206 (ProofOps!207 (prop!234 Bool)))))

(declare-fun thiss!651 () ProofOps!206)

(declare-fun e!6063 () Bool)

(assert (=> b!10387 (= res!3632 (= thiss!651 (ProofOps!207 e!6063)))))

(declare-fun res!3635 () Bool)

(assert (=> b!10387 (=> (not res!3635) (not e!6063))))

(declare-fun balanceToCounter!0 (Balance!259) Int)

(assert (=> b!10387 (= res!3635 (= (balanceToCounter!0 balance!3) counter!4))))

(declare-fun b!10388 () Bool)

(assert (=> b!10388 (= e!6064 false)))

(declare-fun b!10389 () Bool)

(declare-fun nonNegative!0 (Balance!259) Bool)

(assert (=> b!10389 (= e!6063 (nonNegative!0 balance!3))))

(declare-fun b!10390 () Bool)

(declare-fun res!3630 () Bool)

(assert (=> b!10390 (=> (not res!3630) (not e!6064))))

(assert (=> b!10390 (= res!3630 (not (is-Nil!244 xs!280)))))

(assert (=> b!10391 (= e!6061 (and tp!2175 tp!2178))))

(assert (=> b!10392 (= e!6062 (and tp!2179 tp!2176 tp!2177))))

(assert (= (and start!2078 res!3633) b!10385))

(assert (= (and b!10385 res!3634) b!10387))

(assert (= (and b!10387 res!3635) b!10389))

(assert (= (and b!10387 res!3632) b!10390))

(assert (= (and b!10390 res!3630) b!10386))

(assert (= (and b!10386 res!3631) b!10388))

(assert (= start!2078 b!10392))

(assert (= start!2078 b!10391))

(declare-fun m!13453 () Bool)

(assert (=> b!10385 m!13453))

(declare-fun m!13455 () Bool)

(assert (=> b!10387 m!13455))

(declare-fun m!13457 () Bool)

(assert (=> b!10386 m!13457))

(declare-fun m!13459 () Bool)

(assert (=> b!10389 m!13459))

(declare-fun m!13461 () Bool)

(assert (=> start!2078 m!13461))

(declare-fun m!13463 () Bool)

(assert (=> start!2078 m!13463))

(declare-fun m!13465 () Bool)

(assert (=> start!2078 m!13465))

(push 1)

(assert (not start!2078))

(assert (not b_next!3331))

(assert (not b!10385))

(assert b_and!4817)

(assert (not b_next!3335))

(assert (not b!10386))

(assert (not b_next!3333))

(assert (not b!10387))

(assert b_and!4811)

(assert (not b_next!3339))

(assert (not b_next!3337))

(assert b_and!4815)

(assert b_and!4813)

(assert b_and!4809)

(assert (not b!10389))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3331))

(assert b_and!4817)

(assert (not b_next!3335))

(assert (not b_next!3333))

(assert b_and!4811)

(assert (not b_next!3339))

(assert (not b_next!3337))

(assert b_and!4815)

(assert b_and!4813)

(assert b_and!4809)

(check-sat)

(pop 1)

