; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15646 () Bool)

(assert start!15646)

(declare-datatypes () ((Bool!11 (True!9) (False!9))))

(declare-fun res!51139 () Bool!11)

(assert (=> start!15646 (and (= res!51139 False!9) (not (= res!51139 True!9)))))

(assert (=> start!15646 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

