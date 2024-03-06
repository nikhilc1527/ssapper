; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1420 () Bool)

(assert start!1420)

(declare-fun b!7493 () Bool)

(declare-fun b_free!517 () Bool)

(declare-fun b_next!1101 () Bool)

(assert (=> b!7493 (= b_free!517 (not b_next!1101))))

(declare-fun tp!910 () Bool)

(declare-fun b_and!2245 () Bool)

(assert (=> b!7493 (= tp!910 b_and!2245)))

(declare-fun b_free!519 () Bool)

(declare-fun b_next!1103 () Bool)

(assert (=> b!7493 (= b_free!519 (not b_next!1103))))

(declare-fun tp!909 () Bool)

(declare-fun b_and!2247 () Bool)

(assert (=> b!7493 (= tp!909 b_and!2247)))

(declare-fun b_free!521 () Bool)

(declare-fun b_next!1105 () Bool)

(assert (=> b!7493 (= b_free!521 (not b_next!1105))))

(declare-fun tp!908 () Bool)

(declare-fun b_and!2249 () Bool)

(assert (=> b!7493 (= tp!908 b_and!2249)))

(declare-fun b!7494 () Bool)

(declare-fun b_free!523 () Bool)

(declare-fun b_next!1107 () Bool)

(assert (=> b!7494 (= b_free!523 (not b_next!1107))))

(declare-fun tp!907 () Bool)

(declare-fun b_and!2251 () Bool)

(assert (=> b!7494 (= tp!907 b_and!2251)))

(declare-fun b_free!525 () Bool)

(declare-fun b_next!1109 () Bool)

(assert (=> b!7494 (= b_free!525 (not b_next!1109))))

(declare-fun tp!906 () Bool)

(declare-fun b_and!2253 () Bool)

(assert (=> b!7494 (= tp!906 b_and!2253)))

(assert (=> start!1420 false))

(assert (=> start!1420 true))

(declare-datatypes () ((Balance!105 (Balance!106 (extraOpen!93 Int) (extraClose!93 Int)))))

(declare-datatypes () ((EqEvidence!82 (EqEvidence!83 (x!4073 Int) (y!469 Int) (evidence!108 Int)))))

(declare-fun thiss!1122 () EqEvidence!82)

(declare-fun e!4320 () Bool)

(declare-fun inv!264 (EqEvidence!82) Bool)

(assert (=> start!1420 (and (inv!264 thiss!1122) e!4320)))

(declare-datatypes () ((EqProof!38 (EqProof!39 (x!4074 Int) (y!470 Int)))))

(declare-fun that!302 () EqProof!38)

(declare-fun e!4321 () Bool)

(declare-fun inv!265 (EqProof!38) Bool)

(assert (=> start!1420 (and (inv!265 that!302) e!4321)))

(assert (=> b!7493 (= e!4320 (and tp!910 tp!909 tp!908))))

(assert (=> b!7494 (= e!4321 (and tp!907 tp!906))))

(assert (= start!1420 b!7493))

(assert (= start!1420 b!7494))

(declare-fun m!10359 () Bool)

(assert (=> start!1420 m!10359))

(declare-fun m!10361 () Bool)

(assert (=> start!1420 m!10361))

(push 1)

(assert (not b_next!1103))

(assert b_and!2245)

(assert (not b_next!1109))

(assert b_and!2249)

(assert (not b_next!1101))

(assert b_and!2253)

(assert (not b_next!1105))

(assert (not b_next!1107))

(assert (not start!1420))

(assert b_and!2251)

(assert b_and!2247)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1103))

(assert b_and!2245)

(assert (not b_next!1109))

(assert b_and!2249)

(assert (not b_next!1101))

(assert b_and!2253)

(assert (not b_next!1105))

(assert (not b_next!1107))

(assert b_and!2251)

(assert b_and!2247)

(check-sat)

(pop 1)

