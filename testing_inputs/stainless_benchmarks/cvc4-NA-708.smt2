; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5060 () Bool)

(assert start!5060)

(declare-fun b!39087 () Bool)

(declare-fun b_free!3069 () Bool)

(declare-fun b_next!7677 () Bool)

(assert (=> b!39087 (= b_free!3069 (not b_next!7677))))

(declare-fun tp!8663 () Bool)

(declare-fun b_and!10751 () Bool)

(assert (=> b!39087 (= tp!8663 b_and!10751)))

(declare-fun b_free!3071 () Bool)

(declare-fun b_next!7679 () Bool)

(assert (=> b!39087 (= b_free!3071 (not b_next!7679))))

(declare-fun tp!8664 () Bool)

(declare-fun b_and!10753 () Bool)

(assert (=> b!39087 (= tp!8664 b_and!10753)))

(declare-fun b_free!3073 () Bool)

(declare-fun b_next!7681 () Bool)

(assert (=> b!39087 (= b_free!3073 (not b_next!7681))))

(declare-fun tp!8665 () Bool)

(declare-fun b_and!10755 () Bool)

(assert (=> b!39087 (= tp!8665 b_and!10755)))

(declare-fun b!39084 () Bool)

(declare-fun res!18671 () Bool)

(declare-fun e!20152 () Bool)

(assert (=> b!39084 (=> (not res!18671) (not e!20152))))

(declare-datatypes () ((Nat!69 (Zero!53) (Succ!50 (n!1146 Nat!69)))))

(declare-fun remainder!2 () Nat!69)

(declare-fun p1!72 () Nat!69)

(declare-datatypes () ((tuple2!216 (tuple2!217 (_1!134 Nat!69) (_2!134 Nat!69)))))

(declare-fun x$98!1 () tuple2!216)

(assert (=> b!39084 (= res!18671 (and (= p1!72 (_1!134 x$98!1)) (= remainder!2 (_2!134 x$98!1))))))

(declare-fun e!20151 () Bool)

(assert (=> b!39087 (= e!20151 (and tp!8663 tp!8664 tp!8665))))

(declare-fun b!39086 () Bool)

(assert (=> b!39086 (= e!20152 false)))

(declare-fun b!39085 () Bool)

(declare-fun res!18670 () Bool)

(assert (=> b!39085 (=> (not res!18670) (not e!20152))))

(declare-fun p2!66 () Nat!69)

(declare-fun /!2 (Nat!69 Nat!69) Nat!69)

(declare-fun -!4 (Nat!69 Nat!69) Nat!69)

(assert (=> b!39085 (= res!18670 (= p2!66 (/!2 (-!4 remainder!2 (Succ!50 Zero!53)) (Succ!50 (Succ!50 Zero!53)))))))

(declare-fun res!18672 () Bool)

(assert (=> start!5060 (=> (not res!18672) (not e!20152))))

(declare-fun n2!332 () Nat!69)

(declare-fun n1!316 () Nat!69)

(declare-fun log2_and_remainder!0 (Nat!69) tuple2!216)

(declare-fun pair!0 (Nat!69 Nat!69) Nat!69)

(assert (=> start!5060 (= res!18672 (= x$98!1 (tuple2!217 (_1!134 (log2_and_remainder!0 (Succ!50 (pair!0 n1!316 n2!332)))) (_2!134 (log2_and_remainder!0 (Succ!50 (pair!0 n1!316 n2!332)))))))))

(assert (=> start!5060 e!20152))

(assert (=> start!5060 true))

(declare-datatypes () ((RAEqEvidence!124 (RAEqEvidence!125 (x!13533 Int) (y!1401 Int) (evidence!514 Int)))))

(declare-fun thiss!6210 () RAEqEvidence!124)

(declare-fun inv!711 (RAEqEvidence!124) Bool)

(assert (=> start!5060 (and (inv!711 thiss!6210) e!20151)))

(assert (= (and start!5060 res!18672) b!39084))

(assert (= (and b!39084 res!18671) b!39085))

(assert (= (and b!39085 res!18670) b!39086))

(assert (= start!5060 b!39087))

(declare-fun m!40291 () Bool)

(assert (=> b!39085 m!40291))

(assert (=> b!39085 m!40291))

(declare-fun m!40293 () Bool)

(assert (=> b!39085 m!40293))

(declare-fun m!40295 () Bool)

(assert (=> start!5060 m!40295))

(declare-fun m!40297 () Bool)

(assert (=> start!5060 m!40297))

(declare-fun m!40299 () Bool)

(assert (=> start!5060 m!40299))

(push 1)

(assert (not start!5060))

(assert b_and!10753)

(assert (not b!39085))

(assert (not b_next!7681))

(assert (not b_next!7677))

(assert b_and!10751)

(assert (not b_next!7679))

(assert b_and!10755)

(check-sat)

(pop 1)

(push 1)

(assert b_and!10753)

(assert (not b_next!7681))

(assert (not b_next!7677))

(assert b_and!10751)

(assert (not b_next!7679))

(assert b_and!10755)

(check-sat)

(pop 1)

