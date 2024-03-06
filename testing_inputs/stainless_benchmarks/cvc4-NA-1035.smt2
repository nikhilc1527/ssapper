; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7628 () Bool)

(assert start!7628)

(declare-fun elem!196 () (_ BitVec 32))

(declare-fun x!21411 () (_ BitVec 32))

(declare-datatypes () ((IntSet!38 (Empty!163) (Node!124 (left!1154 IntSet!38) (elem!224 (_ BitVec 32)) (right!1157 IntSet!38)))))

(declare-fun left!1124 () IntSet!38)

(declare-fun thiss!7690 () IntSet!38)

(assert (=> start!7628 false))

(declare-fun e!28634 () Bool)

(declare-fun inv!977 (IntSet!38) Bool)

(assert (=> start!7628 (and (inv!977 thiss!7690) e!28634)))

(declare-fun e!28633 () Bool)

(assert (=> start!7628 (and (inv!977 left!1124) e!28633)))

(assert (=> start!7628 true))

(declare-fun tp!15416 () Bool)

(declare-fun b!54575 () Bool)

(declare-fun tp!15415 () Bool)

(assert (=> b!54575 (= e!28634 (and (inv!977 (left!1154 thiss!7690)) tp!15416 (inv!977 (right!1157 thiss!7690)) tp!15415))))

(declare-fun b!54576 () Bool)

(declare-fun tp!15414 () Bool)

(declare-fun tp!15413 () Bool)

(assert (=> b!54576 (= e!28633 (and (inv!977 (left!1154 left!1124)) tp!15413 (inv!977 (right!1157 left!1124)) tp!15414))))

(assert (= (and start!7628 (is-Node!124 thiss!7690)) b!54575))

(assert (= (and start!7628 (is-Node!124 left!1124)) b!54576))

(declare-fun m!58882 () Bool)

(assert (=> start!7628 m!58882))

(declare-fun m!58884 () Bool)

(assert (=> start!7628 m!58884))

(declare-fun m!58886 () Bool)

(assert (=> b!54575 m!58886))

(declare-fun m!58888 () Bool)

(assert (=> b!54575 m!58888))

(declare-fun m!58890 () Bool)

(assert (=> b!54576 m!58890))

(declare-fun m!58892 () Bool)

(assert (=> b!54576 m!58892))

(push 1)

(assert (not b!54576))

(assert (not b!54575))

(assert (not start!7628))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

