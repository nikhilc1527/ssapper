; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1512 () Bool)

(assert start!1512)

(declare-fun b!7862 () Bool)

(declare-fun b_free!625 () Bool)

(declare-fun b_next!1321 () Bool)

(assert (=> b!7862 (= b_free!625 (not b_next!1321))))

(declare-fun tp!1071 () Bool)

(declare-fun b_and!2555 () Bool)

(assert (=> b!7862 (= tp!1071 b_and!2555)))

(declare-fun b_free!627 () Bool)

(declare-fun b_next!1323 () Bool)

(assert (=> b!7862 (= b_free!627 (not b_next!1323))))

(declare-fun tp!1074 () Bool)

(declare-fun b_and!2557 () Bool)

(assert (=> b!7862 (= tp!1074 b_and!2557)))

(declare-fun b_free!629 () Bool)

(declare-fun b_next!1325 () Bool)

(assert (=> b!7862 (= b_free!629 (not b_next!1325))))

(declare-fun tp!1070 () Bool)

(declare-fun b_and!2559 () Bool)

(assert (=> b!7862 (= tp!1070 b_and!2559)))

(declare-fun b!7863 () Bool)

(declare-fun b_free!631 () Bool)

(declare-fun b_next!1327 () Bool)

(assert (=> b!7863 (= b_free!631 (not b_next!1327))))

(declare-fun tp!1075 () Bool)

(declare-fun b_and!2561 () Bool)

(assert (=> b!7863 (= tp!1075 b_and!2561)))

(declare-fun b_free!633 () Bool)

(declare-fun b_next!1329 () Bool)

(assert (=> b!7863 (= b_free!633 (not b_next!1329))))

(declare-fun tp!1072 () Bool)

(declare-fun b_and!2563 () Bool)

(assert (=> b!7863 (= tp!1072 b_and!2563)))

(declare-fun b_free!635 () Bool)

(declare-fun b_next!1331 () Bool)

(assert (=> b!7863 (= b_free!635 (not b_next!1331))))

(declare-fun tp!1073 () Bool)

(declare-fun b_and!2565 () Bool)

(assert (=> b!7863 (= tp!1073 b_and!2565)))

(assert (=> start!1512 false))

(assert (=> start!1512 true))

(declare-datatypes () ((Balance!125 (Balance!126 (extraOpen!103 Int) (extraClose!103 Int)))))

(declare-datatypes () ((EqEvidence!100 (EqEvidence!101 (x!4298 Int) (y!484 Int) (evidence!117 Int)))))

(declare-fun thiss!1146 () EqEvidence!100)

(declare-fun e!4504 () Bool)

(declare-fun inv!279 (EqEvidence!100) Bool)

(assert (=> start!1512 (and (inv!279 thiss!1146) e!4504)))

(declare-fun that!322 () EqEvidence!100)

(declare-fun e!4503 () Bool)

(assert (=> start!1512 (and (inv!279 that!322) e!4503)))

(assert (=> b!7862 (= e!4504 (and tp!1071 tp!1074 tp!1070))))

(assert (=> b!7863 (= e!4503 (and tp!1075 tp!1072 tp!1073))))

(assert (= start!1512 b!7862))

(assert (= start!1512 b!7863))

(declare-fun m!10707 () Bool)

(assert (=> start!1512 m!10707))

(declare-fun m!10709 () Bool)

(assert (=> start!1512 m!10709))

(push 1)

(assert (not start!1512))

(assert (not b_next!1327))

(assert b_and!2565)

(assert (not b_next!1321))

(assert b_and!2559)

(assert (not b_next!1325))

(assert b_and!2561)

(assert b_and!2555)

(assert (not b_next!1331))

(assert b_and!2563)

(assert (not b_next!1323))

(assert b_and!2557)

(assert (not b_next!1329))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1327))

(assert b_and!2565)

(assert (not b_next!1321))

(assert b_and!2559)

(assert (not b_next!1325))

(assert b_and!2561)

(assert b_and!2555)

(assert (not b_next!1331))

(assert b_and!2563)

(assert (not b_next!1323))

(assert b_and!2557)

(assert (not b_next!1329))

(check-sat)

(pop 1)

