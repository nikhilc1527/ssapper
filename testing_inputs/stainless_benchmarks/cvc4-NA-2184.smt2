; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13338 () Bool)

(assert start!13338)

(assert (=> start!13338 false))

(push 1)

(check-sat)

(pop 1)

