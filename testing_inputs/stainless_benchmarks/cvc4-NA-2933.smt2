; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14978 () Bool)

(assert start!14978)

(assert (=> start!14978 false))

(push 1)

(check-sat)

(pop 1)

