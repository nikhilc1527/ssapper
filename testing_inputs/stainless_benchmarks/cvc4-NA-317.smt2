; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2412 () Bool)

(assert start!2412)

(declare-fun b!11997 () Bool)

(declare-fun b_free!1779 () Bool)

(declare-fun b_next!4215 () Bool)

(assert (=> b!11997 (= b_free!1779 (not b_next!4215))))

(declare-fun tp!2840 () Bool)

(declare-fun b_and!6187 () Bool)

(assert (=> b!11997 (= tp!2840 b_and!6187)))

(declare-fun b_free!1781 () Bool)

(declare-fun b_next!4217 () Bool)

(assert (=> b!11997 (= b_free!1781 (not b_next!4217))))

(declare-fun tp!2841 () Bool)

(declare-fun b_and!6189 () Bool)

(assert (=> b!11997 (= tp!2841 b_and!6189)))

(declare-fun b_free!1783 () Bool)

(declare-fun b_next!4219 () Bool)

(assert (=> b!11997 (= b_free!1783 (not b_next!4219))))

(declare-fun tp!2836 () Bool)

(declare-fun b_and!6191 () Bool)

(assert (=> b!11997 (= tp!2836 b_and!6191)))

(declare-fun b_free!1785 () Bool)

(declare-fun b_next!4221 () Bool)

(assert (=> start!2412 (= b_free!1785 (not b_next!4221))))

(declare-fun tp!2842 () Bool)

(declare-fun b_and!6193 () Bool)

(assert (=> start!2412 (= tp!2842 b_and!6193)))

(declare-fun b!11998 () Bool)

(declare-fun b_free!1787 () Bool)

(declare-fun b_next!4223 () Bool)

(assert (=> b!11998 (= b_free!1787 (not b_next!4223))))

(declare-fun tp!2838 () Bool)

(declare-fun b_and!6195 () Bool)

(assert (=> b!11998 (= tp!2838 b_and!6195)))

(declare-fun b_free!1789 () Bool)

(declare-fun b_next!4225 () Bool)

(assert (=> b!11998 (= b_free!1789 (not b_next!4225))))

(declare-fun tp!2839 () Bool)

(declare-fun b_and!6197 () Bool)

(assert (=> b!11998 (= tp!2839 b_and!6197)))

(declare-fun b_free!1791 () Bool)

(declare-fun b_next!4227 () Bool)

(assert (=> b!11998 (= b_free!1791 (not b_next!4227))))

(declare-fun tp!2837 () Bool)

(declare-fun b_and!6199 () Bool)

(assert (=> b!11998 (= tp!2837 b_and!6199)))

(assert (=> start!2412 false))

(declare-datatypes () ((Balance!343 (Balance!344 (extraOpen!212 Int) (extraClose!212 Int)))))

(declare-datatypes () ((EqEvidence!270 (EqEvidence!271 (x!6813 Int) (y!659 Int) (evidence!202 Int)))))

(declare-fun thiss!747 () EqEvidence!270)

(declare-fun e!6638 () Bool)

(declare-fun inv!404 (EqEvidence!270) Bool)

(assert (=> start!2412 (and (inv!404 thiss!747) e!6638)))

(assert (=> start!2412 tp!2842))

(assert (=> start!2412 true))

(declare-fun that!183 () EqEvidence!270)

(declare-fun e!6637 () Bool)

(assert (=> start!2412 (and (inv!404 that!183) e!6637)))

(assert (=> b!11997 (= e!6638 (and tp!2840 tp!2841 tp!2836))))

(assert (=> b!11998 (= e!6637 (and tp!2838 tp!2839 tp!2837))))

(assert (= start!2412 b!11997))

(assert (= start!2412 b!11998))

(declare-fun m!14925 () Bool)

(assert (=> start!2412 m!14925))

(declare-fun m!14927 () Bool)

(assert (=> start!2412 m!14927))

(push 1)

(assert (not b_next!4215))

(assert (not b_next!4223))

(assert (not b_next!4225))

(assert b_and!6187)

(assert (not start!2412))

(assert (not b_next!4221))

(assert (not b_next!4217))

(assert b_and!6191)

(assert b_and!6195)

(assert (not b_next!4219))

(assert b_and!6193)

(assert b_and!6199)

(assert b_and!6197)

(assert b_and!6189)

(assert (not b_next!4227))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4215))

(assert (not b_next!4223))

(assert (not b_next!4225))

(assert b_and!6187)

(assert (not b_next!4221))

(assert (not b_next!4217))

(assert b_and!6191)

(assert b_and!6195)

(assert (not b_next!4219))

(assert b_and!6193)

(assert b_and!6199)

(assert b_and!6197)

(assert b_and!6189)

(assert (not b_next!4227))

(check-sat)

(pop 1)

