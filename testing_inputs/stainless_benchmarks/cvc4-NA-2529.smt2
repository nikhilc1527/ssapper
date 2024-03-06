; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14080 () Bool)

(assert start!14080)

(assert (=> start!14080 false))

(push 1)

(check-sat)

(pop 1)

