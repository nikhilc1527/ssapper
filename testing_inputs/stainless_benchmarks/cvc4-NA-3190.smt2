; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15648 () Bool)

(assert start!15648)

(declare-datatypes () ((Unit!1485 (Unit!1486))))

(declare-fun res!51150 () Unit!1485)

(declare-fun u!5 () Unit!1485)

(assert (=> start!15648 (= res!51150 u!5)))

(assert (=> start!15648 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

