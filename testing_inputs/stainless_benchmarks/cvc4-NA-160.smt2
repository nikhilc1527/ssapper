; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1058 () Bool)

(assert start!1058)

(declare-fun b!6383 () Bool)

(declare-fun b_free!203 () Bool)

(declare-fun b_next!437 () Bool)

(assert (=> b!6383 (= b_free!203 (not b_next!437))))

(declare-fun tp!440 () Bool)

(declare-fun b_and!1335 () Bool)

(assert (=> b!6383 (= tp!440 b_and!1335)))

(declare-fun b_free!205 () Bool)

(declare-fun b_next!439 () Bool)

(assert (=> b!6383 (= b_free!205 (not b_next!439))))

(declare-fun tp!438 () Bool)

(declare-fun b_and!1337 () Bool)

(assert (=> b!6383 (= tp!438 b_and!1337)))

(declare-fun b_free!207 () Bool)

(declare-fun b_next!441 () Bool)

(assert (=> b!6383 (= b_free!207 (not b_next!441))))

(declare-fun tp!442 () Bool)

(declare-fun b_and!1339 () Bool)

(assert (=> b!6383 (= tp!442 b_and!1339)))

(declare-fun b!6384 () Bool)

(declare-fun b_free!209 () Bool)

(declare-fun b_next!443 () Bool)

(assert (=> b!6384 (= b_free!209 (not b_next!443))))

(declare-fun tp!439 () Bool)

(declare-fun b_and!1341 () Bool)

(assert (=> b!6384 (= tp!439 b_and!1341)))

(declare-fun b_free!211 () Bool)

(declare-fun b_next!445 () Bool)

(assert (=> b!6384 (= b_free!211 (not b_next!445))))

(declare-fun tp!437 () Bool)

(declare-fun b_and!1343 () Bool)

(assert (=> b!6384 (= tp!437 b_and!1343)))

(declare-fun b_free!213 () Bool)

(declare-fun b_next!447 () Bool)

(assert (=> b!6384 (= b_free!213 (not b_next!447))))

(declare-fun tp!441 () Bool)

(declare-fun b_and!1345 () Bool)

(assert (=> b!6384 (= tp!441 b_and!1345)))

(assert (=> start!1058 false))

(assert (=> start!1058 true))

(declare-datatypes () ((Balance!39 (Balance!40 (extraOpen!60 Int) (extraClose!60 Int)))))

(declare-datatypes () ((EqEvidence!28 (EqEvidence!29 (x!3393 Int) (y!433 Int) (evidence!81 Int)))))

(declare-fun thiss!1206 () EqEvidence!28)

(declare-fun e!3793 () Bool)

(declare-fun inv!228 (EqEvidence!28) Bool)

(assert (=> start!1058 (and (inv!228 thiss!1206) e!3793)))

(declare-fun that!330 () EqEvidence!28)

(declare-fun e!3792 () Bool)

(assert (=> start!1058 (and (inv!228 that!330) e!3792)))

(assert (=> b!6383 (= e!3793 (and tp!440 tp!438 tp!442))))

(assert (=> b!6384 (= e!3792 (and tp!439 tp!437 tp!441))))

(assert (= start!1058 b!6383))

(assert (= start!1058 b!6384))

(declare-fun m!9177 () Bool)

(assert (=> start!1058 m!9177))

(declare-fun m!9179 () Bool)

(assert (=> start!1058 m!9179))

(push 1)

(assert (not b_next!441))

(assert b_and!1345)

(assert (not b_next!443))

(assert b_and!1337)

(assert b_and!1341)

(assert (not start!1058))

(assert b_and!1335)

(assert (not b_next!445))

(assert b_and!1339)

(assert (not b_next!437))

(assert (not b_next!447))

(assert (not b_next!439))

(assert b_and!1343)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!441))

(assert b_and!1345)

(assert (not b_next!443))

(assert b_and!1337)

(assert b_and!1341)

(assert b_and!1335)

(assert (not b_next!445))

(assert b_and!1339)

(assert (not b_next!437))

(assert (not b_next!447))

(assert (not b_next!439))

(assert b_and!1343)

(check-sat)

(pop 1)

