; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13110 () Bool)

(assert start!13110)

(declare-datatypes () ((P!11 (Charlie!11) (Alice!11) (Bob!11))))

(declare-datatypes () ((S!41 (S!42 (who!353 P!11) (amount!353 Int)))))

(declare-fun x$2!582 () S!41)

(assert (=> start!13110 (>= (amount!353 x$2!582) 0)))

(assert (=> start!13110 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

