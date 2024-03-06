; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2436 () Bool)

(assert start!2436)

(declare-fun b_free!1835 () Bool)

(declare-fun b_next!4333 () Bool)

(assert (=> start!2436 (= b_free!1835 (not b_next!4333))))

(declare-fun tp!2920 () Bool)

(declare-fun b_and!6355 () Bool)

(assert (=> start!2436 (= tp!2920 b_and!6355)))

(declare-fun b!12118 () Bool)

(declare-fun b_free!1837 () Bool)

(declare-fun b_next!4335 () Bool)

(assert (=> b!12118 (= b_free!1837 (not b_next!4335))))

(declare-fun tp!2925 () Bool)

(declare-fun b_and!6357 () Bool)

(assert (=> b!12118 (= tp!2925 b_and!6357)))

(declare-fun b_free!1839 () Bool)

(declare-fun b_next!4337 () Bool)

(assert (=> b!12118 (= b_free!1839 (not b_next!4337))))

(declare-fun tp!2923 () Bool)

(declare-fun b_and!6359 () Bool)

(assert (=> b!12118 (= tp!2923 b_and!6359)))

(declare-fun b_free!1841 () Bool)

(declare-fun b_next!4339 () Bool)

(assert (=> b!12118 (= b_free!1841 (not b_next!4339))))

(declare-fun tp!2921 () Bool)

(declare-fun b_and!6361 () Bool)

(assert (=> b!12118 (= tp!2921 b_and!6361)))

(declare-fun b!12119 () Bool)

(declare-fun b_free!1843 () Bool)

(declare-fun b_next!4341 () Bool)

(assert (=> b!12119 (= b_free!1843 (not b_next!4341))))

(declare-fun tp!2922 () Bool)

(declare-fun b_and!6363 () Bool)

(assert (=> b!12119 (= tp!2922 b_and!6363)))

(declare-fun b_free!1845 () Bool)

(declare-fun b_next!4343 () Bool)

(assert (=> b!12119 (= b_free!1845 (not b_next!4343))))

(declare-fun tp!2926 () Bool)

(declare-fun b_and!6365 () Bool)

(assert (=> b!12119 (= tp!2926 b_and!6365)))

(declare-fun b_free!1847 () Bool)

(declare-fun b_next!4345 () Bool)

(assert (=> b!12119 (= b_free!1847 (not b_next!4345))))

(declare-fun tp!2924 () Bool)

(declare-fun b_and!6367 () Bool)

(assert (=> b!12119 (= tp!2924 b_and!6367)))

(assert (=> start!2436 false))

(assert (=> start!2436 tp!2920))

(assert (=> start!2436 true))

(declare-datatypes () ((Balance!351 (Balance!352 (extraOpen!216 Int) (extraClose!216 Int)))))

(declare-datatypes () ((EqEvidence!278 (EqEvidence!279 (x!6942 Int) (y!664 Int) (evidence!206 Int)))))

(declare-fun that!184 () EqEvidence!278)

(declare-fun e!6683 () Bool)

(declare-fun inv!409 (EqEvidence!278) Bool)

(assert (=> start!2436 (and (inv!409 that!184) e!6683)))

(declare-fun thiss!746 () EqEvidence!278)

(declare-fun e!6682 () Bool)

(assert (=> start!2436 (and (inv!409 thiss!746) e!6682)))

(assert (=> b!12118 (= e!6683 (and tp!2925 tp!2923 tp!2921))))

(assert (=> b!12119 (= e!6682 (and tp!2922 tp!2926 tp!2924))))

(assert (= start!2436 b!12118))

(assert (= start!2436 b!12119))

(declare-fun m!15057 () Bool)

(assert (=> start!2436 m!15057))

(declare-fun m!15059 () Bool)

(assert (=> start!2436 m!15059))

(push 1)

(assert (not b_next!4337))

(assert b_and!6357)

(assert (not b_next!4341))

(assert (not b_next!4343))

(assert (not b_next!4339))

(assert (not b_next!4335))

(assert b_and!6361)

(assert (not b_next!4345))

(assert b_and!6355)

(assert b_and!6365)

(assert b_and!6367)

(assert b_and!6363)

(assert b_and!6359)

(assert (not b_next!4333))

(assert (not start!2436))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4337))

(assert b_and!6357)

(assert (not b_next!4341))

(assert (not b_next!4343))

(assert (not b_next!4339))

(assert (not b_next!4335))

(assert b_and!6361)

(assert (not b_next!4345))

(assert b_and!6355)

(assert b_and!6365)

(assert b_and!6367)

(assert b_and!6363)

(assert b_and!6359)

(assert (not b_next!4333))

(check-sat)

(pop 1)

