; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2410 () Bool)

(assert start!2410)

(declare-fun b!11991 () Bool)

(declare-fun b_free!1765 () Bool)

(declare-fun b_next!4201 () Bool)

(assert (=> b!11991 (= b_free!1765 (not b_next!4201))))

(declare-fun tp!2817 () Bool)

(declare-fun b_and!6173 () Bool)

(assert (=> b!11991 (= tp!2817 b_and!6173)))

(declare-fun b_free!1767 () Bool)

(declare-fun b_next!4203 () Bool)

(assert (=> b!11991 (= b_free!1767 (not b_next!4203))))

(declare-fun tp!2816 () Bool)

(declare-fun b_and!6175 () Bool)

(assert (=> b!11991 (= tp!2816 b_and!6175)))

(declare-fun b_free!1769 () Bool)

(declare-fun b_next!4205 () Bool)

(assert (=> b!11991 (= b_free!1769 (not b_next!4205))))

(declare-fun tp!2819 () Bool)

(declare-fun b_and!6177 () Bool)

(assert (=> b!11991 (= tp!2819 b_and!6177)))

(declare-fun b_free!1771 () Bool)

(declare-fun b_next!4207 () Bool)

(assert (=> start!2410 (= b_free!1771 (not b_next!4207))))

(declare-fun tp!2815 () Bool)

(declare-fun b_and!6179 () Bool)

(assert (=> start!2410 (= tp!2815 b_and!6179)))

(declare-fun b!11992 () Bool)

(declare-fun b_free!1773 () Bool)

(declare-fun b_next!4209 () Bool)

(assert (=> b!11992 (= b_free!1773 (not b_next!4209))))

(declare-fun tp!2821 () Bool)

(declare-fun b_and!6181 () Bool)

(assert (=> b!11992 (= tp!2821 b_and!6181)))

(declare-fun b_free!1775 () Bool)

(declare-fun b_next!4211 () Bool)

(assert (=> b!11992 (= b_free!1775 (not b_next!4211))))

(declare-fun tp!2820 () Bool)

(declare-fun b_and!6183 () Bool)

(assert (=> b!11992 (= tp!2820 b_and!6183)))

(declare-fun b_free!1777 () Bool)

(declare-fun b_next!4213 () Bool)

(assert (=> b!11992 (= b_free!1777 (not b_next!4213))))

(declare-fun tp!2818 () Bool)

(declare-fun b_and!6185 () Bool)

(assert (=> b!11992 (= tp!2818 b_and!6185)))

(assert (=> start!2410 false))

(declare-datatypes () ((Balance!341 (Balance!342 (extraOpen!211 Int) (extraClose!211 Int)))))

(declare-datatypes () ((EqEvidence!268 (EqEvidence!269 (x!6812 Int) (y!658 Int) (evidence!201 Int)))))

(declare-fun thiss!747 () EqEvidence!268)

(declare-fun e!6631 () Bool)

(declare-fun inv!403 (EqEvidence!268) Bool)

(assert (=> start!2410 (and (inv!403 thiss!747) e!6631)))

(assert (=> start!2410 tp!2815))

(assert (=> start!2410 true))

(declare-fun that!183 () EqEvidence!268)

(declare-fun e!6632 () Bool)

(assert (=> start!2410 (and (inv!403 that!183) e!6632)))

(assert (=> b!11991 (= e!6631 (and tp!2817 tp!2816 tp!2819))))

(assert (=> b!11992 (= e!6632 (and tp!2821 tp!2820 tp!2818))))

(assert (= start!2410 b!11991))

(assert (= start!2410 b!11992))

(declare-fun m!14921 () Bool)

(assert (=> start!2410 m!14921))

(declare-fun m!14923 () Bool)

(assert (=> start!2410 m!14923))

(push 1)

(assert (not b_next!4201))

(assert (not start!2410))

(assert b_and!6177)

(assert (not b_next!4207))

(assert (not b_next!4205))

(assert (not b_next!4213))

(assert b_and!6173)

(assert (not b_next!4209))

(assert b_and!6183)

(assert b_and!6181)

(assert b_and!6175)

(assert b_and!6179)

(assert (not b_next!4203))

(assert b_and!6185)

(assert (not b_next!4211))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4201))

(assert b_and!6177)

(assert (not b_next!4207))

(assert (not b_next!4205))

(assert (not b_next!4213))

(assert b_and!6173)

(assert (not b_next!4209))

(assert b_and!6183)

(assert b_and!6181)

(assert b_and!6175)

(assert b_and!6179)

(assert (not b_next!4203))

(assert b_and!6185)

(assert (not b_next!4211))

(check-sat)

(pop 1)

