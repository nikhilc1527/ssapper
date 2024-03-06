; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14512 () Bool)

(assert start!14512)

(assert (=> start!14512 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

