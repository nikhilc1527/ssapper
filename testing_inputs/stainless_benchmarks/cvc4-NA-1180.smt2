; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8446 () Bool)

(assert start!8446)

(declare-datatypes () ((Option!357 (Some!340 (v!2222 (_ BitVec 32))) (None!341))))

(declare-fun m!63739 () (Array (_ BitVec 32) Option!357))

(declare-fun m2!3 () (Array (_ BitVec 32) Option!357))

(assert (=> start!8446 (and (not (= (select m!63739 #b00000000000000000000000000000001) None!341)) (not (= (select m!63739 #b00000000000000000000000000000010) None!341)) (not (= (select m!63739 #b00000000000000000000000000000011) None!341)) (= m2!3 (store (store m!63739 #b00000000000000000000000000000001 None!341) #b00000000000000000000000000000010 None!341)) (= (select m2!3 #b00000000000000000000000000000001) None!341) (not (= (select m2!3 #b00000000000000000000000000000010) None!341)))))

(assert (=> start!8446 true))

(declare-fun bs!36403 () Bool)

(assert (= bs!36403 start!8446))

(declare-fun m!63753 () Bool)

(assert (=> bs!36403 m!63753))

(declare-fun m!63755 () Bool)

(assert (=> bs!36403 m!63755))

(declare-fun m!63757 () Bool)

(assert (=> bs!36403 m!63757))

(declare-fun m!63759 () Bool)

(assert (=> bs!36403 m!63759))

(declare-fun m!63761 () Bool)

(assert (=> bs!36403 m!63761))

(declare-fun m!63763 () Bool)

(assert (=> bs!36403 m!63763))

(declare-fun m!63765 () Bool)

(assert (=> bs!36403 m!63765))

(push 1)

(check-sat)

(pop 1)

