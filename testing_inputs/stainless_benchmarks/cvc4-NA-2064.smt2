; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13080 () Bool)

(assert start!13080)

(declare-datatypes () ((P!9 (Charlie!9) (Alice!9) (Bob!9))))

(declare-datatypes () ((S!37 (S!38 (who!313 P!9) (amount!313 Int)))))

(declare-fun x$2!55 () S!37)

(assert (=> start!13080 (>= (amount!313 x$2!55) 0)))

(assert (=> start!13080 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

