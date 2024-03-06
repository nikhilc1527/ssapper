; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13540 () Bool)

(assert start!13540)

(declare-datatypes () ((P!20 (Charlie!20) (Alice!20) (Bob!20))))

(declare-datatypes () ((S!59 (S!60 (who!816 P!20) (amount!816 Int)))))

(declare-fun x$3!236 () S!59)

(assert (=> start!13540 (>= (amount!816 x$3!236) 0)))

(assert (=> start!13540 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

