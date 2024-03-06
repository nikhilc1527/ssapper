; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4774 () Bool)

(assert start!4774)

(declare-fun b!37444 () Bool)

(declare-fun b_free!2223 () Bool)

(declare-fun b_next!5393 () Bool)

(assert (=> b!37444 (= b_free!2223 (not b_next!5393))))

(declare-fun tp!7409 () Bool)

(declare-fun b_and!8113 () Bool)

(assert (=> b!37444 (= tp!7409 b_and!8113)))

(declare-fun b_free!2225 () Bool)

(declare-fun b_next!5395 () Bool)

(assert (=> b!37444 (= b_free!2225 (not b_next!5395))))

(declare-fun tp!7407 () Bool)

(declare-fun b_and!8115 () Bool)

(assert (=> b!37444 (= tp!7407 b_and!8115)))

(declare-fun b_free!2227 () Bool)

(declare-fun b_next!5397 () Bool)

(assert (=> b!37444 (= b_free!2227 (not b_next!5397))))

(declare-fun tp!7410 () Bool)

(declare-fun b_and!8117 () Bool)

(assert (=> b!37444 (= tp!7410 b_and!8117)))

(declare-fun b!37443 () Bool)

(declare-fun b_free!2229 () Bool)

(declare-fun b_next!5399 () Bool)

(assert (=> b!37443 (= b_free!2229 (not b_next!5399))))

(declare-fun tp!7411 () Bool)

(declare-fun b_and!8119 () Bool)

(assert (=> b!37443 (= tp!7411 b_and!8119)))

(declare-fun b_free!2231 () Bool)

(declare-fun b_next!5401 () Bool)

(assert (=> b!37443 (= b_free!2231 (not b_next!5401))))

(declare-fun tp!7408 () Bool)

(declare-fun b_and!8121 () Bool)

(assert (=> b!37443 (= tp!7408 b_and!8121)))

(declare-fun b_free!2233 () Bool)

(declare-fun b_next!5403 () Bool)

(assert (=> b!37443 (= b_free!2233 (not b_next!5403))))

(declare-fun tp!7412 () Bool)

(declare-fun b_and!8123 () Bool)

(assert (=> b!37443 (= tp!7412 b_and!8123)))

(declare-fun b!37447 () Bool)

(declare-fun b_free!2235 () Bool)

(declare-fun b_next!5405 () Bool)

(assert (=> b!37447 (= b_free!2235 (not b_next!5405))))

(declare-fun tp!7414 () Bool)

(declare-fun b_and!8125 () Bool)

(assert (=> b!37447 (= tp!7414 b_and!8125)))

(declare-fun b_free!2237 () Bool)

(declare-fun b_next!5407 () Bool)

(assert (=> b!37447 (= b_free!2237 (not b_next!5407))))

(declare-fun tp!7406 () Bool)

(declare-fun b_and!8127 () Bool)

(assert (=> b!37447 (= tp!7406 b_and!8127)))

(declare-fun b_free!2239 () Bool)

(declare-fun b_next!5409 () Bool)

(assert (=> b!37447 (= b_free!2239 (not b_next!5409))))

(declare-fun tp!7413 () Bool)

(declare-fun b_and!8129 () Bool)

(assert (=> b!37447 (= tp!7413 b_and!8129)))

(declare-fun b!37441 () Bool)

(declare-fun res!17798 () Bool)

(declare-fun e!19253 () Bool)

(assert (=> b!37441 (=> (not res!17798) (not e!19253))))

(declare-datatypes () ((Nat!31 (Zero!15) (Succ!12 (n!1094 Nat!31)))))

(declare-fun n2!375 () Nat!31)

(declare-datatypes () ((Unit!279 (Unit!280))))

(declare-fun tmp!238 () Unit!279)

(declare-fun n1!359 () Nat!31)

(declare-fun inverse_lemma!0 (Nat!31 Nat!31) Unit!279)

(assert (=> b!37441 (= res!17798 (= tmp!238 (inverse_lemma!0 n1!359 n2!375)))))

(declare-fun b!37442 () Bool)

(declare-fun res!17797 () Bool)

(assert (=> b!37442 (=> (not res!17797) (not e!19253))))

(declare-fun tmp!239 () Unit!279)

(declare-fun n3!64 () Nat!31)

(declare-fun n4!2 () Nat!31)

(assert (=> b!37442 (= res!17797 (= tmp!239 (inverse_lemma!0 n3!64 n4!2)))))

(declare-fun e!19252 () Bool)

(assert (=> b!37443 (= e!19252 (and tp!7411 tp!7408 tp!7412))))

(declare-fun e!19254 () Bool)

