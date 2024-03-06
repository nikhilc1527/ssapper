; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!904 () Bool)

(assert start!904)

(declare-fun b!5942 () Bool)

(declare-fun b_free!93 () Bool)

(declare-fun b_next!145 () Bool)

(assert (=> b!5942 (= b_free!93 (not b_next!145))))

(declare-fun tp!272 () Bool)

(declare-fun b_and!1043 () Bool)

(assert (=> b!5942 (= tp!272 b_and!1043)))

(declare-fun b_free!95 () Bool)

(declare-fun b_next!147 () Bool)

(assert (=> b!5942 (= b_free!95 (not b_next!147))))

(declare-fun tp!274 () Bool)

(declare-fun b_and!1045 () Bool)

(assert (=> b!5942 (= tp!274 b_and!1045)))

(declare-fun b_free!97 () Bool)

(declare-fun b_next!149 () Bool)

(assert (=> b!5942 (= b_free!97 (not b_next!149))))

(declare-fun tp!273 () Bool)

(declare-fun b_and!1047 () Bool)

(assert (=> b!5942 (= tp!273 b_and!1047)))

(declare-fun b!5943 () Bool)

(declare-fun b_free!99 () Bool)

(declare-fun b_next!151 () Bool)

(assert (=> b!5943 (= b_free!99 (not b_next!151))))

(declare-fun tp!275 () Bool)

(declare-fun b_and!1049 () Bool)

(assert (=> b!5943 (= tp!275 b_and!1049)))

(declare-fun b_free!101 () Bool)

(declare-fun b_next!153 () Bool)

(assert (=> b!5943 (= b_free!101 (not b_next!153))))

(declare-fun tp!277 () Bool)

(declare-fun b_and!1051 () Bool)

(assert (=> b!5943 (= tp!277 b_and!1051)))

(declare-fun b_free!103 () Bool)

(declare-fun b_next!155 () Bool)

(assert (=> b!5943 (= b_free!103 (not b_next!155))))

(declare-fun tp!276 () Bool)

(declare-fun b_and!1053 () Bool)

(assert (=> b!5943 (= tp!276 b_and!1053)))

(declare-datatypes () ((Parenthesis!9 (CloseParenthesis!8) (OpenParenthesis!8))))

(declare-datatypes () ((List!107 (Nil!105) (Cons!104 (head!322 Parenthesis!9) (tail!334 List!107)))))

(declare-fun lt!1303 () List!107)

(declare-datatypes () ((Tree!23 (Branch!14 (left!264 Tree!23) (right!267 Tree!23)) (Leaf!96 (value!1265 Parenthesis!9)))))

(declare-fun tree!30 () Tree!23)

(declare-fun toList!24 (Tree!23) List!107)

(assert (=> start!904 (= lt!1303 (toList!24 tree!30))))

(assert (=> start!904 false))

(assert (=> start!904 true))

(declare-datatypes () ((Balance!15 (Balance!16 (extraOpen!48 Int) (extraClose!48 Int)))))

(declare-datatypes () ((EqEvidence!8 (EqEvidence!9 (x!3066 Int) (y!405 Int) (evidence!71 Int)))))

(declare-fun thiss!1014 () EqEvidence!8)

(declare-fun e!3496 () Bool)

(declare-fun inv!212 (EqEvidence!8) Bool)

(assert (=> start!904 (and (inv!212 thiss!1014) e!3496)))

(declare-fun that!266 () EqEvidence!8)

(declare-fun e!3495 () Bool)

(assert (=> start!904 (and (inv!212 that!266) e!3495)))

(assert (=> b!5942 (= e!3496 (and tp!272 tp!274 tp!273))))

(assert (=> b!5943 (= e!3495 (and tp!275 tp!277 tp!276))))

(assert (= start!904 b!5942))

(assert (= start!904 b!5943))

(declare-fun m!8497 () Bool)

(assert (=> start!904 m!8497))

(declare-fun m!8499 () Bool)

(assert (=> start!904 m!8499))

(declare-fun m!8501 () Bool)

(assert (=> start!904 m!8501))

(push 1)

(assert (not b_next!151))

(assert b_and!1047)

(assert (not b_next!149))

(assert (not b_next!155))

(assert (not start!904))

(assert b_and!1043)

(assert b_and!1045)

(assert (not b_next!147))

(assert b_and!1053)

(assert b_and!1049)

(assert b_and!1051)

(assert (not b_next!145))

(assert (not b_next!153))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!151))

(assert b_and!1047)

(assert (not b_next!149))

(assert (not b_next!155))

(assert b_and!1043)

(assert b_and!1045)

(assert (not b_next!147))

(assert b_and!1053)

(assert b_and!1049)

(assert b_and!1051)

(assert (not b_next!145))

(assert (not b_next!153))

(check-sat)

(pop 1)

