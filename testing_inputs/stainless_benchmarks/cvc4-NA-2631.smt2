; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14288 () Bool)

(assert start!14288)

(declare-datatypes () ((P!41 (Charlie!41) (Alice!41) (Bob!41))))

(declare-datatypes () ((S!101 (S!102 (who!1726 P!41) (amount!1726 Int)))))

(declare-fun x$3!248 () S!101)

(assert (=> start!14288 (< (amount!1726 x$3!248) 0)))

(assert (=> start!14288 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

