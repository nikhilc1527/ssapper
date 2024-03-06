; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14340 () Bool)

(assert start!14340)

(assert (=> start!14340 false))

(push 1)

(check-sat)

(pop 1)

