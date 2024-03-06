; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2590 () Bool)

(assert start!2590)

(declare-fun b_free!2019 () Bool)

(declare-fun b_next!4717 () Bool)

(assert (=> start!2590 (= b_free!2019 (not b_next!4717))))

(declare-fun tp!3200 () Bool)

(declare-fun b_and!7065 () Bool)

(assert (=> start!2590 (= tp!3200 b_and!7065)))

(declare-datatypes () ((Parenthesis!75 (CloseParenthesis!74) (OpenParenthesis!74))))

(declare-datatypes () ((List!298 (Nil!296) (Cons!295 (head!513 Parenthesis!75) (tail!525 List!298)))))

(declare-fun lt!1847 () List!298)

(declare-datatypes () ((Tree!76 (Branch!67 (left!542 Tree!76) (right!545 Tree!76)) (Leaf!149 (value!1318 Parenthesis!75)))))

(declare-fun tree!37 () Tree!76)

(declare-fun toList!76 (Tree!76) List!298)

(assert (=> start!2590 (= lt!1847 (toList!76 tree!37))))

(declare-datatypes () ((Balance!387 (Balance!388 (extraOpen!234 Int) (extraClose!234 Int)))))

(declare-datatypes () ((List!299 (Nil!297) (Cons!296 (head!514 Balance!387) (tail!526 List!299)))))

(declare-fun lt!1846 () List!299)

(declare-fun f!740 () Int)

(declare-datatypes () ((Tree!77 (Branch!68 (left!543 Tree!77) (right!546 Tree!77)) (Leaf!150 (value!1319 Balance!387)))))

(declare-fun toList!77 (Tree!77) List!299)

(declare-fun map!162 (Tree!76 Int) Tree!77)

(assert (=> start!2590 (= lt!1846 (toList!77 (map!162 tree!37 f!740)))))

(assert (=> start!2590 false))

(assert (=> start!2590 true))

(assert (=> start!2590 tp!3200))

(declare-fun bs!3409 () Bool)

(assert (= bs!3409 start!2590))

(declare-fun m!15941 () Bool)

(assert (=> bs!3409 m!15941))

(declare-fun m!15943 () Bool)

(assert (=> bs!3409 m!15943))

(assert (=> bs!3409 m!15943))

(declare-fun m!15945 () Bool)

(assert (=> bs!3409 m!15945))

(push 1)

(assert (not start!2590))

(assert b_and!7065)

(assert (not b_next!4717))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7065)

(assert (not b_next!4717))

(check-sat)

(pop 1)

