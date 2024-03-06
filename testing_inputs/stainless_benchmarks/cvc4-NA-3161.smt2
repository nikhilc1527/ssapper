; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15544 () Bool)

(assert start!15544)

(declare-fun n!1949 () Int)

(declare-fun res!49820 () Int)

(assert (=> start!15544 (and (< n!1949 0) (= res!49820 (- n!1949)) (or (< res!49820 0) (not (= res!49820 (ite (= n!1949 (- 42)) 0 res!49820)))))))

(assert (=> start!15544 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

