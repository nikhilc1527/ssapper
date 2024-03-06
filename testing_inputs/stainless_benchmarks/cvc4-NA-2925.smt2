; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14962 () Bool)

(assert start!14962)

(assert (=> start!14962 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

