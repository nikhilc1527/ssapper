; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13522 () Bool)

(assert start!13522)

(assert (=> start!13522 false))

(assert (=> start!13522 true))

(push 1)

(check-sat)

(pop 1)

