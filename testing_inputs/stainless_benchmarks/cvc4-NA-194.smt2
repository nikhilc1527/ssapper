; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1422 () Bool)

(assert start!1422)

(declare-fun b!7499 () Bool)

(declare-fun b_free!527 () Bool)

(declare-fun b_next!1111 () Bool)

(assert (=> b!7499 (= b_free!527 (not b_next!1111))))

(declare-fun tp!923 () Bool)

(declare-fun b_and!2255 () Bool)

(assert (=> b!7499 (= tp!923 b_and!2255)))

(declare-fun b_free!529 () Bool)

(declare-fun b_next!1113 () Bool)

(assert (=> b!7499 (= b_free!529 (not b_next!1113))))

(declare-fun tp!925 () Bool)

(declare-fun b_and!2257 () Bool)

(assert (=> b!7499 (= tp!925 b_and!2257)))

(declare-fun b_free!531 () Bool)

(declare-fun b_next!1115 () Bool)

(assert (=> b!7499 (= b_free!531 (not b_next!1115))))

(declare-fun tp!921 () Bool)

(declare-fun b_and!2259 () Bool)

(assert (=> b!7499 (= tp!921 b_and!2259)))

(declare-fun b!7500 () Bool)

(declare-fun b_free!533 () Bool)

(declare-fun b_next!1117 () Bool)

(assert (=> b!7500 (= b_free!533 (not b_next!1117))))

(declare-fun tp!922 () Bool)

(declare-fun b_and!2261 () Bool)

(assert (=> b!7500 (= tp!922 b_and!2261)))

(declare-fun b_free!535 () Bool)

(declare-fun b_next!1119 () Bool)

(assert (=> b!7500 (= b_free!535 (not b_next!1119))))

(declare-fun tp!924 () Bool)

(declare-fun b_and!2263 () Bool)

(assert (=> b!7500 (= tp!924 b_and!2263)))

(assert (=> start!1422 false))

(assert (=> start!1422 true))

(declare-datatypes () ((Balance!107 (Balance!108 (extraOpen!94 Int) (extraClose!94 Int)))))

(declare-datatypes () ((EqEvidence!84 (EqEvidence!85 (x!4075 Int) (y!471 Int) (evidence!109 Int)))))

(declare-fun thiss!1122 () EqEvidence!84)

(declare-fun e!4326 () Bool)

(declare-fun inv!266 (EqEvidence!84) Bool)

(assert (=> start!1422 (and (inv!266 thiss!1122) e!4326)))

(declare-datatypes () ((EqProof!40 (EqProof!41 (x!4076 Int) (y!472 Int)))))

(declare-fun that!302 () EqProof!40)

(declare-fun e!4327 () Bool)

(declare-fun inv!267 (EqProof!40) Bool)

(assert (=> start!1422 (and (inv!267 that!302) e!4327)))

(assert (=> b!7499 (= e!4326 (and tp!923 tp!925 tp!921))))

(assert (=> b!7500 (= e!4327 (and tp!922 tp!924))))

(assert (= start!1422 b!7499))

(assert (= start!1422 b!7500))

(declare-fun m!10363 () Bool)

(assert (=> start!1422 m!10363))

(declare-fun m!10365 () Bool)

(assert (=> start!1422 m!10365))

(push 1)

(assert b_and!2259)

(assert (not start!1422))

(assert (not b_next!1119))

(assert b_and!2257)

(assert b_and!2255)

(assert b_and!2263)

(assert (not b_next!1111))

(assert (not b_next!1117))

(assert (not b_next!1113))

(assert (not b_next!1115))

(assert b_and!2261)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2259)

(assert (not b_next!1119))

(assert b_and!2257)

(assert b_and!2255)

(assert b_and!2263)

(assert (not b_next!1111))

(assert (not b_next!1117))

(assert (not b_next!1113))

(assert (not b_next!1115))

(assert b_and!2261)

(check-sat)

(pop 1)

