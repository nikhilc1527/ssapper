; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!906 () Bool)

(assert start!906)

(declare-fun b!5948 () Bool)

(declare-fun b_free!105 () Bool)

(declare-fun b_next!157 () Bool)

(assert (=> b!5948 (= b_free!105 (not b_next!157))))

(declare-fun tp!290 () Bool)

(declare-fun b_and!1055 () Bool)

(assert (=> b!5948 (= tp!290 b_and!1055)))

(declare-fun b_free!107 () Bool)

(declare-fun b_next!159 () Bool)

(assert (=> b!5948 (= b_free!107 (not b_next!159))))

(declare-fun tp!291 () Bool)

(declare-fun b_and!1057 () Bool)

(assert (=> b!5948 (= tp!291 b_and!1057)))

(declare-fun b_free!109 () Bool)

(declare-fun b_next!161 () Bool)

(assert (=> b!5948 (= b_free!109 (not b_next!161))))

(declare-fun tp!292 () Bool)

(declare-fun b_and!1059 () Bool)

(assert (=> b!5948 (= tp!292 b_and!1059)))

(declare-fun b!5949 () Bool)

(declare-fun b_free!111 () Bool)

(declare-fun b_next!163 () Bool)

(assert (=> b!5949 (= b_free!111 (not b_next!163))))

(declare-fun tp!293 () Bool)

(declare-fun b_and!1061 () Bool)

(assert (=> b!5949 (= tp!293 b_and!1061)))

(declare-fun b_free!113 () Bool)

(declare-fun b_next!165 () Bool)

(assert (=> b!5949 (= b_free!113 (not b_next!165))))

(declare-fun tp!295 () Bool)

(declare-fun b_and!1063 () Bool)

(assert (=> b!5949 (= tp!295 b_and!1063)))

(declare-fun b_free!115 () Bool)

(declare-fun b_next!167 () Bool)

(assert (=> b!5949 (= b_free!115 (not b_next!167))))

(declare-fun tp!294 () Bool)

(declare-fun b_and!1065 () Bool)

(assert (=> b!5949 (= tp!294 b_and!1065)))

(declare-datatypes () ((Parenthesis!10 (CloseParenthesis!9) (OpenParenthesis!9))))

(declare-datatypes () ((List!108 (Nil!106) (Cons!105 (head!323 Parenthesis!10) (tail!335 List!108)))))

(declare-fun lt!1306 () List!108)

(declare-datatypes () ((Tree!24 (Branch!15 (left!265 Tree!24) (right!268 Tree!24)) (Leaf!97 (value!1266 Parenthesis!10)))))

(declare-fun tree!30 () Tree!24)

(declare-fun toList!25 (Tree!24) List!108)

(assert (=> start!906 (= lt!1306 (toList!25 tree!30))))

(assert (=> start!906 false))

(assert (=> start!906 true))

(declare-datatypes () ((Balance!17 (Balance!18 (extraOpen!49 Int) (extraClose!49 Int)))))

(declare-datatypes () ((EqEvidence!10 (EqEvidence!11 (x!3067 Int) (y!406 Int) (evidence!72 Int)))))

(declare-fun thiss!1014 () EqEvidence!10)

(declare-fun e!3501 () Bool)

(declare-fun inv!213 (EqEvidence!10) Bool)

(assert (=> start!906 (and (inv!213 thiss!1014) e!3501)))

(declare-fun that!266 () EqEvidence!10)

(declare-fun e!3502 () Bool)

(assert (=> start!906 (and (inv!213 that!266) e!3502)))

(assert (=> b!5948 (= e!3501 (and tp!290 tp!291 tp!292))))

(assert (=> b!5949 (= e!3502 (and tp!293 tp!295 tp!294))))

(assert (= start!906 b!5948))

(assert (= start!906 b!5949))

(declare-fun m!8503 () Bool)

(assert (=> start!906 m!8503))

(declare-fun m!8505 () Bool)

(assert (=> start!906 m!8505))

(declare-fun m!8507 () Bool)

(assert (=> start!906 m!8507))

(push 1)

(assert b_and!1057)

(assert (not b_next!159))

(assert b_and!1065)

(assert b_and!1055)

(assert (not b_next!163))

(assert b_and!1061)

(assert b_and!1059)

(assert b_and!1063)

(assert (not start!906))

(assert (not b_next!165))

(assert (not b_next!157))

(assert (not b_next!161))

(assert (not b_next!167))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1057)

(assert (not b_next!159))

(assert b_and!1065)

(assert b_and!1055)

(assert (not b_next!163))

(assert b_and!1061)

(assert b_and!1059)

(assert b_and!1063)

(assert (not b_next!165))

(assert (not b_next!157))

(assert (not b_next!161))

(assert (not b_next!167))

(check-sat)

(pop 1)

