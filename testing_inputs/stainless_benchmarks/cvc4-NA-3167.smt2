; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15564 () Bool)

(assert start!15564)

(declare-datatypes () ((List!908 (ListExt!10 (__x!414 Int)) (Cons!844 (head!1195 (_ BitVec 32)) (tail!1190 List!908)) (Nil!846))))

(declare-fun list!1116 () List!908)

(assert (=> start!15564 (and (not (is-Cons!844 list!1116)) (not (is-Nil!846 list!1116)))))

(assert (=> start!15564 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

