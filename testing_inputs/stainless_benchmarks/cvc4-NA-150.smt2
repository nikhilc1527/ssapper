; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!950 () Bool)

(assert start!950)

(declare-fun b!6092 () Bool)

(declare-fun b_free!129 () Bool)

(declare-fun b_next!237 () Bool)

(assert (=> b!6092 (= b_free!129 (not b_next!237))))

(declare-fun tp!324 () Bool)

(declare-fun b_and!1139 () Bool)

(assert (=> b!6092 (= tp!324 b_and!1139)))

(declare-fun b_free!131 () Bool)

(declare-fun b_next!239 () Bool)

(assert (=> b!6092 (= b_free!131 (not b_next!239))))

(declare-fun tp!327 () Bool)

(declare-fun b_and!1141 () Bool)

(assert (=> b!6092 (= tp!327 b_and!1141)))

(declare-fun b_free!133 () Bool)

(declare-fun b_next!241 () Bool)

(assert (=> b!6092 (= b_free!133 (not b_next!241))))

(declare-fun tp!328 () Bool)

(declare-fun b_and!1143 () Bool)

(assert (=> b!6092 (= tp!328 b_and!1143)))

(declare-fun b!6093 () Bool)

(declare-fun b_free!135 () Bool)

(declare-fun b_next!243 () Bool)

(assert (=> b!6093 (= b_free!135 (not b_next!243))))

(declare-fun tp!326 () Bool)

(declare-fun b_and!1145 () Bool)

(assert (=> b!6093 (= tp!326 b_and!1145)))

(declare-fun b_free!137 () Bool)

(declare-fun b_next!245 () Bool)

(assert (=> b!6093 (= b_free!137 (not b_next!245))))

(declare-fun tp!325 () Bool)

(declare-fun b_and!1147 () Bool)

(assert (=> b!6093 (= tp!325 b_and!1147)))

(declare-datatypes () ((Parenthesis!12 (CloseParenthesis!11) (OpenParenthesis!11))))

(declare-datatypes () ((List!111 (Nil!109) (Cons!108 (head!326 Parenthesis!12) (tail!338 List!111)))))

(declare-fun lt!1336 () List!111)

(declare-datatypes () ((Tree!27 (Branch!18 (left!272 Tree!27) (right!275 Tree!27)) (Leaf!100 (value!1269 Parenthesis!12)))))

(declare-fun tree!30 () Tree!27)

(declare-fun toList!28 (Tree!27) List!111)

(assert (=> start!950 (= lt!1336 (toList!28 tree!30))))

(assert (=> start!950 false))

(assert (=> start!950 true))

(declare-datatypes () ((Balance!21 (Balance!22 (extraOpen!51 Int) (extraClose!51 Int)))))

(declare-datatypes () ((EqEvidence!14 (EqEvidence!15 (x!3131 Int) (y!412 Int) (evidence!74 Int)))))

(declare-fun thiss!1013 () EqEvidence!14)

(declare-fun e!3605 () Bool)

(declare-fun inv!215 (EqEvidence!14) Bool)

(assert (=> start!950 (and (inv!215 thiss!1013) e!3605)))

(declare-datatypes () ((EqProof!8 (EqProof!9 (x!3132 Int) (y!413 Int)))))

(declare-fun that!277 () EqProof!8)

(declare-fun e!3604 () Bool)

(declare-fun inv!216 (EqProof!8) Bool)

(assert (=> start!950 (and (inv!216 that!277) e!3604)))

(assert (=> b!6092 (= e!3605 (and tp!324 tp!327 tp!328))))

(assert (=> b!6093 (= e!3604 (and tp!326 tp!325))))

(assert (= start!950 b!6092))

(assert (= start!950 b!6093))

(declare-fun m!8779 () Bool)

(assert (=> start!950 m!8779))

(declare-fun m!8781 () Bool)

(assert (=> start!950 m!8781))

(declare-fun m!8783 () Bool)

(assert (=> start!950 m!8783))

(push 1)

(assert (not b_next!245))

(assert (not start!950))

(assert b_and!1147)

(assert (not b_next!237))

(assert (not b_next!243))

(assert (not b_next!239))

(assert b_and!1139)

(assert (not b_next!241))

(assert b_and!1141)

(assert b_and!1145)

(assert b_and!1143)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!245))

(assert b_and!1147)

(assert (not b_next!237))

(assert (not b_next!243))

(assert (not b_next!239))

(assert b_and!1139)

(assert (not b_next!241))

(assert b_and!1141)

(assert b_and!1145)

(assert b_and!1143)

(check-sat)

(pop 1)

