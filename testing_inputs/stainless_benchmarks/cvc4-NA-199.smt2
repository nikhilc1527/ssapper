; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1472 () Bool)

(assert start!1472)

(declare-fun b!7681 () Bool)

(declare-fun b_free!577 () Bool)

(declare-fun b_next!1217 () Bool)

(assert (=> b!7681 (= b_free!577 (not b_next!1217))))

(declare-fun tp!1003 () Bool)

(declare-fun b_and!2407 () Bool)

(assert (=> b!7681 (= tp!1003 b_and!2407)))

(declare-fun b_free!579 () Bool)

(declare-fun b_next!1219 () Bool)

(assert (=> b!7681 (= b_free!579 (not b_next!1219))))

(declare-fun tp!998 () Bool)

(declare-fun b_and!2409 () Bool)

(assert (=> b!7681 (= tp!998 b_and!2409)))

(declare-fun b_free!581 () Bool)

(declare-fun b_next!1221 () Bool)

(assert (=> b!7681 (= b_free!581 (not b_next!1221))))

(declare-fun tp!1000 () Bool)

(declare-fun b_and!2411 () Bool)

(assert (=> b!7681 (= tp!1000 b_and!2411)))

(declare-fun b!7682 () Bool)

(declare-fun b_free!583 () Bool)

(declare-fun b_next!1223 () Bool)

(assert (=> b!7682 (= b_free!583 (not b_next!1223))))

(declare-fun tp!1002 () Bool)

(declare-fun b_and!2413 () Bool)

(assert (=> b!7682 (= tp!1002 b_and!2413)))

(declare-fun b_free!585 () Bool)

(declare-fun b_next!1225 () Bool)

(assert (=> b!7682 (= b_free!585 (not b_next!1225))))

(declare-fun tp!1001 () Bool)

(declare-fun b_and!2415 () Bool)

(assert (=> b!7682 (= tp!1001 b_and!2415)))

(declare-fun b_free!587 () Bool)

(declare-fun b_next!1227 () Bool)

(assert (=> b!7682 (= b_free!587 (not b_next!1227))))

(declare-fun tp!999 () Bool)

(declare-fun b_and!2417 () Bool)

(assert (=> b!7682 (= tp!999 b_and!2417)))

(assert (=> start!1472 false))

(assert (=> start!1472 true))

(declare-datatypes () ((Balance!117 (Balance!118 (extraOpen!99 Int) (extraClose!99 Int)))))

(declare-datatypes () ((EqEvidence!92 (EqEvidence!93 (x!4194 Int) (y!479 Int) (evidence!113 Int)))))

(declare-fun thiss!1147 () EqEvidence!92)

(declare-fun e!4413 () Bool)

(declare-fun inv!274 (EqEvidence!92) Bool)

(assert (=> start!1472 (and (inv!274 thiss!1147) e!4413)))

(declare-fun that!309 () EqEvidence!92)

(declare-fun e!4414 () Bool)

(assert (=> start!1472 (and (inv!274 that!309) e!4414)))

(assert (=> b!7681 (= e!4413 (and tp!1003 tp!998 tp!1000))))

(assert (=> b!7682 (= e!4414 (and tp!1002 tp!1001 tp!999))))

(assert (= start!1472 b!7681))

(assert (= start!1472 b!7682))

(declare-fun m!10531 () Bool)

(assert (=> start!1472 m!10531))

(declare-fun m!10533 () Bool)

(assert (=> start!1472 m!10533))

(push 1)

(assert (not b_next!1221))

(assert b_and!2409)

(assert (not b_next!1225))

(assert (not b_next!1217))

(assert b_and!2411)

(assert b_and!2413)

(assert b_and!2417)

(assert b_and!2407)

(assert (not b_next!1227))

(assert (not b_next!1219))

(assert (not start!1472))

(assert b_and!2415)

(assert (not b_next!1223))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1221))

(assert b_and!2409)

(assert (not b_next!1225))

(assert (not b_next!1217))

(assert b_and!2411)

(assert b_and!2413)

(assert b_and!2417)

(assert b_and!2407)

(assert (not b_next!1227))

(assert (not b_next!1219))

(assert b_and!2415)

(assert (not b_next!1223))

(check-sat)

(pop 1)

