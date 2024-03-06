; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13434 () Bool)

(assert start!13434)

(assert (=> start!13434 false))

(assert (=> start!13434 true))

(push 1)

(check-sat)

(pop 1)

