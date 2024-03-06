; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2728 () Bool)

(assert start!2728)

(assert (=> start!2728 false))

(declare-datatypes () ((Tree!92 (Leaf!174) (Node!23 (left!590 Tree!92) (value!1509 Int) (right!593 Tree!92)))))

(declare-fun thiss!2467 () Tree!92)

(declare-fun e!7330 () Bool)

(declare-fun inv!443 (Tree!92) Bool)

(assert (=> start!2728 (and (inv!443 thiss!2467) e!7330)))

(assert (=> start!2728 true))

(declare-fun tp!3267 () Bool)

(declare-fun tp!3266 () Bool)

(declare-fun b!13368 () Bool)

(assert (=> b!13368 (= e!7330 (and (inv!443 (left!590 thiss!2467)) tp!3266 (inv!443 (right!593 thiss!2467)) tp!3267))))

(assert (= (and start!2728 (is-Node!23 thiss!2467)) b!13368))

(declare-fun m!16957 () Bool)

(assert (=> start!2728 m!16957))

(declare-fun m!16959 () Bool)

(assert (=> b!13368 m!16959))

(declare-fun m!16961 () Bool)

(assert (=> b!13368 m!16961))

(push 1)

(assert (not start!2728))

(assert (not b!13368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

