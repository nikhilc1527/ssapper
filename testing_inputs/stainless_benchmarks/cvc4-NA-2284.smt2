; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13542 () Bool)

(assert start!13542)

(declare-datatypes () ((P!21 (Charlie!21) (Alice!21) (Bob!21))))

(declare-datatypes () ((S!61 (S!62 (who!821 P!21) (amount!821 Int)))))

(declare-fun x$3!236 () S!61)

(assert (=> start!13542 (< (amount!821 x$3!236) 0)))

(assert (=> start!13542 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

