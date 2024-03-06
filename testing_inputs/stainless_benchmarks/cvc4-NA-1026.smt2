; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7580 () Bool)

(assert start!7580)

(assert (=> start!7580 false))

(declare-datatypes () ((IntSet!29 (Empty!154) (Node!115 (left!1145 IntSet!29) (elem!215 (_ BitVec 32)) (right!1148 IntSet!29)))))

(declare-fun thiss!7664 () IntSet!29)

(declare-fun e!28397 () Bool)

(declare-fun inv!977 (IntSet!29) Bool)

(assert (=> start!7580 (and (inv!977 thiss!7664) e!28397)))

(assert (=> start!7580 true))

(declare-fun tp!15277 () Bool)

(declare-fun b!54269 () Bool)

(declare-fun tp!15278 () Bool)

(assert (=> b!54269 (= e!28397 (and (inv!977 (left!1145 thiss!7664)) tp!15277 (inv!977 (right!1148 thiss!7664)) tp!15278))))

(assert (= (and start!7580 (is-Node!115 thiss!7664)) b!54269))

(declare-fun m!58192 () Bool)

(assert (=> start!7580 m!58192))

(declare-fun m!58194 () Bool)

(assert (=> b!54269 m!58194))

(declare-fun m!58196 () Bool)

(assert (=> b!54269 m!58196))

(push 1)

(assert (not start!7580))

(assert (not b!54269))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

