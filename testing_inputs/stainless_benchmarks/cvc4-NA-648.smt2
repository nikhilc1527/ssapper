; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4646 () Bool)

(assert start!4646)

(declare-datatypes () ((Value!2 (IntValue!1 (i!412 Int)) (BoolValue!1 (b!35291 Bool)) (Error!3))))

(declare-fun v!654 () Value!2)

(assert (=> start!4646 (and (= v!654 Error!3) (not (is-Error!3 v!654)))))

(assert (=> start!4646 true))

(push 1)

(check-sat)

(pop 1)

