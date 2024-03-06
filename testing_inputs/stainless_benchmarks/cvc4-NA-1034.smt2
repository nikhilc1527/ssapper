; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7626 () Bool)

(assert start!7626)

(declare-datatypes () ((IntSet!37 (Empty!162) (Node!123 (left!1153 IntSet!37) (elem!223 (_ BitVec 32)) (right!1156 IntSet!37)))))

(declare-fun thiss!7690 () IntSet!37)

(assert (=> start!7626 false))

(declare-fun e!28628 () Bool)

(declare-fun inv!977 (IntSet!37) Bool)

(assert (=> start!7626 (and (inv!977 thiss!7690) e!28628)))

(declare-fun tp!15404 () Bool)

(declare-fun b!54570 () Bool)

(declare-fun tp!15403 () Bool)

(assert (=> b!54570 (= e!28628 (and (inv!977 (left!1153 thiss!7690)) tp!15403 (inv!977 (right!1156 thiss!7690)) tp!15404))))

(assert (= (and start!7626 (is-Node!123 thiss!7690)) b!54570))

(declare-fun m!58876 () Bool)

(assert (=> start!7626 m!58876))

(declare-fun m!58878 () Bool)

(assert (=> b!54570 m!58878))

(declare-fun m!58880 () Bool)

(assert (=> b!54570 m!58880))

(push 1)

(assert (not b!54570))

(assert (not start!7626))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

