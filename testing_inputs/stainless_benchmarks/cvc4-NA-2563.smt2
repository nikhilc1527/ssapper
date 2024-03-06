; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14148 () Bool)

(assert start!14148)

(assert (=> start!14148 false))

(push 1)

(check-sat)

(pop 1)

