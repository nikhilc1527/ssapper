; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12982 () Bool)

(assert start!12982)

(assert (=> start!12982 false))

(push 1)

(check-sat)

(pop 1)

