; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13016 () Bool)

(assert start!13016)

(assert (=> start!13016 false))

(push 1)

(check-sat)

(pop 1)

