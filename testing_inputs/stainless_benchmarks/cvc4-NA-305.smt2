; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2342 () Bool)

(assert start!2342)

(declare-fun b_free!1623 () Bool)

(declare-fun b_next!3903 () Bool)

(assert (=> start!2342 (= b_free!1623 (not b_next!3903))))

(declare-fun tp!2603 () Bool)

(declare-fun b_and!5727 () Bool)

(assert (=> start!2342 (= tp!2603 b_and!5727)))

(declare-fun b!11647 () Bool)

(declare-fun b_free!1625 () Bool)

(declare-fun b_next!3905 () Bool)

(assert (=> b!11647 (= b_free!1625 (not b_next!3905))))

(declare-fun tp!2607 () Bool)

(declare-fun b_and!5729 () Bool)

(assert (=> b!11647 (= tp!2607 b_and!5729)))

(declare-fun b_free!1627 () Bool)

(declare-fun b_next!3907 () Bool)

(assert (=> b!11647 (= b_free!1627 (not b_next!3907))))

(declare-fun tp!2604 () Bool)

(declare-fun b_and!5731 () Bool)

(assert (=> b!11647 (= tp!2604 b_and!5731)))

(declare-fun b_free!1629 () Bool)

(declare-fun b_next!3909 () Bool)

(assert (=> b!11647 (= b_free!1629 (not b_next!3909))))

(declare-fun tp!2605 () Bool)

(declare-fun b_and!5733 () Bool)

(assert (=> b!11647 (= tp!2605 b_and!5733)))

(declare-fun b!11648 () Bool)

(declare-fun b_free!1631 () Bool)

(declare-fun b_next!3911 () Bool)

(assert (=> b!11648 (= b_free!1631 (not b_next!3911))))

(declare-fun tp!2602 () Bool)

(declare-fun b_and!5735 () Bool)

(assert (=> b!11648 (= tp!2602 b_and!5735)))

(declare-fun b_free!1633 () Bool)

(declare-fun b_next!3913 () Bool)

(assert (=> b!11648 (= b_free!1633 (not b_next!3913))))

(declare-fun tp!2608 () Bool)

(declare-fun b_and!5737 () Bool)

(assert (=> b!11648 (= tp!2608 b_and!5737)))

(declare-fun b_free!1635 () Bool)

(declare-fun b_next!3915 () Bool)

(assert (=> b!11648 (= b_free!1635 (not b_next!3915))))

(declare-fun tp!2606 () Bool)

(declare-fun b_and!5739 () Bool)

(assert (=> b!11648 (= tp!2606 b_and!5739)))

(assert (=> start!2342 false))

(assert (=> start!2342 tp!2603))

(declare-datatypes () ((Balance!319 (Balance!320 (extraOpen!200 Int) (extraClose!200 Int)))))

(declare-datatypes () ((EqEvidence!248 (EqEvidence!249 (x!6587 Int) (y!642 Int) (evidence!191 Int)))))

(declare-fun thiss!722 () EqEvidence!248)

(declare-fun e!6502 () Bool)

(declare-fun inv!387 (EqEvidence!248) Bool)

(assert (=> start!2342 (and (inv!387 thiss!722) e!6502)))

(assert (=> start!2342 true))

(declare-fun that!176 () EqEvidence!248)

(declare-fun e!6501 () Bool)

(assert (=> start!2342 (and (inv!387 that!176) e!6501)))

(assert (=> b!11647 (= e!6502 (and tp!2607 tp!2604 tp!2605))))

(assert (=> b!11648 (= e!6501 (and tp!2602 tp!2608 tp!2606))))

(assert (= start!2342 b!11647))

(assert (= start!2342 b!11648))

(declare-fun m!14559 () Bool)

(assert (=> start!2342 m!14559))

(declare-fun m!14561 () Bool)

(assert (=> start!2342 m!14561))

(push 1)

(assert (not b_next!3911))

(assert b_and!5739)

(assert b_and!5735)

(assert (not b_next!3905))

(assert b_and!5729)

(assert (not b_next!3909))

(assert b_and!5727)

(assert b_and!5733)

(assert (not b_next!3903))

(assert b_and!5737)

(assert (not b_next!3913))

(assert (not start!2342))

(assert b_and!5731)

(assert (not b_next!3907))

(assert (not b_next!3915))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3911))

(assert b_and!5739)

(assert b_and!5735)

(assert (not b_next!3905))

(assert b_and!5729)

(assert (not b_next!3909))

(assert b_and!5727)

(assert b_and!5733)

(assert (not b_next!3903))

(assert b_and!5737)

(assert (not b_next!3913))

(assert b_and!5731)

(assert (not b_next!3907))

(assert (not b_next!3915))

(check-sat)

(pop 1)

