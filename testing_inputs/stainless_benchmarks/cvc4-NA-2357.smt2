; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13706 () Bool)

(assert start!13706)

(assert (=> start!13706 false))

(push 1)

(check-sat)

(pop 1)

