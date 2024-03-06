; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1510 () Bool)

(assert start!1510)

(declare-fun b!7856 () Bool)

(declare-fun b_free!613 () Bool)

(declare-fun b_next!1309 () Bool)

(assert (=> b!7856 (= b_free!613 (not b_next!1309))))

(declare-fun tp!1053 () Bool)

(declare-fun b_and!2543 () Bool)

(assert (=> b!7856 (= tp!1053 b_and!2543)))

(declare-fun b_free!615 () Bool)

(declare-fun b_next!1311 () Bool)

(assert (=> b!7856 (= b_free!615 (not b_next!1311))))

(declare-fun tp!1057 () Bool)

(declare-fun b_and!2545 () Bool)

(assert (=> b!7856 (= tp!1057 b_and!2545)))

(declare-fun b_free!617 () Bool)

(declare-fun b_next!1313 () Bool)

(assert (=> b!7856 (= b_free!617 (not b_next!1313))))

(declare-fun tp!1052 () Bool)

(declare-fun b_and!2547 () Bool)

(assert (=> b!7856 (= tp!1052 b_and!2547)))

(declare-fun b!7857 () Bool)

(declare-fun b_free!619 () Bool)

(declare-fun b_next!1315 () Bool)

(assert (=> b!7857 (= b_free!619 (not b_next!1315))))

(declare-fun tp!1055 () Bool)

(declare-fun b_and!2549 () Bool)

(assert (=> b!7857 (= tp!1055 b_and!2549)))

(declare-fun b_free!621 () Bool)

(declare-fun b_next!1317 () Bool)

(assert (=> b!7857 (= b_free!621 (not b_next!1317))))

(declare-fun tp!1056 () Bool)

(declare-fun b_and!2551 () Bool)

(assert (=> b!7857 (= tp!1056 b_and!2551)))

(declare-fun b_free!623 () Bool)

(declare-fun b_next!1319 () Bool)

(assert (=> b!7857 (= b_free!623 (not b_next!1319))))

(declare-fun tp!1054 () Bool)

(declare-fun b_and!2553 () Bool)

(assert (=> b!7857 (= tp!1054 b_and!2553)))

(assert (=> start!1510 false))

(assert (=> start!1510 true))

(declare-datatypes () ((Balance!123 (Balance!124 (extraOpen!102 Int) (extraClose!102 Int)))))

(declare-datatypes () ((EqEvidence!98 (EqEvidence!99 (x!4297 Int) (y!483 Int) (evidence!116 Int)))))

(declare-fun thiss!1146 () EqEvidence!98)

(declare-fun e!4498 () Bool)

(declare-fun inv!278 (EqEvidence!98) Bool)

(assert (=> start!1510 (and (inv!278 thiss!1146) e!4498)))

(declare-fun that!322 () EqEvidence!98)

(declare-fun e!4497 () Bool)

(assert (=> start!1510 (and (inv!278 that!322) e!4497)))

(assert (=> b!7856 (= e!4498 (and tp!1053 tp!1057 tp!1052))))

(assert (=> b!7857 (= e!4497 (and tp!1055 tp!1056 tp!1054))))

(assert (= start!1510 b!7856))

(assert (= start!1510 b!7857))

(declare-fun m!10703 () Bool)

(assert (=> start!1510 m!10703))

(declare-fun m!10705 () Bool)

(assert (=> start!1510 m!10705))

(push 1)

(assert b_and!2547)

(assert (not b_next!1319))

(assert (not b_next!1313))

(assert (not b_next!1317))

(assert (not start!1510))

(assert (not b_next!1309))

(assert b_and!2553)

(assert b_and!2551)

(assert (not b_next!1315))

(assert (not b_next!1311))

(assert b_and!2545)

(assert b_and!2543)

(assert b_and!2549)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2547)

(assert (not b_next!1319))

(assert (not b_next!1313))

(assert (not b_next!1317))

(assert (not b_next!1309))

(assert b_and!2553)

(assert b_and!2551)

(assert (not b_next!1315))

(assert (not b_next!1311))

(assert b_and!2545)

(assert b_and!2543)

(assert b_and!2549)

(check-sat)

(pop 1)

