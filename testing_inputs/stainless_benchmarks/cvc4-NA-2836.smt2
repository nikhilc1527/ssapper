; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14760 () Bool)

(assert start!14760)

(assert (=> start!14760 false))

(assert (=> start!14760 true))

(push 1)

(check-sat)

(pop 1)

