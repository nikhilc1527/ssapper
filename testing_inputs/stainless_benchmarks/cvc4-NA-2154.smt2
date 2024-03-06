; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13278 () Bool)

(assert start!13278)

(assert (=> start!13278 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