(assert (=> b!37444 (= e!19254 (and tp!7409 tp!7407 tp!7410))))

(declare-fun b!37445 () Bool)

(assert (=> b!37445 (= e!19253 false)))

(declare-fun res!17800 () Bool)

(assert (=> start!4774 (=> (not res!17800) (not e!19253))))

(declare-fun pair!0 (Nat!31 Nat!31) Nat!31)

(assert (=> start!4774 (= res!17800 (= (pair!0 n1!359 n2!375) (pair!0 n3!64 n4!2)))))

(assert (=> start!4774 e!19253))

(declare-datatypes () ((RAEqEvidence!12 (RAEqEvidence!13 (x!13070 Int) (y!1345 Int) (evidence!458 Int)))))

(declare-fun prev!780 () RAEqEvidence!12)

(declare-fun inv!655 (RAEqEvidence!12) Bool)

(assert (=> start!4774 (and (inv!655 prev!780) e!19254)))

(assert (=> start!4774 true))

(declare-fun x$106!1 () RAEqEvidence!12)

(assert (=> start!4774 (and (inv!655 x$106!1) e!19252)))

(declare-datatypes () ((RAEqEvidence!14 (RAEqEvidence!15 (x!13071 Int) (y!1346 Int) (evidence!459 Int)))))

(declare-fun thiss!6490 () RAEqEvidence!14)

(declare-fun e!19251 () Bool)

(declare-fun inv!656 (RAEqEvidence!14) Bool)

(assert (=> start!4774 (and (inv!656 thiss!6490) e!19251)))

(declare-fun b!37446 () Bool)

(declare-fun res!17799 () Bool)

(assert (=> b!37446 (=> (not res!17799) (not e!19253))))

(declare-datatypes () ((tuple2!156 (tuple2!157 (_1!104 Nat!31) (_2!104 Nat!31)))))

(declare-fun project!0 (Nat!31) tuple2!156)

(assert (=> b!37446 (= res!17799 (= (project!0 (pair!0 n1!359 n2!375)) (project!0 (pair!0 n3!64 n4!2))))))

(assert (=> b!37447 (= e!19251 (and tp!7414 tp!7406 tp!7413))))

(assert (= (and start!4774 res!17800) b!37446))

(assert (= (and b!37446 res!17799) b!37441))

(assert (= (and b!37441 res!17798) b!37442))

(assert (= (and b!37442 res!17797) b!37445))

(assert (= start!4774 b!37444))

(assert (= start!4774 b!37443))

(assert (= start!4774 b!37447))

(declare-fun m!38747 () Bool)

(assert (=> b!37441 m!38747))

(declare-fun m!38749 () Bool)

(assert (=> b!37442 m!38749))

(declare-fun m!38751 () Bool)

(assert (=> start!4774 m!38751))

(declare-fun m!38753 () Bool)

(assert (=> start!4774 m!38753))

(declare-fun m!38755 () Bool)

(assert (=> start!4774 m!38755))

(declare-fun m!38757 () Bool)

(assert (=> start!4774 m!38757))

(declare-fun m!38759 () Bool)

(assert (=> start!4774 m!38759))

(assert (=> b!37446 m!38751))

(assert (=> b!37446 m!38751))

(declare-fun m!38761 () Bool)

(assert (=> b!37446 m!38761))

(assert (=> b!37446 m!38759))

(assert (=> b!37446 m!38759))

(declare-fun m!38763 () Bool)

(assert (=> b!37446 m!38763))

(push 1)

(assert (not b!37442))

(assert (not b_next!5407))

(assert (not b_next!5401))

(assert b_and!8123)

(assert b_and!8125)

(assert (not b_next!5403))

(assert (not b_next!5405))

(assert (not start!4774))

(assert (not b_next!5399))

(assert (not b_next!5409))

(assert (not b!37441))

(assert b_and!8129)

(assert (not b!37446))

(assert b_and!8119)

(assert b_and!8113)

(assert b_and!8121)

(assert b_and!8117)

(assert b_and!8115)

(assert (not b_next!5397))

(assert (not b_next!5393))

(assert (not b_next!5395))

(assert b_and!8127)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!5407))

(assert (not b_next!5401))

(assert b_and!8123)

(assert b_and!8125)

(assert (not b_next!5403))

(assert (not b_next!5405))

(assert (not b_next!5399))

(assert (not b_next!5409))

(assert b_and!8129)

(assert b_and!8119)

(assert b_and!8113)

(assert b_and!8121)

(assert b_and!8117)

(assert b_and!8115)

(assert (not b_next!5397))

(assert (not b_next!5393))

(assert (not b_next!5395))

(assert b_and!8127)

(check-sat)

(pop 1)

