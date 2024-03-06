; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12760 () Bool)

(assert start!12760)

(assert (=> start!12760 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

