; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13982 () Bool)

(assert start!13982)

(assert (=> start!13982 false))

(push 1)

(check-sat)

(pop 1)

