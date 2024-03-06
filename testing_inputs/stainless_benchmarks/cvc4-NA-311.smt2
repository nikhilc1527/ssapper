; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2378 () Bool)

(assert start!2378)

(declare-fun b_free!1707 () Bool)

(declare-fun b_next!4081 () Bool)

(assert (=> start!2378 (= b_free!1707 (not b_next!4081))))

(declare-fun tp!2728 () Bool)

(declare-fun b_and!5999 () Bool)

(assert (=> start!2378 (= tp!2728 b_and!5999)))

(declare-fun b!11827 () Bool)

(declare-fun b_free!1709 () Bool)

(declare-fun b_next!4083 () Bool)

(assert (=> b!11827 (= b_free!1709 (not b_next!4083))))

(declare-fun tp!2726 () Bool)

(declare-fun b_and!6001 () Bool)

(assert (=> b!11827 (= tp!2726 b_and!6001)))

(declare-fun b_free!1711 () Bool)

(declare-fun b_next!4085 () Bool)

(assert (=> b!11827 (= b_free!1711 (not b_next!4085))))

(declare-fun tp!2731 () Bool)

(declare-fun b_and!6003 () Bool)

(assert (=> b!11827 (= tp!2731 b_and!6003)))

(declare-fun b!11828 () Bool)

(declare-fun b_free!1713 () Bool)

(declare-fun b_next!4087 () Bool)

(assert (=> b!11828 (= b_free!1713 (not b_next!4087))))

(declare-fun tp!2729 () Bool)

(declare-fun b_and!6005 () Bool)

(assert (=> b!11828 (= tp!2729 b_and!6005)))

(declare-fun b_free!1715 () Bool)

(declare-fun b_next!4089 () Bool)

(assert (=> b!11828 (= b_free!1715 (not b_next!4089))))

(declare-fun tp!2730 () Bool)

(declare-fun b_and!6007 () Bool)

(assert (=> b!11828 (= tp!2730 b_and!6007)))

(declare-fun b_free!1717 () Bool)

(declare-fun b_next!4091 () Bool)

(assert (=> b!11828 (= b_free!1717 (not b_next!4091))))

(declare-fun tp!2727 () Bool)

(declare-fun b_and!6009 () Bool)

(assert (=> b!11828 (= tp!2727 b_and!6009)))

(assert (=> start!2378 false))

(assert (=> start!2378 tp!2728))

(declare-datatypes () ((Balance!331 (Balance!332 (extraOpen!206 Int) (extraClose!206 Int)))))

(declare-datatypes () ((EqProof!120 (EqProof!121 (x!6682 Int) (y!649 Int)))))

(declare-fun that!180 () EqProof!120)

(declare-fun e!6575 () Bool)

(declare-fun inv!394 (EqProof!120) Bool)

(assert (=> start!2378 (and (inv!394 that!180) e!6575)))

(assert (=> start!2378 true))

(declare-datatypes () ((EqEvidence!260 (EqEvidence!261 (x!6683 Int) (y!650 Int) (evidence!197 Int)))))

(declare-fun thiss!720 () EqEvidence!260)

(declare-fun e!6576 () Bool)

(declare-fun inv!395 (EqEvidence!260) Bool)

(assert (=> start!2378 (and (inv!395 thiss!720) e!6576)))

(assert (=> b!11827 (= e!6575 (and tp!2726 tp!2731))))

(assert (=> b!11828 (= e!6576 (and tp!2729 tp!2730 tp!2727))))

(assert (= start!2378 b!11827))

(assert (= start!2378 b!11828))

(declare-fun m!14765 () Bool)

(assert (=> start!2378 m!14765))

(declare-fun m!14767 () Bool)

(assert (=> start!2378 m!14767))

(push 1)

(assert b_and!6003)

(assert b_and!6001)

(assert b_and!6007)

(assert (not b_next!4083))

(assert (not b_next!4091))

(assert (not b_next!4081))

(assert b_and!6005)

(assert b_and!5999)

(assert (not b_next!4089))

(assert (not b_next!4085))

(assert (not b_next!4087))

(assert b_and!6009)

(assert (not start!2378))

(check-sat)

(pop 1)

(push 1)

(assert b_and!6003)

(assert b_and!6001)

(assert b_and!6007)

(assert (not b_next!4083))

(assert (not b_next!4091))

(assert (not b_next!4081))

(assert b_and!6005)

(assert b_and!5999)

(assert (not b_next!4089))

(assert (not b_next!4085))

(assert (not b_next!4087))

(assert b_and!6009)

(check-sat)

(pop 1)

