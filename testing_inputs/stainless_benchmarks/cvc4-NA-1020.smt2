; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7548 () Bool)

(assert start!7548)

(declare-datatypes () ((IntSet!24 (Empty!149) (Node!110 (left!1139 IntSet!24) (elem!210 (_ BitVec 32)) (right!1142 IntSet!24)))))

(declare-fun thiss!7626 () IntSet!24)

(declare-fun thiss!7627 () IntSet!24)

(assert (=> start!7548 (and (is-Node!110 thiss!7626) (= thiss!7627 thiss!7626) (not (is-Node!110 thiss!7627)))))

(declare-fun e!28234 () Bool)

(declare-fun inv!977 (IntSet!24) Bool)

(assert (=> start!7548 (and (inv!977 thiss!7626) e!28234)))

(declare-fun e!28233 () Bool)

(assert (=> start!7548 (and (inv!977 thiss!7627) e!28233)))

(declare-fun tp!15171 () Bool)

(declare-fun b!54062 () Bool)

(declare-fun tp!15173 () Bool)

(assert (=> b!54062 (= e!28234 (and (inv!977 (left!1139 thiss!7626)) tp!15171 (inv!977 (right!1142 thiss!7626)) tp!15173))))

(declare-fun b!54063 () Bool)

(declare-fun tp!15172 () Bool)

(declare-fun tp!15174 () Bool)

(assert (=> b!54063 (= e!28233 (and (inv!977 (left!1139 thiss!7627)) tp!15174 (inv!977 (right!1142 thiss!7627)) tp!15172))))

(assert (= (and start!7548 (is-Node!110 thiss!7626)) b!54062))

(assert (= (and start!7548 (is-Node!110 thiss!7627)) b!54063))

(declare-fun m!57774 () Bool)

(assert (=> start!7548 m!57774))

(declare-fun m!57776 () Bool)

(assert (=> start!7548 m!57776))

(declare-fun m!57778 () Bool)

(assert (=> b!54062 m!57778))

(declare-fun m!57780 () Bool)

(assert (=> b!54062 m!57780))

(declare-fun m!57782 () Bool)

(assert (=> b!54063 m!57782))

(declare-fun m!57784 () Bool)

(assert (=> b!54063 m!57784))

(push 1)

(assert (not b!54062))

(assert (not start!7548))

(assert (not b!54063))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

