; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6386 () Bool)

(assert start!6386)

(declare-datatypes () ((Nat!213 (Zero!197) (Succ!194 (n!1350 Nat!213)))))

(declare-fun v!749 () Nat!213)

(assert (=> start!6386 (and (= v!749 (Succ!194 (Succ!194 Zero!197))) (not (is-Succ!194 v!749)))))

(assert (=> start!6386 true))

(push 1)

(check-sat)

(pop 1)

