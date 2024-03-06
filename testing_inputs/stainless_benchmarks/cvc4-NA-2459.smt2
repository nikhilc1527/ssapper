; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13914 () Bool)

(assert start!13914)

(assert (=> start!13914 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

