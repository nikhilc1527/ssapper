; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13852 () Bool)

(assert start!13852)

(assert (=> start!13852 false))

(assert (=> start!13852 true))

(push 1)

(check-sat)

(pop 1)

