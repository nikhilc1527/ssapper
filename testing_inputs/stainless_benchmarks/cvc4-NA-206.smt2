; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1534 () Bool)

(assert start!1534)

(declare-fun b!7964 () Bool)

(declare-fun b_free!659 () Bool)

(declare-fun b_next!1387 () Bool)

(assert (=> b!7964 (= b_free!659 (not b_next!1387))))

(declare-fun tp!1120 () Bool)

(declare-fun b_and!2649 () Bool)

(assert (=> b!7964 (= tp!1120 b_and!2649)))

(declare-fun b_free!661 () Bool)

(declare-fun b_next!1389 () Bool)

(assert (=> b!7964 (= b_free!661 (not b_next!1389))))

(declare-fun tp!1122 () Bool)

(declare-fun b_and!2651 () Bool)

(assert (=> b!7964 (= tp!1122 b_and!2651)))

(declare-fun b_free!663 () Bool)

(declare-fun b_next!1391 () Bool)

(assert (=> b!7964 (= b_free!663 (not b_next!1391))))

(declare-fun tp!1121 () Bool)

(declare-fun b_and!2653 () Bool)

(assert (=> b!7964 (= tp!1121 b_and!2653)))

(declare-fun b!7965 () Bool)

(declare-fun b_free!665 () Bool)

(declare-fun b_next!1393 () Bool)

(assert (=> b!7965 (= b_free!665 (not b_next!1393))))

(declare-fun tp!1119 () Bool)

(declare-fun b_and!2655 () Bool)

(assert (=> b!7965 (= tp!1119 b_and!2655)))

(declare-fun b_free!667 () Bool)

(declare-fun b_next!1395 () Bool)

(assert (=> b!7965 (= b_free!667 (not b_next!1395))))

(declare-fun tp!1123 () Bool)

(declare-fun b_and!2657 () Bool)

(assert (=> b!7965 (= tp!1123 b_and!2657)))

(assert (=> start!1534 false))

(assert (=> start!1534 true))

(declare-datatypes () ((Balance!131 (Balance!132 (extraOpen!106 Int) (extraClose!106 Int)))))

(declare-datatypes () ((EqEvidence!106 (EqEvidence!107 (x!4351 Int) (y!488 Int) (evidence!120 Int)))))

(declare-fun thiss!1145 () EqEvidence!106)

(declare-fun e!4558 () Bool)

(declare-fun inv!283 (EqEvidence!106) Bool)

(assert (=> start!1534 (and (inv!283 thiss!1145) e!4558)))

(declare-datatypes () ((EqProof!52 (EqProof!53 (x!4352 Int) (y!489 Int)))))

(declare-fun that!327 () EqProof!52)

(declare-fun e!4557 () Bool)

(declare-fun inv!284 (EqProof!52) Bool)

(assert (=> start!1534 (and (inv!284 that!327) e!4557)))

(assert (=> b!7964 (= e!4558 (and tp!1120 tp!1122 tp!1121))))

(assert (=> b!7965 (= e!4557 (and tp!1119 tp!1123))))

(assert (= start!1534 b!7964))

(assert (= start!1534 b!7965))

(declare-fun m!10817 () Bool)

(assert (=> start!1534 m!10817))

(declare-fun m!10819 () Bool)

(assert (=> start!1534 m!10819))

(push 1)

(assert (not b_next!1387))

(assert (not b_next!1389))

(assert (not start!1534))

(assert b_and!2649)

(assert (not b_next!1391))

(assert (not b_next!1395))

(assert b_and!2655)

(assert b_and!2651)

(assert b_and!2653)

(assert (not b_next!1393))

(assert b_and!2657)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1387))

(assert (not b_next!1389))

(assert b_and!2649)

(assert (not b_next!1391))

(assert (not b_next!1395))

(assert b_and!2655)

(assert b_and!2651)

(assert b_and!2653)

(assert (not b_next!1393))

(assert b_and!2657)

(check-sat)

(pop 1)

