; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4760 () Bool)

(assert start!4760)

(declare-datatypes () ((Nat!27 (Zero!11) (Succ!8 (n!1089 Nat!27)))))

(declare-fun v!1310 () Nat!27)

(assert (=> start!4760 (and (= v!1310 Zero!11) (not (is-Zero!11 v!1310)))))

(assert (=> start!4760 true))

(push 1)

(check-sat)

(pop 1)

