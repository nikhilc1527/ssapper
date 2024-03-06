; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14316 () Bool)

(assert start!14316)

(declare-datatypes () ((P!42 (Charlie!42) (Alice!42) (Bob!42))))

(declare-datatypes () ((S!103 (S!104 (who!1761 P!42) (amount!1761 Int)))))

(declare-fun x$3!249 () S!103)

(assert (=> start!14316 (>= (amount!1761 x$3!249) 0)))

(assert (=> start!14316 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

