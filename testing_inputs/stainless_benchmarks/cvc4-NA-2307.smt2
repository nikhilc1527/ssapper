; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13588 () Bool)

(assert start!13588)

(assert (=> start!13588 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

