; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5040 () Bool)

(assert start!5040)

(declare-fun b!38980 () Bool)

(declare-fun b_free!3015 () Bool)

(declare-fun b_next!7581 () Bool)

(assert (=> b!38980 (= b_free!3015 (not b_next!7581))))

(declare-fun tp!8601 () Bool)

(declare-fun b_and!10595 () Bool)

(assert (=> b!38980 (= tp!8601 b_and!10595)))

(declare-fun b_free!3017 () Bool)

(declare-fun b_next!7583 () Bool)

(assert (=> b!38980 (= b_free!3017 (not b_next!7583))))

(declare-fun tp!8602 () Bool)

(declare-fun b_and!10597 () Bool)

(assert (=> b!38980 (= tp!8602 b_and!10597)))

(declare-fun b_free!3019 () Bool)

(declare-fun b_next!7585 () Bool)

(assert (=> b!38980 (= b_free!3019 (not b_next!7585))))

(declare-fun tp!8595 () Bool)

(declare-fun b_and!10599 () Bool)

(assert (=> b!38980 (= tp!8595 b_and!10599)))

(declare-fun b!38984 () Bool)

(declare-fun b_free!3021 () Bool)

(declare-fun b_next!7587 () Bool)

(assert (=> b!38984 (= b_free!3021 (not b_next!7587))))

(declare-fun tp!8597 () Bool)

(declare-fun b_and!10601 () Bool)

(assert (=> b!38984 (= tp!8597 b_and!10601)))

(declare-fun b_free!3023 () Bool)

(declare-fun b_next!7589 () Bool)

(assert (=> b!38984 (= b_free!3023 (not b_next!7589))))

(declare-fun tp!8594 () Bool)

(declare-fun b_and!10603 () Bool)

(assert (=> b!38984 (= tp!8594 b_and!10603)))

(declare-fun b_free!3025 () Bool)

(declare-fun b_next!7591 () Bool)

(assert (=> b!38984 (= b_free!3025 (not b_next!7591))))

(declare-fun tp!8600 () Bool)

(declare-fun b_and!10605 () Bool)

(assert (=> b!38984 (= tp!8600 b_and!10605)))

(declare-fun b!38981 () Bool)

(declare-fun b_free!3027 () Bool)

(declare-fun b_next!7593 () Bool)

(assert (=> b!38981 (= b_free!3027 (not b_next!7593))))

(declare-fun tp!8596 () Bool)

(declare-fun b_and!10607 () Bool)

(assert (=> b!38981 (= tp!8596 b_and!10607)))

(declare-fun b_free!3029 () Bool)

(declare-fun b_next!7595 () Bool)

(assert (=> b!38981 (= b_free!3029 (not b_next!7595))))

(declare-fun tp!8598 () Bool)

(declare-fun b_and!10609 () Bool)

(assert (=> b!38981 (= tp!8598 b_and!10609)))

(declare-fun b_free!3031 () Bool)

(declare-fun b_next!7597 () Bool)

(assert (=> b!38981 (= b_free!3031 (not b_next!7597))))

(declare-fun tp!8599 () Bool)

(declare-fun b_and!10611 () Bool)

(assert (=> b!38981 (= tp!8599 b_and!10611)))

(declare-fun b!38979 () Bool)

(declare-fun e!20096 () Bool)

(assert (=> b!38979 (= e!20096 false)))

(declare-fun e!20095 () Bool)

(assert (=> b!38980 (= e!20095 (and tp!8601 tp!8602 tp!8595))))

(declare-fun e!20098 () Bool)

(assert (=> b!38981 (= e!20098 (and tp!8596 tp!8598 tp!8599))))

(declare-fun b!38982 () Bool)

(declare-fun res!18609 () Bool)

(assert (=> b!38982 (=> (not res!18609) (not e!20096))))

(declare-datatypes () ((Nat!66 (Zero!50) (Succ!47 (n!1141 Nat!66)))))

(declare-fun p2!66 () Nat!66)

(declare-fun remainder!2 () Nat!66)

(declare-fun /!2 (Nat!66 Nat!66) Nat!66)

(declare-fun -!4 (Nat!66 Nat!66) Nat!66)

(assert (=> b!38982 (= res!18609 (= p2!66 (/!2 (-!4 remainder!2 (Succ!47 Zero!50)) (Succ!47 (Succ!47 Zero!50)))))))

