; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1096 () Bool)

(assert start!1096)

(declare-fun b!6493 () Bool)

(declare-fun b_free!251 () Bool)

(declare-fun b_next!541 () Bool)

(assert (=> b!6493 (= b_free!251 (not b_next!541))))

(declare-fun tp!509 () Bool)

(declare-fun b_and!1483 () Bool)

(assert (=> b!6493 (= tp!509 b_and!1483)))

(declare-fun b_free!253 () Bool)

(declare-fun b_next!543 () Bool)

(assert (=> b!6493 (= b_free!253 (not b_next!543))))

(declare-fun tp!512 () Bool)

(declare-fun b_and!1485 () Bool)

(assert (=> b!6493 (= tp!512 b_and!1485)))

(declare-fun b_free!255 () Bool)

(declare-fun b_next!545 () Bool)

(assert (=> b!6493 (= b_free!255 (not b_next!545))))

(declare-fun tp!511 () Bool)

(declare-fun b_and!1487 () Bool)

(assert (=> b!6493 (= tp!511 b_and!1487)))

(declare-fun b!6494 () Bool)

(declare-fun b_free!257 () Bool)

(declare-fun b_next!547 () Bool)

(assert (=> b!6494 (= b_free!257 (not b_next!547))))

(declare-fun tp!510 () Bool)

(declare-fun b_and!1489 () Bool)

(assert (=> b!6494 (= tp!510 b_and!1489)))

(declare-fun b_free!259 () Bool)

(declare-fun b_next!549 () Bool)

(assert (=> b!6494 (= b_free!259 (not b_next!549))))

(declare-fun tp!514 () Bool)

(declare-fun b_and!1491 () Bool)

(assert (=> b!6494 (= tp!514 b_and!1491)))

(declare-fun b_free!261 () Bool)

(declare-fun b_next!551 () Bool)

(assert (=> b!6494 (= b_free!261 (not b_next!551))))

(declare-fun tp!513 () Bool)

(declare-fun b_and!1493 () Bool)

(assert (=> b!6494 (= tp!513 b_and!1493)))

(assert (=> start!1096 false))

(assert (=> start!1096 true))

(declare-datatypes () ((Balance!47 (Balance!48 (extraOpen!64 Int) (extraClose!64 Int)))))

(declare-datatypes () ((EqEvidence!36 (EqEvidence!37 (x!3497 Int) (y!438 Int) (evidence!85 Int)))))

(declare-fun thiss!1205 () EqEvidence!36)

(declare-fun e!3849 () Bool)

(declare-fun inv!233 (EqEvidence!36) Bool)

(assert (=> start!1096 (and (inv!233 thiss!1205) e!3849)))

(declare-fun that!333 () EqEvidence!36)

(declare-fun e!3848 () Bool)

(assert (=> start!1096 (and (inv!233 that!333) e!3848)))

(assert (=> b!6493 (= e!3849 (and tp!509 tp!512 tp!511))))

(assert (=> b!6494 (= e!3848 (and tp!510 tp!514 tp!513))))

(assert (= start!1096 b!6493))

(assert (= start!1096 b!6494))

(declare-fun m!9333 () Bool)

(assert (=> start!1096 m!9333))

(declare-fun m!9335 () Bool)

(assert (=> start!1096 m!9335))

(push 1)

(assert (not b_next!543))

(assert b_and!1493)

(assert b_and!1489)

(assert b_and!1491)

(assert (not b_next!541))

(assert b_and!1487)

(assert (not b_next!549))

(assert (not start!1096))

(assert b_and!1483)

(assert (not b_next!547))

(assert (not b_next!551))

(assert (not b_next!545))

(assert b_and!1485)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!543))

(assert b_and!1493)

(assert b_and!1489)

(assert b_and!1491)

(assert (not b_next!541))

(assert b_and!1487)

(assert (not b_next!549))

(assert b_and!1483)

(assert (not b_next!547))

(assert (not b_next!551))

(assert (not b_next!545))

(assert b_and!1485)

(check-sat)

(pop 1)

