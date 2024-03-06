; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14798 () Bool)

(assert start!14798)

(assert (=> start!14798 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

