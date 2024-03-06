; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1532 () Bool)

(assert start!1532)

(declare-fun b!7958 () Bool)

(declare-fun b_free!649 () Bool)

(declare-fun b_next!1377 () Bool)

(assert (=> b!7958 (= b_free!649 (not b_next!1377))))

(declare-fun tp!1104 () Bool)

(declare-fun b_and!2639 () Bool)

(assert (=> b!7958 (= tp!1104 b_and!2639)))

(declare-fun b_free!651 () Bool)

(declare-fun b_next!1379 () Bool)

(assert (=> b!7958 (= b_free!651 (not b_next!1379))))

(declare-fun tp!1105 () Bool)

(declare-fun b_and!2641 () Bool)

(assert (=> b!7958 (= tp!1105 b_and!2641)))

(declare-fun b_free!653 () Bool)

(declare-fun b_next!1381 () Bool)

(assert (=> b!7958 (= b_free!653 (not b_next!1381))))

(declare-fun tp!1106 () Bool)

(declare-fun b_and!2643 () Bool)

(assert (=> b!7958 (= tp!1106 b_and!2643)))

(declare-fun b!7959 () Bool)

(declare-fun b_free!655 () Bool)

(declare-fun b_next!1383 () Bool)

(assert (=> b!7959 (= b_free!655 (not b_next!1383))))

(declare-fun tp!1107 () Bool)

(declare-fun b_and!2645 () Bool)

(assert (=> b!7959 (= tp!1107 b_and!2645)))

(declare-fun b_free!657 () Bool)

(declare-fun b_next!1385 () Bool)

(assert (=> b!7959 (= b_free!657 (not b_next!1385))))

(declare-fun tp!1108 () Bool)

(declare-fun b_and!2647 () Bool)

(assert (=> b!7959 (= tp!1108 b_and!2647)))

(assert (=> start!1532 false))

(assert (=> start!1532 true))

(declare-datatypes () ((Balance!129 (Balance!130 (extraOpen!105 Int) (extraClose!105 Int)))))

(declare-datatypes () ((EqEvidence!104 (EqEvidence!105 (x!4349 Int) (y!486 Int) (evidence!119 Int)))))

(declare-fun thiss!1145 () EqEvidence!104)

(declare-fun e!4552 () Bool)

(declare-fun inv!281 (EqEvidence!104) Bool)

(assert (=> start!1532 (and (inv!281 thiss!1145) e!4552)))

(declare-datatypes () ((EqProof!50 (EqProof!51 (x!4350 Int) (y!487 Int)))))

(declare-fun that!327 () EqProof!50)

(declare-fun e!4551 () Bool)

(declare-fun inv!282 (EqProof!50) Bool)

(assert (=> start!1532 (and (inv!282 that!327) e!4551)))

(assert (=> b!7958 (= e!4552 (and tp!1104 tp!1105 tp!1106))))

(assert (=> b!7959 (= e!4551 (and tp!1107 tp!1108))))

(assert (= start!1532 b!7958))

(assert (= start!1532 b!7959))

(declare-fun m!10813 () Bool)

(assert (=> start!1532 m!10813))

(declare-fun m!10815 () Bool)

(assert (=> start!1532 m!10815))

(push 1)

(assert b_and!2643)

(assert (not b_next!1379))

(assert b_and!2647)

(assert (not start!1532))

(assert b_and!2641)

(assert b_and!2639)

(assert (not b_next!1385))

(assert b_and!2645)

(assert (not b_next!1383))

(assert (not b_next!1381))

(assert (not b_next!1377))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2643)

(assert (not b_next!1379))

(assert b_and!2647)

(assert b_and!2641)

(assert b_and!2639)

(assert (not b_next!1385))

(assert b_and!2645)

(assert (not b_next!1383))

(assert (not b_next!1381))

(assert (not b_next!1377))

(check-sat)

(pop 1)

