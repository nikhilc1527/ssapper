; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14062 () Bool)

(assert start!14062)

(assert (=> start!14062 false))

(push 1)

(check-sat)

(pop 1)

