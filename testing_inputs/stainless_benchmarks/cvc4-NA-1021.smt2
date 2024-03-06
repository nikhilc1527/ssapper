; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7550 () Bool)

(assert start!7550)

(declare-datatypes () ((Unit!895 (Unit!896))))

(declare-fun x$1!782 () Unit!895)

(declare-fun Unit!897 () Unit!895)

(assert (=> start!7550 false))

(assert (=> start!7550 true))

(push 1)

(check-sat)

(pop 1)

