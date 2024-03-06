; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10098 () Bool)

(assert start!10098)

(declare-fun n!1686 () Int)

(declare-fun res!35594 () Int)

(assert (=> start!10098 (and (< n!1686 0) (= res!35594 (- n!1686)) (or (< res!35594 0) (not (= res!35594 (ite (= n!1686 (- 42)) 42 (ite (= n!1686 (- 1)) 1 (ite (= n!1686 0) 0 (ite (= n!1686 1) 1 (ite (= n!1686 42) 42 res!35594)))))))))))

(assert (=> start!10098 true))

(push 1)

(check-sat)

(pop 1)

