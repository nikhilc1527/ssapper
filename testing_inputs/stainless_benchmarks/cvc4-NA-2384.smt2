; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13760 () Bool)

(assert start!13760)

(assert (=> start!13760 false))

(assert (=> start!13760 true))

(push 1)

(check-sat)

(pop 1)

