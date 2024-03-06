; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14328 () Bool)

(assert start!14328)

(assert (=> start!14328 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

