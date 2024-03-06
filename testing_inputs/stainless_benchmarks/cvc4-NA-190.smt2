; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1400 () Bool)

(assert start!1400)

(declare-fun b!7431 () Bool)

(declare-fun b_free!481 () Bool)

(declare-fun b_next!1037 () Bool)

(assert (=> b!7431 (= b_free!481 (not b_next!1037))))

(declare-fun tp!857 () Bool)

(declare-fun b_and!2149 () Bool)

(assert (=> b!7431 (= tp!857 b_and!2149)))

(declare-fun b_free!483 () Bool)

(declare-fun b_next!1039 () Bool)

(assert (=> b!7431 (= b_free!483 (not b_next!1039))))

(declare-fun tp!854 () Bool)

(declare-fun b_and!2151 () Bool)

(assert (=> b!7431 (= tp!854 b_and!2151)))

(declare-fun b_free!485 () Bool)

(declare-fun b_next!1041 () Bool)

(assert (=> b!7431 (= b_free!485 (not b_next!1041))))

(declare-fun tp!859 () Bool)

(declare-fun b_and!2153 () Bool)

(assert (=> b!7431 (= tp!859 b_and!2153)))

(declare-fun b!7432 () Bool)

(declare-fun b_free!487 () Bool)

(declare-fun b_next!1043 () Bool)

(assert (=> b!7432 (= b_free!487 (not b_next!1043))))

(declare-fun tp!855 () Bool)

(declare-fun b_and!2155 () Bool)

(assert (=> b!7432 (= tp!855 b_and!2155)))

(declare-fun b_free!489 () Bool)

(declare-fun b_next!1045 () Bool)

(assert (=> b!7432 (= b_free!489 (not b_next!1045))))

(declare-fun tp!856 () Bool)

(declare-fun b_and!2157 () Bool)

(assert (=> b!7432 (= tp!856 b_and!2157)))

(declare-fun b_free!491 () Bool)

(declare-fun b_next!1047 () Bool)

(assert (=> b!7432 (= b_free!491 (not b_next!1047))))

(declare-fun tp!858 () Bool)

(declare-fun b_and!2159 () Bool)

(assert (=> b!7432 (= tp!858 b_and!2159)))

(assert (=> start!1400 false))

(assert (=> start!1400 true))

(declare-datatypes () ((Balance!99 (Balance!100 (extraOpen!90 Int) (extraClose!90 Int)))))

(declare-datatypes () ((EqEvidence!76 (EqEvidence!77 (x!4041 Int) (y!466 Int) (evidence!105 Int)))))

(declare-fun thiss!1123 () EqEvidence!76)

(declare-fun e!4286 () Bool)

(declare-fun inv!261 (EqEvidence!76) Bool)

(assert (=> start!1400 (and (inv!261 thiss!1123) e!4286)))

(declare-fun that!301 () EqEvidence!76)

(declare-fun e!4285 () Bool)

(assert (=> start!1400 (and (inv!261 that!301) e!4285)))

(assert (=> b!7431 (= e!4286 (and tp!857 tp!854 tp!859))))

(assert (=> b!7432 (= e!4285 (and tp!855 tp!856 tp!858))))

(assert (= start!1400 b!7431))

(assert (= start!1400 b!7432))

(declare-fun m!10299 () Bool)

(assert (=> start!1400 m!10299))

(declare-fun m!10301 () Bool)

(assert (=> start!1400 m!10301))

(push 1)

(assert (not b_next!1037))

(assert b_and!2149)

(assert b_and!2153)

(assert b_and!2151)

(assert (not b_next!1047))

(assert (not b_next!1045))

(assert b_and!2159)

(assert b_and!2157)

(assert (not b_next!1041))

(assert (not b_next!1043))

(assert b_and!2155)

(assert (not start!1400))

(assert (not b_next!1039))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1037))

(assert b_and!2149)

(assert b_and!2153)

(assert b_and!2151)

(assert (not b_next!1047))

(assert (not b_next!1045))

(assert b_and!2159)

(assert b_and!2157)

(assert (not b_next!1041))

(assert (not b_next!1043))

(assert b_and!2155)

(assert (not b_next!1039))

(check-sat)

(pop 1)

