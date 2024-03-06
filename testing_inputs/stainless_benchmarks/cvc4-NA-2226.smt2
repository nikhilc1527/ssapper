; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13422 () Bool)

(assert start!13422)

(assert (=> start!13422 false))

(push 1)

(check-sat)

(pop 1)

