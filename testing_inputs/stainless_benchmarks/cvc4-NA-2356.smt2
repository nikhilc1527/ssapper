; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13704 () Bool)

(assert start!13704)

(assert (=> start!13704 false))

(push 1)

(check-sat)

(pop 1)

