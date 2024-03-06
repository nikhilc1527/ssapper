; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13326 () Bool)

(assert start!13326)

(assert (=> start!13326 false))

(assert (=> start!13326 true))

(push 1)

(check-sat)

(pop 1)

