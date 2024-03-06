; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13866 () Bool)

(assert start!13866)

(assert (=> start!13866 false))

(push 1)

(check-sat)

(pop 1)

