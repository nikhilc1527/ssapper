; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6402 () Bool)

(assert start!6402)

(declare-datatypes () ((Nat!217 (Zero!201) (Succ!198 (n!1354 Nat!217)))))

(declare-fun thiss!6198 () Nat!217)

(declare-fun x$2!243 () Int)

(assert (=> start!6402 (and (is-Zero!201 thiss!6198) (= x$2!243 0) (< x$2!243 0))))

(assert (=> start!6402 true))

(push 1)

(check-sat)

(pop 1)

