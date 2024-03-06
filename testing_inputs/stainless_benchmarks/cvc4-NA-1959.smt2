; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12866 () Bool)

(assert start!12866)

(assert (=> start!12866 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

