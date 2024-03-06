; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13464 () Bool)

(assert start!13464)

(assert (=> start!13464 false))

(push 1)

(check-sat)

(pop 1)

