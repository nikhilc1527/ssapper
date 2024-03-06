; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1098 () Bool)

(assert start!1098)

(declare-fun b!6499 () Bool)

(declare-fun b_free!263 () Bool)

(declare-fun b_next!553 () Bool)

(assert (=> b!6499 (= b_free!263 (not b_next!553))))

(declare-fun tp!531 () Bool)

(declare-fun b_and!1495 () Bool)

(assert (=> b!6499 (= tp!531 b_and!1495)))

(declare-fun b_free!265 () Bool)

(declare-fun b_next!555 () Bool)

(assert (=> b!6499 (= b_free!265 (not b_next!555))))

(declare-fun tp!528 () Bool)

(declare-fun b_and!1497 () Bool)

(assert (=> b!6499 (= tp!528 b_and!1497)))

(declare-fun b_free!267 () Bool)

(declare-fun b_next!557 () Bool)

(assert (=> b!6499 (= b_free!267 (not b_next!557))))

(declare-fun tp!530 () Bool)

(declare-fun b_and!1499 () Bool)

(assert (=> b!6499 (= tp!530 b_and!1499)))

(declare-fun b!6500 () Bool)

(declare-fun b_free!269 () Bool)

(declare-fun b_next!559 () Bool)

(assert (=> b!6500 (= b_free!269 (not b_next!559))))

(declare-fun tp!529 () Bool)

(declare-fun b_and!1501 () Bool)

(assert (=> b!6500 (= tp!529 b_and!1501)))

(declare-fun b_free!271 () Bool)

(declare-fun b_next!561 () Bool)

(assert (=> b!6500 (= b_free!271 (not b_next!561))))

(declare-fun tp!532 () Bool)

(declare-fun b_and!1503 () Bool)

(assert (=> b!6500 (= tp!532 b_and!1503)))

(declare-fun b_free!273 () Bool)

(declare-fun b_next!563 () Bool)

(assert (=> b!6500 (= b_free!273 (not b_next!563))))

(declare-fun tp!527 () Bool)

(declare-fun b_and!1505 () Bool)

(assert (=> b!6500 (= tp!527 b_and!1505)))

(assert (=> start!1098 false))

(assert (=> start!1098 true))

(declare-datatypes () ((Balance!49 (Balance!50 (extraOpen!65 Int) (extraClose!65 Int)))))

(declare-datatypes () ((EqEvidence!38 (EqEvidence!39 (x!3498 Int) (y!439 Int) (evidence!86 Int)))))

(declare-fun thiss!1205 () EqEvidence!38)

(declare-fun e!3854 () Bool)

(declare-fun inv!234 (EqEvidence!38) Bool)

(assert (=> start!1098 (and (inv!234 thiss!1205) e!3854)))

(declare-fun that!333 () EqEvidence!38)

(declare-fun e!3855 () Bool)

(assert (=> start!1098 (and (inv!234 that!333) e!3855)))

(assert (=> b!6499 (= e!3854 (and tp!531 tp!528 tp!530))))

(assert (=> b!6500 (= e!3855 (and tp!529 tp!532 tp!527))))

(assert (= start!1098 b!6499))

(assert (= start!1098 b!6500))

(declare-fun m!9337 () Bool)

(assert (=> start!1098 m!9337))

(declare-fun m!9339 () Bool)

(assert (=> start!1098 m!9339))

(push 1)

(assert b_and!1503)

(assert (not b_next!553))

(assert b_and!1505)

(assert (not b_next!557))

(assert b_and!1501)

(assert (not start!1098))

(assert b_and!1495)

(assert b_and!1499)

(assert (not b_next!555))

(assert b_and!1497)

(assert (not b_next!561))

(assert (not b_next!563))

(assert (not b_next!559))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1503)

(assert (not b_next!553))

(assert b_and!1505)

(assert (not b_next!557))

(assert b_and!1501)

(assert b_and!1495)

(assert b_and!1499)

(assert (not b_next!555))

(assert b_and!1497)

(assert (not b_next!561))

(assert (not b_next!563))

(assert (not b_next!559))

(check-sat)

(pop 1)

