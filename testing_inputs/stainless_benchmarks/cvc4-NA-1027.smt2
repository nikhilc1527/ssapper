; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7582 () Bool)

(assert start!7582)

(assert (=> start!7582 false))

(declare-datatypes () ((IntSet!30 (Empty!155) (Node!116 (left!1146 IntSet!30) (elem!216 (_ BitVec 32)) (right!1149 IntSet!30)))))

(declare-fun thiss!7664 () IntSet!30)

(declare-fun e!28400 () Bool)

(declare-fun inv!977 (IntSet!30) Bool)

(assert (=> start!7582 (and (inv!977 thiss!7664) e!28400)))

(assert (=> start!7582 true))

(declare-fun tp!15284 () Bool)

(declare-fun b!54272 () Bool)

(declare-fun tp!15283 () Bool)

(assert (=> b!54272 (= e!28400 (and (inv!977 (left!1146 thiss!7664)) tp!15283 (inv!977 (right!1149 thiss!7664)) tp!15284))))

(assert (= (and start!7582 (is-Node!116 thiss!7664)) b!54272))

(declare-fun m!58198 () Bool)

(assert (=> start!7582 m!58198))

(declare-fun m!58200 () Bool)

(assert (=> b!54272 m!58200))

(declare-fun m!58202 () Bool)

(assert (=> b!54272 m!58202))

(push 1)

(assert (not b!54272))

(assert (not start!7582))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

