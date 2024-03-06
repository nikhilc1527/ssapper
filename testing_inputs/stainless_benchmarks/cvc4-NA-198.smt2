; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1470 () Bool)

(assert start!1470)

(declare-fun b!7675 () Bool)

(declare-fun b_free!565 () Bool)

(declare-fun b_next!1205 () Bool)

(assert (=> b!7675 (= b_free!565 (not b_next!1205))))

(declare-fun tp!982 () Bool)

(declare-fun b_and!2395 () Bool)

(assert (=> b!7675 (= tp!982 b_and!2395)))

(declare-fun b_free!567 () Bool)

(declare-fun b_next!1207 () Bool)

(assert (=> b!7675 (= b_free!567 (not b_next!1207))))

(declare-fun tp!980 () Bool)

(declare-fun b_and!2397 () Bool)

(assert (=> b!7675 (= tp!980 b_and!2397)))

(declare-fun b_free!569 () Bool)

(declare-fun b_next!1209 () Bool)

(assert (=> b!7675 (= b_free!569 (not b_next!1209))))

(declare-fun tp!983 () Bool)

(declare-fun b_and!2399 () Bool)

(assert (=> b!7675 (= tp!983 b_and!2399)))

(declare-fun b!7676 () Bool)

(declare-fun b_free!571 () Bool)

(declare-fun b_next!1211 () Bool)

(assert (=> b!7676 (= b_free!571 (not b_next!1211))))

(declare-fun tp!985 () Bool)

(declare-fun b_and!2401 () Bool)

(assert (=> b!7676 (= tp!985 b_and!2401)))

(declare-fun b_free!573 () Bool)

(declare-fun b_next!1213 () Bool)

(assert (=> b!7676 (= b_free!573 (not b_next!1213))))

(declare-fun tp!981 () Bool)

(declare-fun b_and!2403 () Bool)

(assert (=> b!7676 (= tp!981 b_and!2403)))

(declare-fun b_free!575 () Bool)

(declare-fun b_next!1215 () Bool)

(assert (=> b!7676 (= b_free!575 (not b_next!1215))))

(declare-fun tp!984 () Bool)

(declare-fun b_and!2405 () Bool)

(assert (=> b!7676 (= tp!984 b_and!2405)))

(assert (=> start!1470 false))

(assert (=> start!1470 true))

(declare-datatypes () ((Balance!115 (Balance!116 (extraOpen!98 Int) (extraClose!98 Int)))))

(declare-datatypes () ((EqEvidence!90 (EqEvidence!91 (x!4193 Int) (y!478 Int) (evidence!112 Int)))))

(declare-fun thiss!1147 () EqEvidence!90)

(declare-fun e!4407 () Bool)

(declare-fun inv!273 (EqEvidence!90) Bool)

(assert (=> start!1470 (and (inv!273 thiss!1147) e!4407)))

(declare-fun that!309 () EqEvidence!90)

(declare-fun e!4408 () Bool)

(assert (=> start!1470 (and (inv!273 that!309) e!4408)))

(assert (=> b!7675 (= e!4407 (and tp!982 tp!980 tp!983))))

(assert (=> b!7676 (= e!4408 (and tp!985 tp!981 tp!984))))

(assert (= start!1470 b!7675))

(assert (= start!1470 b!7676))

(declare-fun m!10527 () Bool)

(assert (=> start!1470 m!10527))

(declare-fun m!10529 () Bool)

(assert (=> start!1470 m!10529))

(push 1)

(assert (not b_next!1207))

(assert b_and!2403)

(assert (not start!1470))

(assert b_and!2401)

(assert b_and!2395)

(assert (not b_next!1215))

(assert b_and!2405)

(assert (not b_next!1213))

(assert (not b_next!1205))

(assert b_and!2399)

(assert (not b_next!1211))

(assert (not b_next!1209))

(assert b_and!2397)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1207))

(assert b_and!2403)

(assert b_and!2401)

(assert b_and!2395)

(assert (not b_next!1215))

(assert b_and!2405)

(assert (not b_next!1213))

(assert (not b_next!1205))

(assert b_and!2399)

(assert (not b_next!1211))

(assert (not b_next!1209))

(assert b_and!2397)

(check-sat)

(pop 1)

