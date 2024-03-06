; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1140 () Bool)

(assert start!1140)

(declare-fun b!6648 () Bool)

(declare-fun b_free!311 () Bool)

(declare-fun b_next!665 () Bool)

(assert (=> b!6648 (= b_free!311 (not b_next!665))))

(declare-fun tp!604 () Bool)

(declare-fun b_and!1643 () Bool)

(assert (=> b!6648 (= tp!604 b_and!1643)))

(declare-fun b_free!313 () Bool)

(declare-fun b_next!667 () Bool)

(assert (=> b!6648 (= b_free!313 (not b_next!667))))

(declare-fun tp!603 () Bool)

(declare-fun b_and!1645 () Bool)

(assert (=> b!6648 (= tp!603 b_and!1645)))

(declare-fun b_free!315 () Bool)

(declare-fun b_next!669 () Bool)

(assert (=> b!6648 (= b_free!315 (not b_next!669))))

(declare-fun tp!601 () Bool)

(declare-fun b_and!1647 () Bool)

(assert (=> b!6648 (= tp!601 b_and!1647)))

(declare-fun b!6649 () Bool)

(declare-fun b_free!317 () Bool)

(declare-fun b_next!671 () Bool)

(assert (=> b!6649 (= b_free!317 (not b_next!671))))

(declare-fun tp!602 () Bool)

(declare-fun b_and!1649 () Bool)

(assert (=> b!6649 (= tp!602 b_and!1649)))

(declare-fun b_free!319 () Bool)

(declare-fun b_next!673 () Bool)

(assert (=> b!6649 (= b_free!319 (not b_next!673))))

(declare-fun tp!600 () Bool)

(declare-fun b_and!1651 () Bool)

(assert (=> b!6649 (= tp!600 b_and!1651)))

(declare-fun b_free!321 () Bool)

(declare-fun b_next!675 () Bool)

(assert (=> b!6649 (= b_free!321 (not b_next!675))))

(declare-fun tp!599 () Bool)

(declare-fun b_and!1653 () Bool)

(assert (=> b!6649 (= tp!599 b_and!1653)))

(assert (=> start!1140 false))

(assert (=> start!1140 true))

(declare-datatypes () ((Balance!57 (Balance!58 (extraOpen!69 Int) (extraClose!69 Int)))))

(declare-datatypes () ((EqEvidence!46 (EqEvidence!47 (x!3606 Int) (y!444 Int) (evidence!90 Int)))))

(declare-fun thiss!1204 () EqEvidence!46)

(declare-fun e!3928 () Bool)

(declare-fun inv!239 (EqEvidence!46) Bool)

(assert (=> start!1140 (and (inv!239 thiss!1204) e!3928)))

(declare-fun that!338 () EqEvidence!46)

(declare-fun e!3929 () Bool)

(assert (=> start!1140 (and (inv!239 that!338) e!3929)))

(assert (=> b!6648 (= e!3928 (and tp!604 tp!603 tp!601))))

(assert (=> b!6649 (= e!3929 (and tp!602 tp!600 tp!599))))

(assert (= start!1140 b!6648))

(assert (= start!1140 b!6649))

(declare-fun m!9503 () Bool)

(assert (=> start!1140 m!9503))

(declare-fun m!9505 () Bool)

(assert (=> start!1140 m!9505))

(push 1)

(assert b_and!1649)

(assert (not b_next!665))

(assert (not b_next!675))

(assert (not start!1140))

(assert b_and!1651)

(assert b_and!1653)

(assert (not b_next!669))

(assert (not b_next!667))

(assert b_and!1647)

(assert (not b_next!673))

(assert b_and!1643)

(assert b_and!1645)

(assert (not b_next!671))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1649)

(assert (not b_next!665))

(assert (not b_next!675))

(assert b_and!1651)

(assert b_and!1653)

(assert (not b_next!669))

(assert (not b_next!667))

(assert b_and!1647)

(assert (not b_next!673))

(assert b_and!1643)

(assert b_and!1645)

(assert (not b_next!671))

(check-sat)

(pop 1)

