; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6682 () Bool)

(assert start!6682)

(declare-datatypes () ((Nat!241 (Zero!225) (Succ!222 (n!1378 Nat!241)))))

(declare-fun v!1278 () Nat!241)

(assert (=> start!6682 (and (= v!1278 (Succ!222 Zero!225)) (not (is-Succ!222 v!1278)))))

(assert (=> start!6682 true))

(push 1)

(check-sat)

(pop 1)

