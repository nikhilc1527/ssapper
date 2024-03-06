; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2730 () Bool)

(assert start!2730)

(assert (=> start!2730 false))

(declare-datatypes () ((Tree!93 (Leaf!175) (Node!24 (left!591 Tree!93) (value!1510 Int) (right!594 Tree!93)))))

(declare-fun thiss!2467 () Tree!93)

(declare-fun e!7333 () Bool)

(declare-fun inv!443 (Tree!93) Bool)

(assert (=> start!2730 (and (inv!443 thiss!2467) e!7333)))

(assert (=> start!2730 true))

(declare-fun tp!3272 () Bool)

(declare-fun tp!3273 () Bool)

(declare-fun b!13371 () Bool)

(assert (=> b!13371 (= e!7333 (and (inv!443 (left!591 thiss!2467)) tp!3272 (inv!443 (right!594 thiss!2467)) tp!3273))))

(assert (= (and start!2730 (is-Node!24 thiss!2467)) b!13371))

(declare-fun m!16963 () Bool)

(assert (=> start!2730 m!16963))

(declare-fun m!16965 () Bool)

(assert (=> b!13371 m!16965))

(declare-fun m!16967 () Bool)

(assert (=> b!13371 m!16967))

(push 1)

(assert (not b!13371))

(assert (not start!2730))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

