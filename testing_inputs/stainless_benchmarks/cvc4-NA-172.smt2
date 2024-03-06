; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1168 () Bool)

(assert start!1168)

(declare-fun b!6758 () Bool)

(declare-fun b_free!345 () Bool)

(declare-fun b_next!731 () Bool)

(assert (=> b!6758 (= b_free!345 (not b_next!731))))

(declare-fun tp!651 () Bool)

(declare-fun b_and!1737 () Bool)

(assert (=> b!6758 (= tp!651 b_and!1737)))

(declare-fun b_free!347 () Bool)

(declare-fun b_next!733 () Bool)

(assert (=> b!6758 (= b_free!347 (not b_next!733))))

(declare-fun tp!652 () Bool)

(declare-fun b_and!1739 () Bool)

(assert (=> b!6758 (= tp!652 b_and!1739)))

(declare-fun b_free!349 () Bool)

(declare-fun b_next!735 () Bool)

(assert (=> b!6758 (= b_free!349 (not b_next!735))))

(declare-fun tp!650 () Bool)

(declare-fun b_and!1741 () Bool)

(assert (=> b!6758 (= tp!650 b_and!1741)))

(declare-fun b!6759 () Bool)

(declare-fun b_free!351 () Bool)

(declare-fun b_next!737 () Bool)

(assert (=> b!6759 (= b_free!351 (not b_next!737))))

(declare-fun tp!649 () Bool)

(declare-fun b_and!1743 () Bool)

(assert (=> b!6759 (= tp!649 b_and!1743)))

(declare-fun b_free!353 () Bool)

(declare-fun b_next!739 () Bool)

(assert (=> b!6759 (= b_free!353 (not b_next!739))))

(declare-fun tp!648 () Bool)

(declare-fun b_and!1745 () Bool)

(assert (=> b!6759 (= tp!648 b_and!1745)))

(assert (=> start!1168 false))

(assert (=> start!1168 true))

(declare-datatypes () ((Balance!63 (Balance!64 (extraOpen!72 Int) (extraClose!72 Int)))))

(declare-datatypes () ((EqEvidence!52 (EqEvidence!53 (x!3662 Int) (y!448 Int) (evidence!93 Int)))))

(declare-fun thiss!1203 () EqEvidence!52)

(declare-fun e!3986 () Bool)

(declare-fun inv!243 (EqEvidence!52) Bool)

(assert (=> start!1168 (and (inv!243 thiss!1203) e!3986)))

(declare-datatypes () ((EqProof!26 (EqProof!27 (x!3663 Int) (y!449 Int)))))

(declare-fun that!349 () EqProof!26)

(declare-fun e!3987 () Bool)

(declare-fun inv!244 (EqProof!26) Bool)

(assert (=> start!1168 (and (inv!244 that!349) e!3987)))

(assert (=> b!6758 (= e!3986 (and tp!651 tp!652 tp!650))))

(assert (=> b!6759 (= e!3987 (and tp!649 tp!648))))

(assert (= start!1168 b!6758))

(assert (= start!1168 b!6759))

(declare-fun m!9601 () Bool)

(assert (=> start!1168 m!9601))

(declare-fun m!9603 () Bool)

(assert (=> start!1168 m!9603))

(push 1)

(assert b_and!1741)

(assert b_and!1743)

(assert (not b_next!735))

(assert (not b_next!739))

(assert (not b_next!731))

(assert (not b_next!737))

(assert b_and!1745)

(assert b_and!1737)

(assert b_and!1739)

(assert (not start!1168))

(assert (not b_next!733))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1741)

(assert b_and!1743)

(assert (not b_next!735))

(assert (not b_next!739))

(assert (not b_next!731))

(assert (not b_next!737))

(assert b_and!1745)

(assert b_and!1737)

(assert b_and!1739)

(assert (not b_next!733))

(check-sat)

(pop 1)

