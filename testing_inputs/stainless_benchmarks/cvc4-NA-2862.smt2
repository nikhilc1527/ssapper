; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14812 () Bool)

(assert start!14812)

(assert (=> start!14812 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