(declare-fun b!38983 () Bool)

(declare-fun res!18608 () Bool)

(assert (=> b!38983 (=> (not res!18608) (not e!20096))))

(declare-fun p1!72 () Nat!66)

(declare-datatypes () ((tuple2!210 (tuple2!211 (_1!131 Nat!66) (_2!131 Nat!66)))))

(declare-fun x$98!1 () tuple2!210)

(assert (=> b!38983 (= res!18608 (and (= p1!72 (_1!131 x$98!1)) (= remainder!2 (_2!131 x$98!1))))))

(declare-fun res!18610 () Bool)

(assert (=> start!5040 (=> (not res!18610) (not e!20096))))

(declare-fun n2!332 () Nat!66)

(declare-fun n1!316 () Nat!66)

(declare-fun log2_and_remainder!0 (Nat!66) tuple2!210)

(declare-fun pair!0 (Nat!66 Nat!66) Nat!66)

(assert (=> start!5040 (= res!18610 (= x$98!1 (tuple2!211 (_1!131 (log2_and_remainder!0 (Succ!47 (pair!0 n1!316 n2!332)))) (_2!131 (log2_and_remainder!0 (Succ!47 (pair!0 n1!316 n2!332)))))))))

(assert (=> start!5040 e!20096))

(declare-datatypes () ((RAEqEvidence!118 (RAEqEvidence!119 (x!13519 Int) (y!1398 Int) (evidence!511 Int)))))

(declare-fun prev!740 () RAEqEvidence!118)

(declare-fun inv!708 (RAEqEvidence!118) Bool)

(assert (=> start!5040 (and (inv!708 prev!740) e!20095)))

(assert (=> start!5040 true))

(declare-fun thiss!6212 () RAEqEvidence!118)

(declare-fun e!20097 () Bool)

(assert (=> start!5040 (and (inv!708 thiss!6212) e!20097)))

(declare-fun x$104!2 () RAEqEvidence!118)

(assert (=> start!5040 (and (inv!708 x$104!2) e!20098)))

(assert (=> b!38984 (= e!20097 (and tp!8597 tp!8594 tp!8600))))

(assert (= (and start!5040 res!18610) b!38983))

(assert (= (and b!38983 res!18608) b!38982))

(assert (= (and b!38982 res!18609) b!38979))

(assert (= start!5040 b!38980))

(assert (= start!5040 b!38984))

(assert (= start!5040 b!38981))

(declare-fun m!40181 () Bool)

(assert (=> b!38982 m!40181))

(assert (=> b!38982 m!40181))

(declare-fun m!40183 () Bool)

(assert (=> b!38982 m!40183))

(declare-fun m!40185 () Bool)

(assert (=> start!5040 m!40185))

(declare-fun m!40187 () Bool)

(assert (=> start!5040 m!40187))

(declare-fun m!40189 () Bool)

(assert (=> start!5040 m!40189))

(declare-fun m!40191 () Bool)

(assert (=> start!5040 m!40191))

(declare-fun m!40193 () Bool)

(assert (=> start!5040 m!40193))

(push 1)

(assert b_and!10601)

(assert b_and!10611)

(assert (not b_next!7591))

(assert (not b_next!7587))

(assert (not b_next!7581))

(assert b_and!10599)

(assert (not b_next!7593))

(assert (not b_next!7583))

(assert (not b_next!7589))

(assert b_and!10597)

(assert b_and!10605)

(assert (not b_next!7585))

(assert (not b_next!7597))

(assert (not start!5040))

(assert b_and!10607)

(assert b_and!10609)

(assert b_and!10603)

(assert (not b_next!7595))

(assert (not b!38982))

(assert b_and!10595)

(check-sat)

(pop 1)

(push 1)

(assert b_and!10601)

(assert b_and!10611)

(assert (not b_next!7591))

(assert (not b_next!7587))

(assert (not b_next!7581))

(assert b_and!10599)

(assert (not b_next!7593))

(assert (not b_next!7583))

(assert (not b_next!7589))

(assert b_and!10597)

(assert b_and!10605)

(assert (not b_next!7585))

(assert (not b_next!7597))

(assert b_and!10607)

(assert b_and!10609)

(assert b_and!10603)

(assert (not b_next!7595))

(assert b_and!10595)

(check-sat)

(pop 1)

