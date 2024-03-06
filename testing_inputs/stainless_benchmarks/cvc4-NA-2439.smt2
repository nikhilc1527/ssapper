; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13874 () Bool)

(assert start!13874)

(assert (=> start!13874 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

