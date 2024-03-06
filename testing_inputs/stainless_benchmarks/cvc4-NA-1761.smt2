; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12094 () Bool)

(assert start!12094)

(declare-fun res!47556 () Int)

(assert (=> start!12094 (and (= res!47556 3) (not (= res!47556 3)))))

(assert (=> start!12094 true))

(push 1)

(check-sat)

(pop 1)

