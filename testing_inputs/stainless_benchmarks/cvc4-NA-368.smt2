; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2732 () Bool)

(assert start!2732)

(declare-fun value!1496 () Int)

(declare-datatypes () ((Tree!94 (Leaf!176) (Node!25 (left!592 Tree!94) (value!1511 Int) (right!595 Tree!94)))))

(declare-fun left!583 () Tree!94)

(declare-fun value!1495 () Int)

(declare-fun tree!126 () Tree!94)

(assert (=> start!2732 false))

(declare-fun e!7338 () Bool)

(declare-fun inv!443 (Tree!94) Bool)

(assert (=> start!2732 (and (inv!443 tree!126) e!7338)))

(declare-fun e!7339 () Bool)

(assert (=> start!2732 (and (inv!443 left!583) e!7339)))

(assert (=> start!2732 true))

(declare-fun tp!3283 () Bool)

(declare-fun b!13376 () Bool)

(declare-fun tp!3285 () Bool)

(assert (=> b!13376 (= e!7338 (and (inv!443 (left!592 tree!126)) tp!3285 (inv!443 (right!595 tree!126)) tp!3283))))

(declare-fun b!13377 () Bool)

(declare-fun tp!3284 () Bool)

(declare-fun tp!3282 () Bool)

(assert (=> b!13377 (= e!7339 (and (inv!443 (left!592 left!583)) tp!3282 (inv!443 (right!595 left!583)) tp!3284))))

(assert (= (and start!2732 (is-Node!25 tree!126)) b!13376))

(assert (= (and start!2732 (is-Node!25 left!583)) b!13377))

(declare-fun m!16969 () Bool)

(assert (=> start!2732 m!16969))

(declare-fun m!16971 () Bool)

(assert (=> start!2732 m!16971))

(declare-fun m!16973 () Bool)

(assert (=> b!13376 m!16973))

(declare-fun m!16975 () Bool)

(assert (=> b!13376 m!16975))

(declare-fun m!16977 () Bool)

(assert (=> b!13377 m!16977))

(declare-fun m!16979 () Bool)

(assert (=> b!13377 m!16979))

(push 1)

(assert (not b!13376))

(assert (not start!2732))

(assert (not b!13377))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

