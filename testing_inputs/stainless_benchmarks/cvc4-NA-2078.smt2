; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13108 () Bool)

(assert start!13108)

(declare-datatypes () ((P!10 (Charlie!10) (Alice!10) (Bob!10))))

(declare-datatypes () ((S!39 (S!40 (who!348 P!10) (amount!348 Int)))))

(declare-fun x$2!582 () S!39)

(assert (=> start!13108 (< (amount!348 x$2!582) 0)))

(assert (=> start!13108 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

