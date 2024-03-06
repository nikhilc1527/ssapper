; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!952 () Bool)

(assert start!952)

(declare-fun b!6098 () Bool)

(declare-fun b_free!139 () Bool)

(declare-fun b_next!247 () Bool)

(assert (=> b!6098 (= b_free!139 (not b_next!247))))

(declare-fun tp!340 () Bool)

(declare-fun b_and!1149 () Bool)

(assert (=> b!6098 (= tp!340 b_and!1149)))

(declare-fun b_free!141 () Bool)

(declare-fun b_next!249 () Bool)

(assert (=> b!6098 (= b_free!141 (not b_next!249))))

(declare-fun tp!342 () Bool)

(declare-fun b_and!1151 () Bool)

(assert (=> b!6098 (= tp!342 b_and!1151)))

(declare-fun b_free!143 () Bool)

(declare-fun b_next!251 () Bool)

(assert (=> b!6098 (= b_free!143 (not b_next!251))))

(declare-fun tp!343 () Bool)

(declare-fun b_and!1153 () Bool)

(assert (=> b!6098 (= tp!343 b_and!1153)))

(declare-fun b!6099 () Bool)

(declare-fun b_free!145 () Bool)

(declare-fun b_next!253 () Bool)

(assert (=> b!6099 (= b_free!145 (not b_next!253))))

(declare-fun tp!341 () Bool)

(declare-fun b_and!1155 () Bool)

(assert (=> b!6099 (= tp!341 b_and!1155)))

(declare-fun b_free!147 () Bool)

(declare-fun b_next!255 () Bool)

(assert (=> b!6099 (= b_free!147 (not b_next!255))))

(declare-fun tp!339 () Bool)

(declare-fun b_and!1157 () Bool)

(assert (=> b!6099 (= tp!339 b_and!1157)))

(declare-datatypes () ((Parenthesis!13 (CloseParenthesis!12) (OpenParenthesis!12))))

(declare-datatypes () ((List!112 (Nil!110) (Cons!109 (head!327 Parenthesis!13) (tail!339 List!112)))))

(declare-fun lt!1339 () List!112)

(declare-datatypes () ((Tree!28 (Branch!19 (left!273 Tree!28) (right!276 Tree!28)) (Leaf!101 (value!1270 Parenthesis!13)))))

(declare-fun tree!30 () Tree!28)

(declare-fun toList!29 (Tree!28) List!112)

(assert (=> start!952 (= lt!1339 (toList!29 tree!30))))

(assert (=> start!952 false))

(assert (=> start!952 true))

(declare-datatypes () ((Balance!23 (Balance!24 (extraOpen!52 Int) (extraClose!52 Int)))))

(declare-datatypes () ((EqEvidence!16 (EqEvidence!17 (x!3133 Int) (y!414 Int) (evidence!75 Int)))))

(declare-fun thiss!1013 () EqEvidence!16)

(declare-fun e!3611 () Bool)

(declare-fun inv!217 (EqEvidence!16) Bool)

(assert (=> start!952 (and (inv!217 thiss!1013) e!3611)))

(declare-datatypes () ((EqProof!10 (EqProof!11 (x!3134 Int) (y!415 Int)))))

(declare-fun that!277 () EqProof!10)

(declare-fun e!3610 () Bool)

(declare-fun inv!218 (EqProof!10) Bool)

(assert (=> start!952 (and (inv!218 that!277) e!3610)))

(assert (=> b!6098 (= e!3611 (and tp!340 tp!342 tp!343))))

(assert (=> b!6099 (= e!3610 (and tp!341 tp!339))))

(assert (= start!952 b!6098))

(assert (= start!952 b!6099))

(declare-fun m!8785 () Bool)

(assert (=> start!952 m!8785))

(declare-fun m!8787 () Bool)

(assert (=> start!952 m!8787))

(declare-fun m!8789 () Bool)

(assert (=> start!952 m!8789))

(push 1)

(assert (not b_next!253))

(assert b_and!1155)

(assert (not b_next!255))

(assert (not b_next!247))

(assert b_and!1153)

(assert (not b_next!251))

(assert b_and!1151)

(assert (not b_next!249))

(assert b_and!1149)

(assert (not start!952))

(assert b_and!1157)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!253))

(assert b_and!1155)

(assert (not b_next!255))

(assert (not b_next!247))

(assert b_and!1153)

(assert (not b_next!251))

(assert b_and!1151)

(assert (not b_next!249))

(assert b_and!1149)

(assert b_and!1157)

(check-sat)

(pop 1)

