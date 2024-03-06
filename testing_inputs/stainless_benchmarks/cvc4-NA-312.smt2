; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2380 () Bool)

(assert start!2380)

(declare-fun b_free!1719 () Bool)

(declare-fun b_next!4093 () Bool)

(assert (=> start!2380 (= b_free!1719 (not b_next!4093))))

(declare-fun tp!2749 () Bool)

(declare-fun b_and!6011 () Bool)

(assert (=> start!2380 (= tp!2749 b_and!6011)))

(declare-fun b!11833 () Bool)

(declare-fun b_free!1721 () Bool)

(declare-fun b_next!4095 () Bool)

(assert (=> b!11833 (= b_free!1721 (not b_next!4095))))

(declare-fun tp!2747 () Bool)

(declare-fun b_and!6013 () Bool)

(assert (=> b!11833 (= tp!2747 b_and!6013)))

(declare-fun b_free!1723 () Bool)

(declare-fun b_next!4097 () Bool)

(assert (=> b!11833 (= b_free!1723 (not b_next!4097))))

(declare-fun tp!2746 () Bool)

(declare-fun b_and!6015 () Bool)

(assert (=> b!11833 (= tp!2746 b_and!6015)))

(declare-fun b!11834 () Bool)

(declare-fun b_free!1725 () Bool)

(declare-fun b_next!4099 () Bool)

(assert (=> b!11834 (= b_free!1725 (not b_next!4099))))

(declare-fun tp!2748 () Bool)

(declare-fun b_and!6017 () Bool)

(assert (=> b!11834 (= tp!2748 b_and!6017)))

(declare-fun b_free!1727 () Bool)

(declare-fun b_next!4101 () Bool)

(assert (=> b!11834 (= b_free!1727 (not b_next!4101))))

(declare-fun tp!2745 () Bool)

(declare-fun b_and!6019 () Bool)

(assert (=> b!11834 (= tp!2745 b_and!6019)))

(declare-fun b_free!1729 () Bool)

(declare-fun b_next!4103 () Bool)

(assert (=> b!11834 (= b_free!1729 (not b_next!4103))))

(declare-fun tp!2744 () Bool)

(declare-fun b_and!6021 () Bool)

(assert (=> b!11834 (= tp!2744 b_and!6021)))

(assert (=> start!2380 false))

(assert (=> start!2380 tp!2749))

(declare-datatypes () ((Balance!333 (Balance!334 (extraOpen!207 Int) (extraClose!207 Int)))))

(declare-datatypes () ((EqProof!122 (EqProof!123 (x!6684 Int) (y!651 Int)))))

(declare-fun that!180 () EqProof!122)

(declare-fun e!6581 () Bool)

(declare-fun inv!396 (EqProof!122) Bool)

(assert (=> start!2380 (and (inv!396 that!180) e!6581)))

(assert (=> start!2380 true))

(declare-datatypes () ((EqEvidence!262 (EqEvidence!263 (x!6685 Int) (y!652 Int) (evidence!198 Int)))))

(declare-fun thiss!720 () EqEvidence!262)

(declare-fun e!6582 () Bool)

(declare-fun inv!397 (EqEvidence!262) Bool)

(assert (=> start!2380 (and (inv!397 thiss!720) e!6582)))

(assert (=> b!11833 (= e!6581 (and tp!2747 tp!2746))))

(assert (=> b!11834 (= e!6582 (and tp!2748 tp!2745 tp!2744))))

(assert (= start!2380 b!11833))

(assert (= start!2380 b!11834))

(declare-fun m!14769 () Bool)

(assert (=> start!2380 m!14769))

(declare-fun m!14771 () Bool)

(assert (=> start!2380 m!14771))

(push 1)

(assert b_and!6015)

(assert b_and!6013)

(assert b_and!6021)

(assert (not b_next!4103))

(assert (not b_next!4099))

(assert (not start!2380))

(assert (not b_next!4097))

(assert b_and!6011)

(assert b_and!6019)

(assert b_and!6017)

(assert (not b_next!4095))

(assert (not b_next!4101))

(assert (not b_next!4093))

(check-sat)

(pop 1)

(push 1)

(assert b_and!6015)

(assert b_and!6013)

(assert b_and!6021)

(assert (not b_next!4103))

(assert (not b_next!4099))

(assert (not b_next!4097))

(assert b_and!6011)

(assert b_and!6019)

(assert b_and!6017)

(assert (not b_next!4095))

(assert (not b_next!4101))

(assert (not b_next!4093))

(check-sat)

(pop 1)

